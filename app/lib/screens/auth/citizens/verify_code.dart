import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:resq/screens/ui/citizens/home_screen_ctz.dart';
import 'package:resq/utils/utils.dart';
import 'package:resq/widgets/rounded_button.dart';

class VerirfyCode extends StatefulWidget {
  final verifyId;
  String number;
  VerirfyCode({super.key, required this.verifyId, required this.number});

  @override
  State<VerirfyCode> createState() => _VerirfyCodeState();
}

class _VerirfyCodeState extends State<VerirfyCode> {
  final otpcontroller = TextEditingController();
  bool loading = false;
  final _formkey = GlobalKey<FormState>();
  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 35),
          child: Form(
            key: _formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Enter 6-digit code sent to +91 ' + widget.number,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w300),
                ),
                SizedBox(
                  height: 50,
                ),
                TextFormField(
                  validator: MultiValidator([
                    RequiredValidator(errorText: 'required field'),
                    MinLengthValidator(6, errorText: 'length must be 6'),
                    MaxLengthValidator(6, errorText: 'lenth must be 6'),
                  ]),
                  controller: otpcontroller,
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    hintText: 'otp',
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
                  height: 30,
                ),
                RoundedButton(
                    str: ' V E R I F Y',
                    onTap: () async {
                      final credentials = PhoneAuthProvider.credential(
                        verificationId: widget.verifyId,
                        smsCode: otpcontroller.text);
                      if (_formkey.currentState!.validate()) {
                        setState(() {
                          loading = true;
                        });
                        
                        try {
                          await auth.signInWithCredential(credentials);
                          setState(() {
                            loading = false;
                          });
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) {
                            return HomeCitizen();
                          }));
                        } catch (e) {
                          setState(() {
                            loading = false;
                          });
                          Utils().toastMessage(e.toString());
                        }
                      }
                    },loading: loading,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
