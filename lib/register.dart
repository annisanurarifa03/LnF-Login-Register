import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:lnf_app/login.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
          body: Padding(
              padding: EdgeInsets.all(25),
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text(
                        "Daftar",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10), //spasi antar komponen
                      Text(
                        "Registrasi akun untuk melanjutkan!",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey[500],
                        ),
                      ),
                      SizedBox(height: 20), //spasi antar komponen
//INPUTAN
                      //NAMA LENGKAP
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 0, vertical: 5),
                        child: TextFormField(
                          style: TextStyle(
                            color: Colors.grey[900],
                            fontWeight: FontWeight.normal,
                            fontSize: 16,
                          ),
                          decoration: InputDecoration(
                              //border: InputBorder.none,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(18),
                              ),
                              prefixIcon: Icon(
                                Icons.person,
                                size: 25,
                              ),
                              labelText: "Nama Lengkap",
                              labelStyle: TextStyle(
                                fontSize: 16,
                                color: Colors.grey[400],
                                fontWeight: FontWeight.w800,
                              )),
                        ),
                      ),
                      SizedBox(height: 5),

                      //EMAIL
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 0, vertical: 5),
                        child: TextFormField(
                          style: TextStyle(
                            color: Colors.grey[900],
                            fontWeight: FontWeight.normal,
                            fontSize: 16,
                          ),
                          decoration: InputDecoration(
                              //border: InputBorder.none,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(18),
                              ),
                              prefixIcon: Icon(
                                Icons.mail,
                                size: 25,
                              ),
                              labelText: "Email",
                              labelStyle: TextStyle(
                                fontSize: 16,
                                color: Colors.grey[400],
                                fontWeight: FontWeight.w800,
                              )),
                        ),
                      ),
                      SizedBox(height: 5),

                      //NIM/NAMA PENGGUNA
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 0, vertical: 5),
                        child: TextFormField(
                          style: TextStyle(
                            color: Colors.grey[900],
                            fontWeight: FontWeight.normal,
                            fontSize: 16,
                          ),
                          decoration: InputDecoration(
                              //border: InputBorder.none,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(18),
                              ),
                              prefixIcon: Icon(
                                Icons.person,
                                size: 25,
                              ),
                              labelText: "NIM/Nama Pengguna",
                              labelStyle: TextStyle(
                                fontSize: 16,
                                color: Colors.grey[400],
                                fontWeight: FontWeight.w800,
                              )),
                        ),
                      ),
                      SizedBox(height: 5),

                      //KATA SANDI
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 0, vertical: 5),
                        child: TextFormField(
                          obscureText: true,
                          style: TextStyle(
                            color: Colors.grey[900],
                            fontWeight: FontWeight.normal,
                            fontSize: 16,
                          ),
                          decoration: InputDecoration(
                            //border: InputBorder.none,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                            prefixIcon: Icon(
                              Icons.lock,
                              size: 25,
                            ),
                            labelText: "Kata Sandi",
                            suffixIcon: Icon(
                              Icons.visibility,
                              color: Colors.grey,
                            ),
                            labelStyle: TextStyle(
                              fontSize: 16,
                              color: Colors.grey[400],
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 40),

                      //TOMBOL DAFTAR
                      SizedBox(
                        height: 50,
                        width: double.infinity,
                        child: FlatButton(
                          color: Theme.of(context).primaryColor,
                          textColor: Colors.white,
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18)),
                          child: Text(
                            "Daftar",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 25),

                      //TOMBOL KE HALAMAN MASUK
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Sudah memiliki akun? ",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Login()));
                            },
                            child: Text(
                              "Masuk",
                              style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ))),
    );
  }
}
