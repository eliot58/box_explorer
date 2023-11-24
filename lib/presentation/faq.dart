import 'package:flutter/material.dart';

class FAQPage extends StatefulWidget {
  const FAQPage({super.key});

  @override
  State<FAQPage> createState() => _FAQPageState();
}

class _FAQPageState extends State<FAQPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff061a03),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: <Widget>[
                const Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 120, bottom: 20),
                    child: Text("Ты можешь задать мне любой вопрос, касающегося данного проекта, написав прям тут, ниже. Я обязательно тебе на него отвечу. Но перед этим прочти FAQ.", style: TextStyle(color: Color(0xff16b62f), fontSize: 18), textAlign: TextAlign.start),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: SizedBox(
                    width: 400,
                    height: 40,
                    child: ElevatedButton(
                      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(const Color(0xff16b62f))),
                      onPressed: null, 
                      child: const Text("Открыть FAQ", style: TextStyle(fontWeight: FontWeight.w500, color: Colors.black, fontSize: 18), textAlign: TextAlign.center)
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}