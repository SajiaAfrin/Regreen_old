import 'package:flutter/material.dart';
import 'package:regreen/screens/guide.dart';
import 'package:regreen/screens/plant.dart';
import 'package:regreen/utils/app_color.dart';

import 'trash.dart';
class Homepage extends StatefulWidget {
    static const String path = "Homepage";
  const Homepage({ Key? key }) : super(key: key);
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.secondaryColor,
          title: Text("Regreen"),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: (){
                // Navigator.pushNamed(context, FavoriteScreen.path);
              }, 
              icon: Icon(Icons.settings)
            )
          ],
        ),
        drawer: Drawer(
          child: Container(
            color: Colors.black54,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                Image.asset("assets/image/profile.jpg"),
                ListTile(
                  onTap: (){},
                  trailing: Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      color: AppColor.secondaryColor
                    ),
                    child: Center(child: Text("0", style: TextStyle(color: Colors.white),)),
                  ),
                  title: Text("Point", style: TextStyle(color: Colors.white),),
                ),
                Divider(thickness: 0.5, color: Colors.white,height: 0,),
                ListTile(
                  onTap: (){},
                  title: Text("Plant Recommendation", style: TextStyle(color: Colors.white),),
                ),
                Divider(thickness: 0.5, color: Colors.white,height: 0,),
                ListTile(
                  onTap: (){},
                  title: Text("Guidelines", style: TextStyle(color: Colors.white),),
                ),
                Divider(thickness: 0.5, color: Colors.white,height: 0,),
               

                Container(
                  padding: EdgeInsets.all(15),
                  width: double.infinity,
                  color: Colors.black,
                  child: Text(
                    "More",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ),

               ListTile(
                  onTap: (){},
                  leading: Icon(Icons.search, color: Colors.white,),
                  title: Text("Search", style: TextStyle(color: Colors.white),),
                ),
                Divider(thickness: 0.2, color: Colors.white,height: 0,),
                
              ],
            ),
          ),
        ),
        body: Column(
          children: [
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TabBar(
                  isScrollable: true,
                  unselectedLabelColor: AppColor.secondaryColor,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicator: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [AppColor.secondaryColor, AppColor.secondaryColor]
                  ),
                  borderRadius: BorderRadius.circular(8),
                  color: AppColor.secondaryColor
                ),
                tabs: [  
                  Tab(
                    child: Text("Trash"),
                  ),
                  Tab(
                      child: Text("Recommend Plant"),
                    ),
                  Tab(
                      child: Text("Guidelines"),
                    ),
    
                ],
              ),
            ),

            Expanded(
              child: TabBarView(
                children: [
                  // RiceScreen(),
                  TrashScreen(),
                  Plant(),
                 Guide(),
                   
                    
                ]
              ),
            )
          ],
        ),
      ),
    );
  }
}