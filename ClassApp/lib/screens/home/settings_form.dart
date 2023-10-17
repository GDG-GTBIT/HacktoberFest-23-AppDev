import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:try1/models/user.dart';
import 'package:try1/services/database.dart';
import 'package:try1/shared/constants.dart';
import 'package:try1/shared/loading.dart';

class SettingsForm extends StatefulWidget {
  const SettingsForm({Key? key}) : super(key: key);

  @override
  State<SettingsForm> createState() => _SettingsFormState();
}

class _SettingsFormState extends State<SettingsForm> {

  final _formKey = GlobalKey<FormState>();
  final List<String> subjects = ['0','1','2','3','4','5','6'];
  // final List<int> strengths = [100, 200, 300, 400, 500, 600 , 700 , 800 ,900];

  // form values
  String? _currentName ;
  String? _currentSubject;
  int? _currentStrength ;

  @override
  Widget build(BuildContext context) {

    final user = Provider.of<CustomUser?>(context);

    return StreamBuilder<UserData>(
      stream: DatabaseService(uid: user?.uid).userData,
      builder: (context, snapshot) {
        if(snapshot.hasData)
          {
            UserData userData =  snapshot.data as UserData;
            return Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  const Text('Update your subject settings ',
                    style: TextStyle(fontSize: 18.0),
                  ),
                  const SizedBox(height:20.0),

                  TextFormField(
                    initialValue: userData.name,
                    decoration: textInputDecoration,
                    validator: (val) => val!.isEmpty ? 'Please enter a name ' : null,
                    onChanged: (val) => setState(() { _currentName = val; }),
                  ),
                  const SizedBox(height: 20.0),
                  //dropdown
                  DropdownButtonFormField(
                      value: _currentSubject ?? userData.subject,
                      decoration: textInputDecoration,
                      items:subjects.map((subject){
                        return DropdownMenuItem(
                          child: Text('$subject subjects'),
                          value: subject,
                        );
                      }).toList(),
                      onChanged: (val) =>  setState(() => _currentSubject = val as String  )
                  ),
                  const SizedBox(height: 10.0,),
                  //slider
                  Slider(
                    value: (_currentStrength ?? userData.strength ).toDouble(),
                    activeColor: Colors.blue[_currentStrength ?? userData.strength],
                    inactiveColor: Colors.blue,
                    min: 100.0, max: 900.0, divisions: 8 ,
                    onChanged: (val) => setState(() => _currentStrength = val.round()),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      if(_formKey.currentState!.validate()) {
                        await DatabaseService(uid: user?.uid).updateUserData(
                          _currentName ?? userData.name,
                          _currentSubject ?? userData.subject,
                          _currentStrength ?? userData.strength);
                        Navigator.pop(context);
                      }
                    }, child: const Text('Update',style: TextStyle(color:Colors.white),
                  ),
                  ),
                ],
              ),
            );
          }
        else
          {
            return const Loading();
          }
      }
    );
  }
}
