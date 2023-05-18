import 'package:demo_project/Pages/my_home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    final _formfield1 = GlobalKey<FormState>();
    final emailController = TextEditingController();
    final passController = TextEditingController();
    bool passToggle = true;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height*0.6,
          width: MediaQuery.of(context).size.width*1,
          child: Card(
            color: Colors.purple[100],
            elevation: 4.0,
            margin: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Form(
                key: _formfield1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.name,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.person_2),
                        labelText: 'Full Name',
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      controller: emailController,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        labelText: "Email",
                      ),
                      validator: (value) {
                        bool emailValid = RegExp(
                            r'^[\w-]+(\.[\w-]+)*@([a-zA-Z0-9-]+\.)+[a-zA-Z]{2,7}$')
                            .hasMatch(value!);
                        if (value.isEmpty) {
                          return "Enter Email";
                        } else if (!emailValid) {
                          return "Enter Valid Email";
                        }
                      },
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      controller: passController,
                      obscureText: passToggle,
                      decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.lock),
                          border: const OutlineInputBorder(),
                          labelText: " Create Password",
                          suffix: InkWell(
                            onTap: () {
                              setState(() {
                                passToggle = !passToggle;
                              });
                            },
                            child: Icon(
                                passToggle ? Icons.visibility : Icons.visibility_off),
                          )),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter Password";
                        } else if (passController.text.length < 6) {
                          return "Password Length should more than 6 characters";
                        }
                      },
                    ),
                    const SizedBox(height: 60),
                    InkWell(
                      onTap: () {
                        if (_formfield1.currentState!.validate()) {
                          print("Success");
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (BuildContext context) {
                                return const MyHomePage(title: "Home");
                              }));
                          emailController.clear();
                          passController.clear();
                        }
                      },
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.indigo,
                            borderRadius: BorderRadius.circular(5)),
                        child: const Center(
                          child: Text(
                            "Sign In",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
