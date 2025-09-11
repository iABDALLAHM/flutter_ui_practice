import 'package:flutter/material.dart';
import 'package:movie_app/features/details/presentation/views/widgets/details_view_body.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: DetailsViewBody());
  }
}
