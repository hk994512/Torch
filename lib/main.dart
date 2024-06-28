import 'package:flutter/material.dart';
import 'package:torch_light/torch_light.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 90, 77, 77),
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: const Color(0xff211C6A),
            title: const Text("Flash Light",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    fontFamily: "Lato"))),
        body: const FlashLight(),
      ),
    ));

class FlashLight extends StatefulWidget {
  const FlashLight({super.key});

  @override
  State<FlashLight> createState() => _FlashLightState();
}

class _FlashLightState extends State<FlashLight> {
  bool _isOn = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
          padding: const EdgeInsets.only(top: 200),
          child: Column(children: [
            Icon(
              Icons.lightbulb_circle_sharp,
              size: 110,
              color: _isOn ? Colors.deepOrange : Colors.white,
            ),
            const SizedBox(height: 7),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: const Color(0xff211C6A),
                maximumSize: const Size.fromHeight(60),
              ),
              onPressed: () {
                setState(() {

                  _isOn ?  TorchLight.disableTorch() : TorchLight.enableTorch();
                });
              },
              child: Text(_isOn ? "OFF" : "ON"),
            ),
          ])),
    );
  }
}