import 'package:flutter/material.dart';
import 'package:postgres/postgres.dart';
// import 'package:flutter_dotenv/flutter_dotenv.dart';

  void connectAndFecth() async {

    // await dotenv.load(fileName: ".env");
    try {
      // var connection = PostgreSQLConnection(
      //   dotenv.env['DB_HOST']! as String,
      //   dotenv.env['DB_PORT']! as int,
      //   dotenv.env['DB_NAME']!,
      //   username: dotenv.env['DB_USERNAME']!,
      //   password: dotenv.env['DB_PASSWORD']!
      // );
      print('qwertyhjkhgffvbnm................');
      var connection = PostgreSQLConnection(
        "localhost",
        5432, 
        "agri-manager",
        username: "postgres", 
        password: "mysecretpassword"
      );

      await connection.open();
      print('connected to database');

      await connection.close();

      // var idValue;
      // final results = await connection.query('SELECT * FROM users WHERE id = idValue', substitutionValues: {
      //   idValue: 3
      // });

      // var id, name, surname, email;
      // for (final row in results){
      //   id = row[0] as int;
      //   name = row[1] as String;
      //   surname = row[2] as String ;
      //   email = row[3] as String;  
      // }

      // print('ID: $id, Name: $name, surname: $surname, email: $email');

    } on Exception catch (e) {
      print(e);
    }
  }
  

  class HelperP extends StatelessWidget {
  const HelperP({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (){
        connectAndFecth();
      },
      child: Text('Appuie')
    );
  }
}

