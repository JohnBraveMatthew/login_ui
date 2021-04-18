import 'package:flutter/material.dart';
import 'package:login_ui/app1/screens/login.dart';

class FormFields extends StatefulWidget {
  @override
  _FormFieldsState createState() => _FormFieldsState();
}

class _FormFieldsState extends State<FormFields> {
  var name;
  var password;
  var email;
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        key: formKey,
        child: Column(
          children: [
            nameField(),
            SizedBox(height: 20),
            emailField(),
            SizedBox(height: 20),
            passwordField(),
            SizedBox(height: 20),
            createAccountButton(),
            SizedBox(height: 50),
            Text(
              "Already have an account?",
              textAlign: TextAlign.left,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            loginButton(),
          ],
        ),
      ),
    );
  }

  Widget nameField() {
    return Container(
      child: TextFormField(
        onSaved: (val) {
          name = val;
        },
        validator: (val) => (val.isEmpty) ? "Name cannot be blank" : null,
        style: TextStyle(color: Colors.white, fontSize: 18),
        decoration: InputDecoration(
          hintText: "Full name",
          hintStyle: TextStyle(
            fontStyle: FontStyle.italic,
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          labelText: "Name",
          labelStyle: TextStyle(
            color: Colors.white,
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.pink, width: 2)),
          border: OutlineInputBorder(),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  Widget emailField() {
    return Container(
      child: TextFormField(
        onSaved: (val) {
          email = val;
        },
        validator: (val) {
          if (val.isEmpty) {
            return "Name cannot be blank";
          } else if (!(val.contains("@"))) {
            return "Enter a valid email address";
          } else
            return null;
        },
        style: TextStyle(color: Colors.white, fontSize: 18),
        decoration: InputDecoration(
          hintText: "this@example.com",
          hintStyle: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic),
          labelText: "Email",
          labelStyle: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.pink, width: 2)),
          border: OutlineInputBorder(),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  //password field
  Widget passwordField() {
    return Container(
      child: TextFormField(
        onSaved: (val) {
          password = val;
        },
        validator: (val) {
          if (val.isEmpty) {
            return "Field cannot be blank";
          } else if (val.length < 6) {
            return "Field mus be at least 6 characters";
          } else
            return null;
        },
        obscureText: true,
        style: TextStyle(color: Colors.white, fontSize: 18),
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.security_outlined,
            color: Colors.white,
          ),
          labelText: "Password",
          labelStyle: TextStyle(
            color: Colors.white,
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.pink, width: 2)),
          border: OutlineInputBorder(),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  Widget createAccountButton() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [Colors.purple, Colors.pinkAccent]),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextButton(
        onPressed: () {
          if (formKey.currentState.validate()) {
            formKey.currentState.save();
          }
        },
        child: Text(
          "Create Account",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  Widget loginButton() {
    return Container(
      width: MediaQuery.of(context).size.width * 0.5,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [Colors.purple, Colors.pinkAccent]),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextButton(
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => Login())),
        child: Text(
          "Login",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
