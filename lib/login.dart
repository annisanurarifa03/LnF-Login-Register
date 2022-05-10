import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:lnf_app/register.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.all(25),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Image.asset(
                      'assets/images/welcome.png',
                      width: 270,
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Selamat datang!",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10), //spasi antar komponen
                    Text(
                      "Cari dan lapor barang yang ada di sekitar Telkom University!",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[500],
                      ),
                    ),
                    SizedBox(height: 20), //spasi antar komponen

//INPUTAN
                    //NAMA PENGGUNA
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 5),
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
                              color: Theme.of(context).primaryColor,
                              size: 25,
                            ),
                            labelText: "ID/NIM/Nama Pengguna",
                            labelStyle: TextStyle(
                              fontSize: 16,
                              color: Colors.grey[400],
                              fontWeight: FontWeight.w800,
                            )),
                      ),
                    ),
                    SizedBox(height: 6),

                    //KATA SANDI/PASSWORD
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 5),
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
                            color: Theme.of(context).primaryColor,
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

                    //TOMBOL LUPA PASSWORD
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Lupa kata sandi",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 6),

                    //TOMBOL MASUK
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
                          "Masuk",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 25),

                    //TOMBOL KE HALAMAN REGISTRASI
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Belum memiliki akun? ",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Register()));
                          },
                          child: Text(
                            "Daftar",
                            style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )));
  }
}
