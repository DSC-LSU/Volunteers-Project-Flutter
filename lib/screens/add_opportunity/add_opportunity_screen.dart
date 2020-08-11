import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:volunteers_project/components/custom_card.dart';
import 'package:volunteers_project/constants.dart';
import 'package:volunteers_project/screens/add_opportunity/components/day_button.dart';
import 'package:volunteers_project/screens/add_opportunity/components/day_button_bar.dart';

class AddOpportunityScreen extends StatefulWidget {
  @override
  _AddOpportunityScreenState createState() => _AddOpportunityScreenState();
}

class _AddOpportunityScreenState extends State<AddOpportunityScreen> {
  List<bool> selectedDays = [false, false, false, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Add an opportunity',
          style: Theme.of(context)
              .textTheme
              .headline5
              .copyWith(color: Colors.white),
        ),
      ),
      body: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: InputDecoration(labelText: 'Name'),
              validator: (String value) =>
                  value.trim() == '' ? 'Name can\'t be empty!' : null,
            ),
            TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: InputDecoration(labelText: 'Description'),
            ),
            DayButtonBar(selectedDays: selectedDays),
            DateTimePicker(
              type: DateTimePickerType.dateTimeSeparate,
              use24HourFormat: false,
              firstDate: DateTime.now(),
              lastDate: DateTime(2100),
            )
          ],
        ),
      ),
    );
  }
}
