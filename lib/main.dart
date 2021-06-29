import 'package:flutter/material.dart';
import 'package:listgsg/data/dummy.dart';
import 'package:listgsg/modles/product.dart';

void main() {
  runApp(MaterialApp(
    home: MyMapp(),
  ));
}

class MyMapp extends StatefulWidget {
  @override
  _MyMappState createState() => _MyMappState();
}

class _MyMappState extends State<MyMapp>with SingleTickerProviderStateMixin  {
  bool check = false;
  int index = 0;
    TabController tabController;
  initTabController() {
    tabController = TabController(length: 2, vsync: this);
  }
    void initState() {
    super.initState();
    initTabController();
  }
  List<Product> list = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("Todo"),
          bottom: TabBar(
            controller: tabController,
            tabs: [
              Tab(
                icon: Icon(Icons.home),
                text: 'Home',
              ),
              Tab(
                icon: Icon(Icons.favorite),
                text: 'Favourite',
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: tabController,
          physics: NeverScrollableScrollPhysics(), children: [
          Container(
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: MockData.mockData.getProducts().length,
                    itemBuilder: (context, index) {
                      return Row(children: [
                        Container(
                          child: Image.asset(
                              MockData.mockData.getProducts()[index].image),
                        ),
                      ]);
                    },
                  ),
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  padding: EdgeInsets.all(8),
                  child: Text(
                    "Producds",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 22,
                        color: Colors.red.shade400),
                  ),
                ),
                Expanded(
                    flex: 2,
                    child: ListView.builder(
                        itemCount: MockData.mockData.getProducts().length,
                        itemBuilder: (BuildContext context, i) {
                          return Container(
                            padding: EdgeInsets.all(8),
                            margin: EdgeInsets.all(8),
                            child: ListTile(
                              title: Text(
                                  MockData.mockData.getProducts()[i].name),
                              subtitle: Text(
                                  "${MockData.mockData.getProducts()[i].price}"),
                              leading: CircleAvatar(
                                child: Image.asset(
                                    MockData.mockData.getProducts()[i].image),
                              ),
                              trailing: IconButton(
                                  onPressed: () => setState(() {
                                        MockData.mockData.update(MockData
                                            .mockData
                                            .getProducts()[i]
                                            .name);
                                        if (MockData.mockData
                                            .getProducts()[i]
                                            .isfavarite) {
                                          list.add(MockData.mockData
                                              .getProducts()[i]);
                                          print(list[i].name);
                                        }
                                      }),
                                  icon: MockData.mockData
                                          .getProducts()[i]
                                          .isfavarite
                                      ? Icon(Icons.favorite,
                                          color: Colors.red)
                                      : Icon(
                                          Icons.favorite,
                                          color: Colors.black,
                                        )),
                            ),
                          );
                        })),
              ],
            ),
          ),
          Center(
            child: ListView.builder(
                        itemCount: list.length,
                        itemBuilder: (BuildContext context, i) {
                          return Container(
                            padding: EdgeInsets.all(8),
                            margin: EdgeInsets.all(8),
                            child: ListTile(
                              title: Text(
                                 list[i].name),
                              subtitle: Text(
                                  "${list[i].price}",style: TextStyle(color: Colors.red),),
                              leading: Image.asset(
                                  list[i].image),
                              trailing: IconButton(
                                  onPressed: () => setState(() {
                                      
                                        }
                                      ),
                                  icon: 
                                       Icon(Icons.favorite,
                                          color: Colors.red)
                                        ),
                            ),
                          );
                        })
          ),
        ]),
        bottomNavigationBar: BottomNavigationBar(
            onTap: (tapedIndex) {
              this.index = tapedIndex;
              tabController.animateTo(tapedIndex);
              setState(() {});
            },
            currentIndex: index,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite), label: 'Favourite'),
            
            ]));
  }
}
