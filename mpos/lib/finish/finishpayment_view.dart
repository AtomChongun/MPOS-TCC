import 'package:flutter/material.dart';

class FinishPaymentView extends StatefulWidget {
  const FinishPaymentView({super.key});

  @override
  State<FinishPaymentView> createState() => _FinishState();
}

class _FinishState extends State<FinishPaymentView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF0E4E89),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.check_circle_outline,
                color: Colors.white,
                size: 100,
              ),
              const Text(
                "การดำเนินงานเสร็จสิ้น",
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              //Promotion
              Container(
                margin: const EdgeInsets.all(8),
                height: 150,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Row(
                      children: const [
                        Icon(
                          Icons.account_box_sharp,
                          color: Color(0xFF0E4E89),
                          size: 50,
                        ),
                        Text(
                          "โปรโมชั่นที่ได้รับ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Color(0xFF0E4E89)),
                        )
                      ],
                    ),
                    SizedBox(
                        height: 100,
                        child: Expanded(
                          child: ListView.builder(
                              itemCount: 15,
                              itemBuilder: (BuildContext context, int index) {
                                return ListTile(
                                    title: Text(
                                  "• โปรโมชั่น $index",
                                  style: TextStyle(
                                      fontSize: 20, color: Color(0xFF0E4E89)),
                                ));
                              }),
                        ))
                  ],
                ),
              ),

              Container(
                  margin: const EdgeInsets.all(8),
                  height: 120,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                  ),
                  child: Container(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "ชื่อ : username",
                          style:
                              TextStyle(fontSize: 20, color: Color(0xFF0E4E89)),
                        ),
                        Text(
                          "จำนวนแต้ม",
                          style:
                              TextStyle(fontSize: 24, color: Color(0xFF0E4E89)),
                        ),
                        Text(
                          "แต้มสะสมทั้งหมด : 2000",
                          style:
                              TextStyle(fontSize: 20, color: Color(0xFF0E4E89)),
                        ),
                      ],
                    ),
                  )),
              Container(
                  margin: EdgeInsets.all(16),
                  child: Text(
                    "เงินทอน 55.50 บาท",
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )),

              //แต้ม
              Container(
                height: 50,
                width: 300,
                margin: const EdgeInsets.all(4),
                child: ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.grey),
                    onPressed: () {},
                    child: const Text(
                      "รับใบเสร็จ",
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    )),
              ),

              Container(
                height: 50,
                width: 300,
                margin: const EdgeInsets.all(4),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFD2E6F9)),
                    onPressed: () {},
                    child: const Text(
                      "กลับหน้าแรก",
                      style: TextStyle(fontSize: 24, color: Color(0xFF0E4E89)),
                    )),
              ),
            ],
          ),
        ));
  }
}
