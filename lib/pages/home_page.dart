import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pinput/pinput.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  String validPin = "1234";
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildi(),
    );
  }

  Widget _buildi() {
    return SafeArea(
      child: SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                _Headingtext(),
                const SizedBox(
                  height: 20,
                ),
                _subHeadingtext(),
                const SizedBox(
                  height: 20,
                ),
                _numberText(),
              ],
            ),
            _pinInputform(),
            _resendcode()
          ],
        ),
      ),
    );
  }

  Widget _Headingtext() {
    return const Text(
      'Enter 4-digit PIN',
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _subHeadingtext() {
    return const Text(
      'Enter the code sent to the number',
      style: TextStyle(
        fontWeight: FontWeight.w300,
        fontSize: 18,
        color: Colors.black38,
      ),
    );
  }

  Widget _numberText() {
    return const Text(
      '+1 723 563 0432',
      style: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 15,
      ),
    );
  }

  Widget _resendcode() {
    return const Text(
      "didn't get the code.\nResend code?",
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: Colors.black38,
      ),
    );
  }

  Widget _pinInputform() {
    return Form(
      key: formkey,
      child: Column(
        children: [
          Pinput(
            validator: (value) {
              return value == validPin ? null : "Pin is incorrect";
            },
            errorBuilder: ((errorText, pin) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Center(
                  child: Text(
                    errorText ?? "",
                    style: const TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ),
              );
            }),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/main');
            },
            child: const Text(
              'validate',
            ),
          )
        ],
      ),
    );
  }
}
