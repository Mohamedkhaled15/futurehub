import 'package:flutter/material.dart';
import 'package:future_hub/common/shared/widgets/chevron_tab_bar.dart';
import 'package:future_hub/common/shared/widgets/chevron_tab_bar_item.dart';

class UnknownTabScreenException implements Exception {
  final String message;

  const UnknownTabScreenException(this.message);
}

typedef Navigate = void Function(String screen);
typedef ScreenBuilder = Widget Function(
  BuildContext context,
  Navigate navigate,
);
typedef TabBarItemBuilder = Widget Function(
  BuildContext context,
  Navigate navigate,
  bool active,
);

class ChevronTabScreen {
  final ScreenBuilder screen;
  final TabBarItemBuilder? tabBarItem;
  final String? title;
  final Widget? icon;

  const ChevronTabScreen({
    required this.screen,
    this.tabBarItem,
    this.title,
    this.icon,
  });
}

class ChevronTabNavigator extends StatefulWidget {
  final Map<String, ChevronTabScreen> screens;
  final String initialScreen;
  final int maxStackDepth;
  final bool isDrawerOpen;

  const ChevronTabNavigator(
      {super.key,
      required this.screens,
      required this.initialScreen,
      this.maxStackDepth = 20,
      this.isDrawerOpen = false});

  @override
  State<ChevronTabNavigator> createState() => _ChevronTabNavigatorState();
}

class _ChevronTabNavigatorState extends State<ChevronTabNavigator> {
  final _stack = <ChevronTabScreen>[];

  @override
  void initState() {
    super.initState();
    if (!widget.screens.containsKey(widget.initialScreen)) {
      throw UnknownTabScreenException(
        '${widget.initialScreen} is not defined in the screens map',
      );
    }
    _stack.add(widget.screens[widget.initialScreen]!);
  }

  void navigate(String screen) {
    if (!widget.screens.containsKey(screen)) {
      throw UnknownTabScreenException(
        '$screen is not defined in the screens map',
      );
    }

    if (_stack.last != widget.screens[screen]) {
      setState(() {
        if (_stack.length > widget.maxStackDepth) {
          _stack.removeAt(0);
        }
        debugPrint(screen);
        _stack.insert(0, widget.screens[screen]!);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return WillPopScope(
      onWillPop: () async {
        if (_stack.length == 1) {
          return true;
        }

        setState(() {
          _stack.removeLast();
        });

        return false;
      },
      child: Scaffold(
        bottomNavigationBar: ChevronTabBar(
          children: widget.screens.entries.map((entry) {
            final name = entry.key;
            final screen = entry.value;
            if (screen.tabBarItem != null) {
              return screen.tabBarItem!(
                context,
                navigate,
                _stack.last == screen,
              );
            }

            return ChevronTabBarItem(
              onPressed: () {
                navigate(name);
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => const EmployeeOrdersScreen(),
                //   ),
                // );
              },
              icon: screen.icon!,
              name: screen.title!,
              active: _stack.last == screen,
            );
          }).toList(),
        ),
        body: _stack.first.screen(context, navigate),
      ),
    );
  }
}
