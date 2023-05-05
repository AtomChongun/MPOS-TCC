import 'package:mpos/Module/finishpayment_data.dart';

abstract class FinishpaymentServiceInterface {
  Future<FinishpaymentData> fethData();
}
