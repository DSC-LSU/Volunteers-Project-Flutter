import 'package:flutter/material.dart';

import 'package:volunteers_project/constants.dart';
import 'package:volunteers_project/screens/add_opportunity/components/day_button.dart';

class DayButtonBar extends StatefulWidget {
  final List<bool> selectedDays;

  const DayButtonBar({
    this.selectedDays,
  });

  @override
  _DayButtonBarState createState() => _DayButtonBarState();
}

class _DayButtonBarState extends State<DayButtonBar> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.spaceEvenly,
      runSpacing: kDefaultMargin / 4,
      children: [
        DayButton(
          text: 'M ',
          isSelected: widget.selectedDays[0],
          onPressed: () => _changeIsSelected(0),
        ),
        DayButton(
          text: 'Tu',
          isSelected: widget.selectedDays[1],
          onPressed: () => _changeIsSelected(1),
        ),
        DayButton(
          text: 'W ',
          isSelected: widget.selectedDays[2],
          onPressed: () => _changeIsSelected(2),
        ),
        DayButton(
          text: 'Th',
          isSelected: widget.selectedDays[3],
          onPressed: () => _changeIsSelected(3),
        ),
        DayButton(
          text: 'F ',
          isSelected: widget.selectedDays[4],
          onPressed: () => _changeIsSelected(4),
        ),
        DayButton(
          text: 'Sa',
          isSelected: widget.selectedDays[5],
          onPressed: () => _changeIsSelected(5),
        ),
        DayButton(
          text: 'Su',
          isSelected: widget.selectedDays[6],
          onPressed: () => _changeIsSelected(6),
        ),
      ],
    );
  }

  void _changeIsSelected(int index) {
    setState(() {
      widget.selectedDays[index] = !widget.selectedDays[index];
    });
  }
}
