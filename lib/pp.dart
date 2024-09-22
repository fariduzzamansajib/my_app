import 'package:flutter/material.dart';

class FormWithInputs extends StatefulWidget {
  @override
  _FormWithInputsState createState() => _FormWithInputsState();
}

class _FormWithInputsState extends State<FormWithInputs> {
  final _formKey = GlobalKey<FormState>();

  // Form field controllers and variables
  String? _selectedDropdownValue; // For dropdown selection
  String? _selectedGender; // For radio button selection (e.g. gender)
  bool _isChecked1 = false; // For first checkbox
  bool _isChecked2 = false; // For second checkbox

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form with Dropdown, Radio, Checkbox'),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              // Dropdown
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  labelText: 'Select an option',
                  border: OutlineInputBorder(),
                ),
                value: _selectedDropdownValue,
                items: <String>['Option 1', 'Option 2', 'Option 3']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedDropdownValue = newValue;
                  });
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please select an option';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),

              // Radio Buttons (for Gender)
              Text('Gender:'),
              RadioListTile<String>(
                title: Text('Male'),
                value: 'Male',
                groupValue: _selectedGender,
                onChanged: (String? value) {
                  setState(() {
                    _selectedGender = value;
                  });
                },
              ),
              RadioListTile<String>(
                title: Text('Female'),
                value: 'Female',
                groupValue: _selectedGender,
                onChanged: (String? value) {
                  setState(() {
                    _selectedGender = value;
                  });
                },
              ),
              RadioListTile<String>(
                title: Text('Other'),
                value: 'Other',
                groupValue: _selectedGender,
                onChanged: (String? value) {
                  setState(() {
                    _selectedGender = value;
                  });
                },
              ),
              if (_selectedGender == null)
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Text(
                    'Please select a gender',
                    style: TextStyle(color: Colors.red, fontSize: 12),
                  ),
                ),
              SizedBox(height: 20),

              // Checkboxes
              Text('Interests:'),
              CheckboxListTile(
                title: Text('Interest 1'),
                value: _isChecked1,
                onChanged: (bool? value) {
                  setState(() {
                    _isChecked1 = value ?? false;
                  });
                },
              ),
              CheckboxListTile(
                title: Text('Interest 2'),
                value: _isChecked2,
                onChanged: (bool? value) {
                  setState(() {
                    _isChecked2 = value ?? false;
                  });
                },
              ),
              SizedBox(height: 20),

              // Submit Button
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pinkAccent,
                  padding: EdgeInsets.symmetric(vertical: 16),
                ),
                onPressed: () {
                  if (_formKey.currentState?.validate() ?? false) {
                    if (_selectedGender == null) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Please select a gender')),
                      );
                      return;
                    }

                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Form submitted successfully')),
                    );
                  }
                },
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
