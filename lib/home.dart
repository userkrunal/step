import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:step/provider/step_provider.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  StepProvider? providerF;
  StepProvider? providerT;
  @override
  Widget build(BuildContext context) {
    providerF=Provider.of<StepProvider>(context,listen: false);
    providerT=Provider.of<StepProvider>(context,listen: true);
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text("Steper"),centerTitle: true,
      ),
      body: Theme(
        data: ThemeData(
          accentColor: Colors.orange,
          primarySwatch: Colors.orange,
          colorScheme: ColorScheme.light(
            primary: Colors.orange
          )
        ),
        child: Stepper(
          currentStep: providerT!.i,
          onStepContinue: () {
             providerT!.continu();
          },
          onStepCancel: () {
            providerT!.close();
          },
          steps: [
            Step(title: Text("Persoonal"), content: Text("Enter Your Name...")),
            Step(title: Text("Document"), content: Text("Enter Document...")),
            Step(title: Text("Documet verification"), content: Text("Verification Successful...")),
            Step(title: Text("Payment Details"), content: Text("Enter Payment details...")),
            Step(title: Text("Submit"), content: Text("Successful...")),
          ],
        ),
      ),
    ));
  }
}
