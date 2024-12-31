import 'package:flutter/material.dart';
import 'package:flutter_quick_note/model/user_model.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final UserModel data = Get.arguments["data"];

    // print("ID Login: ${data.id}");
    // print("Username: ${data.username}");
    // print("Email: ${data.email}");
    // print("Role: ${data.role}");

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Home Page",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Login Berhasil",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    children: [
                      Text(
                        "Id Login: ${data.id}",
                        style: const TextStyle(fontSize: 16),
                      ),
                      Text("Username: ${data.username}",
                          style: const TextStyle(fontSize: 16)),
                      Text("Email: ${data.email}",
                          style: const TextStyle(fontSize: 16)),
                      Text(
                        "Role: ${data.role}",
                        style: const TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
