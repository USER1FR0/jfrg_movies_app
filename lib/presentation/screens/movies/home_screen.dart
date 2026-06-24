import 'package:flutter/material.dart';
import 'package:jfrg_movies_app/presentation/views/movies/home_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: HomeView());
  }
}
