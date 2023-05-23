
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'homePage.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //Credential
  bool checkCredential = false;

  //indigator handling
  bool checkIndicator = false;

  bool checkPassword = false;
  bool checkUserName = false;
  bool enable = true;


  //password
  final password = TextEditingController();

  //userName
  final userName = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    super.dispose();
  }

  //function
  @override
  void initState() {
    super.initState();
  }

  Widget buildUserName() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
          'Login',
          style: TextStyle(
              color: Colors.black, fontSize: 32, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
               color: const Color.fromARGB(255, 241, 238, 238),
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                
              ]),
          height: 60,
          child: TextFormField(
            enabled: enable,
            controller: userName,
            validator: (value) {
              if (value == null || value.isEmpty) {
                setState(() {
                  checkUserName = true;
                });
              }
              return null;
            },
            onChanged: (value) => {
              if (value.isEmpty)
                {
                  setState(() {
                    checkUserName = true;
                  })
                }
              else
                {
                  setState(() {
                    checkUserName = false;
                  })
                }
            },
            style: const TextStyle(color: Colors.black87),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: const EdgeInsets.only(top: 14),
                prefixIcon: Icon(Icons.call,
                    color: checkUserName ? Colors.red : Colors.black),
                hintText: 'mobile Number',
                hintStyle: const TextStyle(color: Colors.black38)
                ),
          ),
        )
      ],
    );
  }

  Widget buildPassword() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 241, 238, 238),
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                
              ]),
          height: 60,
          child: TextFormField(
            enabled: enable,
            controller: password,
            validator: (value) {
              if (value == null || value.isEmpty) {
                setState(() {
                  checkPassword = true;
                });
              }
              return null;
            },
            onChanged: (value) => {
              if (value.isEmpty)
                {
                  setState(() {
                    checkPassword = true;
                  })
                }
              else
                {
                  setState(() {
                    checkPassword = false;
                  })
                }
            },
            obscureText: true,
            style: const TextStyle(color: Colors.black87),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: const EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.lock,
                  color: checkPassword ? Colors.red : Colors.black,
                ),
                hintText: 'Password',
                hintStyle: const TextStyle(color: Colors.black38)),
          ),
        )
      ],
    );
  }

  Widget buildForgotButton() {
    return Container(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () => {},
        child: const Text(
          'Forgot Password?',
          style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget buildLoginBtn() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 25),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: enable
            ? () => {
                  if (_formKey.currentState!.validate()) {_login()}
                }
            : null,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          backgroundColor: Colors.orange,
        ),
        child: const Text(
          'Login',
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget buildLoginWithOtp() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 25),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: enable
            ? () => {
                  
                }
            : null,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          backgroundColor: const Color.fromARGB(255, 11, 125, 196),
        ),
        child: const Text(
          'Login With OTP',
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget buildSignButton() {
    return Container(
      
      child: RichText(
        text:  TextSpan(
          text: "Don't have an account? ",
          style: const TextStyle(color: Colors.black),
          children: <TextSpan>[
            TextSpan(
              text: "Sign Up",
              style: const TextStyle(color: Colors.orange),
              recognizer: TapGestureRecognizer()
              ..onTap=() {
                
              }
,            )
          ]
        ),

        
        
      ),
    );
  }


  void _login() async {
    if (_formKey.currentState!.validate() &&
        userName.text.isNotEmpty &&
        password.text.isNotEmpty) {
      setState(() {
        checkIndicator = true;
        enable = false;
      });
      await Future.delayed(const Duration(seconds: 1));
      setState(() {
        checkIndicator = false;
        checkCredential = true;
        enable = true;
      });
      // ignore: use_build_context_synchronously
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const HomePage()));
    }
  }

  @override
  Widget build(BuildContext context) => WillPopScope(
        onWillPop: () async {
          return false;
        },
        child: Scaffold(
          body: AnnotatedRegion<SystemUiOverlayStyle>(
              value: SystemUiOverlayStyle.light,
              child: Form(
                key: _formKey,
                child: GestureDetector(
                  child: Stack(
                    children: [
                      Container(
                        height: double.infinity,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                        ),
                        child: SingleChildScrollView(
                          physics: const AlwaysScrollableScrollPhysics(),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 25, vertical: 110),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              const SizedBox(
                                height: 13,
                              ),
                              checkIndicator
                                  ? Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 16, vertical: 20),
                                      child: const SizedBox(
                                        height: 30.0,
                                        width: 30.0,
                                        child: CircularProgressIndicator(
                                          color: Colors.black,
                                        ),
                                      ),
                                    )
                                  : Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 70, vertical: 1),
                                      child: Image.asset(
                                        "lib/images/unibitImage.png",
                                        
                                      ),
                                    ),
                        
                              checkCredential
                                  ? Container(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 20),
                                      child: const Text(
                                        "Invalid Credential",
                                        style: TextStyle(
                                            color: Colors.redAccent,
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )
                                  : const Text(""),
                              const SizedBox(
                                height: 8,
                              ),
                              buildUserName(),
                              checkUserName
                                  ? Container(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 8),
                                      child: const Text(
                                        "Required UserName",
                                        style: TextStyle(
                                            color: Colors.redAccent,
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )
                                  : const Text(""),
                              const SizedBox(
                                height: 14,
                              ),
                              buildPassword(),
                              checkPassword
                                  ? Container(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 8),
                                      child: const Text(
                                        "Required Password",
                                        style: TextStyle(
                                            color: Colors.redAccent,
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )
                                  : const Text(""),
                              buildForgotButton(),
                              buildLoginBtn(),
                              buildLoginWithOtp(),
                              buildSignButton(),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )),
        ),
      );
}
