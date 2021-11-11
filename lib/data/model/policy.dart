class Policies {
  List<Policy> policies;

  Policies({this.policies});

  Policies.fromJson(List<dynamic> json) {
    policies = json.map((e) => Policy.fromJson(e)).toList();
  }

  List<dynamic> toJson() {
    return policies;
  }
}


class Policy {
  int policyNumber;
  String title;
  String subtitle;
  String type;
  String image_url;

  Policy(
    this.policyNumber,
    this.title,
    this.subtitle,
    this.type,
    this.image_url,
  );


  Policy.fromJson(Map<String, dynamic> json) {
    policyNumber = json['policy_number'];
    title = json['title'];
    subtitle = json['subtitle'];
    type = json['type'];
    image_url = json['image_url'];
  }

  Map<String, dynamic> toJson() {
    return {
      'policy_number': policyNumber,
      'title': title,
      'subtitle': subtitle,
      'type': type,
      'image_url': image_url
    };
  }
}
