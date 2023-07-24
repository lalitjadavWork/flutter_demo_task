import 'dart:collection';

import 'package:flutter/material.dart';

class ListWidget extends StatelessWidget {
  ListWidget({super.key});

  final HashMap<int, int> counterMap = HashMap();

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemCount: 100,
        separatorBuilder: (context, index) {
          return Divider(color: Colors.black45,);
        },
        itemBuilder: (context, index) {
          return ListItemWidget(
            counterMap[index] ?? 0,
            updateCallback: (updatedValue) {
              counterMap[index] = updatedValue;
            },
          ); //Set zero if not changed yet
        });
  }
}

class ListItemWidget extends StatefulWidget {
  int count;
  final Function(int updatedValue) updateCallback;

  ListItemWidget(this.count, {super.key, required this.updateCallback});

  @override
  State<ListItemWidget> createState() => _ListItemWidgetState();
}

class _ListItemWidgetState extends State<ListItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(4),
        child: Row(
          children: [
            SizedBox(width: 20,),
            Text(widget.count.toString()),
            Spacer(),
            MaterialButton(
              color: Colors.blueAccent,
              onPressed: () {
                setState(() {
                  widget.count++;
                });
                widget.updateCallback.call(widget.count);
              },
              child: const Text("+", style: TextStyle(color: Colors.white),),
            ),
            SizedBox(width: 20,),
          ],
        ));
  }
}
