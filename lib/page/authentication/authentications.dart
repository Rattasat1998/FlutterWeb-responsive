import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterweb/constants/controllers.dart';
import 'package:flutterweb/constants/style.dart';
import 'package:flutterweb/layout.dart';
import 'package:flutterweb/routing/routers.dart';
import 'package:flutterweb/widgets/custom_text.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthenticationPage extends StatelessWidget {
  const AuthenticationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: 400),
          padding: EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(right: 12),
                  child: Image.asset('assets/icons/logo.png'),),
                  Expanded(child: Container())
                ],
              ),
              SizedBox(height: 30,),
              Row(
                children: [
                  Text('Login',style: GoogleFonts.roboto(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2
                  ),)
                ],
              ),
              Row(
                children: [
                  CustomText(
                    text: 'ยินดีต้อนรับสู่หน้าแอดมิน',
                    color: lightGrey,
                  )
                ],
              ),
              SizedBox(height: 15,),
              TextField(
                decoration: InputDecoration(
                    labelText: 'อีเมล',
                    hintText: 'abc@domain.com',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                    )
                ),
              ),
              SizedBox(height: 15,),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'รหัสผ่าน',
                  hintText: '123',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)
                  )
                ),
              ),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(value: true, onChanged: (value){}),
                      CustomText(
                        text: 'จดจำรหัสผ่าน',
                      ),
                    ],
                  ),
                  CustomText(
                    text: 'ลืมรหัสผ่าน',
                    color: active,
                  ),
                ],
              ),
              SizedBox(height: 15,),
              InkWell(
                onTap: (){
                  menuController.changActiveItemTo(OverViewPageDisplayName);
                  Get.offAllNamed(RootRoute);
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: active,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  alignment: Alignment.center,
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: CustomText(
                    text: 'Login',
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 15,),
              RichText(text: TextSpan(children: [
                TextSpan(text: 'ยังไม่มีบัญชีผู้ใช้  '),
                TextSpan(text: 'สร้างบัญชี',style: TextStyle(color: active)),
              ]))
            ],
          ),
        )
      ),
    );
  }
}
