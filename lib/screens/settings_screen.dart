import 'package:dars29/utils/app_colors.dart';
import 'package:dars29/utils/app_extensions.dart';
import 'package:dars29/utils/size_utils.dart';
import 'package:flutter/material.dart';

import '../utils/app_images.dart';
import '../widgets/my_button.dart';

class MenuItem {
  final String title;
  final Icon? icon;
  final Function()? onPressed;

  MenuItem({
    required this.title,
    this.icon,
    this.onPressed,
  });
}

class SettingsScreen extends StatelessWidget {
  SettingsScreen({super.key});

  final List<MenuItem> menus = [
    MenuItem(
      title: "How it Works",
      icon: Icon(Icons.keyboard_arrow_down),
      onPressed: () {},
    ),
    MenuItem(
      title: "Product",
      icon: Icon(Icons.keyboard_arrow_down),
      onPressed: () {},
    ),
    MenuItem(
      title: "Resources",
      icon: Icon(Icons.keyboard_arrow_down),
      onPressed: () {},
    ),
    MenuItem(
      title: "Pricing",
      onPressed: () {},
    ),
  ];

  final List<IconData> icons = [
    Icons.telegram,
    Icons.facebook,
    Icons.snowboarding,
    Icons.ac_unit_outlined,
    Icons.zoom_out_map,
    Icons.zoom_out_map,
    Icons.zoom_out_map,
  ];

  @override
  Widget build(BuildContext context) {
    final isMobile = SizeUtils.isMobile(context);
    return Scaffold(
      backgroundColor: AppColors.scaffoldBg,
      appBar: AppBar(
        toolbarHeight: isMobile ? null : 100,
        centerTitle: false,
        elevation: 0,
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        title: Image.asset(
          AppImages.appLogo,
        ),
        actions: [
          if (isMobile)
            IconButton(
              onPressed: () {},
              icon: Column(
                children: [
                  Icon(
                    Icons.menu,
                    size: 30,
                  ),
                  Text(
                    "MENU",
                    style: TextStyle(
                      fontSize: 8,
                      height: 0.5,
                    ),
                  ),
                ],
              ),
            )
          else ...[
            for (var i = 0; i < menus.length; i++)
              TextButton(
                onPressed: menus[i].onPressed,
                child: Row(
                  children: [
                    Text(menus[i].title),
                    if (menus[i].icon != null) menus[i].icon!,
                  ],
                ),
              ),
            95.w,
            TextButton(
              onPressed: () {},
              child: Text("Log in"),
            ),
            MyButton(
              title: "Get started free",
              textColor: AppColors.primaryColor,
              backgroundColor: AppColors.primaryColor.withOpacity(0.1),
            ),
          ]
        ],
      ),

      // 414 / 48 = 1440 / x
      // x = 1440 * 48 / 414
      // x = 168
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                  vertical: 32, horizontal: 48.responsiveWidth(context)),
              constraints: BoxConstraints(
                maxWidth: 760,
              ),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.lightYellow,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        if (!isMobile)
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 4),
                            decoration: BoxDecoration(
                              color: AppColors.green,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              "Save 90%",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        isMobile ? 16.w : 8.w,
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Row(
                            children: [
                              Text("Get account of \$59"),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 10,
                              ),
                            ],
                          ),
                        ),
                        isMobile ? 16.w : 12.w,
                      ],
                    ),
                  ),
                  isMobile ? 16.h : 32.h,
                  Text(
                    "Manage the team everyone wants to be on",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  isMobile ? 16.h : 24.h,
                  Text(
                    "Simple platform that lets you master what great managers do best, as develop trust, collaborate, and drive team performance.",
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                  isMobile ? 16.h : 24.h,
                  if (isMobile) ...[
                    Container(
                      padding: const EdgeInsets.all(18),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: AppColors.greyBorderColor),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Center(
                        child: Text(
                          "name@yourcompany.com",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                    8.h,
                    MyButton(
                      title: "Try it free",
                      width: double.infinity,
                    ),
                  ] else
                    Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Container(
                            padding: const EdgeInsets.all(18),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border:
                                  Border.all(color: AppColors.greyBorderColor),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(4),
                                bottomLeft: Radius.circular(4),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "name@yourcompany.com",
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: MyButton(
                            title: "Try it free",
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(4),
                              bottomRight: Radius.circular(4),
                            ),
                          ),
                        ),
                      ],
                    )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                width: SizeUtils.screenSize(context).width > 920
                    ? 920
                    : SizeUtils.screenSize(context).width,
                // constraints: BoxConstraints(
                //   maxWidth: 920
                // ),
                child: Image.asset(
                  AppImages.overview,
                  fit: BoxFit.cover,
                  width: SizeUtils.screenSize(context).width,
                ),
              ),
            ),
            56.h,
            Text("TRUSTED BY OVER 10.000+ WORLD’S BEST TEAMS"),
            16.h,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 48),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  for (var i = 0;
                      i < icons.length.clamp(3, isMobile ? 4 : 5);
                      i++)
                    Icon(
                      icons[i],
                      size: 30,
                      color: Colors.blue,
                    ),
                ],
              ),
            ),
            58.h,
          ],
        ),
      ),
    );
  }
}
