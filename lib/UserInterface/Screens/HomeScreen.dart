import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHight = MediaQuery.of(context).size.height;

    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * 0.9,
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    alignment: Alignment.topCenter,
                    image: AssetImage('assets/imgs/background.jpg'))),
          ),
          SafeArea(
            child: Column(
              children: [
                Expanded(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 120.h,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              width: 4.w,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'name',
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 2,
                                      fontStyle: FontStyle.italic,
                                      fontSize: 20),
                                ),
                                Text(
                                  'المستخدم',
                                  style: TextStyle(
                                      color: Colors.white,
                                      letterSpacing: 2,
                                      fontSize: 12),
                                ),
                                const Text(
                                  '',
                                  style: TextStyle(
                                      color: Colors.white,
                                      letterSpacing: 2,
                                      fontSize: 11),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Builder(
                              builder: (context) => IconButton(
                                icon: new Icon(
                                  Icons.menu,
                                  size: 40.h,
                                  color: Colors.white,
                                ),
                                onPressed: () {}
                                    
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      const Spacer(),
                      Container(
                        width: screenHight * 0.6,
                        height: screenHight * 0.6,
                        child: GridView.count(
                          physics: const BouncingScrollPhysics(),
                          padding: const EdgeInsets.all(10),
                          mainAxisSpacing: 20,
                          crossAxisSpacing: 20,
                          childAspectRatio: 1 / 1.9,
                          crossAxisCount: 3,
                          primary: false,
                          children: <Widget>[
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                width: screenWidth / 5,
                                height: screenWidth / 9,
                                child: Card(
                                  elevation: 15,
                                  shadowColor: Colors.blue,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Image.asset(
                                        'assets/imgs/myprojects.jpg',
                                        height: 105.h,
                                      ),
                                      SizedBox(
                                        height: 20.h,
                                      ),
                                      Text(
                                        'MyProjects'.tr(),
                                        style: TextStyle(
                                          fontSize: 18.w,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () async {},
                              child: Container(
                                width: screenWidth / 5,
                                height: screenWidth / 9,
                                child: Card(
                                  elevation: 15,
                                  shadowColor: Colors.blue,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Image.asset(
                                        'assets/imgs/addProject.png',
                                        height: 105.h,
                                      ),
                                      SizedBox(
                                        height: 20.h,
                                      ),
                                      Text(
                                        'AddProject'.tr(),
                                        style: TextStyle(
                                          fontSize: 18.w,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
