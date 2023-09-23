import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:resq/screens/auth/citizens/verify_code.dart';
import 'package:resq/utils/utils.dart';
import 'package:resq/widgets/rounded_button.dart';

class PhoneLogin extends StatefulWidget {
  const PhoneLogin({super.key});

  @override
  State<PhoneLogin> createState() => _PhoneLoginState();
}

class _PhoneLoginState extends State<PhoneLogin> {
  final phoneNumber = TextEditingController();
  bool loading = false;
  final auth = FirebaseAuth.instance;
  final formkey = GlobalKey<FormState>();
  double size = 30;
  Color color = Colors.grey.shade800;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 125,
        elevation: 0,
        backgroundColor: Colors.white,
        flexibleSpace: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.water_rounded,
                size: size,
                color: color,
              ),
              Icon(
                Icons.fireplace,
                size: size,
                color: color,
              ),
              Icon(
                Icons.cyclone,
                size: size,
                color: color,
              ),
              Icon(
                Icons.flood_outlined,
                size: size,
                color: color,
              ),
              Icon(
                Icons.landslide_rounded,
                size: size,
                color: color,
              )
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35),
        child: Form(
          key: formkey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Be a responsible citizen stay informed prepared and safe',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                    fontSize: 13),
              ),
              SizedBox(
                height: 100,
              ),
              TextFormField(
                validator: MultiValidator([
                  RequiredValidator(errorText: 'required field'),
                  MinLengthValidator(10, errorText: 'length must be 10'),
                  MaxLengthValidator(10, errorText: 'length must be 10'),
                ]),
                controller: phoneNumber,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: '+91 1234 567 890',
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
              SizedBox(
                height: 40,
              ),
              RoundedButton(
                str: 'G E T    O T P',
                onTap: () {
                  if (formkey.currentState!.validate()) {
                    setState(() {
                      loading = true;
                    });
                    auth.verifyPhoneNumber(
                        phoneNumber: '+91' + phoneNumber.text,
                        verificationCompleted: (_) {},
                        verificationFailed: (error) {
                          if (mounted)
                            setState(() {
                              loading = false;
                            });
                          Utils().toastMessage(error.toString());
                        },
                        codeSent: (String verificationId, int? token) {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => VerirfyCode(
                                        verifyId: verificationId,
                                        number: phoneNumber.text,
                                      )));
                        },
                        codeAutoRetrievalTimeout: (msg) {
                          Utils().toastMessage(msg);
                        });
                  }
                },
                loading: loading,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 150,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('move to login page',
                          style: TextStyle(fontSize: 12))),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
