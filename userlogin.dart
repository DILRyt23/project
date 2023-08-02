import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
// import 'package:project2/day1/homepage.dart';

class Login_page extends StatefulWidget {
  const Login_page({Key? key}) : super(key: key);

  @override
  State<Login_page> createState() => _Login_pageState();
}

class _Login_pageState extends State<Login_page> {
  var femailController=TextEditingController();
  var passwordController=TextEditingController();

  var password='',email='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page',selectionColor: Colors.grey),
        centerTitle: true,
      ),

      body: ListView(children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: SizedBox(
                width: 500,
                height: 100,

                child: Image.network(
                    'data:image/jpeg;base64,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')

              ),

            ),
                 Text('Government of kerala'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 30,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: TextField(
                controller: femailController,
                decoration: InputDecoration(
                    labelText: 'Enter Mail adress',
                    border: OutlineInputBorder()),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                    labelText: 'Enter password', border: OutlineInputBorder()),
              ),
            ),
            SizedBox(
                width: 200,
                child: ElevatedButton(onPressed: () {
                  setState(() {
                    email=femailController.text;
                    password=passwordController.text;

                    if (email.isEmpty){
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Enter your email'))
                      );
                    }
                    else if(password.isEmpty){
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Enter your password'))
                      );
                    }

                    // else
                    // {
                    //   Navigator.push(context, MaterialPageRoute(
                    //     builder: (context) => HomePage(),));
                    // }
                  });

                },

                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Login'),
                    ))),
            TextButton(onPressed: () {}, child: Text('forgot password')),
            SizedBox(height: 16),
            GestureDetector(
              // onTap: _navigateToRegistrationPage,
              child:  TextButton(onPressed: () {}, child: Text(
                'Don\'t have an account? Register here.',style: TextStyle(color:
              Theme.of(context).primaryColor,
                fontSize: 16,
                decoration: TextDecoration.underline,),)),
            ),
          ],
        ),
      ]),
    );
  }
}
