import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../home/cubit/cubit.dart';
import '../../home/cubit/states.dart';

class AddProduct extends StatelessWidget {
  var tittleController = TextEditingController();
  var desController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {
        if(state is AppInsertDatabaseState)
        {
          Navigator.pop(context);
        }
      },
      builder: (context, state) {
        var cubit = AppCubit.get(context);
        return Scaffold(
          appBar: AppBar(),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                TextFormField(
                  controller: tittleController,
                  decoration: InputDecoration(
                      labelText: 'tittle',
                      prefixIcon: Icon(
                        Icons.title,
                      ),
                      border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 25.0,
                ),
                TextFormField(
                  controller: desController,
                  decoration: InputDecoration(
                      labelText: 'description',
                      prefixIcon: Icon(
                        Icons.description,
                      ),
                      border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 40.0,
                ),
                MaterialButton(
                  color: Colors.cyan,
                  onPressed: () {
                    AppCubit.get(context).getImage();
                  },
                  child: Text('Get Image'),
                ),
                MaterialButton(
                  color: Colors.cyan,
                  onPressed: () {
                    cubit.insertToDatabase(
                        tittle: tittleController.text,
                        description: desController.text,
                        //image: cubit.profileImage!.path,
                    );
                    // insertToDatabase(
                    //   tittle: tittleController.text,
                    //   description: desController.text,
                    //   image: AppCubit.get(context).profileImage!.path,
                    // ).then((value) {
                    //   getDataFromDatabase(database).then((value)
                    //   {
                    //     Navigator.pop(context);
                    //
                    //     setState(() {
                    //       tasks=value;
                    //       print(tasks);
                    //     });
                    //
                    //   });
                    //
                    // });
                  },
                  child: Text('Get Image'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
