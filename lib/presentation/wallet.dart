import 'dart:developer';

import 'package:darttonconnect/ton_connect.dart';
import 'package:dio/dio.dart';
import 'package:durak/presentation/isnottoken.dart';
import 'package:durak/presentation/istoken.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class WalletPage extends StatefulWidget {
  const WalletPage({super.key});

  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  final TonConnect connector = TonConnect(
      'https://gist.githubusercontent.com/romanovichim/e81d599a6f3798bb9f74ab1970a8b376/raw/43e00b0abc824ef272ac6d0f8083d21456602adf/gistfiletest.txt');
  Map<String, String>? walletConnectionSource;
  String universalLink = 'https://app.tonkeeper.com/ton-connect';

  dynamic getNFTItems(String address) async {
    Dio dio = Dio();

    try {
      Response response = await dio.get(
          'https://tonapi.io/v2/accounts/$address/nfts?collection=EQC-LrIDjeLfH8phxxc9tTPLOrHHv-C5KTteRVVa2_je523N&limit=1000&offset=0&indirect_ownership=false');

      return response.data;
    } catch (e) {
      log('Error: $e');
    }
  }

  void initialConnect() async {
    const walletConnectionSource = {
      "universalUrl": 'https://app.tonkeeper.com/ton-connect',
      "bridgeUrl": 'https://bridge.tonapi.io/bridge'
    };

    final universalLink = await connector.connect(walletConnectionSource);

    if (!await launchUrl(Uri.parse(universalLink))) {
      throw Exception('Could not launch $universalLink');
    }

    connector.onStatusChange((walletInfo) async {
      dynamic nfts = await getNFTItems(walletInfo.account.address);
      if (!mounted) return;
      if (nfts["nft_items"].length == 0) {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const IsNotTokenPage()));
      } else {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) => IsTokenPage(nfts: nfts["nft_items"])));
      }
    });
  }

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
              Image.asset("assets/img/ton1.png", width: 40, height: 40)
            ],
          ),
          centerTitle: true),
      backgroundColor: const Color(0xffffffff),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Text(
                  "Привет! \nРады видеть тебя!\n\nВ настоящее время я помогаю своим создателям собрать средства на создание p2p карточной игры, которая будет базироваться на блокчейне ТОН и будет доступна как Web-аpp в боте Телеграма.\n\nСредства мы собираем через продажу NFT.\nВсего существует несколько видов токенов, обладание которыми даст игроку некоторые преимущества, не связанные с честностью в игре. Честность в игре будет гарантироваться наличием хэша раздачи и логированием каждого действия.\n\nДля продолжения Вам необходимо авторизоваться, для чего необходимо нажать на кнопку подключение кошелька.",
                  style: TextStyle(fontSize: 20)),
            ),
            SizedBox(
              width: 400,
              height: 40,
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xffDCDCDC))),
                  onPressed: initialConnect,
                  child: const Text("Подключить кошелек",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Color(0xff424242),
                          fontSize: 18),
                      textAlign: TextAlign.center)),
            ),
          ],
        ),
      )),
    ));
  }
}
