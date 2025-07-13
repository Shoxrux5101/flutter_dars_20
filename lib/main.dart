import 'package:flutter/material.dart';
import 'package:untitled11_uyga_vazifa/category_buttons.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
   HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage>  {

List<String> items1 = ["S", "M", "L"];
int activeIndex1 = 0;
int x =1;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CategoryButtons(),
                SizedBox(height: 25,),
                Container(
                      width: double.infinity,
                      height: 43,
                      child: Row(
                        children: [
                          ...List.generate(items1.length, (index1) {
                            return Expanded(
                              child: GestureDetector(
                                onTap: (){
                                  activeIndex1 = index1;
                                  setState(() {});
                                },
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 16),
                                  child: Container(
                                    height: 35,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: activeIndex1 == index1 ? Color(0xFFC67C4E):Color(0xFFE3E3E3)),
                                      borderRadius: BorderRadius.circular(8),
                                      color: Colors.white,
                                    ),
                                    child: Center(
                                        child: Text(
                                          items1[index1],
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                        color: activeIndex1 == index1 ? Color(0xFFC67C4E): Colors.black,
                                        ),
                                        ),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },),
                        ],
                      ),
                    ),
                SizedBox(height: 25,),
                Container(
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            x += 1;
                            setState(() {});
                          },
                          icon: Icon(Icons.add_circle_outline),
                      ),
                      Text("$x",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),),
                      IconButton(
                          onPressed: x == 1 ? null : () {
                            x -= 1;
                            setState(() {});
                          },
                          icon: Icon(Icons.remove_circle_outline),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
      ),
    );
  }
}


