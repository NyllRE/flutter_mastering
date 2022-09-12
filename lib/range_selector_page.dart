import 'package:flutter/material.dart';

class RangeSelectorPage extends StatefulWidget {
  const RangeSelectorPage({Key? key}) : super(key: key);

  /*
  =>> This widget is the home page of your application. It is stateful, meaning that it has a State object (defined below) that contains fields that affect how it looks.
  
  =>> This class is the configuration for the state. It holds the values (in this case the title) provided by the parent (in this case the App widget) and used by the build method of the State. Fields in a Widget subclass are always marked "final".
  */

  @override
  State<RangeSelectorPage> createState() => _RangeSelectorPageState();
}

class _RangeSelectorPageState extends State<RangeSelectorPage> {
  final formKey = GlobalKey<FormState>();
  // ignore: unused_field
  int _min = 0;
  // ignore: unused_field
  int _max = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RangeSelectorField(
                  labelText: 'Minimum',
                  intValueSetter: (val) => _min = val,
                ),
                SizedBox(height: 12),
                RangeSelectorField(
                  labelText: 'Maximum',
                  intValueSetter: (val) => _max = val,
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.arrow_forward),
          onPressed: () => {
            //==<< Validate the form >>==//
            if (formKey.currentState?.validate() == true)
              {formKey.currentState?.save()}
            //==<< Navigate to generator page >>==//
          },
        ));
  }
}

class RangeSelectorField extends StatelessWidget {
  const RangeSelectorField({
    Key? key,
    required this.labelText,
    required this.intValueSetter,
  }) : super(key: key);

  final String labelText;
  final void Function(int value) intValueSetter;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: labelText,
      ),
      keyboardType: const TextInputType.numberWithOptions(
        decimal: false,
        signed: true,
      ),
      validator: (val) {
        if (val == null || int.tryParse(val) == null) {
          return 'Must be a Number';
        } else {
          return null;
        }
      },
      onSaved: (newValue) => intValueSetter(int.parse(newValue ?? '')),
    );
  }
}
