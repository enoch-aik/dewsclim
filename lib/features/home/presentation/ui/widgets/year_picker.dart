import 'package:dewsclim/lib.dart';
import 'package:dewsclim/src/res/colors/colors.dart';

class KYearPicker extends HookConsumerWidget {
  const KYearPicker({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final year = useState('');
    return GestureDetector(
      onTap: () async {
        /*await showDatePicker(
          context: context,
          firstDate: DateTime(2020, 1, 1),
          lastDate: DateTime(2036, 1, 1),
          initialDatePickerMode: DatePickerMode.year,
        );*/

        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text("Select Year"),
              content: Container(
                // Need to use container to add size constraint.
                width: 300,
                height: 300,
                child: YearPicker(
                  firstDate: DateTime(DateTime.now().year - 100, 1),
                  lastDate: DateTime(DateTime.now().year + 100, 1),
                  initialDate: DateTime.now(),
                  // save the selected date to _selectedDate DateTime variable.
                  // It's used to set the previous selected date when
                  // re-showing the dialog.
                  selectedDate: DateTime.now(),
                  onChanged: (DateTime dateTime) {
                    // close the dialog when year is selected.
                    Navigator.pop(context);

                    // Do something with the dateTime selected.
                    // Remember that you need to use dateTime.year to get the year
                  },
                ),
              ),
            );
          },
        );

        // _pickYear(context);
      },
      child: Container(
        height: 45,
        width: 75,
        color: AppColors.primary,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(year.value),
            Icon(Icons.keyboard_arrow_down),
          ],
        ),
      ),
    );
  }
}

void _pickYear(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) {
      final Size size = MediaQuery.of(context).size;
      return AlertDialog(
        // Changing default contentPadding to make the content looks better

        contentPadding: const EdgeInsets.all(10),
        content: SizedBox(
          // Giving some size to the dialog so the gridview know its bounds

          height: size.height / 2.5,
          width: size.width,
          //  Creating a grid view with 3 elements per line.
          child: GridView.count(
            crossAxisCount: 3,
            crossAxisSpacing: 1,
            mainAxisSpacing: 1,
            children: [
              ...List.generate(
                123,
                (index) => Container(
                  //padding: const EdgeInsets.all(1),
                  child: Text(
                    (2022 - index).toString(),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
