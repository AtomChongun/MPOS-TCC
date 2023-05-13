import 'package:mpos/Module/Promotions.dart';
import 'package:mpos/Module/memberdata.dart';

class FinishpaymentData {
  late Memberdata? memberdata;
  late double? change;
  late List<Promotions>? promotions;

  FinishpaymentData(
      {required this.memberdata,
      required this.change,
      required this.promotions});
}
