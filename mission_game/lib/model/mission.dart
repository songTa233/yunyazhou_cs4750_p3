class Mission {
  Mission({
      this.owner, 
      this.title, 
      this.detail, 
      this.rewords,
  this.apply});

  Mission.fromJson(dynamic json) {
    owner = json['owner'];
    title = json['title'];
    detail = json['detail'];
    apply = json['apply'];
    rewords = json['rewords'] != null ? json['rewords'].cast<String>() : [];
  }
  String? owner;
  String? title;
  String? detail;
  bool? apply;
  List<String>? rewords;
Mission copyWith({  String? owner,
  String? title,
  String? detail,
  bool? apply,
  List<String>? rewords,
}) => Mission(  owner: owner ?? this.owner,
  title: title ?? this.title,
  detail: detail ?? this.detail,
  rewords: rewords ?? this.rewords,
  apply: apply ?? this.apply
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['owner'] = owner;
    map['title'] = title;
    map['detail'] = detail;
    map['rewords'] = rewords;
    map['apply'] = apply;
    return map;
  }

}