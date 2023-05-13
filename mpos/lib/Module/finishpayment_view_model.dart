import 'package:mpos/Module/Promotions.dart';
import 'package:mpos/Module/finishpayment_data.dart';
import 'package:mpos/Module/memberdata.dart';
import 'package:mpos/service/finishpayment_mock_serviec.dart';

import '../service/finishpayment_service_interface.dart';

class FinishpaymentViewModel {
  FinishpaymentData? finishpaymentData;
  double? _change = 0.0;
  bool isVisibleMember = true;
  bool isVisiblePromo = true;
  FinishpaymentServiceInterface service = FinishpaymentMockService();

  Future<FinishpaymentData?> getChangeDetail() async {
    finishpaymentData = await service.fethData();
    check();
    return finishpaymentData;
  }

  check() async {
    if (finishpaymentData?.memberdata?.memberUsername == null) {
      isVisibleMember = false;
    }
    if (finishpaymentData!.promotions == null) {
      isVisiblePromo = false;
    }
  }
}
