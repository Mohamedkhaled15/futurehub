import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:future_hub/common/auth/cubit/auth_cubit.dart';
import 'package:future_hub/common/auth/cubit/auth_state.dart';
import 'package:future_hub/common/shared/palette.dart';

class ChevronProfileTabBarItem extends StatelessWidget {
  final bool active;
  final void Function() onPressed;

  const ChevronProfileTabBarItem({
    super.key,
    this.active = false,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      behavior: HitTestBehavior.opaque,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        padding: EdgeInsets.all(active ? 0 : 2.0),
        decoration: BoxDecoration(
          border: Border.all(
            width: active ? 3 : 1,
            color: Palette.dangerColor,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: BlocBuilder<AuthCubit, AuthState>(builder: (context, state) {
          final user = (state as AuthSignedIn).user;

          return CircleAvatar(
            radius: 17,
            backgroundImage:
                user.image != null ? NetworkImage(user.image!) : null,
          );
        }),
      ),
    );
  }
}
