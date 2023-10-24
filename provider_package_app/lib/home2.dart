import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './providerclass.dart';

class Home2 extends StatefulWidget {
  const Home2({super.key});

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  @override
  void initState() {
    context.read<SavedData>().getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final data = context.watch<SavedData>().data;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Practice Provider package'),
        backgroundColor: const Color.fromARGB(255, 8, 25, 39),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(data.newValue),
          const SizedBox(height: 20),
          EnterField(),
        ],
      )),
    );
  }
}

class EnterField extends StatelessWidget {
  EnterField({super.key});
  final TextEditingController ctr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          decoration: InputDecoration(
            hintText: " Enter some text here.. ",
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(30.0)),
            constraints: const BoxConstraints(maxHeight: 50.0, maxWidth: 250.0),
          ),
          controller: ctr,
        ),
        const SizedBox(
          height: 20.0,
        ),
        ElevatedButton(
          onPressed: () {
            context.read<SavedData>().settingValue(ctr.text);
          },
          child: const Text(
            "Save data",
          ),
        ),
      ],
    );
  }
}
