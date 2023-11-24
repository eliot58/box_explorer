import 'package:flutter/material.dart';

class PersonPage extends StatefulWidget {
  const PersonPage({super.key});

  @override
  State<PersonPage> createState() => _PersonPageState();
}

class _PersonPageState extends State<PersonPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xffDCDCDC),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Image.asset("assets/img/foolcoin.png", width: 40, height: 40),
              const Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Text("Card game on TON", style: TextStyle(color: Color(0xff424242), fontSize: 20)),
                  ),
                  Text("View NFT", style: TextStyle(color: Color(0xff424242), fontSize: 14, fontWeight: FontWeight.w400))
                ],
              ),
              Image.asset("assets/img/ton.png", width: 40, height: 40)
            ],
          ),
          centerTitle: true
        ),
        backgroundColor: const Color(0xffffffff),
        body: const SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Text("В разработке", style: TextStyle(fontSize: 20)),
                  ),
                ),
                Text("Персонализация — добавление жетона в ваш токен, который будет содержать следующие данные:\nВаш Telegram login: <telegram login>\nВаш Telegram name: <telegram name>\n\nЭто действие стоит 2 ТОН на каждый имеющийся в вашем кошельке токен.\nВсего потребуется Х ТОН.\n\nЕсли недостаточно: Сечас у вас недостаточно средств для персонализации. Пополните свой кошелек и возвращайтесь.\n\nЕсли достаточно: Подтвердите действие, нажав на кнопку ниже.")
              ],
            ),
          )
        ),
      )
    );
  }
}