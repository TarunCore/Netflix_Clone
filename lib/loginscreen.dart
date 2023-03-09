import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LogInScreen extends StatefulWidget {
  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  Color whiteclr = Colors.white;
  Color blackclr = Colors.black;
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: blackclr,
      body: Column(
        children: <Widget>[
          SafeArea(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: IconButton(
                      onPressed: (){Navigator.of(context).pop();},
                      icon: Icon(
                        Icons.arrow_back,
                        color: whiteclr,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Image(
                      width: w / 4.5,
                      image: AssetImage('assets/netflixlogo.png'),
                    ),
                  ),


                ],
              )),
          SizedBox(height: h/15,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 10.0),
            child: TextField(
              style: TextStyle(color: Colors.white,fontSize: 20),
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey.shade700),borderRadius: BorderRadius.circular(6)),
                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey.shade700),borderRadius: BorderRadius.circular(6)),
                fillColor: Colors.grey[700],
                filled: true,
                hintText: "Email or Phone Number",
                hintStyle: TextStyle(color: Colors.grey.shade400),

              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 10.0),
            child: TextField(
              style: TextStyle(color: Colors.white,fontSize: 20),
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey.shade700),borderRadius: BorderRadius.circular(6)),
                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey.shade700),borderRadius: BorderRadius.circular(6)),
                fillColor: Colors.grey[700],
                filled: true,
                hintText: "Password",
                hintStyle: TextStyle(color: Colors.grey.shade400),

              ),
            ),
          ),


          SizedBox(height: h/60,),


          Container(
            width: w/1.1,
            height: h*.07,
            decoration: BoxDecoration(color: Colors.black,border: Border.all(color: Colors.white),borderRadius: BorderRadius.circular(5)),

            child: Padding(
              padding: const EdgeInsets.all(13.0),
              child: Center(
                child: Text('Sign In',style:GoogleFonts.poppins(
                    fontSize: 19,
                    color: Colors.white,
                    fontWeight: FontWeight.w400),),
              ),
            ),

          ),
          // Container(
          //   width: w/1.1,
          //   height: h*.07,
          //   decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(5)),
          //   child: Padding(
          //     padding: const EdgeInsets.all(16.0),
          //     child: Center(
          //       child: Text('Sign In',style:GoogleFonts.rubik(
          //           fontSize: 20,
          //           color: Colors.white,
          //           fontWeight: FontWeight.w600),),
          //     ),
          //   ),
          //
          // ),
          SizedBox(height: h/45,),
          Text("Need help?",style: GoogleFonts.poppins(fontSize: 16,color: Colors.grey.shade300,fontWeight: FontWeight.w300)),
          SizedBox(height: h/45,),
          Text("New to Netflix? Sign Up now.",style: GoogleFonts.poppins(fontSize: 16,color: Colors.grey.shade300,fontWeight: FontWeight.w500)),
          SizedBox(height: h/30,),
          // Container(
          //   width: w/1.1,
          //   height: h*.07,
          //   decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(5)),
          //   child: Padding(
          //     padding: const EdgeInsets.all(16.0),
          //     child: Center(
          //       child: Text('Recover Password',style:GoogleFonts.rubik(
          //           fontSize: 18,
          //           color: Colors.white,
          //           fontWeight: FontWeight.w600),),
          //     ),
          //   ),
          //
          // ),

        ],
      ),
    );
  }
}