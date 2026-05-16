import 'package:flutter/material.dart';

class UniversalCard extends StatefulWidget {
  final String title;
  final String subtitle;
  final String tag;
  final IconData? logo;
  final String location;
  final String salary;
  final String duration;
  final VoidCallback onTap;

  const UniversalCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.tag,
    required this.location,
    required this.salary,
    required this.duration,
    required this.onTap,
    this.logo,
  });

  @override
  State<UniversalCard> createState() => _UniversalCardState();
}

class _UniversalCardState extends State<UniversalCard> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Colors.black12,
        )
      ),
      child:  Padding(
        padding:  EdgeInsets.symmetric(horizontal: screenWidth*0.02),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: screenWidth*0.01,),
            Align(
              alignment: Alignment.topLeft,
              child: Chip(label: Text(widget.tag),
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,

                labelStyle: TextStyle(fontSize: 10,color: Colors.blue),
                side: BorderSide(color: Colors.blue.shade200,width: 1),
                visualDensity: VisualDensity.compact,
                color: WidgetStatePropertyAll(Colors.white),),
            ),
            SizedBox(height: screenWidth*0.02),
            Text(widget.title, style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            )
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(widget.subtitle,
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                Icon(widget.logo,color: Colors.black,)
              ],
            ),
            Divider(color: Colors.grey,),
            const SizedBox(height: 5),
            Row(
              children: [
                Icon(Icons.location_on, size: 18,),
                Padding(padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Text(widget.location,style: TextStyle(fontSize: 10),),
                )
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                Icon(Icons.money,size: 18,),
                Padding(padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Text(widget.salary,style: TextStyle(fontSize: 10),),
                )
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                Icon(Icons.calendar_month_outlined, size: 18,),
                Padding(padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Text(widget.duration,style: TextStyle(fontSize: 10),),
                )
              ],
            ),
            SizedBox(height: screenWidth*0.06),
            InkWell(
              child: Text("View details >",style: TextStyle(color: Colors.blue),
              ),
            )
          ],
        ),
      ),
    );
  }
}
