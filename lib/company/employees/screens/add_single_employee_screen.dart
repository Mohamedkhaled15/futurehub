import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:future_hub/common/shared/palette.dart';
import 'package:future_hub/common/shared/utils/cache_manager.dart';
import 'package:future_hub/common/shared/utils/validator.dart';
import 'package:future_hub/common/shared/widgets/chevron_app_bar.dart';
import 'package:future_hub/common/shared/widgets/chevron_button.dart';
import 'package:future_hub/common/shared/widgets/chevron_text_field.dart';
import 'package:future_hub/company/employees/cubit/employees_cubit.dart';
import 'package:future_hub/company/employees/cubit/employees_state.dart';
import 'package:future_hub/company/employees/model/vehicles_models.dart';
import 'package:future_hub/company/employees/widgets/pagnatied_drop_down.dart';
import 'package:image_picker/image_picker.dart';

import '../../../common/shared/widgets/chevron_dropdown.dart';

class AddSingleEmployee extends StatefulWidget {
  const AddSingleEmployee({super.key});

  @override
  State<AddSingleEmployee> createState() => _AddSingleEmployeeState();
}

class _AddSingleEmployeeState extends State<AddSingleEmployee> {
  bool _loading = false;

  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _emailController = TextEditingController();
  final _idNumberController = TextEditingController();
  final _limitController = TextEditingController(text: '0');
  final _form = GlobalKey<FormState>();
  Map<String, String> _validation = {};
  // Vehicles? selectedVehicle;

  XFile? _pickedImage;
  final ImagePicker _imagePicker = ImagePicker();

  Future<void> _addEmployee() async {
    if (!_form.currentState!.validate() || _pickedImage == null) return;
    setState(() {
      _loading = true;
    });
    await context.read<EmployeesCubit>().addEmployee(
          context: context,
          name: _nameController.text,
          phone: _phoneController.text,
          email: _emailController.text,
          idNumber: _idNumberController.text,
          // branchId: selectedBranch!.id,
          // vehicleId: selectedVehicle!.id ?? 0,
          image: _pickedImage!,
          limit: _limitController.text.isNotEmpty
              ? double.parse(_limitController.text)
              : null,
          onValidation: (validation) {
            _validation = validation;
            _form.currentState!.validate();
          },
        );
    setState(() {
      _loading = false;
    });
  }

  Future<void> _pickImage() async {
    final pickedImage =
        await _imagePicker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      setState(() {
        _pickedImage = pickedImage;
      });
    }
  }

  Future<void> oVehicleChanged(Vehicles? vehicle) async {
    // setState(() => selectedVehicle = vehicle);
    context.read<EmployeesCubit>().selectVehicle(vehicle!);
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: FutureHubAppBar(
        title: Text(t.add_an_employee),
        context: context,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: constraints.maxWidth,
                minHeight: constraints.maxHeight,
              ),
              child: IntrinsicHeight(
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Form(
                    key: _form,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const SizedBox(height: 10.0),
                        GestureDetector(
                          onTap: _pickImage,
                          child: CircleAvatar(
                            radius: 70,
                            backgroundColor: Palette.greyColor.shade300,
                            backgroundImage: _pickedImage != null
                                ? FileImage(File(_pickedImage!.path))
                                : null,
                            child: _pickedImage == null
                                ? const Icon(Icons.camera_alt,
                                    color: Palette.primaryColor)
                                : null,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        BlocBuilder<EmployeesCubit, EmployeesState>(
                          builder: (context, state) {
                            if (state is EmployeesLoaded) {
                              return Column(
                                children: [
                                  PaginatedDropdown(
                                    branches: state.branches,
                                    selectedBranch: state.selectedBranch,
                                    onBranchSelected: (branch) {
                                      context
                                          .read<EmployeesCubit>()
                                          .selectBranch(branch);
                                    },
                                    onLoadMore: () async {
                                      await context
                                          .read<EmployeesCubit>()
                                          .fetchBranches();
                                    },
                                  ),
                                  const SizedBox(height: 16),
                                  ChevronDropdown(
                                    onChanged: oVehicleChanged,
                                    labelText: t.choiceVichele,
                                    items: context
                                        .read<EmployeesCubit>()
                                        .vehicle
                                        .map(
                                          (model) => DropdownMenuItem(
                                            value: model,
                                            child: Text(CacheManager.locale! ==
                                                    const Locale("en")
                                                ? model.plateLetters?.en ?? ""
                                                : model.plateLetters?.ar ?? ""),
                                          ),
                                        )
                                        .toList(),
                                  ),
                                  const SizedBox(height: 16),
                                ],
                              );
                            } else if (state is EmployeesLoadFailed) {
                              return const Center(
                                child: Text(
                                  'Failed to load branches or employees.',
                                  style: TextStyle(color: Colors.red),
                                ),
                              );
                            } else {
                              return const Center(
                                child: CircularProgressIndicator(),
                              );
                            }
                          },
                        ),
                        CustomTextField(
                          haveBorderSide: true,
                          control: _nameController,
                          label: t.employee_name,
                          hintText: t.enter_employee_name_here,
                          prefixIcon:
                              SvgPicture.asset('assets/icons/person.svg'),
                          inputType: TextInputType.name,
                          onChanged: (value) =>
                              _validation.remove('input.name'),
                          validateFunc: (value) {
                            return Validator(value)
                                .custom((value) => _validation['input.name'])
                                .mandatory(t.this_field_is_required)
                                .alpha(t.name_must_contain_only_letters)
                                .error;
                          },
                        ),
                        const SizedBox(height: 24.0),
                        CustomTextField(
                          haveBorderSide: true,
                          control: _phoneController,
                          label: t.phone_number,
                          hintText: t.enter_phone_number_05XXXXXXXX,
                          prefixIcon:
                              SvgPicture.asset('assets/icons/phone.svg'),
                          inputType: TextInputType.phone,
                          onChanged: (value) =>
                              _validation.remove('input.mobile'),
                          validateFunc: (value) {
                            return Validator(value)
                                .custom((value) => _validation['input.mobile'])
                                .mandatory(t.this_field_is_required)
                                .digits(t.phone_number_must_contain_only_digits)
                                .startsWith(
                                    '05', t.phone_number_must_start_with_05)
                                .length(10, t.phone_number_must_be_10_digits)
                                .error;
                          },
                        ),
                        const SizedBox(height: 24.0),
                        CustomTextField(
                          haveBorderSide: true,
                          control: _emailController,
                          label: t.email,
                          hintText: t.enter_email_here,
                          prefixIcon:
                              SvgPicture.asset('assets/icons/email.svg'),
                          inputType: TextInputType.emailAddress,
                          onChanged: (value) =>
                              _validation.remove('input.email'),
                          validateFunc: (value) {
                            return Validator(value)
                                .custom((value) => _validation['input.email'])
                                .mandatory(t.this_field_is_required)
                                .email(t.please_enter_a_valid_email)
                                .error;
                          },
                        ),
                        const SizedBox(height: 24.0),
                        CustomTextField(
                          haveBorderSide: true,
                          control: _idNumberController,
                          label: t.id_number,
                          hintText: t.enter_id_number_here,
                          prefixIcon: SvgPicture.asset('assets/icons/id.svg'),
                          inputType: TextInputType.number,
                          onChanged: (value) =>
                              _validation.remove('input.national_id'),
                          validateFunc: (value) {
                            return Validator(value)
                                .custom(
                                    (value) => _validation['input.national_id'])
                                .mandatory(t.this_field_is_required)
                                .digits(t.id_number_must_contain_only_digits)
                                .length(10, t.id_number_must_be_10_digits)
                                .error;
                          },
                        ),
                        const SizedBox(height: 24.0),
                        CustomTextField(
                          haveBorderSide: true,
                          control: _limitController,
                          label: t.limit,
                          hintText: t.enter_the_limit_here,
                          prefixIcon:
                              SvgPicture.asset('assets/icons/wallet.svg'),
                          inputType: TextInputType.number,
                          onChanged: (value) =>
                              _validation.remove('input.wallet_limit'),
                          validateFunc: (value) {
                            return Validator(value)
                                .custom((value) =>
                                    _validation['input.wallet_limit'])
                                .number(t.limit_must_be_a_valid_number)
                                .error;
                          },
                        ),
                        const SizedBox(height: 24.0),
                        const Spacer(),
                        ChevronButton(
                          onPressed: _addEmployee,
                          loading: _loading,
                          child: Text(t.add),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
