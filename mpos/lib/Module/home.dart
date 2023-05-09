import 'package:flutter/material.dart';
import 'package:mpos/Module/Promotions.dart';
import 'package:mpos/Module/finishpayment_view.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => FinishPaymentView(
                              memberName: "Jirawat",
                              poin: 15,
                              promotions: [
                                Promotions(
                                    promotioname: "ซื้อ 1 แถม 1",
                                    amount: 6,
                                    price: 5),
                                Promotions(
                                    promotioname: "ซื้อ 2 แถม 1",
                                    amount: 6,
                                    price: 5),
                                Promotions(
                                    promotioname: "ซื้อ 3 แถม 1",
                                    amount: 6,
                                    price: 5),
                              ],
                            )),
                  );
                },
                child: Text("สะสมแต้ม")),
            TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => FinishPaymentView(
                              memberName: "",
                              poin: 0,
                              promotions: [
                                Promotions(
                                    promotioname: "ซื้อ 1 แถม 1",
                                    amount: 6,
                                    price: 5),
                                Promotions(
                                    promotioname: "ซื้อ 2 แถม 1",
                                    amount: 6,
                                    price: 5),
                                Promotions(
                                    promotioname: "ซื้อ 3 แถม 1",
                                    amount: 6,
                                    price: 5),
                              ],
                            )),
                  );
                },
                child: Text("ไม่สะสมแต้ม"))
          ],
        ),
      ),
    );
  }
}
