import 'package:flutter/material.dart';

class MyPerform extends StatelessWidget {
  const MyPerform({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        margin: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(color: Color(0xff373A40),
                  boxShadow: [BoxShadow(color: Colors.black,blurRadius: 4,offset: Offset(4,8))],
                  borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10)),
              ),
                height: 50,
                width: 350,
                child: Text(
                    "Pengalaman Bekerja",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20,color: Colors.white),
                ),
              ),
              Container(
                decoration: BoxDecoration(color: Color(0xff686D76),
                  boxShadow: [BoxShadow(color: Colors.black,blurRadius: 4,offset: Offset(4,8))],
                ),
                width: 350,
                child: Text(
                  " PT.Sumber Alfaria Trijaya.TBK - Crew Store\n 2023 - 2024",
                  style: TextStyle(color: Colors.white,fontSize: 15),
                ),
              ),
              Container(decoration: BoxDecoration(color: Color(0xff686D76),
                  boxShadow: [BoxShadow(color: Colors.black,blurRadius: 4,offset: Offset(4,8))],
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10))),
                width: 350,
                height: 100,
                margin: EdgeInsets.only(bottom: 15),
                child: Text(
                  " - Sebagai Crewstore di Alfamart, saya bertanggung \n jawab untuk memastikan kelancaran operasional \n harian toko, termasuk layanan pelanggan, \n manajemen stok, dan penataan barang.",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                height: 50,
                width: 350,
                color: Colors.white,
                ),
              Container(decoration: BoxDecoration(color: Color(0xff373A40),
                boxShadow: [BoxShadow(color: Colors.black,blurRadius: 4,offset: Offset(4,8))],
                borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10)),
              ),
                height: 50,
                width: 350,
                child: Text(
                  "Pendidikan",
                  style: TextStyle(color: Colors.white,fontSize: 20),textAlign: TextAlign.center,
                ),
              ),
              Container(
                height: 70,
                width: 350,
                margin: EdgeInsets.only(bottom: 15),
                decoration: BoxDecoration(color: Color(0xff686D76),
                  boxShadow: [BoxShadow(color: Colors.black,blurRadius: 4,offset: Offset(4,8))],
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10))
                ),
                child: Text(
                  " SMKN 1 Kota Tangerang - Teknik Komputer dan \n Jaringan\n 2017 - 2020",
                  style: TextStyle(color: Colors.white,fontSize: 15),
                ),
              ),
              Container(height: 50,
                width: 350,
                color: Colors.white,
              ),
              Container(
                decoration: BoxDecoration(color: Color(0xff373A40),
                  boxShadow: [BoxShadow(color: Colors.black,blurRadius: 4,offset: Offset(4,8))],
                  borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10)),
                ),
                height: 50,
                width: 350,
                child: Text(
                  "Hobby",
                  style: TextStyle(color: Colors.white,fontSize: 20),textAlign: TextAlign.center,
                ),
              ),
              Container(
                width: 350,
                height: 100,
                margin: EdgeInsets.only(bottom: 15),
                decoration: BoxDecoration(color: Color(0xff686D76),
                    boxShadow: [BoxShadow(color: Colors.black,blurRadius: 4,offset: Offset(4,8))],
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10))
                ),
                child: Text(
                  " - Mendengarkan musik\n - Membaca Buku\n - Video Editing\n - Latihan di GYM",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Container(height: 50,
                width: 350,
                color: Colors.white,
              ),
              Container(height: 50,
                width: 350,
                decoration: BoxDecoration(color: Color(0xff373A40),
                  boxShadow: [BoxShadow(color: Colors.black,blurRadius: 4,offset: Offset(4,8))],
                  borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10)),
                ),
                child: Text(
                  "Keahlian",
                  style: TextStyle(color: Colors.white,fontSize: 20),textAlign: TextAlign.center,
                ),
              ),
              Container(
                width: 350,
                decoration: BoxDecoration(color: Color(0xff686D76),
                  boxShadow: [BoxShadow(color: Colors.black,blurRadius: 4,offset: Offset(4,8))],
                ),
                child: Text(
                  " Berikut beberapa keahlian saya dalam bidang IT \n diantaranya:",
                  style: TextStyle(color: Colors.white,fontSize: 15),
                ),
              ),
              Container(margin: EdgeInsets.only(bottom: 15),
                width: 350,
                height: 100,
                decoration: BoxDecoration(color: Color(0xff686D76),
                    boxShadow: [BoxShadow(color: Colors.black,blurRadius: 4,offset: Offset(4,8))],
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10))
                ),
                child: Text(
                  "- Flutter\n - Python\n - Cisco\n - Penetration Testing",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ],
          ),
        )
      ),
    );
  }
}