import 'package:dewsclim/lib.dart';
import 'package:intl/intl.dart';

class DateTextField extends StatefulWidget {
  final TextEditingController date;
  final String hintText;

  const DateTextField({super.key, required this.date, required this.hintText});

  @override
  State<DateTextField> createState() => _DateTextFieldState();
}

class _DateTextFieldState extends State<DateTextField> {
  @override
  void initState() {
    widget.date.text = ""; //set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.date,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Donation date is required';
        }
        return null;
      },
      decoration: InputDecoration(
          //helperText: '',
          hintText: widget.hintText,
          contentPadding: const EdgeInsets.only(left: 8)),
      readOnly: true,
      onTap: () async {
        DateTime? pickedDate = await showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2024),
            lastDate: DateTime(2045));

        if (pickedDate != null) {
          final currentTime = TimeOfDay.now();
          // Create a new DateTime with the picked date and current time
          final pickedDateWithCurrentTime = DateTime(
            pickedDate.year,
            pickedDate.month,
            pickedDate.day,
            currentTime.hour,
            currentTime.minute,
          );

          String formattedDate =
              DateFormat('dd/MM/yyyy').format(pickedDateWithCurrentTime);
          setState(() {
            widget.date.text = formattedDate;
          });
        } else {}
      },
    );
  }
}
