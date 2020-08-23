import 'package:flutter/material.dart';

class Transfer extends StatefulWidget {
  @override
  _TransferState createState() => _TransferState();
}

class _TransferState extends State<Transfer> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "TRANSFER",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        body: Container(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: 16),
                alignment: Alignment.centerLeft,
                height: 40,
                width: double.infinity,
                color: Colors.grey[200],
                child: Text(
                  "Pilih Bank Tujuan",
                  style: TextStyle(
                    color: Colors.black54,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 400,
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                      SizedBox(height: 8),
                      InkWell(
                        onTap: () {
                          print("bank-bri");
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          height: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Bank BRI",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    "img/bank-bri.png",
                                    height: 20,
                                  ),
                                  SizedBox(width: 20),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.grey,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Divider(
                          color: Colors.grey,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          print("bank-bni");
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          height: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Bank BNI",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    "img/bank-bni.png",
                                    height: 20,
                                  ),
                                  SizedBox(width: 20),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.grey,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Divider(
                          color: Colors.grey,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          print("bank-mandiri");
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          height: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Bank Mandiri",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    "img/bank-mandiri.png",
                                    height: 25,
                                  ),
                                  SizedBox(width: 20),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.grey,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Divider(
                          color: Colors.grey,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          print("bank-bca");
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          height: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Bank BCA",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    "img/bank-bca.png",
                                    height: 20,
                                  ),
                                  SizedBox(width: 20),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.grey,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Divider(
                          color: Colors.grey,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          print("bank-bcasyariah");
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          height: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Bank BCA Syariah",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    "img/bank-bcasyariah.png",
                                    height: 18,
                                  ),
                                  SizedBox(width: 20),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.grey,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Divider(
                          color: Colors.grey,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          print("bank-btpn");
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          height: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Bank BTPN",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    "img/bank-btpn.png",
                                    height: 35,
                                  ),
                                  SizedBox(width: 20),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.grey,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Divider(
                          color: Colors.grey,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          print("bank-cimbniaga");
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          height: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Bank CIMB Niaga",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    "img/bank-cimbniaga.png",
                                    height: 15,
                                  ),
                                  SizedBox(width: 20),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.grey,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Divider(
                          color: Colors.grey,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          print("bank-mega");
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          height: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Bank Mega",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    "img/bank-mega.png",
                                    height: 35,
                                  ),
                                  SizedBox(width: 20),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.grey,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Divider(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
