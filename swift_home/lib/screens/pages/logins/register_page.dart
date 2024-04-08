import 'package:flutter/material.dart';
import 'package:swift_home/screens/app_pages/home_page.dart';
import 'package:swift_home/screens/list_logs/data.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => MyRegisterPage();
}

class MyRegisterPage extends State<RegisterPage> {
  String? selectGender;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
        ),
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        'Create an account',
                        style: TextStyle(
                          fontSize: 34,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        'Invest and double your income now',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.normal,
                          color: Color.fromRGBO(79, 79, 79, 1),
                        ),
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        child: ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: template.length,
                          itemBuilder: (context, int i) {
                            return Padding(
                              padding: const EdgeInsets.only(bottom: 16),
                              child: Column(
                                children: [
                                  TextFormField(
                                    onTap: () {},
                                    decoration: InputDecoration(
                                      isDense: true,
                                      filled: true,
                                      fillColor: Colors.white,
                                      hintText: template[i]['name'],
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                      Row(
                        children: [
                          const Expanded(
                            child: Text(
                              'Gender',
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Expanded(
                            child: RadioListTile(
                              contentPadding: EdgeInsets.zero,
                              title: const Text(
                                'Male',
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              value: 'Male',
                              groupValue: selectGender,
                              onChanged: (value) {
                                setState(() {
                                  selectGender = value;
                                });
                                setState(() {
                                  selectGender = value;
                                });
                              },
                            ),
                          ),
                          Expanded(
                            child: RadioListTile(
                              contentPadding: EdgeInsets.zero,
                              title: const Text(
                                'Female',
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              value: 'Female',
                              groupValue: selectGender,
                              onChanged: (value) {
                                setState(() {
                                  selectGender = value;
                                });
                                setState(() {
                                  selectGender = value;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: SizedBox(
                height: 50,
                width: double.maxFinite,
                child: FilledButton(
                  style: FilledButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    // use this to change the background color if you don't
                    // want the default
                    // backgroundColor: whatever colour you want,
                    // padding: const EdgeInsets.all(16),
                  ),
                  onPressed: () {
                    // this will close any open keyboards
                    FocusManager.instance.primaryFocus?.unfocus();
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ),
                      (Route<dynamic> route) => false,
                    );
                  },
                  child: const Text(
                    'Register',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                    ),
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
