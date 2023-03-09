import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Input text",
    home: new Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {
  String _acs = "";

  void _pilihAcs(String value) {
    setState(() {
      _acs = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        leading: new Icon(Icons.arrow_back_outlined),
        title: new Text("Project"),
        backgroundColor: Colors.blue,
      ),
      body: new ListView(
        children: [
          new Container(
              padding: EdgeInsets.all(20.0),
              child: new Column(
                children: <Widget>[
                  new Padding(padding: new EdgeInsets.only(top: 30.0)),
                  new TextField(
                    decoration: new InputDecoration(
                        hintText: "Masukan nama project",
                        labelText: "Masukan nama project",
                        border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(10.0))),
                  ),
                  new Padding(padding: new EdgeInsets.only(top: 30.0)),
                  new TextField(
                    decoration: new InputDecoration(
                        hintText: "Cari",
                        labelText: "Cari",
                        border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(10.0))),
                  ),
                  new Padding(padding: new EdgeInsets.only(top: 30.0)),
                  new TextField(
                    maxLines: 3,
                    decoration: new InputDecoration(
                        hintText: "Masukan deskripsi",
                        labelText: "Masukan deskripsi",
                        border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(10.0))),
                  ),
                  new Padding(padding: new EdgeInsets.only(top: 30.0)),
                  new RadioListTile(
                    value: "Public",
                    title: new Text("Public"),
                    groupValue: _acs,
                    onChanged: (String? value) {
                      _pilihAcs(value!);
                    },
                    contentPadding: EdgeInsets.all(10.0),
                    subtitle: new Text(
                        "Siapa saja di jaringan dapat melihat di project, tetapi hanya anggota grup yang memiliki akses ke project ini"),
                  ),
                  new Padding(padding: new EdgeInsets.only(top: 10.0)),
                  new RadioListTile(
                    value: "Private",
                    title: new Text("Private"),
                    groupValue: _acs,
                    onChanged: (String? value) {
                      _pilihAcs(value!);
                    },
                    contentPadding: EdgeInsets.all(10.0),
                    subtitle: new Text(
                        "Hanya anggota grup yang dapat melihat, mengakses, dan berpartisipasi, di dalam project ini"),
                  ),
                  new Padding(padding: new EdgeInsets.only(top: 150.0)),
                  ConstrainedBox(
                    constraints:
                        const BoxConstraints.tightFor(width: 400, height: 50),
                    child: ElevatedButton(
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ))),
                      onPressed: () {},
                      child: Text("Simpan"),
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
