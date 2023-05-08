import 'package:mpos/Module/Promotions.dart';
import 'package:mpos/Module/finishpayment_data.dart';
import 'package:mpos/Module/memberdata.dart';
import 'package:mpos/service/finishpayment_service_interface.dart';

class FinishpaymentMockService implements FinishpaymentServiceInterface {
  @override
  Future<FinishpaymentData> fethData() async {
    return FinishpaymentData(
        member: Memberdata(
            memberUsername: "jirawat", point: 15, call: "0626209688"),
        change: 55,
        promotions: [
          Promotions(promotioname: "ซื้อ 1 แถม 1", amount: 15, price: 300),
          Promotions(promotioname: "ซื้อ 2 แถม 1", amount: 15, price: 300),
          Promotions(promotioname: "ซื้อ 3 แถม 1", amount: 15, price: 300)
        ]);
  }
}
