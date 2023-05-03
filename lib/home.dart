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
        backgroundColor: Colors.red,
        title: Text("Stepper App"),centerTitle: true,
      ),
      body: Theme(
        data: ThemeData(
          accentColor: Colors.red,
          primarySwatch: Colors.red,
          colorScheme: ColorScheme.light(
            primary: Colors.red
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
            Step(title: Text("Signup"), content: Container(
              height: 250,
              width: 240,
              color: Colors.white,
              child: Column(
                children: [
                  ListTile(
                    title: Text("Full Name*"),
                    leading: Icon(Icons.person,color: Colors.grey.shade400),

                  ),
                  Divider(color: Colors.black,height: 5,thickness: 2),
                  ListTile(
                    title: Text("Email-Id"),
                    leading: Icon(Icons.mail,color: Colors.grey.shade400),
                  ),
                  Divider(color:Colors.black,height: 5,thickness: 2),
                  ListTile(
                    title: Text("Password*"),
                    leading: Icon(Icons.lock,color: Colors.grey.shade400),
                  ),
                  Divider(color: Colors.black,height: 5,thickness: 2),
                  ListTile(
                    title: Text("Conform Password*"),
                    leading: Icon(Icons.lock,color: Colors.grey.shade400),
                  ),
                  Divider(color: Colors.black,height: 5,thickness: 2),
                ],
              ),
            )),
            Step(title: Text("Login"), content: Container(
              height: 130,
              width: 240,
              color: Colors.white,
              child: Column(
                children: [
                  ListTile(
                    title: Text("User Name*"),
                    leading: Icon(Icons.person,color: Colors.grey.shade400),
                  ),
                  Divider(color: Colors.black,height: 5,thickness: 2),
                  ListTile(
                    title: Text("Password"),
                    leading: Icon(Icons.mail,color: Colors.grey.shade400),
                  ),
                  Divider(color: Colors.black,height: 5,thickness: 2),
                ],
              ),
            )),
            Step(title: Text("Home"),content: Text("Thank you")),
          ],
        ),
      ),
    ));
  }
}
