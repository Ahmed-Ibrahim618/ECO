import 'package:flutter/material.dart';
import 'package:flutter_application_4/views/home_view.dart';
import 'package:flutter_application_4/views/reset_password.dart';
import 'package:flutter_application_4/views/signup_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 7),
        child: ListView(
          children: [
            const SizedBox(
              height: 100,
            ),
            const Image(
              height: 80,
              width: 80,
              image: AssetImage('images/Layer_1.png'),
            ),
            Center(
              child: Text(
                'welcom to eco',
                style: TextStyle(
                    fontSize: 35,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const Center(
                child: Text(
              'Create Your new account and find more service',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey),
            )),
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Email',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'email',
                  prefixIcon: Icon(
                    Icons.mail,
                    color: Colors.blueAccent,
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)),
                  hintText: 'enter email',
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text('passward',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'password',
                  border: OutlineInputBorder(),
                  prefixIcon: const Icon(
                    Icons.lock,
                    color: Colors.blueAccent,
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)),
                  hintText: 'enter passward',
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ResetPassword()));
                  },
                  child: const Text('Forgot Password?'),
                ),
              ],
            ),
            Container(
              height: 60,
              width: double.infinity,
              color: Colors.blue,
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeView()));
                  },
                  child: const Text(
                    'login',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("if you don't have account"),
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignUpPage()));
                  },
                  child: const Text('Sign Up'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.chat_rounded,
                      size: 30,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.facebook,
                      color: Colors.blue,
                      size: 30,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.apple,
                      color: Colors.black,
                      size: 30,
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
