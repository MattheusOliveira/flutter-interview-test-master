import 'package:flutter/material.dart';
import 'package:flutter_interview_test/data/model/policy.dart';
import 'package:flutter_interview_test/modules/policy/policy_bloc.dart';
import 'package:flutter_interview_test/pages/policy/widgets/custom_error_widget.dart';
import 'package:flutter_interview_test/pages/policy/widgets/custom_footer_widget.dart';
import 'package:flutter_interview_test/pages/policy/widgets/custom_list_tile_widget.dart';

class FirstScreenPage extends StatefulWidget {
  const FirstScreenPage();

  @override
  _FirstScreenPageState createState() => _FirstScreenPageState();
}

class _FirstScreenPageState extends State<FirstScreenPage> {
  final _policyBloc = PolicyBloc();

  @override
  void initState() {
    _policyBloc.fetchPolicies();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FLUTTER INTERVIEW TEST'),
      ),
      body: Center(
        child: StreamBuilder(
          stream: _policyBloc.stream,
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return CustomErrorWidget(
                 textButton: 'Tentar novamente',
                 textError: snapshot.error,
                 onPressed: () {
                  _policyBloc.fetchPolicies();
                 },
              );
            }
            if (!snapshot.hasData) {
              return Center(child: CircularProgressIndicator());
            }

            List<Policy> listPolicy = snapshot.data;

            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: ListView.separated(
                    itemBuilder: (context, index) {
                      Policy policy = listPolicy[index];
                      return CustomListTileWidget(policy);
                    },
                    separatorBuilder: (BuildContext context, int index) =>
                        Divider(),
                    itemCount: listPolicy.length,
                  ),
                ),
                CustomFooterWidget(),
              ],
            );
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _policyBloc.dispose();
  }
}
