import 'package:flutter/material.dart';

class Scaffoldexample extends StatelessWidget {
  int val = 0;
  int _selectedIndex = 2;
  _someMethod() {
    val++;
    debugPrint('$val' ' calls made');
  }

  void _onItemTapped(int index) {
    _selectedIndex = index;
    debugPrint("$_selectedIndex oh this works ");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("H E L L O"),
        centerTitle: true,
        elevation: 10,
        backgroundColor: Colors.amberAccent.shade200,
        actions: [
          IconButton(
              onPressed: () {
                debugPrint("$val");
                val++;
              },
              icon: Icon(Icons.email_outlined)),
          IconButton(onPressed: _someMethod, icon: Icon(Icons.add_call)),
        ],
      ),
      backgroundColor: Colors.white,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // InkWell(
            //   child:const Text(
            //     "this is Inkwell component",
            //     style: TextStyle(fontSize: 15, color: Colors.amberAccent),
            //   ),
            //   onTap: ()=>debugPrint("onTap is working"),
            // )

            InkWell(
                child: TextButton(
              onPressed: () => debugPrint("new button "),
              child: Text("Button"),
            )),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blueAccent,
           child: Icon(Icons.call_missed_outgoing_outlined),
          // child: Text('helo'),
          onPressed: () => debugPrint('float works')),
      bottomNavigationBar: BottomNavigationBar(
        
        items: const <BottomNavigationBarItem>[
          
          BottomNavigationBarItem(
            backgroundColor:Colors.black,
            icon: Icon(Icons.home), //home
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star), //star
            label: 'Top Picks',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add), //create
            label: 'create',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat), //chat
            label: 'chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search), //search
            label: 'search',
          )
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}

class customButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
// final snackBar=SnackBar(content: content);
      },
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Material(
      child: Center(
          child: Text(
        'data',
        textDirection: TextDirection.ltr,
      )),
    );
//     return const Center(
// child: Text('this is app',textDirection: TextDirection.ltr,),
//     );
  }
}
