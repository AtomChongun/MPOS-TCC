import 'package:mpos/Module/finishpayment_data.dart';
import 'package:mpos/service/finishpayment_mock_serviec.dart';

import '../service/finishpayment_service_interface.dart';

class FinishpaymentViewModel {
  FinishpaymentData? finishpaymentData;
  bool isVisibleMember = true;
  bool isVisiblePromo = true;
  FinishpaymentServiceInterface service = FinishpaymentMockService();

  Future<FinishpaymentData?> getDetail() async {
    finishpaymentData = await service.fethData();
    check();
    return finishpaymentData;
  }

  check() async {
    if (finishpaymentData?.memberdata?.name == null) {
      isVisibleMember = false;
    }
    if (finishpaymentData!.promotions == null) {
      isVisiblePromo = false;
    }
  }
}
