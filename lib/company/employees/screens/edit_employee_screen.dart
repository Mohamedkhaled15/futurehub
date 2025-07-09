import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:future_hub/common/shared/palette.dart';
import 'package:future_hub/common/shared/utils/cache_manager.dart';
import 'package:future_hub/common/shared/widgets/chevron_app_bar.dart';
import 'package:future_hub/common/shared/widgets/chevron_button.dart';
import 'package:future_hub/common/shared/widgets/chevron_dropdown.dart';
import 'package:future_hub/common/shared/widgets/chevron_text_field.dart';
import 'package:future_hub/company/employees/cubit/employees_cubit.dart';
import 'package:future_hub/company/employees/cubit/employees_state.dart';
import 'package:future_hub/company/employees/model/driver_model.dart';
import 'package:future_hub/company/employees/model/vehicles_models.dart';
import 'package:future_hub/company/employees/widgets/pagnatied_drop_down.dart';
import 'package:image_picker/image_picker.dart';

class EditEmployeeScreen extends StatefulWidget {
  const EditEmployeeScreen({
    required this.employee,
    super.key,
  });

  @override
  State<EditEmployeeScreen> createState() => _EditEmployeeScreenState();
  final DriverData employee;
}

class _EditEmployeeScreenState extends State<EditEmployeeScreen> {
  bool _loading = false;

  late TextEditingController _nameController;
  late TextEditingController _phoneController;
  late TextEditingController _emailController;
  late TextEditingController _idNumberController;
  late TextEditingController _limitController;
  XFile? _pickedImage;
  final ImagePicker _imagePicker = ImagePicker();
  @override
  void initState() {
    super.initState();

    _nameController = TextEditingController(text: widget.employee.name);
    _phoneController = TextEditingController(text: widget.employee.mobile);
    _emailController = TextEditingController(text: "");
    _idNumberController = TextEditingController(text: "");
    _limitController = TextEditingController(text: "");
    debugPrint(_phoneController.text);
    debugPrint(_limitController.text);
  }

  Future<void> _updateEmployee() async {
    setState(() {
      _loading = true;
    });

    await context.read<EmployeesCubit>().updateEmployee(
          id: widget.employee.id ?? 0,
          context: context,
          name: _nameController.text,
          phone: _phoneController.text,
          email: _emailController.text,
          idNumber: _idNumberController.text,
          // branchId: selectedBranch!.id,
          // vehicleId: selectedVehicle!.id ?? 0,
          image: _pickedImage ?? XFile(""),
          limit: _limitController.text.isNotEmpty
              ? double.parse(_limitController.text)
              : null,
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
    return BlocConsumer<EmployeesCubit, EmployeesState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            appBar: FutureHubAppBar(
              title: Text(t.edit_employee),
              context: context,
            ),
            body: SafeArea(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const SizedBox(height: 10.0),
                      GestureDetector(
                        onTap: _pickImage,
                        child: Center(
                          child: CircleAvatar(
                            radius: 70,
                            backgroundColor: Palette.greyColor.shade300,
                            backgroundImage: _pickedImage != null
                                ? FileImage(File(_pickedImage!.path))
                                : NetworkImage(widget.employee.image!),
                          ),
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
                                              ? model.plateLetters?.en ??
                                                  widget.employee.branch ??
                                                  ""
                                              : model.plateLetters?.ar ??
                                                  widget.employee.branch ??
                                                  ""),
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
                        label: t.username,
                        hintText: t.username,
                        prefixIcon: SvgPicture.asset('assets/icons/person.svg'),
                        validateFunc: (value) {
                          return;
                        },
                      ),
                      const SizedBox(height: 20.0),
                      CustomTextField(
                        haveBorderSide: true,
                        control: _phoneController,
                        label: t.phone_number,
                        hintText: t.phone_number,
                        prefixIcon: SvgPicture.asset('assets/icons/phone.svg'),
                        validateFunc: (value) {
                          return;
                        },
                      ),
                      const SizedBox(height: 20.0),
                      CustomTextField(
                        haveBorderSide: true,
                        control: _emailController,
                        label: t.email,
                        hintText: t.email,
                        prefixIcon: SvgPicture.asset('assets/icons/email.svg'),
                        validateFunc: (value) {
                          return;
                        },
                      ),
                      const SizedBox(height: 20.0),
                      CustomTextField(
                        haveBorderSide: true,
                        control: _idNumberController,
                        label: t.id_number,
                        hintText: t.enter_id_number_here,
                        prefixIcon: SvgPicture.asset('assets/icons/id.svg'),
                        inputType: TextInputType.number,
                        validateFunc: (value) {
                          return;
                        },
                      ),
                      const SizedBox(height: 20.0),
                      CustomTextField(
                        haveBorderSide: true,
                        control: _limitController,
                        label: t.limit,
                        hintText: t.enter_the_limit_here,
                        prefixIcon: SvgPicture.asset('assets/icons/wallet.svg'),
                        inputType: TextInputType.number,
                        validateFunc: (value) {
                          return;
                        },
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      ChevronButton(
                        onPressed: _updateEmployee,
                        loading: _loading,
                        child: Text(t.save_changes),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
