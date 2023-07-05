import 'package:flutter/material.dart';
import 'package:test_flutter/app_button.dart';
import 'package:test_flutter/base_client.dart';
import 'package:test_flutter/user.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E1E),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const FlutterLogo(size: 72),
              AppButton(
                operation: 'GET',
                operationColor: Colors.lightGreen,
                description: 'Fetch users',
                onPressed: () async {
                  var response = await BaseClient().get('/users').catchError((err) {});
                  if (response == null) return;
                  debugPrint('successful:');

                  var users = userFromJson(response);
                  debugPrint('Users count: ' + users.length.toString());
                },
              ),
          ]
          ),
        ),
      ),
    );
  }
}
