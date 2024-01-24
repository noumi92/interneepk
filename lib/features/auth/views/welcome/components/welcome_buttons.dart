import 'package:flutter/material.dart';
import 'package:interneepk/features/auth/views/login/login_view.dart';
import 'package:interneepk/features/auth/views/register/register_view.dart';

class WelcomeButtons extends StatelessWidget {
  const WelcomeButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Hero(
            tag: "login_button",
            child: ElevatedButton(
              onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context){
                      return const LoginView();
                    })
                );
              },
              child: const Text("LOGIN"),
            )
        ),
        const SizedBox(height: 16,),
        ElevatedButton(
          onPressed: (){
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context){
                 return const RegisterView();
                })
            );
          },
          child: const Text("SIGN UP"),
        )
      ],
    );
  }
}
