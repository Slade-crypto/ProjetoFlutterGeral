import 'package:flutter/material.dart';
import 'package:iuganda/repositories/user_repository_provider.dart';
import 'package:iuganda/services/user_service_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/home_page',
        routes: {
          '/home_page': (context) => MultiProvider(
                providers: [
                  Provider(
                    create: (context) => UserRepositoryProvider(name: 'Renan'),
                  ),
                  Provider(
                    create: (context) => UserServiceProvider(
                      repository: context.read(),
                    ),
                  ),
                ],
              ),
        });
  }
}
