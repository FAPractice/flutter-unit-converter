import 'package:flutter/material.dart';

class UnitChip extends StatelessWidget {
  final int selectedChip, index;
  final String? title;
  final Function(bool?) onSelected;

  const UnitChip(this.selectedChip, this.index, this.onSelected,
      {Key? key, this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8, bottom: 8),
      child: ChoiceChip(
        selected: selectedChip == index,
        label: Text(title ?? index.toString()),
        onSelected: onSelected,
      ),
    );
  }
}
