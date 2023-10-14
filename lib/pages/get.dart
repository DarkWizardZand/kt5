
import 'package:flutter/material.dart';

class Get extends StatefulWidget {
  const Get({super.key, required this.title});
  final String title;

  @override
  State<Get> createState() => _Login();
}

class _Login extends State<Get> {
  final TextEditingController taxEmail = TextEditingController();
  final TextEditingController taxPassword = TextEditingController();

  @override
Widget build(BuildContext context) {
    // double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: deviceHeight*0.3,),
            Center(
              child: Column(
                children:[
                  SizedBox(
                    child: TextButton(
                      style: TextButton.styleFrom(foregroundColor: Colors.amber,backgroundColor: Colors.black) ,
                      onPressed: () async{
                        },
                      child: const Text("Авторизация"))
                  ),
                ]
              ),
            ),
            SizedBox(height: deviceHeight*0.25,),
            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                child: Column(
                  children: [
                    const Text('Нет аккаунта, зарегистрируйтесь!'),
                    TextButton(
                      style: TextButton.styleFrom(foregroundColor: Colors.amber,backgroundColor: Colors.black) ,
                      onPressed: () {
                        Navigator.of(context).pushReplacementNamed("/register");
                        },
                      child: const Text("Регистрация"))
                        ],
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}
