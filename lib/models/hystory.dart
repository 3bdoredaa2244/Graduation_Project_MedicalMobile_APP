class HistoryModel {
  String name='';
  medical? data;

  HistoryModel.fromjson(Map<String,dynamic>json)
  {
    name=json['name'];
    data=json["medicalRecord"] !=null ? medical.fromjson(json['medicalRecord']) : null;
  }
}


class medical{

  String condition='';
  String Surgeries="";
  String hospitalizations="";
  String fatherMedicalHistory="";
  String motherMedicalHistory="";
  String grandfatherMedicalHistory="";
  String allergies="";

  medical.fromjson(Map<String,dynamic>json)
  {
    condition=json['pastMedicalConditions'];
    Surgeries=json['pastSurgeries'];
    hospitalizations=json['hospitalizations'];
    fatherMedicalHistory=json['fatherMedicalHistory'];
    motherMedicalHistory=json['motherMedicalHistory'];
    grandfatherMedicalHistory=json['grandfatherMedicalHistory'];
    allergies=json['allergies'];
  }
}