import 'package:flutter/material.dart';
import 'package:flutter_web_browser/flutter_web_browser.dart';
import 'package:help_desk_fatec/pages/home.dart';
import 'package:help_desk_fatec/widgets/widget_button.dart';
import 'package:help_desk_fatec/widgets/widget_text.dart';
import 'package:help_desk_fatec/widgets/widget_text_light.dart';

class ClassLocalization extends StatefulWidget {
  const ClassLocalization({Key? key}) : super(key: key);

  @override
  State<ClassLocalization> createState() => _ClassLocalizationState();
}

class _ClassLocalizationState extends State<ClassLocalization> {

  final _testeControllerCurso = TextEditingController();
  final _testeControllerTurno = TextEditingController();
  final _testeControllerCiclo = TextEditingController();

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
    return SingleChildScrollView(
      reverse: true,
      child: Container(
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
              controller: _testeControllerCurso,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Curso',
                prefixIcon: Icon(Icons.school),
                hintText: 'Ex: ADS, GA, COMEX',
              ),
            ),

            SizedBox(height: 10),

            TextFormField(
              controller: _testeControllerTurno,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Turno',
                prefixIcon: Icon(Icons.wb_sunny_outlined),
                hintText: 'Matutino ou Noturno',
              ),
            ),

            SizedBox(height: 10),

            TextFormField(
              controller: _testeControllerCiclo,
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
                  MyButton('Buscar', onPressed: _onSearch),
                  SizedBox(width: 10),
                  MyButton('Limpar', onPressed: _onClean),
                ],
              ),
            ),
            //MyInput(controller: _testeController),
          ],
        )
      ),
    );
  }

  void _onSearch() {

    //GESTÃO AMBIENTAL

    if(_testeControllerCiclo.text == "1" && _testeControllerCurso.text.toUpperCase() == "GA" && _testeControllerTurno.text.toUpperCase() == "MATUTINO"){

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Bloco A | Sala 1'),
        ),
      );
    }else if(_testeControllerCiclo.text == "2" && _testeControllerCurso.text.toUpperCase() == "GA" && _testeControllerTurno.text.toUpperCase() == "MATUTINO"){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Bloco A | Sala 3'),
        ),
      );
    }else if(_testeControllerCiclo.text == "3" && _testeControllerCurso.text.toUpperCase() == "GA" && _testeControllerTurno.text.toUpperCase() == "MATUTINO"){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Bloco A | Sala 6'),
        ),
      );
    }else if(_testeControllerCiclo.text == "4" && _testeControllerCurso.text.toUpperCase() == "GA" && _testeControllerTurno.text.toUpperCase() == "MATUTINO"){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Bloco A | Sala 11'),
        ),
      );
    }else if(_testeControllerCiclo.text == "5" && _testeControllerCurso.text.toUpperCase() == "GA" && _testeControllerTurno.text.toUpperCase() == "MATUTINO"){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Bloco A | Sala 14'),
        ),
      );
    }else if(_testeControllerCiclo.text == "6" && _testeControllerCurso.text.toUpperCase() == "GA" && _testeControllerTurno.text.toUpperCase() == "MATUTINO"){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Bloco B | Sala 1'),
        ),
      );
    }

    //AGRONEGOCIO

    else if(_testeControllerCiclo.text == "1" && _testeControllerCurso.text.toUpperCase() == "AGRO" && _testeControllerTurno.text.toUpperCase() == "NOTURNO"){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Bloco A | Sala 1'),
        ),
      );
    }else if(_testeControllerCiclo.text == "2" && _testeControllerCurso.text.toUpperCase() == "AGRO" && _testeControllerTurno.text.toUpperCase() == "NOTURNO"){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Bloco A | Sala 2'),
        ),
      );
    }else if(_testeControllerCiclo.text == "3" && _testeControllerCurso.text.toUpperCase() == "AGRO" && _testeControllerTurno.text.toUpperCase() == "NOTURNO"){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Bloco A | Sala 5'),
        ),
      );
    }
    else if(_testeControllerCiclo.text == "4" && _testeControllerCurso.text.toUpperCase() == "AGRO" && _testeControllerTurno.text.toUpperCase() == "NOTURNO"){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Bloco A | Sala 10'),
        ),
      );
    }else if(_testeControllerCiclo.text == "5" && _testeControllerCurso.text.toUpperCase() == "AGRO" && _testeControllerTurno.text.toUpperCase() == "NOTURNO"){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Bloco A | Sala 13'),
        ),
      );
    }else if(_testeControllerCiclo.text == "6" && _testeControllerCurso.text.toUpperCase() == "AGRO" && _testeControllerTurno.text.toUpperCase() == "NOTURNO"){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Bloco B | Sala 1'),
        ),
      );
    }

    //ANÁLISE E DESENVOLVIMENTO DE SISTEMAS **MATUTINO**


    else if(_testeControllerCiclo.text == "1" && _testeControllerCurso.text.toUpperCase() == "ADS" && _testeControllerTurno.text.toUpperCase() == "MATUTINO"){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Bloco A | Sala 11'),
        ),
      );
    }else if(_testeControllerCiclo.text == "2" && _testeControllerCurso.text.toUpperCase() == "ADS" && _testeControllerTurno.text.toUpperCase() == "MATUTINO"){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Bloco A | Sala 4'),
        ),
      );
    }else if(_testeControllerCiclo.text == "3" && _testeControllerCurso.text.toUpperCase() == "ADS" && _testeControllerTurno.text.toUpperCase() == "MATUTINO"){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Bloco A | Sala 9'),
        ),
      );
    }
    else if(_testeControllerCiclo.text == "4" && _testeControllerCurso.text.toUpperCase() == "ADS" && _testeControllerTurno.text.toUpperCase() == "MATUTINO"){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Bloco A | Sala 12'),
        ),
      );
    }else if(_testeControllerCiclo.text == "5" && _testeControllerCurso.text.toUpperCase() == "ADS" && _testeControllerTurno.text.toUpperCase() == "MATUTINO"){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Bloco B | Sala 6'),
        ),
      );
    }else if(_testeControllerCiclo.text == "6" && _testeControllerCurso.text.toUpperCase() == "ADS" && _testeControllerTurno.text.toUpperCase() == "MATUTINO"){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Bloco B | Sala 3'),
        ),
      );
    }

    //ANÁLISE E DESENVOLVIMENTO DE SISTEMAS **NOTURNO**

    else if(_testeControllerCiclo.text == "1" && _testeControllerCurso.text.toUpperCase() == "ADS" && _testeControllerTurno.text.toUpperCase() == "NOTURNO"){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Bloco A | Sala 19'),
        ),
      );
    }else if(_testeControllerCiclo.text == "2" && _testeControllerCurso.text.toUpperCase() == "ADS" && _testeControllerTurno.text.toUpperCase() == "NOTURNO"){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Bloco C | Sala 2'),
        ),
      );
    }else if(_testeControllerCiclo.text == "3" && _testeControllerCurso.text.toUpperCase() == "ADS" && _testeControllerTurno.text.toUpperCase() == "NOTURNO"){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: TextButton(
              onPressed: _onSiteFatec,
              child: Text(
                'Ver no site',
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
          ),
        ),
      );
    }
    else if(_testeControllerCiclo.text == "4" && _testeControllerCurso.text.toUpperCase() == "ADS" && _testeControllerTurno.text.toUpperCase() == "NOTURNO"){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Conferir no site'),
        ),
      );
    }else if(_testeControllerCiclo.text == "5" && _testeControllerCurso.text.toUpperCase() == "ADS" && _testeControllerTurno.text.toUpperCase() == "NOTURNO"){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Conferir no site'),
        ),
      );
    }else if(_testeControllerCiclo.text == "6" && _testeControllerCurso.text.toUpperCase() == "ADS" && _testeControllerTurno.text.toUpperCase() == "NOTURNO"){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Bloco C | Sala 3'),
        ),
      );
    }

    //COMÉRCIO EXTERIOR **MATUTINO**

    else if(_testeControllerCiclo.text == "1" && _testeControllerCurso.text.toUpperCase() == "COMEX" && _testeControllerTurno.text.toUpperCase() == "MATUTINO"){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Bloco A | Sala 2'),
        ),
      );
    }else if(_testeControllerCiclo.text == "2" && _testeControllerCurso.text.toUpperCase() == "COMEX" && _testeControllerTurno.text.toUpperCase() == "MATUTINO"){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Bloco A | Sala 5'),
        ),
      );
    }else if(_testeControllerCiclo.text == "3" && _testeControllerCurso.text.toUpperCase() == "COMEX" && _testeControllerTurno.text.toUpperCase() == "MATUTINO"){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Bloco A | Sala 10'),
        ),
      );
    }
    else if(_testeControllerCiclo.text == "4" && _testeControllerCurso.text.toUpperCase() == "COMEX" && _testeControllerTurno.text.toUpperCase() == "MATUTINO"){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Bloco A | Sala 13'),
        ),
      );
    }else if(_testeControllerCiclo.text == "5" && _testeControllerCurso.text.toUpperCase() == "COMEX" && _testeControllerTurno.text.toUpperCase() == "MATUTINO"){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Bloco B | Sala 4'),
        ),
      );
    }else if(_testeControllerCiclo.text == "6" && _testeControllerCurso.text.toUpperCase() == "COMEX" && _testeControllerTurno.text.toUpperCase() == "MATUTINO"){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Bloco B | Sala 5'),
        ),
      );
    }

    //COMÉRCIO EXTERIOR **NOTURNO**

    else if(_testeControllerCiclo.text == "1" && _testeControllerCurso.text.toUpperCase() == "COMEX" && _testeControllerTurno.text.toUpperCase() == "NOTURNO"){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Bloco A | Sala 3'),
        ),
      );
    }else if(_testeControllerCiclo.text == "2" && _testeControllerCurso.text.toUpperCase() == "COMEX" && _testeControllerTurno.text.toUpperCase() == "NOTURNO"){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Bloco A | Sala 6'),
        ),
      );
    }else if(_testeControllerCiclo.text == "3" && _testeControllerCurso.text.toUpperCase() == "COMEX" && _testeControllerTurno.text.toUpperCase() == "NOTURNO"){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('BLOCO A || SALA 11'),
        ),
      );
    }
    else if(_testeControllerCiclo.text == "4" && _testeControllerCurso.text.toUpperCase() == "COMEX" && _testeControllerTurno.text.toUpperCase() == "NOTURNO"){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('BLOCO A || SALA 14'),
        ),
      );
    }else if(_testeControllerCiclo.text == "5" && _testeControllerCurso.text.toUpperCase() == "COMEX" && _testeControllerTurno.text.toUpperCase() == "NOTURNO"){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('BLOCO B || SALA 3'),
        ),
      );
    }else if(_testeControllerCiclo.text == "6" && _testeControllerCurso.text.toUpperCase() == "COMEX" && _testeControllerTurno.text.toUpperCase() == "NOTURNO"){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Bloco B | Sala 6'),
        ),
      );
    }

    //GESTÃO DA PRODUÇÃO INDUSTRIAL


    else if(_testeControllerCiclo.text == "1" && _testeControllerCurso.text.toUpperCase() == "GPI" && _testeControllerTurno.text.toUpperCase() == "NOTURNO"){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Bloco A | Sala 4'),
        ),
      );
    }else if(_testeControllerCiclo.text == "2" && _testeControllerCurso.text.toUpperCase() == "GPI" && _testeControllerTurno.text.toUpperCase() == "NOTURNO"){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Bloco A | Sala 9'),
        ),
      );
    }else if(_testeControllerCiclo.text == "3" && _testeControllerCurso.text.toUpperCase() == "GPI" && _testeControllerTurno.text.toUpperCase() == "NOTURNO"){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('BLOCO A || SALA 12'),
        ),
      );
    }
    else if(_testeControllerCiclo.text == "4" && _testeControllerCurso.text.toUpperCase() == "GPI" && _testeControllerTurno.text.toUpperCase() == "NOTURNO"){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('BLOCO C || SALA 1'),
        ),
      );
    }else if(_testeControllerCiclo.text == "5" && _testeControllerCurso.text.toUpperCase() == "GPI" && _testeControllerTurno.text.toUpperCase() == "NOTURNO"){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('BLOCO B || SALA 4'),
        ),
      );
    }else if(_testeControllerCiclo.text == "6" && _testeControllerCurso.text.toUpperCase() == "GPI" && _testeControllerTurno.text.toUpperCase() == "NOTURNO"){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Bloco B | Sala 5'),
        ),
      );
    }

  }

  void _onClean() {
    _testeControllerTurno.text = "";
    _testeControllerCurso.text = "";
    _testeControllerCiclo.text = "";
  }

  void _onSiteFatec() async{
    FlutterWebBrowser.openWebPage(
        url: "https://docs.google.com/spreadsheets/d/e/2PACX-1vRyVBX9pfvVX5W60fg9WWR-czEG4IUAc7OJPhL20M0loTkhkwpPQjMN14u-r-Pa5yJqY-sPZJCXBA8G/pubhtml?gid=375959318&single=true",
        customTabsOptions: const CustomTabsOptions(
        colorScheme: CustomTabsColorScheme.dark,
        toolbarColor: Colors.deepPurple,
        secondaryToolbarColor: Colors.green,
        navigationBarColor: Colors.amber,
        shareState: CustomTabsShareState.on,
        instantAppsEnabled: true,
        showTitle: true,
        urlBarHidingEnabled: true,
      ),
      safariVCOptions: const SafariViewControllerOptions(
        barCollapsingEnabled: true,
        preferredBarTintColor: Colors.green,
        preferredControlTintColor: Colors.amber,
        dismissButtonStyle: SafariViewControllerDismissButtonStyle.close,
        modalPresentationCapturesStatusBarAppearance: true,
      ),
    );
  }
}
