import 'package:flutter/material.dart';

class CustomAdaptiveLayout extends StatelessWidget {
  const CustomAdaptiveLayout({
    super.key,
    required this.mobileLayout,
    required this.desktopLayout,
    required this.tabletLayout,
  });
  final WidgetBuilder mobileLayout, desktopLayout, tabletLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains) {
        if (constrains.maxWidth < 800) {
          return mobileLayout(context);
        } else if (constrains.maxWidth < 1200) {
          return tabletLayout(context);
        } else {
          return desktopLayout(context);
        }
      },
    );
  }
}
