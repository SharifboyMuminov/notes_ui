import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:notesapp/data/models/notes/notes_model.dart';
import 'package:notesapp/screens/home/widget/grid_view_item.dart';
import 'package:notesapp/screens/home/widget/search_input.dart';
import 'package:notesapp/utils/app_size.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<NotesModel> items = [
    NotesModel(color: Colors.redAccent, title: 'Savva'),
    NotesModel(color: Colors.pinkAccent, title: 'Olluco'),
    NotesModel(color: Colors.deepPurpleAccent, title: 'Lona'),
    NotesModel(color: Colors.blue, title: 'Folk'),
    NotesModel(color: Colors.lightBlueAccent, title: 'White Rabbit'),
    NotesModel(color: Colors.green, title: 'Sage'),
    NotesModel(color: Colors.orangeAccent, title: 'Maya'),
    NotesModel(color: Colors.orange, title: 'Jun'),
    NotesModel(color: Colors.deepPurple, title: 'Onset'),
    NotesModel(color: Colors.lightBlueAccent, title: 'Probka на Цветном'),
  ];

  List<NotesModel> currentsItems = [
    NotesModel(color: Colors.redAccent, title: 'Savva'),
    NotesModel(color: Colors.pinkAccent, title: 'Olluco'),
    NotesModel(color: Colors.deepPurpleAccent, title: 'Lona'),
    NotesModel(color: Colors.blue, title: 'Folk'),
    NotesModel(color: Colors.lightBlueAccent, title: 'White Rabbit'),
    NotesModel(color: Colors.green, title: 'Sage'),
    NotesModel(color: Colors.orangeAccent, title: 'Maya'),
    NotesModel(color: Colors.orange, title: 'Jun'),
    NotesModel(color: Colors.deepPurple, title: 'Onset'),
    NotesModel(color: Colors.lightBlueAccent, title: 'Probka на Цветном'),
  ];

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xFF31363F),
      appBar: AppBar(
        backgroundColor: const Color(0xFF31363F),
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            "assets/icons/setting.svg",
            width: 24.we,
            height: 24.we,
            colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
          ),
        ),
        centerTitle: true,
        title: Text(
          "Рабочие простанства",
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.white,
            fontSize: 18.sp,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/icons/add.svg",
              width: 28.we,
              height: 28.we,
              colorFilter:
                  const ColorFilter.mode(Colors.white, BlendMode.srcIn),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          SearchInput(
            onChanged: _onChangedSearchInputOne,
          ),
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.symmetric(horizontal: 13.we, vertical: 16.he),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 13.we,
                mainAxisSpacing: 13.we,
                childAspectRatio: 1.6,
              ),
              itemCount: currentsItems.length,
              itemBuilder: (context, index) {
                return GridViewItem(notesModel: currentsItems[index]);
              },
            ),
          ),
        ],
      ),
    );
  }

  void _onChangedSearchInputOne(String value) {
    if (value.isEmpty) {
      currentsItems = items;
    } else {
      currentsItems = items.where((element) {
        try {
          return element.title
                  .toLowerCase()
                  .substring(0, value.length)
                  .toLowerCase() ==
              value.toLowerCase();
        } catch (_) {
          return false;
        }
      }).toList();
    }
    setState(() {});
  }

  void _onChangedSearchInputTwo(String value) {
    if (value.isEmpty) {
      currentsItems = items;
    } else {
      currentsItems = items.where((element) {
        return element.title.toLowerCase().contains(value.toLowerCase());
      }).toList();
    }
    setState(() {});
  }
}
