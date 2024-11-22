class Test {
    String? name;
    String? address;

     Test({
        required this.name,
        required this.address,
      });

      Test.fromJson(Map<String, dynamic> json) {
        name = json['name'];
        address = json['address'];
      }

      Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['name'] = this.name;
        data['address'] = this.address;
        return data;
      }
} 