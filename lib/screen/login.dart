import 'dart:async';

import 'package:banksampah/screen/first.dart';
import 'package:banksampah/screen/mainMenu.dart';
import 'package:banksampah/themes/myColors.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  StreamController<bool> obSecure;
  StreamController<String> valueNumber;

  TextEditingController nohp = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  void initState() {
    super.initState();
    obSecure = StreamController();
    valueNumber = StreamController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => First()));
          },
          child: Icon(Icons.arrow_back),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Selamat datang!",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Masuk dengan nomor telpon anda untuk memulai",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(
              height: 16,
            ),
            StreamBuilder(
              stream: valueNumber.stream,
              initialData: TextEditingController(),
              builder: (context, snapshot) {
                return Container(
                  padding:
                      EdgeInsets.only(left: 16, right: 16, bottom: 6, top: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.grey[200],
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: nohp,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            labelText: "Nomor HP",
                            border: UnderlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      InkWell(
                          onTap: () {
                            valueNumber.add("");
                            nohp = TextEditingController(text: "");
                          },
                          child: Icon(Icons.close))
                    ],
                  ),
                );
              },
            ),
            SizedBox(
              height: 16,
            ),
            StreamBuilder(
              stream: obSecure.stream,
              initialData: true,
              builder: (context, snapshot) {
                return Container(
                  padding:
                      EdgeInsets.only(left: 16, right: 16, bottom: 6, top: 8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.grey[200]),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: password,
                          obscureText: snapshot.data,
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                              labelText: "Password",
                              border: UnderlineInputBorder(
                                borderSide: BorderSide.none,
                              )),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      InkWell(
                          onTap: () {
                            if (snapshot.data == true) {
                              obSecure.add(false);
                            } else {
                              obSecure.add(true);
                            }
                          },
                          child: Icon(snapshot.data
                              ? Icons.visibility_off
                              : Icons.visibility))
                    ],
                  ),
                );
              },
            ),
            SizedBox(
              height: 40,
            ),
            InkWell(
              onTap: () {
                print(nohp.text);
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => MainMenu()));
              },
              child: Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: MyColors.primary),
                child: Text(
                  "Masuk",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
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
