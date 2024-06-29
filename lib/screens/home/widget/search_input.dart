import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:notesapp/utils/app_size.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({super.key, required this.onChanged});

  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 13.we, vertical: 8.he),
      child: TextFormField(
        onChanged: onChanged,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600,
          fontSize: 15.sp,
        ),
        cursorColor: Colors.white,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 20.we,vertical: 15.he),
          filled: true,
          fillColor: const Color(0xFF373A40),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6.r),
            borderSide: BorderSide(
              color: Colors.white10,
              width: 2.we,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6.r),
            borderSide: BorderSide(
              color: Colors.white10,
              width: 1.we,
            ),
          ),
          prefixIcon: Padding(
            padding:  EdgeInsets.all(10.we),
            child: SvgPicture.asset(
              "assets/icons/search.svg",
              colorFilter:
                  const ColorFilter.mode(Colors.white24, BlendMode.srcIn),
            ),
          ),
          hintText: "Поиск",
          hintStyle: TextStyle(
            color: Colors.white24,
            fontSize: 15.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
