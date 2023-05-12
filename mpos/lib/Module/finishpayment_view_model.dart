import 'package:mpos/Module/Promotions.dart';
import 'package:mpos/Module/finishpayment_data.dart';
import 'package:mpos/Module/memberdata.dart';
import 'package:mpos/service/finishpayment_mock_serviec.dart';

import '../service/finishpayment_service_interface.dart';

class FinishpaymentViewModel {
  FinishpaymentData? finishpaymentData;
  double? _change = 0.0;
  FinishpaymentServiceInterface service = FinishpaymentMockService();

  Future<double?> getChangeDetail() async {
    finishpaymentData = await service.fethData();
    _change = finishpaymentData?.change;
    return _change;
  }
}
