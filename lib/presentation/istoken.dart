import 'package:durak/presentation/explorer.dart';
import 'package:flutter/material.dart';

class IsTokenPage extends StatefulWidget {
  final dynamic nfts;
  const IsTokenPage({super.key, required this.nfts});

  @override
  State<IsTokenPage> createState() => _IsTokenPageState();
}

class _IsTokenPageState extends State<IsTokenPage> {

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
                    child: Text("Card game on TON",
                        style:
                            TextStyle(color: Color(0xff424242), fontSize: 20)),
                  ),
                  Text("View NFT",
                      style: TextStyle(
                          color: Color(0xff424242),
                          fontSize: 14,
                          fontWeight: FontWeight.w400))
                ],
              ),
              Image.asset("assets/img/ton.png", width: 40, height: 40)
            ],
          ),
          centerTitle: true),
      backgroundColor: const Color(0xffffffff),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: <Widget>[
            const Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text("Куда отправимся?", style: TextStyle(fontSize: 20)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: SizedBox(
                width: 400,
                height: 40,
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(const Color(0xffDCDCDC))),
                    onPressed: null,
                    child: const Text("Overview",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color(0xff424242),
                            fontSize: 18),
                        textAlign: TextAlign.center)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: SizedBox(
                width: 400,
                height: 40,
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(const Color(0xffDCDCDC))),
                    onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> ExplorerPage(nfts: widget.nfts)));
                    },
                    child: const Text("View NFT",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color(0xff424242),
                            fontSize: 18),
                        textAlign: TextAlign.center)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: SizedBox(
                width: 400,
                height: 40,
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(const Color(0xffDCDCDC))),
                    onPressed: null,
                    child: const Text("+ / * -",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color(0xff424242),
                            fontSize: 18),
                        textAlign: TextAlign.center)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: SizedBox(
                width: 400,
                height: 40,
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(const Color(0xffDCDCDC))),
                    onPressed: null,
                    child: const Text("Персонализировать мои NFT",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color(0xff424242),
                            fontSize: 18),
                        textAlign: TextAlign.center)),
              ),
            ),
          ],
        ),
      )),
    ));
  }
}
