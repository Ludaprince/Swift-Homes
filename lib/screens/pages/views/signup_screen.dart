import 'package:flutter/material.dart';
import 'package:swift_home/screens/pages/logins/login.dart';
import 'package:swift_home/screens/pages/logins/register_page.dart';
// import 'package:swift_home/screens/pages/views/signup_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 350,
              width: 300,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/jetgirl.png"),
                ),
              ),
            ),
            //  const SizedBox(height: 10),
            const Text(
              "Seamlessly Seek Apartments Hassle-Free with us",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "We are your new brokage lords to recommed the best homes for you.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
                color: Color.fromRGBO(79, 79, 79, 2),
              ),
            ),
            const SizedBox(height: 25),
            SizedBox(
              width: 300,
              height: 50,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const RegisterPage(),
                    ),
                  );
                },
                style: TextButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(49, 160, 98, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  "Create an Account",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 5),
            SizedBox(
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const LoginPage(),
                    ),
                  );
                },
                child: const Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 17,
                    color: Color.fromRGBO(49, 160, 98, 1),
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
