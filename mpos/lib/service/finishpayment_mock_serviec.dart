import 'package:mpos/Module/Promotions.dart';
import 'package:mpos/Module/finishpayment_data.dart';
import 'package:mpos/Module/memberdata.dart';
import 'package:mpos/service/finishpayment_service_interface.dart';

class FinishpaymentMockService implements FinishpaymentServiceInterface {
  @override
  Future<FinishpaymentData> fethData() async {
    return FinishpaymentData(
        memberdata: Memberdata(
            memberID: "555",
            name: "jirawat Sirisawat",
            point: 5,
            phone: "0626209688",
            emai: 'jirawat@gmail.com'),
        promotions: [
          Promotions(promotioname: "ซื้อ 1 แถม 1", amount: 6, price: 5),
          Promotions(promotioname: "ซื้อ 2 แถม 1", amount: 6, price: 5),
          Promotions(promotioname: "ซื้อ 3 แถม 1", amount: 6, price: 5),
        ],
        change: 50);
  }

  @override
  Future<FinishpaymentData> fethNo_Data() async {
    return FinishpaymentData(memberdata: null, change: 0.0, promotions: null);
  }
}
