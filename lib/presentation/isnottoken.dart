import 'package:flutter/material.dart';

class IsNotTokenPage extends StatefulWidget {
  const IsNotTokenPage({super.key});

  @override
  State<IsNotTokenPage> createState() => _IsNotTokenPageState();
}

class _IsNotTokenPageState extends State<IsNotTokenPage> {
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
              Image.asset("assets/img/ton1.png", width: 40, height: 40)
            ],
          ),
          centerTitle: true
        ),
        backgroundColor: const Color(0xffffffff),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: <Widget>[
                const Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Text("Упс... \nЯ не нашел в твоем кошельке наш NFT.\n\n Давай я познакомлю тебя с ними поближе. \nСмотри:", style: TextStyle(fontSize: 20)),
                  ),
                ),
                const Text("– Первый токен — Gamer. Каждый из них дает тебе возможность получить 5 дополнительных JetTon при каждом заходе в игру, но не чаще, чем 1 раз в сутки, которые можно тратить на игры и внутриигровые потребности. Больше токенов — больше дополнительных JetTon.", style: TextStyle(fontSize: 18)),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: SizedBox(
                    width: 400,
                    height: 40,
                    child: ElevatedButton(
                      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(const Color(0xffDCDCDC))),
                      onPressed: null, 
                      child: const Text("Посмотреть на токен Gamer", style: TextStyle(fontWeight: FontWeight.w500, color: Color(0xff424242), fontSize: 18), textAlign: TextAlign.center)
                    ),
                  ),
                ),
                const Text("– Второй токен — Shuler. Он сделает тебя прозрачным для крупье. Один такой токен сделает тебя прозрачным на половину: вернется 50 % комиссионных. Два токена сделают тебя полностью прозрачным: комиссия возвращается полностью. Третий такой токен бесполезен в одном кошельке. Но его можно подарить. ", style: TextStyle(fontSize: 18)),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: SizedBox(
                    width: 400,
                    height: 40,
                    child: ElevatedButton(
                      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(const Color(0xffDCDCDC))),
                      onPressed: null, 
                      child: const Text("Посмотреть на токен Shuler", style: TextStyle(fontWeight: FontWeight.w500, color: Color(0xff424242), fontSize: 18), textAlign: TextAlign.center)
                    ),
                  ),
                ),
                const Text("– Третий  токен — Investor, даст возможность получать ежемесячный пассивный доход, распределяемый равными долями, из общего пула. Больше токенов — больше долей — больше доход. ", style: TextStyle(fontSize: 18)),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 100),
                  child: SizedBox(
                    width: 400,
                    height: 40,
                    child: ElevatedButton(
                      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(const Color(0xffDCDCDC))),
                      onPressed: null, 
                      child: const Text("Посмотреть на токен Investor", style: TextStyle(fontWeight: FontWeight.w500, color: Color(0xff424242), fontSize: 18), textAlign: TextAlign.center)
                    ),
                  ),
                ),
              ],
            ),
          )
        ),
      )
    );
  }
}