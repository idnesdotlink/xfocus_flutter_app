import 'dart:convert';
import 'dart:io';
import 'dart:async';
import 'cash.dart' as cash;
import 'inventory.dart' as inventory;
import 'sales.dart' as sales;
import 'account_payable.dart' as ap;
import 'account_receivable.dart' as ar;

Future<String> jsonFile(String name) async {
  String jsonString;
  String pwd = Directory.current.path;
  String f1 = pwd + '/data' + '/$name.json';
  jsonString = await File(f1).readAsString();
  return jsonString;
}

void main() async {
  final String cashJsonString = await jsonFile('cash');
  final String inventoryJsonString = await jsonFile('inventory');
  final String salesJsonString = await jsonFile('sales');
  final String apJsonString = await jsonFile('account_payable');
  final String arJsonString = await jsonFile('account_receivable');

  var cashModel = cash.Model.fromJson(json.decode(cashJsonString));
  var inventoryModel = inventory.Model.fromJson(json.decode(inventoryJsonString));
  var salesModel = sales.Model.fromJson(json.decode(salesJsonString));
  var apModel = ap.Model.fromJson(json.decode(apJsonString));
  var arModel = ar.Model.fromJson(json.decode(arJsonString));
  print(
    cashModel
      .data
      .firstWhere((data) => (data.year == 2017 && data.month == 1))
      .component
      .bank
      .firstWhere((bank) => bank.id == 1)
      .value
      .toString()
  );

  print(
    cashModel.cashDual(year: 2017)['credit']
  );

  print(
    cashModel.cashTotal(year: 2017)
  );

  print(
    cashModel.cashCredit(year: 2017).toString()
  );

  inventoryModel
    .data
    .firstWhere((data) => (data.year == 2017))
    .component
    .movement
    .slow
    .forEach((i) => (print(i.title)));

  inventoryModel
    .data
    .firstWhere((data) => (data.year == 2017))
    .component
    .movement
    .fast
    .forEach((i) => (print('${i.title}: ${i.ammount}')));

  print(salesModel.data.firstWhere((data) => (data.year == 2017)).component.sales);

  print(
    apModel
    .data
    .firstWhere((data) => (data.year == 2017))
    .component
    .payable
  );

  print(
    arModel
    .data
    .firstWhere((data) => (data.year == 2017))
    .component
    .receivable
  );

  print(
    apModel
    .data
    .where(
      (data) => (data.year == 2017)
    )
    .fold<double>(0.0, (prev, data) => (prev + data.component.payable))
  );
}
