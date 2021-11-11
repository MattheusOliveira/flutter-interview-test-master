import 'package:flutter_interview_test/data/provider/policy_provider.dart';

class PolicyRepository {

  static getPolicies() async {
    return await PolicyProvider.getPolicies();
  }
}