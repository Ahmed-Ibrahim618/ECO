import 'package:flutter/material.dart';
import 'package:flutter_application_4/views/login_page.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: const Color.fromARGB(255, 4, 4, 4),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: ListView(
          children: [
            const SizedBox(
              height: 30,
            ),
            const Image(
              height: 80,
              width: 80,
              image: AssetImage('images/Layer_1.png'),
            ),
            const Center(
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
              height: 30,
            ),
            const Text(
              'user',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'username',
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.blueAccent,
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)),
                  hintText: 'enter user',
                ),
              ),
            ),
            const SizedBox(
              height: 10,
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
            const Text(
              'password',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'password',
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.blueAccent,
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)),
                  hintText: 'enter password',
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'confirm password',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'confirmpassword',
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.blueAccent,
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)),
                  hintText: 'enter password',
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 60,
              width: double.infinity,
              color: Colors.blue,
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  child: const Text(
                    'sign up',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
