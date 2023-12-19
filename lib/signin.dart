import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    final double currentWidth = MediaQuery.of(context).size.width;
    return Center(
      child: Column(
        // column은 자식으로 children을 가짐
        children: [
          const Text(
            'Sign in to continue',
            style: TextStyle(
              fontSize: 20,
              color: Colors.red,
            ),
          ),
          Text(
            currentWidth.toString(),
            style: TextStyle(fontSize: 15),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            decoration: InputDecoration(
                prefix: Icon(Icons.person),
                labelText: 'Email',
                enabledBorder: OutlineInputBorder(
                  //선택안했을때
                  borderSide: BorderSide(width: 3, color: Colors.blue),
                  borderRadius: BorderRadius.circular(15),
                ),
                focusedBorder: OutlineInputBorder(
                  //선택했을 때
                  borderSide: BorderSide(width: 3, color: Colors.red),
                  borderRadius: BorderRadius.circular(15),
                )),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
                prefix: Icon(Icons.lock),
                labelText: 'Password',
                enabledBorder: OutlineInputBorder(
                  //선택안했을때
                  borderSide: BorderSide(width: 3, color: Colors.blue),
                  borderRadius: BorderRadius.circular(15),
                ),
                focusedBorder: OutlineInputBorder(
                  //선택했을 때
                  borderSide: BorderSide(width: 3, color: Colors.red),
                  borderRadius: BorderRadius.circular(15),
                )),
          ),
        ],
      ),
    );
  }
}
