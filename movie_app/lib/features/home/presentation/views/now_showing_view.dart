import 'package:flutter/material.dart';
import 'package:movie_app/features/home/presentation/views/widgets/now_showing_view_body.dart';

class NowShowingView extends StatelessWidget {
  const NowShowingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: NowShowingViewBody());
  }
}
