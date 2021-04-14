import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.transparent,
        cupertinoOverrideTheme: CupertinoThemeData().copyWith(
          textTheme: CupertinoTextThemeData().copyWith(
              textStyle: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          )),
        ),
      ),
      debugShowCheckedModeBanner: true,
      home: Scaffold(
        body: Center(
          child: MyWidget(),
        ),
      ),
    );
  }
}

class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  String selectedCurrency = 'USD';
  DropdownButton<String> build(BuildContext context) {
    List<String> currenciesList = ['USD', 'INR', 'AUD', 'EUR'];
    List<DropdownMenuItem<String>> dropdownValues = [];

    for (int x = 0; x < currenciesList.length; x++) {
      String currency = currenciesList[x];
      var dropdownItems = DropdownMenuItem(
        child: Text(currency),
        value: currency,
      );
      dropdownValues.add(dropdownItems);
    }

    return DropdownButton<String>(
        value: selectedCurrency,
        items: dropdownValues,
        onChanged: (newValue) {
          setState(() {
            selectedCurrency = newValue;
          });
        });
  }
}
