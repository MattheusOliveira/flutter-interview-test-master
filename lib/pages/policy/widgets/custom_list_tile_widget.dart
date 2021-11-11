import 'package:flutter/material.dart';
import 'package:flutter_interview_test/data/model/policy.dart';

class CustomListTileWidget extends StatelessWidget {
  final Policy policy;

  const CustomListTileWidget(this.policy);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        children: [
          Image.network(
            policy.image_url,
            width: 50, 
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Text(
              '${policy.title} - ${policy.subtitle}',
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
      subtitle: Text(policy.type),
    );
  }
}
