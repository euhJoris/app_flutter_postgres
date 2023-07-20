import 'dart:convert';

import 'package:firestore2_app/widgets/card_view.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../services/api_options.dart';
import '../widgets/appBar_Custom.dart';
import '../widgets/custom_navigation_bar.dart';
import 'list_of_systems.dart';

/// The function fetches user data from an API endpoint and returns it as a Users object, or throws an
/// exception if the request fails.
/// 
/// Returns:
///   a `Future<Users>`.
Future<Users> fetchUsers()async {
  print("fetch start");
  var response = await BaseClient().get('/user/2').catchError((err){print(err);});

  if(response.statusCode == 200) {
    print("Status 200");
    var users = Users.fromJson(jsonDecode(response.body));
    print(users);
    return users;
  }else{
    throw Exception("Faled");
  }
  print("fetch end");
}


class Users {
  final int id;
  final String name;
  final String email;

  const Users({
    required this.id,
    required this.name,
    required this.email
  });

  /// The above function is a factory constructor in Dart that creates a Users object from a JSON map.
  /// 
  /// Args:
  ///   json (Map<String, dynamic>): A map containing the JSON data for a user.
  factory Users.fromJson(Map<String, dynamic> json) => Users(
    id: json['user_id'],
    name: json['name'],
    email: json['email'],
  );
}


class SystemDetails extends StatefulWidget {
  const SystemDetails({super.key});

  @override
  State<SystemDetails> createState() => _SystemDetailsState();
}

class _SystemDetailsState extends State<SystemDetails> {

  late Future<Users> futureUser;

  @override
  void initState() {
    super.initState();
    futureUser = fetchUsers();
    print("init state");
  }

  @override
  Widget build(BuildContext context) {
    final systemData = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    print('SystemDetails');
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // remove back button in appbar.
        flexibleSpace: AppBarCustom(
          showSecondColumn: false,
          showSecondColumnText: false,
          // firstColumnText: 'Mon champ de ${systemData.plantId}',
        ),
      ),
      body: Column(
          children: [
            CardView(
              averrageIrrigationTime: systemData['systemId'],
              waterVolumeUsed: systemData['plantId'],
              fieldHumidity: systemData['lastWaterQuantityUsed'],
            ),
            Gap(50),
            ElevatedButton(
              onPressed:(){
                print("Button clcked ");
                handleUser();
              },
              child: Text("Fetch Data")
            ),
            FutureBuilder<Users>(
              future: futureUser,
              builder: (context, snapshot) {
                if(snapshot.hasData){
                  return Container(
                    child: Column(
                      children:[
                        Text('Id : ${snapshot.data!.id.toString()}'),

                        Text('Id : ${snapshot.data!.name}'),
                        Text('Id : ${snapshot.data!.email}'),
                      ]
                    )
                  ) ;
                }else if(snapshot.hasError){
                  return Text('${snapshot.error}');
                } else {
                  // Cas où les données sont en cours de chargement
                  return CircularProgressIndicator();
                }
              }
            )
          ],
        ),
      bottomNavigationBar: CustomNavigationBar(),
      );
  }

  void handleUser() {
    setState((){
      futureUser = fetchUsers();
    });
    // print("Future user : "+futureUser);
  }
}
