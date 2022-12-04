import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path/path.dart';
import 'package:task1_responsive/components/compnnents.dart';
import 'package:task1_responsive/home/cubit/cubit.dart';
import 'package:task1_responsive/home/cubit/states.dart';

import '../modules/add_product/add_product.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit,AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        final media = MediaQuery
            .of(context)
            .orientation;
        var tasks = AppCubit
            .get(context)
            .tasks;
        return Scaffold(
          appBar: AppBar(
            title: Text('الرئيسيه'),
            centerTitle: true,
          ),
          body: buildPortrait(Map()),

        //SafeArea(
        //   child: SingleChildScrollView(
        //       child:
        //      media==Orientation.portrait?buildPortrait(Map()):buildLandScape()
        //   ),
        // ),
        floatingActionButton:
        FloatingActionButton(
          onPressed: () {
            navigateTo(
              context,
              AddProduct(),
            );
          },
          child: Icon(Icons.add),
        )
        ,
        );
      },
    );
  }


  Widget buildTaskItem(Map model) =>
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 40.0,
              child: Text(
                '${model['title']}',
              ),
            ),
            SizedBox(
              width: 15.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  '5645',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '56456',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
      );


  Widget buildPortrait(Map model,) =>
      BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var tasks = AppCubit
              .get(context)
              .tasks;
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 20.0,
                  right: 20.0,
                ),
                child: CarouselSlider(
                  items: [
                    Image(
                      image: NetworkImage(
                          'https://img.freepik.com/premium-photo/row-unrecognizable-business-people-sit-conference-hall-business-event_183219-13.jpg?w=740'),
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                    Image(
                      image: NetworkImage(
                          'https://img.freepik.com/premium-photo/business-lady-holding-smartphone-sitting-office-black-female-manager-ceo-using-cell-phone-mobile_183219-9748.jpg'),
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                    Image(
                      image: NetworkImage(
                          'https://img.freepik.com/free-photo/top-view-hands-holding-tablet_23-2149429322.jpg'),
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ],
                  options: CarouselOptions(
                    height: 120.0,
                    initialPage: 0,
                    viewportFraction: 1.0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(seconds: 1),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
              ),
              GridView.builder(
                itemCount: 2,
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemBuilder: (context, index) =>
                    Container(
                      margin: EdgeInsets.all(30),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.blue),
                      ),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.network(
                              'hgjhg',
                              fit: BoxFit.cover,
                              height: 70,
                              width: 70,
                            ),
                          ),
                          Text(
                            '${model['title']}',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
              )
            ],
          );
        },
      );

  Widget buildLandScape() =>
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
              right: 20.0,
            ),
            child: CarouselSlider(
              items: [
                Image(
                  image: NetworkImage(
                      'https://img.freepik.com/premium-photo/row-unrecognizable-business-people-sit-conference-hall-business-event_183219-13.jpg?w=740'),
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
                Image(
                  image: NetworkImage(
                      'https://img.freepik.com/premium-photo/business-lady-holding-smartphone-sitting-office-black-female-manager-ceo-using-cell-phone-mobile_183219-9748.jpg'),
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
                Image(
                  image: NetworkImage(
                      'https://img.freepik.com/free-photo/top-view-hands-holding-tablet_23-2149429322.jpg'),
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ],
              options: CarouselOptions(
                height: 120.0,
                initialPage: 0,
                viewportFraction: 1.0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(seconds: 1),
                autoPlayCurve: Curves.fastOutSlowIn,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
          GridView.builder(
            itemCount: 3,
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,

            ),
            itemBuilder: (context, index) =>
                Container(
                  margin: EdgeInsets.all(50),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.blue),
                  ),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.network(
                          'https://th.bing.com/th/id/R.366a5edd7b2d2e05fa8e7af825bf8407?rik=4k0fA9%2fHGitNog&pid=ImgRaw&r=0',
                          fit: BoxFit.cover,
                          height: 70,
                          width: 70,
                        ),
                      ),
                      Text(
                        'ولي الامر',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
          )
        ],
      );


}
