import 'package:mpos/Module/Promotions.dart';
import 'package:mpos/Module/finishpayment_data.dart';
import 'package:mpos/Module/memberdata.dart';
import 'package:mpos/service/finishpayment_service_interface.dart';

class FinishpaymentMockService implements FinishpaymentServiceInterface {
  @override
  Future<FinishpaymentData> fethData() async {
    return FinishpaymentData(
        memberdata: Memberdata(
            id: "555",
            memberUsername: "jirawat Sirisawat",
            point: 5,
            call: "0626209688"),
        promotions: [
          Promotions(promotioname: "ซื้อ 1 แถม 1", amount: 6, price: 5),
          Promotions(promotioname: "ซื้อ 2 แถม 1", amount: 6, price: 5),
          Promotions(promotioname: "ซื้อ 3 แถม 1", amount: 6, price: 5),
        ],
        change: 50);
    /*memberdata: null,
        promotions: null,
        change: 0.0);*/
  }

  @override
  Future<FinishpaymentData> fethNo_Data() async {
    return FinishpaymentData(memberdata: null, change: 0.0, promotions: null);
  }
}
