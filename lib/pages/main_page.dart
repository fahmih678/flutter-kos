import 'package:bwa_cozy/cubit/page_cubit.dart';
import 'package:bwa_cozy/pages/card_page.dart';
import 'package:bwa_cozy/pages/favorite_page.dart';
import 'package:bwa_cozy/pages/home_page.dart';
import 'package:bwa_cozy/pages/message_page.dart';
import 'package:bwa_cozy/theme.dart';
import 'package:bwa_cozy/widgets/bottom_navbar_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildContent(int currentIndex) {
      switch (currentIndex) {
        case 0:
          return HomePage();
        case 1:
          return MessagePage();
        case 2:
          return CardPage();
        case 3:
          return FavoritePage();
        default:
          return HomePage();
      }
    }

    Widget buttomNavbar() {
      return Padding(
        padding: const EdgeInsets.only(left: 24, right: 24, bottom: 30),
        child: Container(
          height: 65,
          width: 327,
          decoration: BoxDecoration(
              color: boxBgColor, borderRadius: BorderRadius.circular(23)),
          padding: EdgeInsets.only(top: 19, left: 30, right: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BottomNavbarItem(
                index: 0,
                imageUrl: 'assets/images/icon_home.png',
              ),
              BottomNavbarItem(
                index: 1,
                imageUrl: 'assets/images/icon_mail.png',
              ),
              BottomNavbarItem(
                index: 2,
                imageUrl: 'assets/images/icon_card.png',
              ),
              BottomNavbarItem(
                index: 3,
                imageUrl: 'assets/images/icon_love.png',
              ),
            ],
          ),
        ),
      );
    }

    return BlocBuilder<PageCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
          floatingActionButton: buttomNavbar(),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          backgroundColor: whiteColor,
          body: buildContent(currentIndex),
        );
      },
    );
  }
}
