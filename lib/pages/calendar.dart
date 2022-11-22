import 'package:flutter/material.dart';
import 'package:help_desk_fatec/pages/home.dart';
import 'package:help_desk_fatec/widgets/widget_text.dart';
import 'package:help_desk_fatec/widgets/widget_text_light.dart';

class CalendarFatec extends StatefulWidget {
  const CalendarFatec({Key? key}) : super(key: key);

  @override
  State<CalendarFatec> createState() => _CalendarFatecState();
}

class _CalendarFatecState extends State<CalendarFatec> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 6,
        initialIndex: 0,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xff44545c),
            title: Row(
              children: [
                IconButton(
                    onPressed: _backHome,
                    icon: Icon(Icons.arrow_back),
                ),
                Text(
                    'Calendário 2º Semestre 2022',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),

            bottom: const TabBar(
              isScrollable: true,
              tabs: [
                Tab(
                  text: 'JUL',
                ),
                Tab(
                  text: 'AGO',
                ),
                Tab(
                  text: 'SET',
                ),
                Tab(
                  text: 'OUT',
                ),
                Tab(
                  text: 'NOV',
                ),
                Tab(
                  text: 'DEZ',
                ),
              ],
            ),
          ),
          body: _bodyCalendar(),
        ),
    );
  }

  void _backHome() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => MyHome()),
    );
  }

  _bodyCalendar() {
    return TabBarView(
      children: [
        GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 2,
          mainAxisSpacing: 2,
          crossAxisCount: 7,
          children: <Widget>[

            //primeira fileira

            Container(
              padding: const EdgeInsets.all(13),
              color: Color(0xff44545c),
              child: MyTextLight('D'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Color(0xff44545c),
              child: MyTextLight('S'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Color(0xff44545c),
              child: MyTextLight('T'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Color(0xff44545c),
              child: MyTextLight('Q'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Color(0xff44545c),
              child: MyTextLight('Q'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Color(0xff44545c),
              child: MyTextLight('S'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Color(0xff44545c),
              child: MyTextLight('S'),
            ),

            //segunda fileira

            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: const Text(''),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: const Text(''),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: const Text(''),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: const Text(''),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: const Text(''),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: const Text('1'),
            ),
            Container(
              padding: const EdgeInsets.all(1),
              color: Colors.green,
              child: TextButton(onPressed: _onTerminoAulas, child: MyText('2')),
            ),


            //terceira fileira

            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: const Text('3'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: const Text('4'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: const Text('5'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: const Text('6'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: const Text('7'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: const Text('8'),
            ),
            Container(
              padding: const EdgeInsets.all(1),
              color: Colors.blueAccent,
              child: TextButton(onPressed: _onDiaRevolucao, child: MyText('9')),
            ),

            //quarta fileira

            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: const Text('10'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: Text('11'),
            ),
            Container(
              padding: const EdgeInsets.all(1),
              color: Colors.orangeAccent,
              child: TextButton(onPressed: _onRecesso, child: MyText('12')),
            ),
            Container(
              padding: const EdgeInsets.all(1),
              color: Colors.orangeAccent,
              child: TextButton(onPressed: _onRecesso, child: MyText('13')),
            ),
            Container(
              padding: const EdgeInsets.all(1),
              color: Colors.orangeAccent,
              child: TextButton(onPressed: _onRecesso, child: MyText('14')),
            ),
            Container(
              padding: const EdgeInsets.all(1),
              color: Colors.orangeAccent,
              child: TextButton(onPressed: _onRecesso, child: MyText('15')),
            ),
            Container(
              padding: const EdgeInsets.all(1),
              color: Colors.orangeAccent,
              child: TextButton(onPressed: _onRecesso, child: MyText('16')),
            ),


            //quinta fileira

            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: const Text('17'),
            ),
            Container(
              padding: const EdgeInsets.all(1),
              color: Colors.orangeAccent,
              child: TextButton(onPressed: _onRecesso, child: MyText('18')),
            ),
            Container(
              padding: const EdgeInsets.all(1),
              color: Colors.orangeAccent,
              child: TextButton(onPressed: _onRecesso, child: MyText('19')),
            ),
            Container(
              padding: const EdgeInsets.all(1),
              color: Colors.orangeAccent,
              child: TextButton(onPressed: _onRecesso, child: MyText('20')),
            ),
            Container(
              padding: const EdgeInsets.all(1),
              color: Colors.orangeAccent,
              child: TextButton(onPressed: _onRecesso, child: MyText('21')),
            ),
            Container(
              padding: const EdgeInsets.all(1),
              color: Colors.orangeAccent,
              child: TextButton(onPressed: _onRecesso, child: MyText('22')),
            ),
            Container(
              padding: const EdgeInsets.all(1),
              color: Colors.orangeAccent,
              child: TextButton(onPressed: _onRecesso, child: MyText('23')),
            ),


            //sexta fileira

            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: const Text('24'),
            ),
            Container(
              padding: const EdgeInsets.all(1),
              color: Colors.orangeAccent,
              child: TextButton(onPressed: _onRecesso, child: MyText('25')),
            ),
            Container(
              padding: const EdgeInsets.all(1),
              color: Colors.orangeAccent,
              child: TextButton(onPressed: _onRecesso, child: MyText('26')),
            ),
            Container(
              padding: const EdgeInsets.all(1),
              color: Colors.green,
              child: TextButton(onPressed: _onInicioSemestre, child: MyText('27')),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: const Text('28'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: const Text('29'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: const Text('30'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: const Text('31'),
            ),
          ],
        ),

        GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 2,
          mainAxisSpacing: 2,
          crossAxisCount: 7,
          children: <Widget>[

            //primeira fileira

            Container(
              padding: const EdgeInsets.all(13),
              color: Color(0xff44545c),
              child: MyTextLight('D'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Color(0xff44545c),
              child: MyTextLight('S'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Color(0xff44545c),
              child: MyTextLight('T'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Color(0xff44545c),
              child: MyTextLight('Q'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Color(0xff44545c),
              child: MyTextLight('Q'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Color(0xff44545c),
              child: MyTextLight('S'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Color(0xff44545c),
              child: MyTextLight('S'),
            ),

            //segunda fileira

            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: const Text(''),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: const Text('1'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: const Text('2'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: const Text('3'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: const Text('4'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: const Text('5'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: Text('6'),
            ),


            //terceira fileira

            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: const Text('7'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: Text('8'),
            ),
            Container(
              padding: const EdgeInsets.all(1),
              color: Colors.green,
              child: TextButton(onPressed: _inicioAulas, child: MyText('9')),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: const Text('10'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: const Text('11'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: const Text('12'),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              color: Colors.black12,
              child: Text('13'),
            ),

            //quarta fileira

            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: const Text('14'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: Text('15'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: Text('16'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: Text('17'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: Text('18'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: Text('19'),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              color: Colors.black12,
              child: Text('20'),
            ),


            //quinta fileira

            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: const Text('21'),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              color: Colors.black12,
              child: Text('22'),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              color: Colors.black12,
              child: Text('23'),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              color: Colors.black12,
              child: Text('24'),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              color: Colors.black12,
              child: Text('25'),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              color: Colors.black12,
              child: Text('26'),
            ),
            Container(
              padding: const EdgeInsets.all(1),
              color: Colors.redAccent,
              child: TextButton(onPressed: _onReposicao, child: MyText('27')),
            ),


            //sexta fileira

            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: const Text('28'),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              color: Colors.black12,
              child: Text('29'),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              color: Colors.black12,
              child: Text('30'),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              color: Colors.black12,
              child: Text('31'),
            ),
          ],
        ),

        GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 2,
          mainAxisSpacing: 2,
          crossAxisCount: 7,
          children: <Widget>[

            //primeira fileira

            Container(
              padding: const EdgeInsets.all(13),
              color: Color(0xff44545c),
              child: MyTextLight('D'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Color(0xff44545c),
              child: MyTextLight('S'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Color(0xff44545c),
              child: MyTextLight('T'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Color(0xff44545c),
              child: MyTextLight('Q'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Color(0xff44545c),
              child: MyTextLight('Q'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Color(0xff44545c),
              child: MyTextLight('S'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Color(0xff44545c),
              child: MyTextLight('S'),
            ),

            //segunda fileira

            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: const Text(''),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: const Text(''),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: Text(''),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: const Text(''),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: const Text('1'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: const Text('2'),
            ),
            Container(
              padding: const EdgeInsets.all(1),
              color: Colors.amber,
              child: TextButton(onPressed: _onReposicao, child: MyText('3')),
            ),


            //terceira fileira

            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: const Text('4'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: Text('5'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: Text('6'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: const Text('7'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: const Text('8'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: const Text('9'),
            ),
            Container(
              padding: const EdgeInsets.all(1),
              color: Colors.amber,
              child: TextButton(onPressed: _onReposicao, child: MyText('10')),
            ),

            //quarta fileira

            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: const Text('11'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: Text('12'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: Text('13'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: Text('14'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: Text('15'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: Text('16'),
            ),
            Container(
              padding: const EdgeInsets.all(1),
              color: Colors.amber,
              child: TextButton(onPressed: _onReposicao, child: MyText('17')),
            ),


            //quinta fileira

            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: const Text('18'),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              color: Colors.black12,
              child: Text('19'),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              color: Colors.black12,
              child: Text('20'),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              color: Colors.black12,
              child: Text('21'),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              color: Colors.black12,
              child: Text('22'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: Text('23'),
            ),
            Container(
              padding: const EdgeInsets.all(1),
              color: Colors.amber,
              child: TextButton(onPressed: _onReposicao, child: MyText('24')),
            ),


            //sexta fileira

            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: Text('25'),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              color: Colors.black12,
              child: Text('26'),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              color: Colors.black12,
              child: Text('27'),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              color: Colors.black12,
              child: Text('28'),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              color: Colors.black12,
              child: Text('29'),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              color: Colors.black12,
              child: Text('30'),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              color: Colors.black12,
              child: Text('31'),
            ),
          ],
        ),

        GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 2,
          mainAxisSpacing: 2,
          crossAxisCount: 7,
          children: <Widget>[

            //primeira fileira

            Container(
              padding: const EdgeInsets.all(13),
              color: Color(0xff44545c),
              child: MyTextLight('D'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Color(0xff44545c),
              child: MyTextLight('S'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Color(0xff44545c),
              child: MyTextLight('T'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Color(0xff44545c),
              child: MyTextLight('Q'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Color(0xff44545c),
              child: MyTextLight('Q'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Color(0xff44545c),
              child: MyTextLight('S'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Color(0xff44545c),
              child: MyTextLight('S'),
            ),

            //segunda fileira

            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: const Text(''),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: const Text(''),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: const Text(''),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: const Text(''),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: const Text(''),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: const Text(''),
            ),
            Container(
              padding: const EdgeInsets.all(1),
              color: Colors.amber,
              child:  TextButton(onPressed: _onReposicao, child: MyText('1')),
            ),


            //terceira fileira

            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: const Text('2'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: Text('3'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: const Text('4'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: const Text('5'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: const Text('6'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: const Text('7'),
            ),
            Container(
              padding: const EdgeInsets.all(1),
              color: Colors.amber,
              child:  TextButton(onPressed: _onReposicao, child: MyText('8')),
            ),

            //quarta fileira

            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: const Text('9'),
            ),
            Container(
              padding: const EdgeInsets.all(1),
              color: Colors.orangeAccent,
              child: TextButton(onPressed: _onRecesso, child: MyText('10')),
            ),
            Container(
              padding: const EdgeInsets.all(1),
              color: Colors.orangeAccent,
              child: TextButton(onPressed: _onRecesso, child: MyText('11')),
            ),
            Container(
              padding: const EdgeInsets.all(1),
              color: Colors.orangeAccent,
              child: TextButton(onPressed: _onRecesso, child: MyText('12')),
            ),
            Container(
              padding: const EdgeInsets.all(1),
              color: Colors.orangeAccent,
              child: TextButton(onPressed: _onRecesso, child: MyText('13')),
            ),
            Container(
              padding: const EdgeInsets.all(1),
              color: Colors.orangeAccent,
              child: TextButton(onPressed: _onRecesso, child: MyText('14')),
            ),
            Container(
              padding: const EdgeInsets.all(1),
              color: Colors.orangeAccent,
              child: TextButton(onPressed: _onRecesso, child: MyText('15'))
            ),


            //quinta fileira

            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: const Text('16'),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              color: Colors.black12,
              child: Text('17'),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              color: Colors.black12,
              child: Text('18'),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              color: Colors.black12,
              child: Text('19'),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              color: Colors.black12,
              child: Text('20'),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              color: Colors.black12,
              child: Text('21'),
            ),
            Container(
              padding: const EdgeInsets.all(1),
              color: Colors.amber,
              child: TextButton(onPressed: _onReposicao, child: MyText('22')),
            ),


            //sexta fileira

            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: const Text('23'),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              color: Colors.black12,
              child: Text('24'),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              color: Colors.black12,
              child: Text('25'),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              color: Colors.black12,
              child: Text('26'),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              color: Colors.black12,
              child: Text('27'),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              color: Colors.black12,
              child: Text('28'),
            ),
            Container(
              padding: const EdgeInsets.all(1),
              color: Colors.amber,
              child: TextButton(onPressed: _onReposicao, child: MyText('29')),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              color: Colors.black12,
              child: Text('30'),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              color: Colors.black12,
              child: Text('31'),
            ),
          ],
        ),

        GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 2,
          mainAxisSpacing: 2,
          crossAxisCount: 7,
          children: <Widget>[

            //primeira fileira

            Container(
              padding: const EdgeInsets.all(13),
              color: Color(0xff44545c),
              child: MyTextLight('D'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Color(0xff44545c),
              child: MyTextLight('S'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Color(0xff44545c),
              child: MyTextLight('T'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Color(0xff44545c),
              child: MyTextLight('Q'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Color(0xff44545c),
              child: MyTextLight('Q'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Color(0xff44545c),
              child: MyTextLight('S'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Color(0xff44545c),
              child: MyTextLight('S'),
            ),

            //segunda fileira

            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: const Text(''),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: const Text(''),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: const Text('1'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: const Text('2'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: const Text('3'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: const Text('4'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: Text('5'),
            ),


            //terceira fileira

            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: const Text('6'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: Text('7'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: Text('8'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: const Text('9'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: const Text('10'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: const Text('11'),
            ),
            Container(
              padding: const EdgeInsets.all(1),
              color: Colors.amber,
              child: TextButton(onPressed: _onReposicao, child: MyText('12')),
            ),

            //quarta fileira

            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: const Text('13'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: Text('14'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: Text('15'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: Text('16'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: Text('17'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: Text('18'),
            ),
            Container(
              padding: const EdgeInsets.all(1),
              color: Colors.amber,
              child: TextButton(onPressed: _onReposicao, child: MyText('19')),
            ),


            //quinta fileira

            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: const Text('20'),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              color: Colors.black12,
              child: Text('21'),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              color: Colors.black12,
              child: Text('22'),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              color: Colors.black12,
              child: Text('23'),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              color: Colors.black12,
              child: Text('24'),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              color: Colors.black12,
              child: Text('25'),
            ),
            Container(
              padding: const EdgeInsets.all(1),
              color: Colors.amber,
              child: TextButton(onPressed: _onReposicao, child: MyText('26')),
            ),


            //sexta fileira

            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: const Text('27'),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              color: Colors.black12,
              child: Text('28'),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              color: Colors.black12,
              child: Text('29'),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              color: Colors.black12,
              child: Text('30'),
            ),
          ],
        ),

        GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 2,
          mainAxisSpacing: 2,
          crossAxisCount: 7,
          children: <Widget>[

            //primeira fileira

            Container(
              padding: const EdgeInsets.all(13),
              color: Color(0xff44545c),
              child: MyTextLight('D'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Color(0xff44545c),
              child: MyTextLight('S'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Color(0xff44545c),
              child: MyTextLight('T'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Color(0xff44545c),
              child: MyTextLight('Q'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Color(0xff44545c),
              child: MyTextLight('Q'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Color(0xff44545c),
              child: MyTextLight('S'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Color(0xff44545c),
              child: MyTextLight('S'),
            ),

            //segunda fileira

            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: const Text(''),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: const Text(''),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: Text(''),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: const Text(''),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: const Text('1'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: const Text('2'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: Text('3'),
            ),


            //terceira fileira

            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: const Text('4'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: Text('5'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: Text('6'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: const Text('7'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: const Text('8'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: const Text('9'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: Text('10'),
            ),

            //quarta fileira

            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: const Text('11'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: Text('12'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: Text('13'),
            ),
            Container(
              padding: const EdgeInsets.all(1),
              color: Colors.purple,
              child: TextButton(onPressed: _onFinalMedias, child: MyText('14')),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: Text('15'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: Text('16'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: Text('17'),
            ),


            //quinta fileira

            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: const Text('18'),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              color: Colors.black12,
              child: Text('19'),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              color: Colors.black12,
              child: Text('20'),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              color: Colors.green,
              child: TextButton(onPressed: _onFinalSemestre, child: MyText('21')),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              color: Colors.black12,
              child: Text('22'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: Text('23'),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: Text('24'),
            ),


            //sexta fileira

            Container(
              padding: const EdgeInsets.all(13),
              color: Colors.black12,
              child: Text('25'),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              color: Colors.black12,
              child: Text('26'),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              color: Colors.black12,
              child: Text('27'),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              color: Colors.black12,
              child: Text('28'),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              color: Colors.black12,
              child: Text('29'),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              color: Colors.black12,
              child: Text('30'),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              color: Colors.black12,
              child: Text('31'),
            ),
          ],
        ),
      ],
    );
  }


  void _onTerminoAulas() {
    setState(() {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Término das Aulas do 1o Semestre Letivo de 2022'),
          duration: Duration(milliseconds: 1000),
        ),
      );
    });
  }

  void _onDiaRevolucao() {
    setState(() {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Dia da Revolução Constitucionalista'),
          duration: Duration(milliseconds: 1000),
        ),
      );
    });
  }

  void _onRecesso() {
    setState(() {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Recesso Escolar'),
          duration: Duration(milliseconds: 1000),
        ),
      );
    });
  }

  void _onInicioSemestre() {
    setState(() {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Início do 2o Semestre Letivo de 2022'),
          duration: Duration(milliseconds: 1000),
        ),
      );
    });
  }

  void _inicioAulas() {
    setState(() {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Início das aulas do 2o semestre letivo de 2022'),
          duration: Duration(milliseconds: 1000),
        ),
      );
    });
  }

  void _onReposicao() {
    setState(() {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Reposição de aula'),
          duration: Duration(milliseconds: 1000),
        ),
      );
    });
  }

  void _onFinalMedias() {
    setState(() {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Prazo final para entrega de médias finais'),
          duration: Duration(milliseconds: 1000),
        ),
      );
    });
  }

  void _onFinalSemestre() {
    setState(() {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Término das aulas do 2o semestre letivo de 2022'),
          duration: Duration(milliseconds: 1000),
        ),
      );
    });
  }
}

