import 'package:flutter/material.dart';

class FilterItem extends StatelessWidget{
  const FilterItem({super.key , required this.title , required this.updateStaus , required this.currentStatus});
  final String title;
  final void Function(bool val) updateStaus;
  final bool currentStatus;

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      value: currentStatus,
      onChanged: (isChecked) {
        updateStaus(isChecked);
      },
      title: Text(
        title,
        style: Theme.of(context).textTheme.titleLarge!.copyWith(
              color: const Color.fromARGB(255, 73, 81, 88),
            ),
      ),
      activeColor: const Color.fromARGB(255, 1, 47, 80),
      contentPadding: const EdgeInsets.only(left: 30, right: 20),
    );
  }
}