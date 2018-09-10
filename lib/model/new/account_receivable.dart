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
  final double receivable;
  final double receivable_due;
  final double discounted_receivable;
  final double received_receivables;
  Component({this.receivable, this.receivable_due, this.discounted_receivable, this.received_receivables});
  factory Component.fromJson(Map<String, dynamic> json) {
    return Component(
      receivable: json['receivable'],
      receivable_due: json['receivable_due'],
      discounted_receivable: json['discounted_receivable'],
      received_receivables: json['received_receivables']
    );
  }
}