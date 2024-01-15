import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uts/page/detaill.dart';

// ignore: must_be_immutable
class FavoritePage extends StatelessWidget {
  List imgs = [
    "doctor1.jpeg",
    "doctor2.jpeg",
    "doctor3.jpg",
    "doctor4.jpeg",
    "doctor5.jpg",
    "doctor6.jpeg",
  ];
  List doctorName = [
    "Dr. Richard",
    "Dr. Boyke",
    "Dr. Faris",
    "Dr. Ganjar",
    "Dr. Prabowo",
    "Dr. Anis",
  ];
  List messages = [
    "Hallo bang, sorry baru bales. Ada yang bisa saya bantu ?",
    "Halo Bapak, Ada yang bisa saya bantu ?",
    "Jika ada kendala yang ingin ditanyakan bisa hubungi saya",
    "Mau konsultasi hari apa bapak ?",
    "Mungkin bapak bisa beristirahat sebentar",
    "Bagaimana kalau bapak ikut test dulu ?",
  ];

  bool activeStatus = true;

  FavoritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Messages",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    const BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      spreadRadius: 2,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 300,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            hintText: "Search",
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    const Icon(
                      Icons.search,
                      color: Color(0xFF113953),
                    ),
                  ],
                ),
              ),
            ),
      //       SizedBox(
      //   height: 90,
      //   child: ListView.builder(
      //     scrollDirection: Axis.horizontal,
      // itemCount: 6,
      // itemBuilder: (context, index) {
      //   return GestureDetector(
      //     onTap: () {
      //       // Aksi yang ingin dilakukan ketika gambar dokter ditekan
      //       // Misalnya, pindah ke halaman detail dokter
      //       Navigator.push(
      //         context,
      //         MaterialPageRoute(
      //           builder: (context) => DetaillPage(
      //             doctorImage: "asset/dokter/${imgs[index]}",
      //             doctorName: doctorName[index],
      //             message: messages[index],
      //           ),
      //         ),
      //       );
      //     },
      //     child: ListTile(
      //       leading: Container(
      //         margin: const EdgeInsets.all(2),
      //         padding: const EdgeInsets.all(3),
      //         height: 20,
      //         width: 20,
      //         decoration: const BoxDecoration(
      //           color: Colors.white,
      //           shape: BoxShape.circle,
      //         ),
      //         child: Container(
      //           decoration: const BoxDecoration(
      //             color: Colors.green,
      //             shape: BoxShape.circle,
      //           ),
      //         ),
      //       ),
      //     ),
      //   );
      // },
      //   ),
      // ),
      
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 6,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
        Get.to(() => DetaillPage(
      doctorImage: "asset/dokter/${imgs[index]}",
      doctorName: doctorName[index],
      message: messages[index],
        ));
      },
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(
                      "asset/dokter/${imgs[index]}",
                    ),
                  ),
                  title: Text(
                    "${doctorName[index]}",
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    "${messages[index]}",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                  ),
                  trailing: const Text(
                    "12:30",
                    style: TextStyle(fontSize: 15, color: Colors.black54),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// class FavoritePage extends StatelessWidget {
//   const FavoritePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           const SizedBox(height: 40),
//           const Padding(
//             padding: EdgeInsets.symmetric(horizontal: 20),
//             child: Text(
//               "Messages",
//               style: TextStyle(
//                 fontSize: 28,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ),
//           const SizedBox(height: 30),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 15),
//             child: Container(
//               padding: const EdgeInsets.symmetric(horizontal: 15),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(10),
//                 boxShadow: [
//                   const BoxShadow(
//                     color: Colors.black12,
//                     blurRadius: 10,
//                     spreadRadius: 2,
//                     offset: Offset(0, 3),
//                   ),
//                 ],
//               ),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Container(
//                     width: 300,
//                     child: Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 15),
//                       child: TextFormField(
//                         decoration: const InputDecoration(
//                           hintText: "Search",
//                           border: InputBorder.none,
//                         ),
//                       ),
//                     ),
//                   ),
//                   const Icon(
//                     Icons.search,
//                     color: Color(0xFF113953),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           SizedBox(
//   height: 90,
//   child: ListView.builder(
//     physics: const NeverScrollableScrollPhysics(),
//     itemCount: 6,
//     shrinkWrap: true,
//     itemBuilder: (context, index) {
//       return GestureDetector(
//         onTap: () {
//           // Aksi yang ingin dilakukan ketika gambar dokter ditekan
//           // Misalnya, pindah ke halaman detail dokter
//           // Navigator.push(
//           //   context,
//           //   MaterialPageRoute(
//           //     builder: (context) => DetaillPage(
//           //       doctorImage: "images/${imgs[index]}",
//           //       doctorName: doctorName[index],
//           //       message: messages[index],
//           //     ),
//           //   ),
//           // );
//         },
//         child: ListTile(
//           leading: Container(
//             margin: const EdgeInsets.all(2),
//             padding: const EdgeInsets.all(3),
//             height: 20,
//             width: 20,
//             decoration: const BoxDecoration(
//               color: Colors.white,
//               shape: BoxShape.circle,
//             ),
//             child: Container(
//               decoration: const BoxDecoration(
//                 color: Colors.green,
//                 shape: BoxShape.circle,
//               ),
//             ),
//           ),
//         ),
//       );
//     },
//   ),
// ),

//           ListView.builder(
//             physics: const NeverScrollableScrollPhysics(),
//             itemCount: 6,
//             shrinkWrap: true,
//             itemBuilder: (context, index) {
//               return ListTile(
//                 onTap: () {
//                   // Navigator.push(
//                   //     context,
//                   //     MaterialPageRoute(
//                   //       builder: (context) => DetaillPage(
//                   //         doctorImage: "images/${imgs[index]}",
//                   //         doctorName: doctorName[index],
//                   //         message: messages[index],
//                   //       ),
//                   //     ));
//                 },
//                 leading: CircleAvatar(
//                   radius: 30,
//                   backgroundImage: AssetImage(
//                     // "images/${imgs[index]}",
//                     "asset/dokter/doctor1.jpeg"
//                   ),
//                 ),
//                 title: Text(
//                   // "${doctorName[index]}",
//                   "Doctor Name",
//                   style: const TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 subtitle: Text(
//                   // "${messages[index]}",
//                   "messages",
//                   maxLines: 1,
//                   overflow: TextOverflow.ellipsis,
//                   style: const TextStyle(
//                     fontSize: 16,
//                     color: Colors.black54,
//                   ),
//                 ),
//                 trailing: const Text(
//                   "12:30",
//                   style: TextStyle(fontSize: 15, color: Colors.black54),
//                 ),
//               );
//             },
//           )
//         ],
//       ),
//     );
//   }
// }