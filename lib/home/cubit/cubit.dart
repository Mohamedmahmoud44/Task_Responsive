


import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sqflite/sqflite.dart';
import 'package:task1_responsive/home/cubit/states.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() :super(AppInitialState());


  static AppCubit get(context) => BlocProvider.of(context);

  File? profileImage;
  var picker = ImagePicker();

  Future<void> getImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      profileImage = File(pickedFile.path);
      emit(AppProfileImagePickedSuccessState());
      print('kotaaaa');
    } else {
      print('no image selected');
      emit(AppProfileImagePickedErrorState());
    }
  }
  Database? database;
  List<Map>tasks=[];


  void createDatabase()
  {
    openDatabase(
      'product.db',
      version: 1,
      onCreate: (database,version)
      {
        print('database create');
        database.execute('CREATE TABLE tasks(id INTEGER PRIMARY KEY, title TEXT, description TEXT, image TEXT)').then((value)
        {
          print('table created');
        }).catchError((error)
        {
          print('error when creating table ${error.toString()}');
        });
      },
      onOpen: (database)
      {
        getDataFromDatabase(database).then((value)
        {
          tasks=value;
          print(tasks);
          emit(AppGetDatabaseState());
        });

        print('database opened');

      },
    ).then((value)
    {
      database=value;
      emit(AppCreateDatabaseState());
    });

  }


  insertToDatabase(
      {
        required tittle,
        required description,
        //required image,
      }
      )async
  {
    await database?.transaction((txn)async
    {


        await txn.rawInsert('INSERT INTO tasks (title,description,image)VALUES("${tittle}","${description}","sfd")')
            .then((value)
        {
          print('$value inserted successfully');
          emit(AppInsertDatabaseState());
        })
            .catchError((error)
        {
          print('error when inserting new record ${error.toString()}');
          getDataFromDatabase(database).then((value)
          {
            tasks=value;
            print(tasks);
            emit(AppGetDatabaseState());
          });


        });

    });
  }

  Future<List<Map>> getDataFromDatabase(database)async
  {
    return await database!.rawQuery('SELECT *FROM tasks');
  }
}