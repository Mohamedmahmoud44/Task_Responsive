import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final media=MediaQuery.of(context).orientation;
    return Scaffold(
      appBar: AppBar(
        title: Text('الرئيسيه'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: media==Orientation.portrait?buildPortrait():buildLandScape()

      ),
      );

  }
  Widget buildPortrait()=>Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 20.0,right: 20.0,),
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
      SizedBox(
        height: 20,
      ),
      Row(
        children: [
          Expanded(
            child: CircleAvatar(
              radius: 65,
              child: Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(80),
                  ),
                  child: Column(
                    children: [
                      Icon(
                        Icons.person,
                        size: 50,
                        color: Colors.blue,
                      ),
                      Text(
                        'ولي الامر',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  )),
            ),
          ),
          Expanded(
            child: CircleAvatar(
              radius: 65,
              child: Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(80),
                  ),
                  child: Column(
                    children: [
                      Icon(
                        Icons.email,
                        size: 50,
                        color: Colors.blue,
                      ),
                      Text(
                        'طلبات المقابله',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  )),
            ),
          ),
        ],
      ),
      SizedBox(
        height: 10.0,
      ),
      Row(
        children: [
          Expanded(
            child: CircleAvatar(
              radius: 65,
              child: Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(80),
                  ),
                  child: Column(
                    children: [
                      Icon(
                        Icons.recent_actors,
                        size: 50,
                        color: Colors.blue,
                      ),
                      Text(
                        'طلب التوظيف',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  )),
            ),
          ),
          Expanded(
            child: CircleAvatar(
              radius: 65,
              child: Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(80),
                  ),
                  child: Column(
                    children: [
                      Icon(
                        Icons.article,
                        size: 50,
                        color: Colors.blue,
                      ),
                      Text(
                        'نماذج',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  )),
            ),
          ),
        ],
      ),
      SizedBox(
        height: 10.0,
      ),
      Row(
        children: [
          Expanded(
            child: CircleAvatar(
              radius: 65,
              child: Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(80),
                  ),
                  child: Column(
                    children: [
                      Icon(
                        Icons.wifi_tethering,
                        size: 50,
                        color: Colors.blue,
                      ),
                      Text(
                        'روابط عامله',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  )),
            ),
          ),
          Expanded(
            child: CircleAvatar(
              radius: 65,
              child: Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(80),
                  ),
                  child: Column(
                    children: [
                      Icon(
                        Icons.event,
                        size: 50,
                        color: Colors.blue,
                      ),
                      Text(
                        'النتيجه',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  )),
            ),
          ),
        ],
      ),
      SizedBox(
        height: 10.0,
      ),
      CircleAvatar(
        radius: 65,
        child: Container(
            height: 120,
            width: 120,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(80),
            ),
            child: Column(
              children: [
                Icon(
                  Icons.add_ic_call,
                  size: 50,
                  color: Colors.blue,
                ),
                Text(
                  'تواصل معانا',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ],
            )),
      ),

    ],
  );
  Widget buildLandScape()=>Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 30,right: 30),
        child: Column(
          children: [
            CarouselSlider(
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
                height: 200.0,
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
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: CircleAvatar(
                    radius: 65,
                    child: Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(80),
                        ),
                        child: Column(
                          children: [
                            Icon(
                              Icons.person,
                              size: 50,
                              color: Colors.blue,
                            ),
                            Text(
                              'ولي الامر',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ],
                        )),
                  ),
                ),
                Expanded(
                  child: CircleAvatar(
                    radius: 65,
                    child: Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(80),
                        ),
                        child: Column(
                          children: [
                            Icon(
                              Icons.email,
                              size: 50,
                              color: Colors.blue,
                            ),
                            Text(
                              'طلبات المقابله',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ],
                        )),
                  ),
                ),
                Expanded(
                  child: CircleAvatar(
                    radius: 65,
                    child: Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(80),
                        ),
                        child: Column(
                          children: [
                            Icon(
                              Icons.recent_actors,
                              size: 50,
                              color: Colors.blue,
                            ),
                            Text(
                              'طلب التوظيف',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ],
                        )),
                  ),
                ),
                Expanded(
                  child: CircleAvatar(
                    radius: 65,
                    child: Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(80),
                        ),
                        child: Column(
                          children: [
                            Icon(
                              Icons.article,
                              size: 50,
                              color: Colors.blue,
                            ),
                            Text(
                              'نماذج',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ],
                        )),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: CircleAvatar(
                    radius: 65,
                    child: Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(80),
                        ),
                        child: Column(
                          children: [
                            Icon(
                              Icons.wifi_tethering,
                              size: 50,
                              color: Colors.blue,
                            ),
                            Text(
                              'روابط عامله',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ],
                        )),
                  ),
                ),
                Expanded(
                  child: CircleAvatar(
                    radius: 65,
                    child: Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(80),
                        ),
                        child: Column(
                          children: [
                            Icon(
                              Icons.event,
                              size: 50,
                              color: Colors.blue,
                            ),
                            Text(
                              'النتيجه',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ],
                        )),
                  ),
                ),
                Expanded(
                  child: CircleAvatar(
                    radius: 65,
                    child: Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(80),
                        ),
                        child: Column(
                          children: [
                            Icon(
                              Icons.add_ic_call,
                              size: 50,
                              color: Colors.blue,
                            ),
                            Text(
                              'تواصل معانا',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ],
                        )),
                  ),
                ),
              ],
            ),

          ],
        ),
      ),

    ],
  );

}
