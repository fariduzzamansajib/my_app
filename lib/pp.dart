import 'package:flutter/material.dart';

class FormWithAllInputs extends StatefulWidget {
  const FormWithAllInputs({super.key});

  @override
  _FormWithAllInputsState createState() => _FormWithAllInputsState();
}

class _FormWithAllInputsState extends State<FormWithAllInputs> {
  final _formKey = GlobalKey<FormState>();

  // Form field controllers
  final TextEditingController _idController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  // Dropdown, radio button, and checkbox variables
  String? _selectedDropdownValue;
  String? _selectedGender;
  bool _isChecked1 = false;
  bool _isChecked2 = false;
  bool _isChecked3 = false;

  @override
  Widget build(BuildContext context) {
    void _showAlertDialog(BuildContext context) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Confirm'),
            content: Text('Are you sure you want to proceed?'),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.pop(
                      context, false); // Return false when No is pressed
                },
                child: Text('No'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(
                      context, true); // Return true when Yes is pressed
                },
                child: Text('Yes'),
              ),
            ],
          );
        },
      ).then((value) {
        // Handle the Yes/No response

        if (value == true) {
          if (_formKey.currentState?.validate() ?? false) {
            if (_formKey == null) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Please select a gender')),
              );
              return;
            }

            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Form submitted successfully ddd')),
            );
          }
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('You pressed No')),
          );
        }
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Form with Various Inputs'),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              // ID field
              TextFormField(
                controller: _idController,
                decoration: InputDecoration(
                  labelText: 'ID',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your ID';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),

              // Name field
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),

              // Email field
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || !value.contains('@')) {
                    return 'Please enter a valid email';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),

              // Phone field
              TextFormField(
                controller: _phoneController,
                decoration: InputDecoration(
                  labelText: 'Phone',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.phone,
                validator: (value) {
                  if (value == null || value.length != 11) {
                    return 'Please enter a valid 11-digit phone number';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),

              // Password field
              TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
                validator: (value) {
                  if (value == null || value.length < 8) {
                    return 'Password must be at least 8 characters long';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),

              // Dropdown field
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  labelText: 'Select a course',
                  border: OutlineInputBorder(),
                ),
                value: _selectedDropdownValue,
                items: <String>['Java', 'Flutter', 'Cyber Security']
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

              // Radio buttons (for Gender)
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
              Text('Skills:'),
              CheckboxListTile(
                title: Text('HTML'),
                value: _isChecked1,
                onChanged: (bool? value) {
                  setState(() {
                    _isChecked1 = value ?? false;
                  });
                },
              ),
              CheckboxListTile(
                title: Text('CSS'),
                value: _isChecked2,
                onChanged: (bool? value) {
                  setState(() {
                    _isChecked2 = value ?? false;
                  });
                },
              ),
              CheckboxListTile(
                title: Text('JavaScript'),
                value: _isChecked3,
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
                  padding: EdgeInsets.fromLTRB(60, 15, 60, 15),
                ),
                onPressed: () {
                  _showAlertDialog(context);
                },
                child: Text(
                  'Submit',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent),
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        padding: EdgeInsets.all(16),
                        height: 150,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'This is a modal bottom sheet',
                              style: TextStyle(fontSize: 18),
                            ),
                            SizedBox(height: 20),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text('Close'),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
                child: Text(
                  'Show Modal Bottom Sheet',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
