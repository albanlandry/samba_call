import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<StatefulWidget> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: <Widget>[
          const Center(child: Text("An Interesting widget")),
          SlidingUpPanel(
            minHeight: 200.0,
            panel: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Form(
                key: _formKey,
                child: Column(children: [
                  TextFormField(
                    decoration:
                        const InputDecoration(hintText: 'Current Location'),
                    validator: (String? value) {
                      return null;
                    },
                  ),
                  const SizedBox(height: 22),
                  TextFormField(
                    decoration: const InputDecoration(hintText: 'Destination'),
                    validator: (String? value) {
                      return null;
                    },
                  ),
                ]),
              ),
            ),
            // const Center(child: Text("This is a sliding Widget -> haha!!!")),
            borderRadius: BorderRadius.circular(15.0),
            /*
            collapsed: Container(
              // color: Colors.blueGrey,
              decoration: BoxDecoration(
                  color: Colors.green[800],
                  borderRadius: BorderRadius.circular(15.0)),
              child: const Center(
                child: Text(
                  "This is the collapsed Widget",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            */
            body: const Center(
              child: Text("This is the Widget behind the sliding panel"),
            ),
          )
        ],
      ),
    );
  }
}
