import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:steper_1/screens/login/provider/login_provider.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  LogInP? proTrue;
  LogInP? proFalse;

  @override
  Widget build(BuildContext context) {
    proTrue = Provider.of<LogInP>(context, listen: true);
    proFalse = Provider.of<LogInP>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          leading: Icon(Icons.arrow_back),
          title: Text("Edit Your Profile"),
        ),
        body: Stepper(
          currentStep: proTrue!.i,
          onStepTapped: (index) {
            proFalse!.jumpStep(index);
          },
          onStepCancel: () {
            proFalse!.backStep();
          },
          onStepContinue: () {
            proFalse!.nextStep();
          },
          steps: [
            Step(
              title: Text("Sign Up"),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Full Name",
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Email-ID",
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Password*",
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Confirm Password",
                    ),
                  )
                ],
              ),
            ),
            Step(
              title: Text("Login"),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Password*",
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Confirm Password",
                    ),
                  )
                ],
              ),
            ),
            Step(
              title: Text("Home"),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Password*",
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Confirm Password",
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
