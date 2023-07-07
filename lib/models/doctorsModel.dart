class Doctors {
  String id = '';
  String userName = '';
  String specializationName = '';
  String cliniclocation = '';

  Doctors.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userName = json['userName'];
    specializationName = json['specializationName'];
    cliniclocation = json['cliniclocation'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['userName'] = this.userName;
    data['specializationName'] = this.specializationName;
    data['cliniclocation'] = this.cliniclocation;
    return data;
  }
}
