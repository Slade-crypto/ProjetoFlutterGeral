import 'package:flutter/material.dart';
import 'package:iuganda/services/user_service_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Testes")),
      ),
      body: Center(
        child: Text(
          context.read<UserServiceProvider>().getName(),
        ),
      ),
    );
  }
}
