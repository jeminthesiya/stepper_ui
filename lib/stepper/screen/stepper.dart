import 'package:flutter/material.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';
import 'package:provider/provider.dart';
import 'package:stepper_ui/stepper/provider/stepper_provider.dart';

class stepper extends StatefulWidget {
  const stepper({Key? key}) : super(key: key);

  @override
  State<stepper> createState() => _stepperState();
}

class _stepperState extends State<stepper> {
  Stepper_provider? Stepper_providerTrue;
  Stepper_provider? Stepper_providerFalse;

  @override
  Widget build(BuildContext context) {
    Stepper_providerTrue = Provider.of<Stepper_provider>(context, listen: true);
    Stepper_providerFalse =
        Provider.of<Stepper_provider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        appBar: NewGradientAppBar(
          leading: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          gradient: LinearGradient(
            colors: [
              Colors.blue,
              Colors.yellow.shade200,
            ],
          ),
          title: const Text(
            "Edit Your Profile",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: Theme(
          data: ThemeData(
            primarySwatch: Colors.blue,
            colorScheme: const ColorScheme.light(
              primary: Colors.blueAccent,
            ),
          ),
          child: Stepper(
            type: StepperType.vertical,
            onStepTapped: (index) {
              Stepper_providerFalse!.stepper_value(index);
            },
            steps: [
              const Step(
                title: Text(
                  "Profile Picture",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                content: CircleAvatar(
                  backgroundColor: Colors.white10,
                  child: FlutterLogo(
                    size: 50,
                  ),
                ),
                isActive: true,
              ),
              Step(
                title: const Text(
                  "Name",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                content: Column(
                  children: const [
                    ListTile(
                      leading: Icon(Icons.person),
                      title: Text(
                        "Jemin Thesiya",
                      ),
                    ),
                  ],
                ),
                isActive: true,
              ),
              Step(
                title: const Text(
                  "Phone",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                content: Column(
                  children: const [
                    ListTile(
                      leading: Icon(Icons.call),
                      title: Text(
                        "xxxxx 97184",
                      ),
                    ),
                  ],
                ),
                isActive: true,
              ),
              Step(
                title: const Text(
                  "E-mail",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                content: Column(
                  children: const [
                    ListTile(
                      leading: Icon(Icons.email),
                      title: Text(
                        "jeminthesiya@gmail.com",
                      ),
                    ),
                  ],
                ),
                isActive: true,
              ),
              Step(
                title: const Text(
                  "DOB",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                content: Column(
                  children: const [
                    ListTile(
                      leading: Icon(
                        Icons.date_range,
                      ),
                      title: Text(
                        "15/12/2004",
                      ),
                    ),
                  ],
                ),
                isActive: true,
              ),
              Step(
                title: const Text(
                  "Gender",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                content: Column(
                  children: const [
                    ListTile(
                      leading: Icon(
                        Icons.swipe_down_alt_outlined,
                      ),
                      title: Text(
                        "MALE",
                      ),
                    ),
                  ],
                ),
                isActive: true,
              ),
              Step(
                title: const Text(
                  "Current Location",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                content: Column(
                  children: const [
                    ListTile(
                      leading: Icon(
                        Icons.location_on,
                      ),
                      title: Text(
                        "Surat",
                      ),
                    ),
                  ],
                ),
                isActive: true,
              ),
              Step(
                title: const Text(
                  "Nationalities",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                content: Column(
                  children: const [
                    ListTile(
                      leading: Icon(
                        Icons.location_city_outlined,
                      ),
                      title: Text(
                        "India",
                      ),
                    ),
                  ],
                ),
                isActive: true,
              ),
              Step(
                title: const Text(
                  "Religion",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                content: Column(
                  children: const [
                    ListTile(
                      leading: Icon(
                        Icons.co_present_outlined,
                      ),
                      title: Text(
                        "Hindu",
                      ),
                    ),
                  ],
                ),
                isActive: true,
              ),
              Step(
                title: const Text(
                  "Language",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                content: Column(
                  children: const [
                    ListTile(
                      leading: Icon(
                        Icons.language,
                      ),
                      title: Text(
                        "Gujrati,Hindi,English",
                      ),
                    ),
                  ],
                ),
                isActive: true,
              ),
              Step(
                title: const Text(
                  "Biography",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                content: Column(
                  children: const [
                    ListTile(
                      leading: Icon(
                        Icons.location_city_outlined,
                      ),
                      title: Text(
                        "My Life Is Happy",
                      ),
                    ),
                  ],
                ),
                isActive: true,
              ),
            ],
            currentStep: Stepper_providerTrue!.i,
            onStepCancel: () {
              Stepper_providerFalse!.Back();
            },
            onStepContinue: () {
              Stepper_providerFalse!.Next();
            },
          ),
        ),
      ),
    );
  }
}
