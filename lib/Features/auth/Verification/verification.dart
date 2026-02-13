import 'dart:async';
import 'package:flutter/material.dart';
import 'package:green_mart/Core/CommonWidgets/ElevatedBottun.dart';
import 'package:green_mart/Core/Styles/colors.dart';
import 'package:green_mart/Core/Styles/textstyle.dart';
import 'package:pinput/pinput.dart';

class Verification extends StatefulWidget {
  const Verification({super.key});

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  int secondsRemaining = 60;
  Timer? timer;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    secondsRemaining = 5;

    timer?.cancel();

    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (secondsRemaining > 0) {
        setState(() {
          secondsRemaining--;
        });
      } else {
        timer.cancel();
      }
    });
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 60,
      textStyle: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: AppColors.lightGreyColor),
      ),
    );

    return Scaffold(
      appBar: AppBar(backgroundColor: AppColors.backgroundColor),
      body: Padding(
        padding: const EdgeInsets.all(22.64),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Enter verification code",
              style: TextStyles.title.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.w900,
              ),
            ),

            const SizedBox(height: 10),

            Text(
              "We have sent SMS to: 01XXXXXXXXXX",
              style: TextStyles.title.copyWith(
                fontSize: 15,
                fontWeight: FontWeight.w200,
                color: AppColors.greyColor,
              ),
            ),

            const SizedBox(height: 30),

            Align(
              alignment: Alignment.centerRight,
              child: Text(
                "Change Phone Number",
                style: TextStyles.title.copyWith(
                  fontSize: 15,
                  fontWeight: FontWeight.w100,
                  color: AppColors.greyColor,
                ),
              ),
            ),

            const SizedBox(height: 30),

            Center(
              child: Pinput(
                length: 5,
                onCompleted: (pin) {
                },
              ),
            ),

            const SizedBox(height: 30),

            Elevatedbottun(
              title: 'Confirm',
              onPressed: () {},
            ),

            const SizedBox(height: 20),

            secondsRemaining > 0
                ? Center(
                    child: Text(
                      "Resend confirmation code (0:${secondsRemaining.toString().padLeft(2, '0')})",
                      style: TextStyle(
                        color: AppColors.greyColor,
                        fontSize: 14,
                      ),
                    ),
                  )
                : Center(
                    child: TextButton(
                      onPressed: () {
                        startTimer();
                      },
                      child: Text(
                        "Resend OTP",
                        style: TextStyle(
                          color: AppColors.Tango,
                          fontWeight: FontWeight.w600,
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
