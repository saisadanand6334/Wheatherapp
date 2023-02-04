class Whether{
  double temper_c;
  double temper_f;
  String textin;
  Whether({
    this.temper_c=0,
    this.temper_f=0,
    this.textin='Rainy'
});
  factory Whether.fromJson(Map<String,dynamic> json){
    return Whether(
      temper_c: json["current"]["temp_c"],
      temper_f: json["current"]["temp_f"],
      textin: json["current"]["condition"][ "text"]
    );
  }
}
