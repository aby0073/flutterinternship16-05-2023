import 'package:flutter/material.dart';

class Reg extends StatefulWidget {
  const Reg({Key? key}) : super(key: key);

  @override
  State<Reg> createState() => _RegState();
}

class _RegState extends State<Reg> {
  final _formkey = GlobalKey<FormState>();
  bool _isHidden = true;
  bool _isShow = true;
  var fnameController = TextEditingController();
  var lnameController = TextEditingController();
  var emailController = TextEditingController();
  var passController = TextEditingController();
  var conpassController = TextEditingController();
  var fname = '', lname = '', email = '', password = '', cpassword = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Entrance registration form",
          style:
              TextStyle(color: Colors.greenAccent, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(children: [
        Form(
          key: _formkey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                    decoration: InputDecoration(
                        label: Text("First Name"),
                        border: OutlineInputBorder()),
                    controller: fnameController,
                    validator: (value) {
                      if (fname == '') {
                        return "Enter your first name";
                      }
                      return null;
                    }),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  controller: lnameController,
                  validator: (value) {
                    if (lname == '') {
                      return "Enter your first name";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      label: Text("Last Name"), border: OutlineInputBorder()),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  controller: emailController,
                  validator: (value) {
                    if (email == '') {
                      return "Enter email";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      label: Text("Email"), border: OutlineInputBorder()),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  controller: passController,
                  validator: (value) {
                    if (password == '') {
                      return "Enter the password";
                    }
                    return null;
                  },
                  obscureText: _isHidden,
                  decoration: InputDecoration(
                      hintText: 'Password',
                      suffix: InkWell(
                          onTap: () {
                            viewPassword();
                          },
                          child: _isHidden
                              ? Icon(Icons.visibility)
                              : Icon(Icons.visibility_off)),
                      label: Text("Password"),
                      border: OutlineInputBorder()),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  controller: conpassController,
                  validator: (value) {
                    if (cpassword == '') {
                      return "Enter the confirm password";
                    }
                    return null;
                  },
                  obscureText: _isShow,
                  decoration: InputDecoration(
                      hintText: 'confirm password',
                      suffix: InkWell(
                          onTap: () {
                            viewConfirmpassword();
                          },
                          child: _isShow
                              ? Icon(Icons.visibility)
                              : Icon(Icons.visibility_off)),
                      label: Text("Confirm Password"),
                      border: OutlineInputBorder()),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        fname = fnameController.text;
                        lname = lnameController.text;

                        if (_formkey.currentState!.validate()) {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(SnackBar(content: Text("Success")));
                        }
                      });
                    },
                    child: Text("Login"),
                  ),
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }

  void viewPassword() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  void viewConfirmpassword() {
    setState(() {
      _isShow = !_isShow;
    });
  }
}
