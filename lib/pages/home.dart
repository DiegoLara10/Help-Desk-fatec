import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_web_browser/flutter_web_browser.dart';
import 'package:help_desk_fatec/pages/calendar.dart';
import 'package:help_desk_fatec/pages/contact.dart';
import 'package:help_desk_fatec/pages/history_fatec.dart';
import 'package:help_desk_fatec/pages/monitoring.dart';
import 'package:help_desk_fatec/pages/rooms_localization.dart';
import 'package:help_desk_fatec/widgets/widget_button.dart';
import 'package:help_desk_fatec/widgets/widget_input.dart';
import 'package:help_desk_fatec/widgets/widget_text.dart';
import 'package:image_picker/image_picker.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);


  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {

  ImagePicker imagePicker = ImagePicker();
  File? selectedImage;
  List<String> messagesSent = [];

  final _textSentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            iconTheme: const IconThemeData(
              color: Color(0xff44545c),
            ),
            title: const MyText('Help Desk Fatec'),
            bottom: const TabBar(tabs: [
              Tab(
                icon: Icon(
                    Icons.edit,
                    color: Color(0xff44545c),
                ),
              ),
              Tab(
                icon: Icon(
                    Icons.send,
                    color: Color(0xff44545c),
                ),
              ),
            ]),
          ),
          body: _bodyHome(),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.all(10),
              children: [
                const DrawerHeader(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/fatec_logo.png'),
                    ),
                  ), child: null,


                ),
                ListTile(
                  leading: Icon(Icons.history_edu),
                  title: Text('História da fatec'),
                  iconColor: Color(0xff44545c),
                  onTap: _openHistory,
                ),
                ListTile(
                  leading: Icon(Icons.calendar_month),
                  title: Text('Calenário'),
                  iconColor: Color(0xff44545c),
                  onTap: _openCalendar,
                ),
                ListTile(
                  leading: Icon(Icons.location_on),
                  title: Text('Localização: Salas de aula'),
                  iconColor: Color(0xff44545c),
                  onTap: _openClassLocalization,
                ),
                ListTile(
                  leading: Icon(Icons.watch_later_outlined),
                  title: Text('Horário de aulas'),
                  iconColor: Color(0xff44545c),
                  onTap: _openHourClass,
                ),
                ListTile(
                  leading: Icon(Icons.school_outlined),
                  title: Text('SIGA'),
                  iconColor: Color(0xff44545c),
                  onTap: _openSIGA,
                ),
                ListTile(
                  leading: Icon(Icons.person_search_outlined),
                  title: Text('Monitoria'),
                  iconColor: Color(0xff44545c),
                  onTap: onMonitoring,
                ),
                ListTile(
                  leading: Icon(Icons.contact_phone),
                  title: Text('Contato'),
                  iconColor: Color(0xff44545c),
                  onTap: _openContact,
                ),

                Divider(
                  color: Colors.blueGrey,
                ),

                ListTile(
                  leading: Icon(Icons.exit_to_app),
                  title: Text('Fechar'),
                  iconColor: Color(0xff44545c),
                  onTap: _exitApp,
                ),
              ],
            ),
          ),
        ),
    );
  }

  _bodyHome() {
    return TabBarView(
        children: [
          Container(
            padding: EdgeInsets.all(3),
              child: SingleChildScrollView(
                reverse: true,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/icon.png",
                        fit: BoxFit.cover,
                        height: 150,
                        width: 150,
                      ),
                      ],
                    ),
                    const Text(
                      'Nova Ocorrência',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 150),
                    MyInput(controller: _textSentController),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 2),
                          child: MyButton('Enviar', onPressed: _sendMessage),
                        ),
                        IconButton(onPressed: _onCamera, icon: const Icon(Icons.camera_alt)
                        ),
                        IconButton(onPressed: _onGallery, icon: const Icon(Icons.add_photo_alternate)
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            ListView(
              shrinkWrap: true,
              children: [
              for(String message in messagesSent)
                ListTile(
                  title: Text(message),
                  subtitle: selectedImage == null ? Container() : Image.file(selectedImage!),
                  leading: const Icon(Icons.arrow_right, size: 30,),
                  trailing: SizedBox(
                    width: 50,
                    child: Row(
                      children: [
                        Expanded(
                            child: IconButton(onPressed: () => showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  title: Text('Excluir'),
                                  content: Text('Deseja excluir a mensagem?'),
                                  actions: [
                                    TextButton(
                                        onPressed: () => Navigator.pop(context, 'Cancelar'),
                                        child: Text('Cancelar')
                                    ),
                                    TextButton(
                                        onPressed: () {
                                          setState(() {
                                            ScaffoldMessenger.of(context).showSnackBar(
                                              const SnackBar(content: Text('Mensagem excluída com sucesso!'),
                                                duration: Duration(milliseconds: 1000),
                                              ),
                                            );
                                            messagesSent.remove(message);
                                          });
                                          Navigator.pop(context, 'OK');
                                        },
                                        child: const Text('OK'),
                                    ),
                                  ],
                                ),
                            ), icon: const Icon(Icons.delete))),
                      ],
                    ),
                  ),
                ),
              ],
            ),
        ],
    );
  }

  void _sendMessage(){


    final text = _textSentController.text;

    if(_textSentController.text != "") {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Mensagem enviada!'),
          duration: Duration(milliseconds: 1000),
        ),
      );
      setState(() {
        messagesSent.add(text);
      });
      _textSentController.clear();
    }else{
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          duration: Duration(milliseconds: 1000),
          content: Text('O campo não pode estar vazio!',
            style: TextStyle(
              color: Colors.red,
            ),
        ),
        ),
      );
    }
  }


  void _onCamera() async {
    final PickedFile? temporaryImage =
    await imagePicker.getImage(source: ImageSource.camera);
    if(temporaryImage != null){
      setState(() {
        selectedImage = File(temporaryImage.path);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Imagem capturada com sucesso! \n' + temporaryImage.path),
          ),
        );
      });
    }
  }

  void _onGallery() async {
    final PickedFile? temporaryImage =
        await imagePicker.getImage(source: ImageSource.gallery);
    if(temporaryImage != null){
      setState(() {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              content: Text('Imagem capturada com sucesso! \n' + temporaryImage.path),
          ),
        );
        selectedImage = File(temporaryImage.path);
      });
    }
  }

  void _openHistory() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => const HistoryFatec()),
    );
  }

  void _openCalendar() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (contex) => const CalendarFatec()),
    );
  }

  void _openClassLocalization() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => ClassLocalization()),
    );
  }

  void _openHourClass() async{
    FlutterWebBrowser.openWebPage(
      url: "https://fatecitapetininga.edu.br/academico/horario/",
    );
  }

  void _openSIGA() {
    FlutterWebBrowser.openWebPage(
      url: "https://siga.cps.sp.gov.br/aluno/login.aspx",
    );
  }

  void onMonitoring() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => MonitoringFatec())
    );
  }

  void _exitApp() {
    Navigator.of(context).pop();
  }

  void _openContact() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => ContactFatec()),
    );
  }
}
