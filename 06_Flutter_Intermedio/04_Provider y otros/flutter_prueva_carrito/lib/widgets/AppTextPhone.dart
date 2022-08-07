import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class AppTextPhone extends StatelessWidget {
  const AppTextPhone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntlPhoneField(
      cursorColor: Colors.black,
      decoration: InputDecoration(
        suffixIcon:  Icon(Icons.highlight_remove),
        labelText: 'Phone Number',
        labelStyle: TextStyle(
          color: Colors.orangeAccent
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 2.0, color: Colors.orange),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(),
        ),
      ),
      onChanged: (phone) {
        print(phone.completeNumber);
      },
      onCountryChanged: (country) {
        print('Country changed to: ' + country.name);
      },
    );
  }
}