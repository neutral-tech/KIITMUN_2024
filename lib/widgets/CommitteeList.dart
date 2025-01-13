import 'package:flutter/material.dart';
import 'package:kiitmun_2024/models/CommitteeModel.dart';

import 'Committee.dart';
class Committeelist extends StatefulWidget {
  final List<CommitteeModel> list;
  const Committeelist({super.key,required this.list});

  @override
  State<Committeelist> createState() => _CommitteelistState();
}

class _CommitteelistState extends State<Committeelist> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: widget.list.length,
        itemBuilder: (context,index){
          return Committee(
            committee: widget.list[index],
          );
        }
    );
  }
}
