import 'package:flutter/material.dart';
import 'package:help_desk_fatec/pages/home.dart';
import 'package:help_desk_fatec/widgets/widget_button.dart';
import 'package:help_desk_fatec/widgets/widget_text_light.dart';

class ClassLocalization extends StatefulWidget {
  const ClassLocalization({Key? key}) : super(key: key);

  @override
  State<ClassLocalization> createState() => _ClassLocalizationState();
}

class _ClassLocalizationState extends State<ClassLocalization> {

  final _testeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff44545c),
        title: Row(
          children: [
            IconButton(
                onPressed: _backHome,
                icon: Icon(Icons.arrow_back),
            ),
            MyTextLight('Localização Salas de aula'),
          ],
        ),
      ),
      body: _bodyLocalization(),
    );
  }

  void _backHome() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => MyHome()),
    );
  }

  _bodyLocalization() {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 100,
            child: Icon(
              Icons.not_listed_location_outlined,
              size: 80,
              color: Color(0xff44545c),
            ),
          ),
          TextFormField(
            controller: _testeController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Curso',
              prefixIcon: Icon(Icons.school),
              hintText: 'Ex: ADS',
            ),
          ),

          SizedBox(height: 10),

          TextFormField(
            controller: _testeController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Turno',
              prefixIcon: Icon(Icons.wb_sunny_outlined),
              hintText: 'Matutino ou Noturno',
            ),
          ),

          SizedBox(height: 10),

          TextFormField(
            controller: _testeController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Ciclo',
              prefixIcon: Icon(Icons.incomplete_circle),
              hintText: 'Ex: 3º ciclo',
            ),
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyButton('Buscar', onPressed: (){}),
                SizedBox(width: 10),
                MyButton('Limpar', onPressed: (){})
              ],
            ),
          ),
          //MyInput(controller: _testeController),
        ],
      ),
    );
  }
}
