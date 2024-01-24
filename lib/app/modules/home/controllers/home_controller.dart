import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import '../../../data/providers/mahasiswa_provider.dart';
import '../../../data/models/mahasiswa_model.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
  MahasiswaProvider _provider = Get.find<MahasiswaProvider>();
  TextEditingController namaController = TextEditingController();
  TextEditingController prodiController = TextEditingController();
  TextEditingController tahunController = TextEditingController();
  TextEditingController nimController = TextEditingController();
  TextEditingController ipkController = TextEditingController();
  RxList<Mahasiswa> data = <Mahasiswa>[].obs;
  // RxBool loading = false.obs;

  initData()async{
    print('enter here');
    // loading(true);
    data.clear();
    try {
      await _provider.getMahasiswa().then((value) async{
        print("cek data dari API");
        await value.body.entries.map((element) {
          var temp = Mahasiswa.fromJson(element.value);
          print(element.value);
          data.add(temp);
        }).toList();
        print('cek data List');
        print(data[0].nama);
        // loading(false);
      });
    } catch (e) {
      // loading(false);
      print(e);
    }
  }

  addMahasiswa()async{
    try {
      await _provider.postMahasiswa(Mahasiswa(
        nama: namaController.text,
        prodi: prodiController.text,
        tahun: tahunController.text,
        nim: nimController.text,
        ipk: ipkController.text,
      )).then((value){
        print('cek post mahasiswa');
        print(value.body);
        initData;
      });
    } catch(e){
      print(e);
    }
  }

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    initData();
  }

  @override
  void onReady() {
    super.onReady();
  }


  @override
  void onClose() {
    namaController.dispose();
    prodiController.dispose();
    tahunController.dispose();
    super.onClose();
  }

  void increment() => count.value++;
}