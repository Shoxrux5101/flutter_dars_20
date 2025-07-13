import 'package:flutter/material.dart';

class CategoryButtons extends StatefulWidget {
  const CategoryButtons({super.key});

  @override
  State<CategoryButtons> createState() => _CategoryButtonsState();
}

class _CategoryButtonsState extends State<CategoryButtons> {
  List<String> items = ["Deliver", "Pick Up"];
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 43,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Color(0xFFEDEDED)),
      child: Row(
        children: [
          ...List.generate(items.length, (index) {
            return Expanded(
              child: GestureDetector(
                onTap: (){
                  activeIndex = index;
                  setState(() {});
                },
                child: Padding(
                  padding: const EdgeInsets.all(4),
                  child: Container(
                    width: double.infinity,
                    height: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: activeIndex == index ? Color(0xFFC67C4E): Color(0xFFEDEDED),
                    ),
                    child: Center(
                      child: Text(
                        items[index],
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: activeIndex == index ? Colors.white: Colors.black,
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
    );
  }
}
