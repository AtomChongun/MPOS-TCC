import 'package:mpos/Module/Promotions.dart';
import 'package:mpos/Module/memberdata.dart';

class FinishpaymentData {
  Memberdata member;
  late int change;
  List<Promotions> promotions;

  FinishpaymentData(
      {required this.member, required this.change, required this.promotions});
}
