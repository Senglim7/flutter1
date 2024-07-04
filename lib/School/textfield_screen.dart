import 'package:flutter/material.dart';

class TextFieldScreen extends StatefulWidget {
  const TextFieldScreen({super.key});

  @override
  State<TextFieldScreen> createState() => _TextFieldScreenState();
}

class _TextFieldScreenState extends State<TextFieldScreen> {
  final formkey = GlobalKey<FormState>();
  final userController = TextEditingController();
  final password = TextEditingController();
  bool obsureText = true;
  void checkObsureText() {
    setState(() {
      obsureText = !obsureText;
    });
  }

  void submit() {
    if (formkey.currentState!.validate()) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("TextField"),
      ),
      body: Form(
        key: formkey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              TextField(
                // keyboardType: TextInputType.emailAddress,
                controller: userController,
                decoration: InputDecoration(
                    // hintText: "Enter Username",
                    labelText: "Usernam",
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    border: const OutlineInputBorder(),
                    suffixIcon: const Icon(Icons.done),
                    prefixIcon: const Icon(Icons.person)),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                obscureText: obsureText,
                // keyboardType: TextInputType.emailAddress,
                controller: password,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please Enter Password";
                  }
                  return null;
                },
                decoration: InputDecoration(
                    // hintText: "Enter Username",
                    labelText: "Password",
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    border: const OutlineInputBorder(),
                    suffixIcon: IconButton(
                      onPressed: () {
                        checkObsureText();
                      },
                      icon: obsureText
                          ? const Icon(Icons.visibility_off)
                          : const Icon(Icons.visibility),
                    ),
                    prefixIcon: const Icon(Icons.person)),
              ),
              ElevatedButton(
                onPressed: () {
                  submit();
                },
                style: ElevatedButton.styleFrom(
                    //  shape: const StadiumBorder(),
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white),
                child: const Text("Submit"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
