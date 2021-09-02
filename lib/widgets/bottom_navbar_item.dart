import 'package:bwa_cozy/cubit/page_cubit.dart';
import 'package:flutter/material.dart';
import 'package:bwa_cozy/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNavbarItem extends StatelessWidget {
  final int index;
  final String imageUrl;

  BottomNavbarItem({
    required this.index,
    required this.imageUrl,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<PageCubit>().setPage(index);
      },
      child: Column(
        children: [
          Image.asset(
            imageUrl,
            height: 26,
            width: 26,
            color: context.read<PageCubit>().state == index
                ? btnBarActiveColor
                : iconBaseColor,
          ),
          Spacer(),
          context.read<PageCubit>().state == index
              ? Container(
                  width: 30,
                  height: 4,
                  decoration: BoxDecoration(
                    color: btnBarActiveColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(1000),
                      topRight: Radius.circular(1000),
                    ),
                  ),
                )
              : Container()
        ],
      ),
    );
  }
}
