import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20.0),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.green,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            const Icon(
              Icons.account_circle_rounded,
              size: 100,
              color: Colors.white,
            ),
            const SizedBox(height: 20.0),
            const TextField(
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                prefixIcon: Icon(Icons.person),
                label: Text(
                  "UserName",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 20.0,
                  ),
                ),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20.0),
            const TextField(
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                prefixIcon: Icon(Icons.lock),
                label: Text(
                  "Password",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 20.0,
                  ),
                ),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(onPressed: () {
              
            }, 
            style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white),
            child: const Text("Login",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 20.0,),
                    
           
            )
            )
          ],
        ),
      ),
    );
  }
}
