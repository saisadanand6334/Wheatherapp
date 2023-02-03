import 'package:flutter/material.dart';
import 'package:wheatherapp/wheather_class.dart';
import 'package:wheatherapp/wheather_datas.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Weather(),
    );
  }
}

class Weather extends StatefulWidget {
  const Weather({Key? key}) : super(key: key);
  @override
  State<Weather> createState() => _WeatherState();
}

class _WeatherState extends State<Weather> {
Whtherdatas serv=Whtherdatas();
Whether p =new Whether();

String s_Whether='';
double Temp =0;
double Faren=0;

void initstate(){
  super.initState();
  whetherdetails();
  print('jygjuhkuil');
}

void whetherdetails() async {
  p= await serv.getWhterdatas('kerala');
setState(() {
  Temp =p.temper_c;
  Faren=p.temper_f;
  s_Whether=p.textin;
});
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("phimg/whea.jpg"), fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.all(50),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 80),
            child: Column(
              children: [
                Center(
                  child: Text(
                    "kerala",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                Text(
                  "Friday ",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 20),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 110),
                  child: Row(
                    children: [
                      Text(
                        "June ",
                        style: TextStyle(color: Colors.white, fontSize: 40),
                      ),
                      Text(
                        '21',
                        style: TextStyle(color: Colors.white, fontSize: 40),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 360,
                ),
                Row(
                  children: [

                       Padding(
                         padding: const EdgeInsets.only(left: 35),
                         child: Column(
                          children: [
                            Icon(
                              Icons.wind_power_outlined
                              ,
                              size: 80,
                              color: Colors.white,
                            ),

                            Text(
                              "CLIMATE",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                      ),
                       ),

                  ],
                ),

                Row(
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.thermostat,
                          size: 70,
                          color: Colors.white,
                        ),
                        Text(
                          Temp.toString() ,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.thermostat,
                          size: 70,
                          color: Colors.white,
                        ),
                        Text(
                         Faren.toString(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                          ),
                        ),
                      ],
                    )
                  ],
                ),

                Row(
                  children: [
                    Text(
                      "${Temp.toString()}",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 80,
                          fontWeight: FontWeight.w900),
                    ),
                    Text(
                      "ºC",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 80,
                          fontWeight: FontWeight.w900),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
