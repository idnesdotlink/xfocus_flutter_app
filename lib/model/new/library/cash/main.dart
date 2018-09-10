class CashComponents {
  Map<dynamic, dynamic> components;
  CashComponents({this.components});
  factory CashComponents.fromJson(Map<String, dynamic> json, metaData) {
    return CashComponents(components: {

    });
  }
}


void main() {
var json = {
  "metaData": {
    "cash": "double"
  },
  "data": {
    "year": 1992,
    "month": 1,
    "components": {
      "cash": 1000.00
    }
  }
};
var a = CashComponents.fromJson(json['data'], json['metaData']);
print(a.components);
}