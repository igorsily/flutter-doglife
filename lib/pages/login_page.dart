import 'package:doglife/pages/home_page.dart';
import 'package:doglife/pages/reset-password_page.dart';
import 'package:doglife/pages/signup_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          top: 60,
          left: 40,
          right: 40,
        ),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            SizedBox(
              width: 128,
              height: 128,
              child: Image.asset('assets/logo.png'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: TextFormField(
                // autofocus: true,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    labelText: 'E-mail',
                    labelStyle: TextStyle(
                      color: Colors.black38,
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    )),
                style: TextStyle(fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: TextFormField(
                // autofocus: true,
                keyboardType: TextInputType.text,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Senha',
                  labelStyle: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),
                ),
                style: TextStyle(fontSize: 20),
              ),
            ),
            Container(
              height: 40,
              alignment: Alignment.centerRight,
              child: FlatButton(
                child: Text(
                  "Recuperar Senha",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResetPasswordPage(),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                height: 60,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [0.3, 1],
                    colors: [
                      Color(0xFFF58524),
                      Color(0xFFF92B7F),
                    ],
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                child: SizedBox.expand(
                  child: FlatButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Login',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        Container(
                          child: SizedBox(
                            height: 28,
                            width: 28,
                            child: Image.asset('assets/bone.png'),
                          ),
                        )
                      ],
                    ),
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                height: 60,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: Color(0xFF3C5A99),
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                child: SizedBox.expand(
                  child: FlatButton(
                    onPressed: null,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Login com Facebook',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        Container(
                          child: SizedBox(
                            height: 28,
                            width: 28,
                            child: Image.asset('assets/fb-icon.png'),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 40,
              alignment: Alignment.center,
              child: FlatButton(
                child: Text(
                  "Cadastre-se",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignUpPage(),
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
