import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.deepPurple[500],
        appBarTheme: AppBarTheme(
          color: Colors.orange,
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
          systemOverlayStyle:
          SystemUiOverlayStyle(statusBarBrightness: Brightness.light),
          titleTextStyle: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sign In',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        leading: Icon(Icons.arrow_back_ios),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Welcome Back,',
              style: TextStyle(
                color: Colors.deepPurple[200],
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Login back into your account",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            SignInForm(),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class SignInForm extends StatefulWidget {
  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final FocusNode focusNode1 = FocusNode();
  final FocusNode focusNode2 = FocusNode();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    focusNode1.addListener(() {
      setState(() {});
    });
    focusNode2.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 55.0),
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                      bottomLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0),
                    ),
                  ),
                  height: MediaQuery.of(context).size.height / 2.5,
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextFormField(
                          focusNode: focusNode1,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            labelStyle: TextStyle(
                              fontSize: 18.0,
                              color: focusNode1.hasFocus
                                  ? Colors.orange.shade100
                                  : Colors.deepPurple[400],
                            ),
                            labelText: "Email",
                            hintText: "Enter your email",
                            prefixIcon: Icon(
                              Icons.email_outlined,
                              color: focusNode1.hasFocus
                                  ? Colors.orange.shade100
                                  : Colors.deepPurple[400],
                            ),
                            hintStyle: TextStyle(
                              color: Colors.white60,
                            ),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 20.0, horizontal: 30.0),
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.orange.shade100,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(30.0),
                              gapPadding: 10.0,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.deepPurple[400],
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(30.0),
                              gapPadding: 10.0,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40.0,
                          width: double.infinity,
                        ),
                        TextFormField(
                          obscureText: true,
                          focusNode: focusNode2,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            labelStyle: TextStyle(
                              fontSize: 18.0,
                              color: focusNode2.hasFocus
                                  ? Colors.orange.shade100
                                  : Colors.deepPurple[400],
                            ),
                            labelText: "Password",
                            hintText: "Enter your password",
                            prefixIcon: Icon(
                              Icons.lock_outline,
                              color: focusNode2.hasFocus
                                  ? Colors.orange.shade100
                                  : Colors.deepPurple[400],
                            ),
                            hintStyle: TextStyle(
                              color: Colors.white60,
                            ),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 20.0, horizontal: 30.0),
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.orange.shade100,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(30.0),
                              gapPadding: 10.0,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.deepPurple[400],
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(30.0),
                              gapPadding: 10.0,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 50.0,
                          width: double.infinity,
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: TextButton(
                              child: Text(
                                "Forgot your password?",
                                textAlign: TextAlign.right,
                                style: TextStyle(color: Colors.white60),
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: 50.0,
                          child: ElevatedButton(
                            // focusNode: focusNode3,
                            onPressed: () {},
                            child: Text("LOG IN"),
                            style: ElevatedButton.styleFrom(
                              primary:  Colors.deepPurple[300],
                              //shadowColor: focusNode3.hasFocus ? Colors.lightGreen : Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 0.0,
                  left: MediaQuery.of(context).size.width - 200,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.deepPurple.shade200,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(100.0),
                        bottomLeft: Radius.circular(100.0),
                        bottomRight: Radius.circular(100.0),
                      ),
                    ),
                    width: 100.0,
                    height: 100.0,
                    child: CircleAvatar(
                      backgroundImage:
                      NetworkImage('https://picsum.photos/250?image=9'),
                      radius: 50.0,
                      backgroundColor: Colors.deepPurple.shade300,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Don\'t have an account yet? ',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16.0,
                ),
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Join Now",
                    style: TextStyle(
                      color: Colors.deepPurple[200],
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
