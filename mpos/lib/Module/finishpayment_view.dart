import 'package:flutter/material.dart';
import 'package:mpos/Module/Promotions.dart';
import 'package:mpos/Module/finishpayment_view_model.dart';
import 'package:mpos/Module/memberdata.dart';

class FinishPaymentView extends StatefulWidget {
  final Memberdata? memberdata;
  final double change;
  final List<Promotions> promotions;
  const FinishPaymentView(
      {Key? key,
      required this.memberdata,
      required this.promotions,
      required this.change})
      : super(key: key);

  @override
  State<FinishPaymentView> createState() => _FinishState();
}

class _FinishState extends State<FinishPaymentView> {
  final FinishpaymentViewModel _viewModel = FinishpaymentViewModel();
  bool isVisible = true;
  @override
  initState() {
    if (widget.memberdata?.memberUsername == null) {
      setState(() {
        isVisible = false;
      });
    }
    super.initState();
  }

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
                              itemCount: widget.promotions.length,
                              itemBuilder: (BuildContext context, int index) {
                                return ListTile(
                                    title: Text(
                                  "• โปรโมชั่น ${widget.promotions[index].promotioname}",
                                  style: const TextStyle(
                                      fontSize: 20, color: Color(0xFF0E4E89)),
                                ));
                              }),
                        ))
                  ],
                ),
              ),

              Visibility(
                visible: isVisible,
                child: Container(
                  padding: const EdgeInsets.all(16),
                  height: 120,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "ชื่อ : ${widget.memberdata?.memberUsername}",
                        style:
                            TextStyle(fontSize: 20, color: Color(0xFF0E4E89)),
                      ),
                      const Text(
                        "สะสมแต้ม",
                        style:
                            TextStyle(fontSize: 20, color: Color(0xFF0E4E89)),
                      ),
                      Text(
                        "จำนวนเต้ม : ${widget.memberdata?.point}",
                        style:
                            TextStyle(fontSize: 20, color: Color(0xFF0E4E89)),
                      )
                    ],
                  ),
                ),
              ),

              Container(
                  margin: const EdgeInsets.all(16),
                  child: Text(
                    "เงินทอน ${widget.change} บาท",
                    style: const TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )),

              Container(
                height: 50,
                width: 300,
                margin: const EdgeInsets.all(8),
                child: ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.grey),
                    onPressed: () {
                      //print(widget.memberName);
                    },
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
                margin: const EdgeInsets.all(8),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFD2E6F9)),
                    onPressed: () {
                      setState(() {});
                    },
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
