import 'package:flutter/material.dart';
import 'package:flutter_mastering/randomizer_page.dart';
import 'package:flutter_mastering/range_selector_form.dart';


class RangeSelectorPage extends StatefulWidget {
  const RangeSelectorPage({Key? key}) : super(key: key);

  @override
  State<RangeSelectorPage> createState() => _RangeSelectorPageState();
}

class _RangeSelectorPageState extends State<RangeSelectorPage> {
  final formKey = GlobalKey<FormState>();
  // ignore: unused_field
  int _min = 0;
  int _max = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: RangeSelectorForm(
          formKey: formKey,
          minValueSetter: (int value) => _min = value,
          maxValueSetter: (int value) => _max = value, 
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.arrow_forward),
          onPressed: () => {
            //==<< Validate the form >>==//
            if (formKey.currentState?.validate() == true && _min <= _max)
              {
                debugPrint('${_min <= _max}'),
                formKey.currentState?.save(),
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => RandomizerPage(
                      min: _min,
                      max: _max,
                    ),
                  ),
                ),
              },
            //==<< Navigate to generator page >>==//
            debugPrint('$_min - $_max'),
            // debugPrint('${_min <= _max ?? true}'),
          },
        ));
  }
}

