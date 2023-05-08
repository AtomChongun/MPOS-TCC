import 'package:flutter/material.dart';
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
                        builder: (context) =>
                            FinishPaymentView(memberName: "Jirawat", poin: 15)),
                  );
                },
                child: Text("สะสมแต้ม")),
            TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            FinishPaymentView(memberName: "", poin: 0)),
                  );
                },
                child: Text("ไม่สะสมแต้ม"))
          ],
        ),
      ),
    );
  }
}
