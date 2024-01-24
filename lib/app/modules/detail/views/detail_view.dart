import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/detail_controller.dart';

class DetailView extends GetView<DetailController> {
  const DetailView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.find<DetailController>();

    var student = Get.arguments;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Mahasiswa'),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: PageView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {
            print("index detail");
            print(student["index"]);
            return Container(
              child: Column(
                children: [
                  Container( // blue card
                    padding: EdgeInsets.all(15),
                    margin: EdgeInsets.only(bottom: 16),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple.withOpacity(.1),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Nama", style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black54
                                )),
                                Text(student['nama'], style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                )),
                                SizedBox(height: 8.0),

                                Text("NIM", style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black54
                                )),
                                Text(student['nim'], style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                )),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Profil Mahasiswa", style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.deepPurple.withOpacity(.5)
                        )),
                        Container(
                          padding: EdgeInsets.all(13),
                          margin: EdgeInsets.only(bottom: 1, top: 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                  child: Container(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Nama", style: TextStyle(fontSize: 14))
                                      ],
                                    ),
                                  )
                              ),
                              Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(student['nama'], style: TextStyle(
                                      fontSize: 14,
                                    ))
                                  ],
                                ),),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(13),
                          margin: EdgeInsets.only(bottom: 1, top: 5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                  child: Container(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("NIM", style: TextStyle(fontSize: 14))
                                      ],
                                    ),
                                  )
                              ),
                              Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(student['nim'], style: TextStyle(
                                      fontSize: 14,
                                    ))
                                  ],
                                ),),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(13),
                          margin: EdgeInsets.only(bottom: 1, top: 5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                  child: Container(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Prodi", style: TextStyle(fontSize: 14))
                                      ],
                                    ),
                                  )
                              ),
                              Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(student['prodi'], style: TextStyle(
                                      fontSize: 14,
                                    ))
                                  ],
                                ),),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(13),
                          margin: EdgeInsets.only(bottom: 1, top: 5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                  child: Container(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Tahun Angkatan",
                                            style: TextStyle(fontSize: 14))
                                      ],
                                    ),
                                  )
                              ),
                              Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(student['tahun'], style: TextStyle(
                                      fontSize: 14,
                                    ))
                                  ],
                                ),),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(13),
                          margin: EdgeInsets.only(bottom: 15, top: 5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                  child: Container(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("IPK", style: TextStyle(fontSize: 14))
                                      ],
                                    ),
                                  )
                              ),
                              Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(student['ipk'], style: TextStyle(
                                      fontSize: 14,
                                    ))
                                  ],
                                ),),
                            ],
                          ),
                        )
                      ],
                    ),

                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}