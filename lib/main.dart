import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.cyan[50],
          appBar: AppBar(
            title: Text('Incidents'),
            actions: <Widget>[
              Center(child: Text('Time left')),
              IconButton(
                icon: Icon(Icons.schedule),
                onPressed: () {},
              ),
            ],
          ),
          body: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  Form(
                    child: Column(
                      children: <Widget>[
                        TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'Incident Number',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: RaisedButton(
                            onPressed: () {
                              print('Submit Button was pressed.');
                            },
                            child: Text('Submit'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  CardList(),
                  CardList(),
                  CardList(),
                ],
              )),
          bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text('Home'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                title: Text('Settings'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.notifications),
                title: Text('On'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardList extends StatefulWidget {
  @override
  _CardListState createState() => _CardListState();
}

class _CardListState extends State<CardList> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            child: Row(
              children: <Widget>[
                Text('Incident'),
                Spacer(),
                Text('2'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
