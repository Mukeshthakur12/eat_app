import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled1/CustomWidgets/app_text.dart';
import 'package:untitled1/Utils/app_colors.dart';


class SearchBar extends StatelessWidget {
  final Widget child;
  const SearchBar({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var th = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Container(
            child: Row(
              children: [
                IconButton(
                  icon: SvgPicture.asset('assets/AppBar/back_button.svg'),
                  onPressed: () {
                    Navigator.pop(context); // Pop the current route and go back
                  },
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    height: 45,
                    width: 287,
                    padding: EdgeInsets.only(left: 10,right: 8,top: 4),
                    decoration: BoxDecoration(
                      // color: Colors.blue,
                      border: Border.all(
                        color: bordersearch
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    // padding: EdgeInsets.all(9.0),
                    child: Center(
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Search Here',
                                // suffixIcon: Icon(Icons.search),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 4),
                            child: IconButton(
                              icon: Icon(Icons.search,color: Colors.grey,),
                              onPressed: () {
                                // Handle search action
                              },
                            ),
                          ),
                        ],

                      ),
                    ),
                  ),
                ),

              ],
            ),
          )
      ),
      body: Column(
        children: [
          Expanded(
            child: child,
          )
        ],
      ),
    );
  }
}
