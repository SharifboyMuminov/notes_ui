import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:notesapp/data/models/notes/notes_model.dart';
import 'package:notesapp/utils/app_size.dart';

class GridViewItem extends StatelessWidget {
  const GridViewItem({super.key, required this.notesModel});

  final NotesModel notesModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.we, vertical: 8.he),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerLeft,
          colors: [
            notesModel.color,
            Colors.white,
            Colors.white,
          ],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: SvgPicture.asset(
              "assets/icons/three_dots.svg",
              width: 20.we,
              height: 20.we,
              colorFilter:
              const ColorFilter.mode(Colors.white, BlendMode.srcIn),
            ),
          ),
          Text(
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            notesModel.title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 15.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
