import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../l10n/app_localizations.dart';
import 'package:future_hub/common/auth/cubit/auth_cubit.dart';
import 'package:future_hub/common/auth/cubit/auth_state.dart';
import 'package:future_hub/common/shared/widgets/chevron_button.dart';
import 'package:future_hub/common/shared/widgets/chevron_text_field.dart';
import 'package:go_router/go_router.dart';

class AccountDataTabContent extends StatefulWidget {
  const AccountDataTabContent({required this.enabled, super.key});
  final bool enabled;

  @override
  State<AccountDataTabContent> createState() => _AccountDataTabContentState();
}

class _AccountDataTabContentState extends State<AccountDataTabContent> {
  bool _loading = false;

  late TextEditingController _nameController;
  late TextEditingController _phoneController;
  late TextEditingController _emailController;

  @override
  void initState() {
    super.initState();

    final state = context.read<AuthCubit>().state as AuthSignedIn;

    _nameController = TextEditingController(text: state.user.name);
    _phoneController = TextEditingController(text: state.user.mobile);
    _emailController = TextEditingController(text: state.user.email);
  }

  Future<void> _updateProfile() async {
    setState(() {
      _loading = true;
    });

    await context.read<AuthCubit>().updateProfile(
          context: context,
          name: _nameController.text,
          phone: _phoneController.text,
          email: _emailController.text,
        );
    if (mounted) {
      context.pop();
    }
    setState(() {
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;

    return SafeArea(
      top: false,
      right: false,
      left: false,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CustomTextField(
            enabled: widget.enabled,
            control: _nameController,
            label: t.username,
            hintText: t.username,
            haveBorderSide: true,
            radius: 15,
            validateFunc: (String? s) {
              return null;
            },
            // icon: SvgPicture.asset('assets/icons/person.svg'),
          ),
          const SizedBox(height: 24.0),
          CustomTextField(
            validateFunc: (String? s) {
              return null;
            },

            haveBorderSide: true,
            radius: 15,
            control: _phoneController,
            label: t.phone_number,
            hintText: t.phone_number,
            enabled: false,
            // icon: SvgPicture.asset('assets/icons/phone.svg'),
          ),
          const SizedBox(height: 24.0),
          CustomTextField(
            control: _emailController,
            label: t.email,
            hintText: t.email,
            radius: 15,
            haveBorderSide: true,
            validateFunc: (String? s) {
              return null;
            },
            enabled: widget.enabled,

            // icon: SvgPicture.asset('assets/icons/email.svg'),
          ),
          if (widget.enabled) ...[
            SizedBox(height: MediaQuery.of(context).size.height * 0.3),
            ChevronButton(
              onPressed: _updateProfile,
              loading: _loading,
              child: Text(t.save_changes),
            ),
          ]
        ],
      ),
    );
  }
}
