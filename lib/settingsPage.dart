import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget
{
  @override
  _SettingsPage createState() => _SettingsPage();
}

class _SettingsPage extends State<SettingsPage> {
  bool _toggleDarkMode = false;
  bool _toggleBluetooth = false;

  //////////////////
  // MEN'S SPORTS //
  //////////////////
  bool _toggleMBSK = false;
  bool _toggleBSB = false;
  bool _toggleMXC = false;
  bool _toggleFB = false;
  bool _toggleMGolf = false;
  bool _toggleMSOC = false;
  bool _toggleMSWIM = false;
  bool _toggleMTEN = false;
  bool _toggleMTF = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Settings", style: TextStyle(color: Colors.white)),
        ),
        body: ListView( children: <Widget> [
          Center(
            child: Column(
              children: [
                SwitchListTile(
                  title: Text('Dark Mode'),
                  secondary: Icon(Icons.lightbulb),
                  onChanged: (value) {
                    setState(() {
                      _toggleDarkMode = value;
                    });
                  },
                  value: _toggleDarkMode,
                ),
                // Divider(
                //   thickness: 1.2,
                // ),

                ExpansionTile(
                  leading: Icon(Icons.star),
                  title: Text("Favorites"),
                  children: <Widget> [

                    //////////////////
                    // MEN'S SPORTS //
                    //////////////////
                    ExpansionTile(
                      title: Center( child: Text("Men's Sports")),
                      children: <Widget> [
                        SwitchListTile(
                          title: Text("Baseball"),
                          secondary: Icon(Icons.sports_baseball),
                          onChanged: (value) {
                            setState(() {
                              _toggleBSB = value;
                            });
                          },
                          value: _toggleBSB,
                        ),

                        SwitchListTile(
                          title: Text("Basketball"),
                          secondary: Icon(Icons.sports_basketball),
                          onChanged: (value) {
                            setState(() {
                              _toggleMBSK = value;
                            });
                          },
                          value: _toggleMBSK,
                        ),

                        SwitchListTile(
                          title: Text("Cross Country"),
                          secondary: Icon(Icons.run_circle),
                          onChanged: (value) {
                            setState(() {
                              _toggleMXC = value;
                            });
                          },
                          value: _toggleMXC,
                        ),

                        SwitchListTile(
                          title: Text("Football"),
                          secondary: Icon(Icons.sports_football),
                          onChanged: (value) {
                            setState(() {
                              _toggleFB = value;
                            });
                          },
                          value: _toggleFB,
                        ),

                        SwitchListTile(
                          title: Text("Golf"),
                          secondary: Icon(Icons.sports_golf),
                          onChanged: (value) {
                            setState(() {
                              _toggleMGolf = value;
                            });
                          },
                          value: _toggleMGolf,
                        ),

                        SwitchListTile(
                          title: Text("Soccer"),
                          secondary: Icon(Icons.sports_soccer),
                          onChanged: (value) {
                            setState(() {
                              _toggleMSOC = value;
                            });
                          },
                          value: _toggleMSOC,
                        ),

                        SwitchListTile(
                          title: Text("Swim"),
                          secondary: Icon(Icons.sports),
                          onChanged: (value) {
                            setState(() {
                              _toggleMSWIM = value;
                            });
                          },
                          value: _toggleMSWIM,
                        ),

                        SwitchListTile(
                          title: Text("Tennis"),
                          secondary: Icon(Icons.sports_tennis),
                          onChanged: (value) {
                            setState(() {
                              _toggleMTEN = value;
                            });
                          },
                          value: _toggleMTEN,
                        ),

                        SwitchListTile(
                          title: Text("Track & Field"),
                          secondary: Icon(Icons.sports),
                          onChanged: (value) {
                            setState(() {
                              _toggleMTF = value;
                            });
                          },
                          value: _toggleMTF,
                        ),
                      ]
                    ),

                    /////////////////////
                    // WOMEN'S SPORTS //
                    ////////////////////
                    ListTile(
                      title: Center(child: Text("Women's Sports")),
                     // onTap: ()
                    )
                  ]

                ),

                // SwitchListTile(
                //   title: Text('Wi-Fi'),
                //   secondary: Icon(Icons.wifi),
                //   onChanged: (value) {
                //     setState(() {
                //       _toggleWiFi = value;
                //     });
                //   },
                //   value: _toggleWiFi,
                // ),
                // Divider(
                //   thickness: 1.2,
                // ),
                SwitchListTile(
                  title: Text('Bluetooth'),
                  secondary: Icon(Icons.bluetooth),
                  onChanged: (value) {
                    setState(() {
                      _toggleBluetooth = value;
                    });
                  },
                  value: _toggleBluetooth,
                ),
              ],
            ))
    ])// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}