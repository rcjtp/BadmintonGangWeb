import 'package:badmintonweb/app_colors.dart';
import 'package:badmintonweb/responsive_layout.dart';
import 'package:flutter/material.dart';

class RecruitmentDataWidget extends StatefulWidget {
  @override
  _RecruitmentDataWidgetState createState() => _RecruitmentDataWidgetState();
}

class _RecruitmentDataWidgetState extends State<RecruitmentDataWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.whiteColor, borderRadius: BorderRadius.circular(20)),
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "ความคืบหน้าการรับสมัคร",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: AppColors.black,
                  fontSize: 22,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: AppColors.yellow,
                    borderRadius: BorderRadius.circular(100)),
                padding: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 20,
                ),
                child: Text(
                  "ดูทั้งหมด",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: AppColors.black),
                ),
              )
            ],
          ),
          Divider(
            thickness: 0.5,
            color: Colors.grey,
          ),
          Table(
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            children: [
              /// Table Header
              TableRow(
                decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                    color: Colors.grey,
                    width: 0.5,
                  )),
                ),
                children: [
                  tableHeader("Full Name"),
                  if (!ResponsiveWidget.isSmallScreen(context))
                    tableHeader("Role"),
                  tableHeader("Status"),
                  if (!ResponsiveWidget.isSmallScreen(context)) tableHeader(""),
                ],
              ),

              /// Table Data
              tableRow(
                context,
                name: "สมหญิง ใจดี",
                color: Colors.blue,
                image: "assets/user1.jpg",
                designation: "แอดมิน",
                status: "แอดมิน",
              ),
              tableRow(
                context,
                name: "สมศรี",
                color: Colors.blue,
                image: "assets/user2.jpg",
                designation: "แอดมิน",
                status: "แอดมิน",
              ),
              tableRow(
                context,
                name: "ชายกลาง",
                color: Colors.green,
                image: "assets/user3.jpg",
                designation: "ผู้ใช้งานทั่วไป",
                status: "อนุมัติแล้ว",
              ),
              tableRow(
                context,
                name: "สมหมาย",
                color: Colors.yellow,
                image: "assets/user2.jpg",
                designation: "หัวหน้าก๊วน",
                status: "รออนุมัติ",
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("กำลังแสดง 4 จากทั้งหมด"),
                Text(
                  "ดูทั้งหมด",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  TableRow tableRow(context, {name, image, designation, status, color}) {
    return TableRow(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colors.grey,
              width: 0.5,
            ),
          ),
        ),
        children: [
          //Full Name
          Container(
            margin: EdgeInsets.symmetric(vertical: 15),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(1000),
                  child: Image.asset(
                    image,
                    width: 30,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(name)
              ],
            ),
          ),
          // Designation
          if (!ResponsiveWidget.isSmallScreen(context)) Text(designation),
          //Status
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: color,
                ),
                height: 10,
                width: 10,
              ),
              SizedBox(
                width: 10,
              ),
              Text(status),
            ],
          ),
          // Menu icon
          if (!ResponsiveWidget.isSmallScreen(context))
            Image.asset(
              "assets/more.png",
              color: Colors.grey,
              height: 30,
            )
        ]);
  }

  Widget tableHeader(text) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15),
      child: Text(
        text,
        style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.black),
      ),
    );
  }
}