import 'package:flutter/material.dart';
import 'package:newsapp/detail_kdrama_screen.dart';
import 'package:newsapp/model/kdrama.dart';
const List<String> list = <String>['One', 'Two', 'Three', 'Four'];
int length = koreanDramaList.length;
class KdramaScreen extends StatelessWidget {
  static const routeName='/kdrama_list';
  const KdramaScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Kdrama List'),
        ),
        body: Column(
          children: [
            const DropdownButtonExample(),
            Expanded(
              child: ListView.builder(
                itemCount: length,
                itemBuilder: (context, index) {
                  final KoreanDrama kdrama = koreanDramaList[index];
                  return InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context){
                            return DetailKDramaScreen(kdrama: kdrama);
                          }));
                    },
                    child: Card(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(flex: 1,
                              child: Image.asset(kdrama.banner)),
                          Expanded(flex:2,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Text(kdrama.name, style: TextStyle(fontSize: 16.0),),
                                    SizedBox(height:10),
                                    Text(kdrama.broadcaster),
                                  ],
                                ),
                              )
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        )
    );
  }
}

class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample({super.key});

  @override
  State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? value) {
        setState(() {
          dropdownValue = value!;
          if(value == "One") {
            length = 1;
          } else if(value == "Two") {
            length = 2;
          } else if(value == "Three") {
            length = 3;
          } else if(value == "Four") {
            length = 4;
          }
        });
      },
      items: list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
