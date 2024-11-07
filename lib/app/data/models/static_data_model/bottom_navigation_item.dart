// ignore_for_file: public_member_api_docs, sort_constructors_first
class BottomNavigationItem {
  String name;
  String activeIcon;
  String inActiveIcon;
  BottomNavigationItem({
    required this.name,
    required this.activeIcon,
    required this.inActiveIcon,
  });
}

class ProfileItem {
  String route;
  String iconPath;
  String title;
  ProfileItem({
    required this.route,
    required this.iconPath,
    required this.title,
  });
}

class TitleValueModel {
  String title;
  String value;

  TitleValueModel({required this.title, required this.value});

  factory TitleValueModel.fromJson(Map<String, dynamic> json) {
    return TitleValueModel(
      title: json['title'],
      value: json['value'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['value'] = value;
    return data;
  }
}
