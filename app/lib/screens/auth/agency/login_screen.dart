//this page is for agency login
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:resq/screens/auth/citizens/google_login.dart';
import 'package:resq/screens/auth/citizens/login_phone.dart';
import 'package:resq/screens/ui/agency/home_agency.dart';
import 'package:resq/screens/ui/citizens/home_screen_ctz.dart';
import 'package:resq/utils/utils.dart';
import 'package:resq/widgets/rounded_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _auth = FirebaseAuth.instance;
//  final _auth_gmail = FirebaseAuth.instance;
  final formkey = GlobalKey<FormState>();
  final passwordController = TextEditingController();
  final idController = TextEditingController();
  bool loading = false;
  void login(String id, String pwd) async {
    setState(() {
      loading = true;
    });
    _auth.signInWithEmailAndPassword(email: id, password: pwd).then((value) {
      setState(() {
        loading = false;
      });
      Utils().toastMessage(idController.text);
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomeAgency()));
    }).onError((error, stackTrace) {
      setState(() {
        loading = false;
      });
      Utils().toastMessage(error.toString());
    });
  }

  @override
  void dispose() {
    super.dispose();
    passwordController.dispose();
    idController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 35,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 100,
              ),
              Icon(
                Icons.waving_hand_rounded,
                size: 80,
                color: Colors.black,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Hi  Rescuer',
                style: TextStyle(
                    fontSize: 42,
                    fontWeight: FontWeight.w100,
                    fontFamily: 'font1'),
              ),
              SizedBox(
                height: 60,
              ),
              Form(
                key: formkey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextFormField(
                      validator: MultiValidator([
                        RequiredValidator(errorText: 'required field'),
                        MinLengthValidator(8, errorText: 'min length must be 8')
                      ]),
                      textInputAction: TextInputAction.next,
                      controller: idController,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintText: 'enter agency id',
                        hintStyle: TextStyle(fontSize: 15),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(color: Colors.black)),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Colors.red),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Colors.red),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    TextFormField(
                      controller: passwordController,
                      obscureText: true,
                      validator: MultiValidator([
                        RequiredValidator(errorText: 'required field'),
                        MinLengthValidator(6,
                            errorText: 'minimum length must be 6'),
                        PatternValidator(
                            r'^(?=.*?[#?!@$%^&*-])(?=.*?[0-9])(?=.*?[A-Z])',
                            errorText:
                                'passwords must contain atleast one (A-Z),\none (0-9) and one' +
                                    "#?!@\$%^&*-")
                      ]),
                      obscuringCharacter: '.',
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        hintText: 'enter password',
                        hintStyle: TextStyle(fontSize: 15),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(color: Colors.black)),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Colors.red),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Colors.red),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 35,
              ),
              RoundedButton(
                str: 'L O G I N',
                onTap: () {
                  if (formkey.currentState!.validate()) {
                    login(idController.text.toString(),
                        passwordController.text.toString());
                  }
                },
                loading: loading,
              ),
              SizedBox(
                height: 40,
              ),
              Text('or,', style: TextStyle(fontSize: 11)),
              SizedBox(
                height: 30,
              ),
              Text(
                'a common user? ',
                style: TextStyle(fontSize: 11),
              ),
              SizedBox(
                height: 20,
              ),
              otplogin(context),
              SizedBox(
                height: 25,
              ),
              googlelogin(context)
            ],
          ),
        ),
      ),
    );
  }

  InkWell otplogin(BuildContext context) {
    return InkWell(
      child: Container(
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            border: Border.all(color: Colors.black)),
        child: Center(
          child: Text(
            'O T P    L O G I N',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return PhoneLogin();
        }));
      },
    );
  }

  InkWell googlelogin(BuildContext context) {
    return InkWell(
      onTap: () {
        GoogleLogin().login(context);
      },
      child: Container(
        height: 50,
        decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.black)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/google.png',
              height: 28,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'L O G I N',
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
