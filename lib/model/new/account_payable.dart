class Model {
  final List<Data> data;
  Model({this.data});
  factory Model.fromJson(Map<String, dynamic> json) {
    return Model(
      data: (json['data'] != null) ? (json['data'] as List).map((i) => Data.fromJson(i)).toList() : null
    );
  }
}

class Data {
  final int year;
  final int month;
  final int day;
  final DateTime dateTime;
  final Component component;
  Data({
    this.year,
    this.month,
    this.day,
    this.component,
    this.dateTime
  });
  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      year: json['year'],
      month: json['month'],
      day: json['day'],
      dateTime: DateTime(json['year'], json['month'], json['day']),
      component: Component.fromJson(json['component'])
    );
  }
}

class Component {
  final double payable;
  final double payable_due;
  final double discounted_payable;
  final double payment_payables;
  Component({
    this.payable,
    this.payable_due,
    this.discounted_payable,
    this.payment_payables
  });
  factory Component.fromJson(Map<String, dynamic> json) {
    return Component(
      payable: json['payable'],
      payable_due: json['payable_due'],
      discounted_payable: json['discounted_payable'],
      payment_payables: json['payment_payables']
    );
  }
}