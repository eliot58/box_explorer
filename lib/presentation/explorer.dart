import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ExplorerPage extends StatefulWidget {
  final dynamic nfts;
  const ExplorerPage({super.key, required this.nfts});

  @override
  State<ExplorerPage> createState() => _ExplorerPageState();
}

class _ExplorerPageState extends State<ExplorerPage> {
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
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Wrap(
              spacing: 20,
              runSpacing: 20,
              children: <Widget>[
                for (var nft in widget.nfts) 
                  SizedBox(
                          width: 220,
                          height: 270,
                          child: Card(
                              child: Container(
                            decoration: const BoxDecoration(
                                gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.white,
                                Colors.grey,
                              ],
                            )),
                            child: Column(
                              children: <Widget>[
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 5, bottom: 7),
                                  child: Image.network(
                                      "https://ipfs.io/ipfs/${nft['metadata']['image'].split('//')[1]}",
                                      width: 200,
                                      height: 200),
                                ),
                                Container(
                                  color: const Color(0xffDCDCDC),
                                  padding:
                                      const EdgeInsets.only(top: 5, bottom: 5),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: <Widget>[
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(80),
                                            color: Colors.white),
                                        child: IconButton(
                                            onPressed: null,
                                            icon: SvgPicture.asset(
                                                "assets/img/arrow.svg")),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(80),
                                            color: Colors.white),
                                        child: IconButton(
                                            onPressed: null,
                                            icon: SvgPicture.asset(
                                                "assets/img/cat.svg")),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(80),
                                            color: Colors.white),
                                        child: const IconButton(
                                            onPressed: null,
                                            icon: Icon(CupertinoIcons
                                                .ellipsis_vertical),
                                            color: Color(0xff09B324)),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )),
                        )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
