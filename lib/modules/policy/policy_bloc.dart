import 'dart:async';

import 'package:flutter_interview_test/data/api_response.dart';
import 'package:flutter_interview_test/data/model/policy.dart';
import 'package:flutter_interview_test/data/repository/policy_repository.dart';

class PolicyBloc {

  final _controller = StreamController();

  Stream get stream => _controller.stream;

  fetchPolicies() async {
    Timer(Duration(seconds: 2), () async {

      ApiResponse<Policies> response = await PolicyRepository.getPolicies();

      if (response.ok == true) {
        _controller.add(response.result.policies);
      } else {
        _controller.addError(response.msg);
      }
    });
  }

  void dispose() {
    _controller.close();
  }
}
