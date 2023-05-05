import 'package:mpos/Module/finishpayment_data.dart';
import 'package:mpos/service/finishpayment_service_interface.dart';

class FinishpaymentMockService implements FinishpaymentServiceInterface {
  @override
  Future<FinishpaymentData> fethData() async {
    return FinishpaymentData(
        member: Member(username: "jirawar", poin: 35), change: 35);
  }
}
