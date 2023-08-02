import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:project/login/userlogin.dart';



class Registration_page extends StatefulWidget {
  const Registration_page({Key? key}) : super(key: key);

  @override
  State<Registration_page> createState() => _Registration_pageState();
}
var fnameController=TextEditingController();

class _Registration_pageState extends State<Registration_page> {
  bool _checkbox=false;
  var fnameController=TextEditingController();
  var lnameController=TextEditingController();
  var femailController=TextEditingController();
  var passwordController=TextEditingController();
  var cpasswordController=TextEditingController();

  var fname='',lname='',email='',password='',cpassword='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text('Swiggy'),
        // centerTitle: true,
      ),
      body: ListView(children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // SizedBox(
            //   height: 30,
            // ),
            Padding(
              padding: const EdgeInsets.all(8.0),


            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'CREATE ACCOUNT',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey,
                    fontSize: 30),
              ),
            ),
            // TextField(
            //   decoration: InputDecoration(
            //     border: OutlineInputBorder()
            //   ),
            // // ),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 60),
            //   child: SizedBox(
            //     width: 500,
            //     height: 100,
            //
            //     //   child: Image.network(
            //     //       'https://ajwafamilyrestaurant.in/images/assets/s.png'),
            //   ),
            //),//
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: fnameController,
                decoration: InputDecoration(
                    labelText: 'Enter your first name', border: OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: lnameController,
                decoration: InputDecoration(
                    labelText: 'Enter your last name', border: OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: femailController,
                decoration: InputDecoration(
                    labelText: 'Enter your email',
                    border: OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: femailController,
                decoration: InputDecoration(
                    labelText: 'Enter your phone number ',
                    border: OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: femailController,
                decoration: InputDecoration(
                    labelText: 'Enter your  permanent Adress',
                    border: OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: femailController,
                decoration: InputDecoration(
                    labelText: 'Enter your Liscence number',
                    border: OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: femailController,
                decoration: InputDecoration(
                    labelText: 'Enter your  vehicle number',
                    border: OutlineInputBorder()),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              // child: SizedBox(
              //   height: 30,
              // ),
            ),
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: InputDecoration(
                    labelText: 'Enter Password', border: OutlineInputBorder()),
              ),
            ),
            // SizedBox(
            //   height: 30,
            // ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: cpasswordController,
                obscureText: true,
                decoration: InputDecoration(
                    labelText: 'Confirm password',
                    border: OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Row(

                children: [
                  Checkbox(

                    value: _checkbox,
                    onChanged: (value) {
                      setState(() {
                        _checkbox = !_checkbox;
                      });
                    },
                  ),
                  // SizedBox(width: 300,
                  //   child: Text(
                  //
                  //     "Terms & conditions",
                  //     maxLines: 2,
                  //     textAlign: TextAlign.left,
                  //     overflow: TextOverflow.ellipsis,
                  //   ),
                  // ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton(onPressed: () {}, child:  Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Icon(Icons.file_upload),
    SizedBox(width: 8),
    Text('Upload Drivers Liscence'),
    ],
    ),
    style: TextButton.styleFrom(
    primary: Theme.of(context).primaryColor,
    textStyle: TextStyle(fontWeight: FontWeight.bold),
    ),

    ),
                  )
                  // TextButton(onPressed: () {
                  //
                  // }, child:
                  //
                  // Text('privacy policy')),
                  // TextButton(
                  //     onPressed: () {}, child: Text('terms and conditions')),
                ],
              ),
            ),

            Center(
              child: Row(
                children: [
                  Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                    child: ElevatedButton(
                        onPressed: () {
                          setState(() {


                            fname=fnameController.text;
                            lname=lnameController.text;
                            email=femailController.text;
                            password=passwordController.text;
                            cpassword=cpasswordController.text;
                            if(fname.isEmpty){
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text('Enter your first name'))
                              );
                            }
                            else if (lname.isEmpty){
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text('Enter your last name'))
                              );
                            }
                            else if (email.isEmpty){
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text('Enter your email'))
                              );
                            }
                            else if(password.isEmpty){
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text('Enter your password'))
                              );
                            }
                            if(cpassword.isEmpty){
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text('Enter your password'))
                              );
                            }
                            else if(password!=cpassword){
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text('password must be same')));
                            }
                            else
                            {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Login_page(),));
                            }
                          });
                        },
                        child: Text('Register'),
                        //
                        // style: ElevatedButton.styleFrom(
                        //     shape: RoundedRectangleBorder(
                        //         borderRadius: BorderRadius.circular(10)))
                    ),

                  ),
                  Text(fname,),Text(lname),Text(email),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 0),
                    child: ElevatedButton.icon(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => Login_page(),));
                      },
                      label: Text('Login'),
                      // style: ElevatedButton.styleFrom(
                      //     shape: RoundedRectangleBorder(
                      //         borderRadius: BorderRadius.circular(10)))

                      icon: Icon(
                        // <-- Icon
                        Icons.add,
                        size: 24.0,
                      ),
                      // <-- Text
                    ),
                  ),

                ],
              ),
            )

          ],
        ),

      ]),
    );
  }
}
