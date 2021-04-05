import 'package:barclays_app/repo/APIClient.dart';
import 'package:barclays_app/repo/AccountSummaryRepository.dart';
import 'package:barclays_app/widgets/helper/BlueContentText.dart';
import 'package:barclays_app/widgets/helper/GreyContentText.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'app.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isSwitched = false;
  bool isEnabled = false;

  final AccountSummaryRepository accountSummaryRepository =
      AccountSummaryRepository(
    apiClient: APIClient(
      httpClient: http.Client(),
    ),
  );

  final userNameController = TextEditingController();

  final passwordController = TextEditingController();

  @override
  void dispose() {
    userNameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
            child: ListView(
              children: [
                SizedBox(
                  height: 60.0,
                ),
                Center(
                  child: Text(
                    'Barclays',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w700,
                      color: Colors.blue,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  child: TextField(
                    controller: userNameController,
                    onChanged: (val) {
                      isEmpty();
                    },
                    textCapitalization: TextCapitalization.words,
                    decoration: InputDecoration(
                      hintText: 'User Name',
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.w300, color: Colors.grey),
                      contentPadding: EdgeInsets.symmetric(vertical: 8),
                      isDense: true,
                    ),
                  ),
                ),
                TextField(
                  controller: passwordController,
                  obscureText: true,
                  onChanged: (val) {
                    isEmpty();
                  },
                  textCapitalization: TextCapitalization.words,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.w300, color: Colors.grey),
                    contentPadding: EdgeInsets.symmetric(vertical: 8),
                    isDense: true,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Row(
                    children: [
                      Text('Save username?'),
                      Switch(
                          value: isSwitched,
                          onChanged: (value) {
                            setState(() {
                              isSwitched = value;
                            });
                          }),
                      SizedBox(
                        width: 20.0,
                      ),
                      ElevatedButton(
                        onPressed: isEnabled
                            ? () async {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return Center(
                                        child: CircularProgressIndicator(),
                                      );
                                    });
                                await loginAction();
                                Navigator.pop(context);
                                Navigator.pop(context);
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => MyApp(
                                        accountSummaryRepository:
                                            accountSummaryRepository),
                                  ),
                                );
                              }
                            : null,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            'Login',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Divider(
                  color: Colors.grey[500],
                ),
                SizedBox(
                  height: 8.0,
                ),
                BlueContentText(
                  text: 'Forgot username or password?',
                ),
                SizedBox(
                  height: 8.0,
                ),
                Divider(
                  color: Colors.grey[500],
                ),
                SizedBox(
                  height: 8.0,
                ),
                BlueContentText(
                  text: 'Activate your account',
                ),
                SizedBox(
                  height: 8.0,
                ),
                Divider(
                  color: Colors.grey[500],
                ),
                SizedBox(
                  height: 8.0,
                ),
                BlueContentText(
                  text: 'New cardmembers - Setup online access',
                ),
                SizedBox(
                  height: 8.0,
                ),
                Divider(
                  color: Colors.grey[500],
                ),
                SizedBox(
                  height: 8.0,
                ),
                BlueContentText(
                  text: 'Privacy Policy',
                ),
                SizedBox(
                  height: 8.0,
                ),
                Divider(
                  color: Colors.grey[500],
                ),
                SizedBox(
                  height: 30.0,
                ),
                Center(
                    child: GreyContentText(
                  text: 'App version - 6.35.1 OS version - 9',
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void isEmpty() {
    setState(() {
      if ((userNameController.text != "") && (passwordController.text != "")) {
        isEnabled = true;
      } else {
        isEnabled = false;
      }
    });
  }

  Future<bool> loginAction() async {
    //replace the below line of code with your login request
    await new Future.delayed(const Duration(seconds: 2));
    return true;
  }
}
