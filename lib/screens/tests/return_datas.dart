import 'dart:convert';
import 'package:firestore2_app/data/database/database_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// class ReturnData extends StatefulWidget {
//   const ReturnData({super.key});

//   @override
//   State<ReturnData> createState() => _ReturnDataState();
// }

// class _ReturnDataState extends State<ReturnData> {

//   /// The function `fetchData` loads a JSON file and returns its contents as a list of dynamic objects.
//   /// 
//   /// Returns:
//   ///   The fetchData() function is returning a Future object that resolves to a List<dynamic>.
//   Future<List<dynamic>> fetchData() async {
//     final jsonString = await rootBundle.loadString('lib/data/data.json');
//     final data = json.decode(jsonString);
//     print (data);
//     return data;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return 
//     // FutureBuilder<List<dynamic>>(
//     //   future: fetchData(),
//     //   builder: (context, snapshot){
//     //     if (snapshot.hasData) {
//     //       List<dynamic> data = snapshot.data!;
//     //       return ListView.builder(
//     //         itemCount: data.length,
//     //         itemBuilder: (context, index) {
//     //           final item = data[index];
//     //           return ListTile(
//     //             title: Text(item['name']),
//     //             subtitle: Text('Age: ${item['age']}'),
//     //           );
//     //         },
//     //       );
//     //     } else if (snapshot.hasError) {
//     //       return Text("${snapshot.error}");
//     //     }
//     //     return CircularProgressIndicator();
//     //   },
//     // );
//     Container(
//       child: Column(
//         children:[
//           ElevatedButton(
//             onPressed: (){
//               fetchData();
//             },
//             child: Text('Appuis')
//           )
//         ]
//       )
//     );
//   }
// }

class ReturnData extends StatefulWidget {
  const ReturnData({super.key});

  @override
  State<ReturnData> createState() => _ReturnDataState();
}

class _ReturnDataState extends State<ReturnData> {

  // PostGresHelper datas = PostGresHelper();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          HelperP()
        ]
      )
    );
  }
}