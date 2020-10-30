import 'package:flutter/material.dart';
import 'package:mobileapp/InfoPage/info_screen.dart';
import 'package:mobileapp/PostDetailPage/postdetail_screen.dart';

class Body extends StatelessWidget {
  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.grey[100],
      width: double.infinity,
      height: size.height,
      child: Column(
        children: [
          Container(
            height: 78,
            color: Colors.blue,
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.only(top: 15),
            child: ListTile(
              leading: Image.asset(
                'assets/images/avt.png',
              ),
              title: Text(
                'Trần Trọng Tuấn',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              subtitle: Text('Xin chào!'),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return InfoScreen();
                }));
              },
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                  // width: double.infinity,
                  // height: size.height * 0.6,
                  child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8, right: 8),
                              child: FlatButton(
                                onPressed: () {},
                                child: Text('All'),
                                color: Colors.orange,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8, right: 8),
                              child: FlatButton(
                                onPressed: () {},
                                child: Text('Requested'),
                                color: Colors.orange,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8, right: 8),
                              child: FlatButton(
                                onPressed: () {},
                                child: Text('Accepted'),
                                color: Colors.orange,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 9,
                    child: Container(
                        child: ListView.separated(
                          itemCount: entries.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                                height: 160,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.black,
                                  ),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10, right: 10),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 30,
                                        child: Row(
                                          children: [
                                            Expanded(
                                              flex: 4,
                                              child: Padding(
                                                padding: const EdgeInsets.only(right: 40.0),
                                                child: Container(
                                                  child: Row(
                                                    children: [
                                                      Expanded(
                                                        child: Container(
                                                          child: Text(
                                                            '#News',
                                                            style: TextStyle(
                                                              color: Colors.lightBlueAccent
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Container(
                                                          child: Text(
                                                              '#News',
                                                            style: TextStyle(
                                                                color: Colors.lightBlueAccent
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Container(
                                                          child: Text(
                                                              '#News',
                                                            style: TextStyle(
                                                                color: Colors.lightBlueAccent
                                                            ),
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              flex: 1,
                                              child: Container(
                                                child: Text(
                                                  '750000',
                                                    style: TextStyle(
                                                    color: Colors.blueAccent,
                                                      fontSize: 18
                                                ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        height: 50,
                                        child: Text(
                                          'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA',
                                          style: TextStyle(
                                            fontSize: 23
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 20,
                                        child: Text(
                                          'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              color: Colors.grey
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 50,
                                        child: Row(
                                          children: [
                                            Expanded(
                                              flex: 2,
                                              child: Container(
                                                child: Text(
                                                  'Created at 21:40 | 27/10/2020'
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding: const EdgeInsets.only(left: 20.0, right: 5),
                                                child: Container(
                                                  child: FlatButton(
                                                    onPressed: () {
                                                      Navigator.push(context,
                                                          MaterialPageRoute(builder: (context) {
                                                            return PostDetailScreen();
                                                          }));
                                                    },
                                                    child: Text(
                                                      'Preview',
                                                      style: TextStyle(color: Colors.white),
                                                    ),
                                                    color: Colors.blue,
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ));
                          },
                          separatorBuilder: (BuildContext context, int index) =>
                              const Divider(),
                        )),
                  )
                ],
              )),
            ),
          )
        ],
      ),

      //
    );
  }
}
