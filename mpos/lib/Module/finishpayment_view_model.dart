import 'package:mpos/Module/finishpayment_data.dart';
import 'package:mpos/Module/memberdata.dart';
import 'package:mpos/service/finishpayment_mock_serviec.dart';

import '../service/finishpayment_service_interface.dart';

class FinishpaymentViewModel {
  List<Memberdata> _mData = [];
  late Memberdata member;
  late String mUsername;

  FinishpaymentServiceInterface service = FinishpaymentMockService();

  Future<String> getMemberName({required String call}) async {
    FinishpaymentData? Data = await service.fethData();
    member = await Data.member;
    mUsername = member.memberUsername;
    return mUsername;
  }
}
