import 'package:flutter/material.dart';
import 'package:mpos/Module/Promotions.dart';
import 'package:mpos/Module/finishpayment_data.dart';
import 'package:mpos/Module/finishpayment_view_model.dart';
import 'package:mpos/Module/home.dart';
import 'package:mpos/Module/memberdata.dart';

class FinishPaymentView extends StatefulWidget {
  /*final Memberdata? memberdata;
  final double? change;
  final List<Promotions> promotions;
  const FinishPaymentView(
      {Key? key,
      required this.memberdata,
      required this.promotions,
      required this.change})
      : super(key: key);*/

  @override
  State<FinishPaymentView> createState() => _FinishState();
}

class _FinishState extends State<FinishPaymentView> {
  FinishpaymentViewModel viewModel = FinishpaymentViewModel();

  bool isVisibleMember = true;
  bool isVisiblePromo = true;
  bool isVisibleChange = true;
  @override
  initState() {
    /*if (_viewModel.getmemberDetail() == null) {
      setState(() {
        isVisibleMember = false;
      });
    }
    if (_viewModel. == null) {
      setState(() {
        isVisiblePromo = false;
      });
    }*/
    //_viewModel.getmemberDetail();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF0E4E89),
        body: Container(
          margin: const EdgeInsets.all(16),
          child: Center(
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
                Visibility(
                  visible: isVisiblePromo,
                  child: Container(
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
                              Icons.wallet_giftcard,
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
                        /*SizedBox(
                            height: 100,
                            child: Expanded(
                              child: ListView.builder(
                                  itemCount: _viewModel
                                      .finishpaymentData?.promotions.length,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return ListTile(
                                        title: Text(
                                      "• โปรโมชั่น ${_viewModel.finishpaymentData!.promotions[index].promotioname}",
                                      style: const TextStyle(
                                          fontSize: 20,
                                          color: Color(0xFF0E4E89)),
                                    ));
                                  }),
                            ))*/
                      ],
                    ),
                  ),
                ),

                Visibility(
                  visible: isVisibleMember,
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
                          "ชื่อ : ${viewModel.finishpaymentData?.memberdata?.memberUsername}",
                          style: const TextStyle(
                              fontSize: 20, color: Color(0xFF0E4E89)),
                        ),
                        const Text(
                          "สะสมแต้ม",
                          style:
                              TextStyle(fontSize: 20, color: Color(0xFF0E4E89)),
                        ),
                        Text(
                          "จำนวนเต้ม : ${viewModel.finishpaymentData?.memberdata?.point}",
                          style: const TextStyle(
                              fontSize: 20, color: Color(0xFF0E4E89)),
                        )
                      ],
                    ),
                  ),
                ),

                Visibility(
                  visible: isVisibleChange,
                  child: Container(
                      padding: const EdgeInsets.all(16),
                      child: Text(
                        "เงินทอน ${viewModel.getChangeDetail().toString()} บาท",
                        style: const TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )),
                ),

                Container(
                  height: 60,
                  width: 300,
                  padding: const EdgeInsets.all(8),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey),
                      onPressed: () {
                        //print(widget.promotions);
                        print(viewModel.getChangeDetail());
                      },
                      child: const Text(
                        "รับใบเสร็จ",
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      )),
                ),

                Container(
                  height: 60,
                  width: 300,
                  padding: const EdgeInsets.all(8),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFD2E6F9)),
                      onPressed: () {
                        Navigator.pop(context, const Home());
                      },
                      child: const Text(
                        "กลับหน้าแรก",
                        style:
                            TextStyle(fontSize: 24, color: Color(0xFF0E4E89)),
                      )),
                ),
              ],
            ),
          ),
        ));
  }
}
