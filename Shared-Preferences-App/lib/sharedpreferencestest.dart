import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesTestWidget extends StatefulWidget {
  const SharedPreferencesTestWidget({super.key});

  @override
  State<SharedPreferencesTestWidget> createState() =>
      _SharedPreferencesTestWidgetState();
}

class _SharedPreferencesTestWidgetState
    extends State<SharedPreferencesTestWidget> {
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      final String text = _controller.text.toLowerCase();
      _controller.value = _controller.value.copyWith(
        text: text,
        selection:
            TextSelection(baseOffset: text.length, extentOffset: text.length),
        composing: TextRange.empty,
      );
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Shared Preferences Try App '),
        ),
        body: Container(
          alignment: Alignment.center,
          child: FutureBuilder(
              future: SharedPreferences.getInstance(),
              builder: (context, AsyncSnapshot<SharedPreferences> snapshot) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: TextField(
                        controller: _controller,
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.text_format),
                            border: OutlineInputBorder(),
                            hintText: 'Name',
                            constraints: BoxConstraints(
                                maxHeight: 50.0, maxWidth: 500.0)),
                      ),
                    ),
                    const SizedBox(height: 30),
                    _IntegerExample(),
                    const SizedBox(height: 30),
                    Text(
                      snapshot.data!.getString('name').toString(),
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        fontSize: 24,
                        color: Colors.blueAccent,
                      ),
                    ),
                    const SizedBox(height: 10),
                    BorderedText(
                      strokeWidth: 4.0,
                      strokeColor: Colors.redAccent,
                      child: Text(
                        snapshot.data!.getInt('age').toString(),
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          letterSpacing: 4.0,
                          color: Colors.red,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      snapshot.data!.getBool('isPresent').toString(),
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.red,
                      ),
                    ),
                  ],
                );
              }),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            SharedPreferences sp = await SharedPreferences.getInstance();

            sp.setString('name', _controller.text);
            sp.setBool('isPresent', true);

            setState(() {});
          },
          child: const Icon(Icons.add),
        ));
  }
}

class _IntegerExample extends StatefulWidget {
  @override
  __IntegerExampleState createState() => __IntegerExampleState();
}

class __IntegerExampleState extends State<_IntegerExample> {
  int _currentHorizontalIntValue = 10;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text('Horizontal', style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: 12),
        NumberPicker(
          value: _currentHorizontalIntValue,
          minValue: 0,
          maxValue: 100,
          step: 10,
          itemHeight: 80,
          axis: Axis.horizontal,
          onChanged: (value) =>
              setState(() => _currentHorizontalIntValue = value),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black26),
          ),
        ),
        const SizedBox(
          height: 12.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: const Icon(Icons.remove),
              onPressed: () => setState(() {
                final newValue = _currentHorizontalIntValue - 10;
                _currentHorizontalIntValue = newValue.clamp(0, 100);
              }),
            ),
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: () => setState(() {
                final newValue = _currentHorizontalIntValue + 20;
                _currentHorizontalIntValue = newValue.clamp(0, 100);
              }),
            ),
            FloatingActionButton(
              onPressed: () async {
                SharedPreferences sp = await SharedPreferences.getInstance();
                sp.setInt('age', _currentHorizontalIntValue);
              },
              backgroundColor: Colors.blueAccent,
              child: const Text("Add"),
            )
          ],
        ),
      ],
    );
  }
}
