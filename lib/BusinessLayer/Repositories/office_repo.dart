// ignore_for_file: avoid_print

import 'package:noble/DataAccessLayer/Models/office.dart';

import '../../DataAccessLayer/Clients/office_client.dart';

class OfficeRepo {
  var client = OfficeClient();

  Future<List<Office>> getOffices() async {
    var response = await client.getOffices();

    if (response.isNotEmpty) {
      //json.decode(response.toString()).cast<Map<String, dynamic>>();
      return response.map<Office>((item) => Office.fromMap(item)).toList();
    }
    return [];
  }
}
