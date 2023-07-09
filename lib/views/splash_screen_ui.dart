// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:cake_shop_call_fast/views/show_shop_ui.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreenUI extends StatefulWidget {
  const SplashScreenUI({super.key});

  @override
  State<SplashScreenUI> createState() => _SplashScreenUIState();
}

class _SplashScreenUIState extends State<SplashScreenUI> {
  //ประกาศใช้ Timer
  Timer? _timer;

  @override
  void initState() {
    //โค้ดหน่วงหน้าจอ ก่อนเปิดไปหน้า ShowShopUI 5 วินาที
    //------------------------------------
    //กรณีไม่มีปุ่มให้กด ใช้ Future.delayed
    // Future.delayed(
    //   Duration(seconds: 5),
    //   () {
    //     Navigator.pushReplacement(
    //       context,
    //       MaterialPageRoute(
    //         builder: (context) => ShowShopUI(),
    //       ),
    //     );
    //   },
    // );
    //------------------------------------
    //กรณีที่มีปุ่นใช้ Timer
    _timer = Timer(
      Duration(seconds: 5),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => ShowShopUI(),
          ),
        );
      },
    );

    super.initState();
  }

  // ทุกครั้งที่หน้าจอเปลี่ยนไป dispose จะทำงาน
  @override
  void dispose() {
    // ยกเลิก Timer
    _timer!.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      body: Container(
        //เหมือนตู้คอนเทนเนอร์
        decoration: BoxDecoration(
          //ตกแต่งตู้
          image: DecorationImage(
            image: AssetImage('assets/images/bg_welcome.png'),
            fit: BoxFit.cover, //.fit จะอ้วน
          ),
        ),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.25,
              ),
              Text(
                'CAKE SHOP OF FAST',
                style: GoogleFonts.kanit(
                  color: Colors.pink,
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.width * 0.07,
                ),
              ),
              Text(
                'สายด่วนชวนกินเค้ก',
                style: GoogleFonts.kanit(
                  color: Colors.pink,
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.width * 0.05,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.05,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.1,
                  right: MediaQuery.of(context).size.width * 0.1,
                ),
                child: Text(
                  'Cake shops in Thailand that deliver delicious and gorgeously decorated birthday cakes for your special day.',
                  style: GoogleFonts.kanit(
                    color: Colors.grey[700],
                    fontSize: MediaQuery.of(context).size.width * 0.04,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Expanded(
                //ให้ sizebox ยืดหยุ่นขยายอัตโนมัติ (expand ขยาย)
                child: SizedBox(),
              ),
              Padding(
                //button
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.width * 0.1,
                ),
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ShowShopUI(),
                      ),
                    );
                  },
                  icon: Icon(
                    Icons.cake,
                  ),
                  label: Text(
                    'Let\'s Go! สั่งกันเลย',
                    style: GoogleFonts.kanit(),
                  ),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(
                      MediaQuery.of(context).size.width * 0.6,
                      MediaQuery.of(context).size.width * 0.15,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    backgroundColor: Colors.pink,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
