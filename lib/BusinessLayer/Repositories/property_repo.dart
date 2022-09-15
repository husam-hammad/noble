// ignore_for_file: avoid_print

import 'package:noble/DataAccessLayer/Clients/property_client.dart';
import 'package:noble/DataAccessLayer/Models/property.dart';

class PropertyRepo {
  var client = PropertyClient();

  Future<List<Property>> getProperty() async {
    var response = await client.getProperty();

    if (response.isNotEmpty) {
      //json.decode(response.toString()).cast<Map<String, dynamic>>();
      return response.map<Property>((item) => Property.fromMap(item)).toList();
    }
    return [];
  }
}
