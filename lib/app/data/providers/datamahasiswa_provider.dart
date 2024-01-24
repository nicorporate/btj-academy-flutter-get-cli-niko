import 'package:get/get.dart';

import '../models/datamahasiswa_model.dart';

class DatamahasiswaProvider extends GetConnect {
  // @override
  // void onInit() {
  //   httpClient.defaultDecoder = (map) {
  //     if (map is Map<String, dynamic>) return Datamahasiswa.fromJson(map);
  //     if (map is List)
  //       return map.map((item) => Datamahasiswa.fromJson(item)).toList();
  //   };
  //   httpClient.baseUrl = 'YOUR-API-URL';
  // }

  Future<Datamahasiswa?> getDatamahasiswa(int id) async {
    final response = await get('datamahasiswa/$id');
    return response.body;
  }

  Future<Response<Datamahasiswa>> postDatamahasiswa(
          Datamahasiswa datamahasiswa) async =>
      await post('datamahasiswa', datamahasiswa);
  Future<Response> deleteDatamahasiswa(int id) async =>
      await delete('datamahasiswa/$id');
}
