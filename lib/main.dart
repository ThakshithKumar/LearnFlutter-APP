import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: StartPage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Adding Images to App!!'),
        titleTextStyle: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.red,
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const Text(
            'Two Ways to Add Images into your Application',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 230,
                height: 200,
                child: Image.asset('assets/androidimg.jpeg'),
              ),
              Container(
                width: 250,
                height: 200,
                padding: const EdgeInsets.all(7),
                child: const Text(
                  'This is a Local Image. It can be Accessed by Storing the Image in a Folder *Should mention folder name in the pubspec.yaml file under *Assets* section so that the app can access the image. Syntax: Image.asset("Path of the image")',
                  softWrap: true,
                  style: TextStyle(color: Colors.blueAccent, fontSize: 15),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 230,
                height: 200,
                padding: const EdgeInsets.all(8.0),
                margin: const EdgeInsets.all(8.0),
                child: Image.network(
                    'https://img.freepik.com/free-vector/internet-communication_24877-51945.jpg'),
              ),
              Container(
                width: 230,
                height: 200,
                padding: const EdgeInsets.all(10.0),
                margin: const EdgeInsets.all(8.0),
                child: const Text(
                  'This is an Internet Image. Retrieved From the URL Provided. Syntax: Image.network("URL of the Image") OR Image(image: NetworkImage("URL of Image"))',
                  style: TextStyle(
                      fontSize: 15,
                      fontStyle: FontStyle.normal,
                      color: Colors.blueAccent),
                ),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: Wrap(
        direction: Axis.horizontal,
        children: [
          //Back Button
          Container(
            margin: const EdgeInsets.all(10),
            child: FloatingActionButton(
              heroTag: 'f1',
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back_ios_new_rounded),
            ),
          ),
          //ForwardButton
          Container(
            margin: const EdgeInsets.all(10),
            child: FloatingActionButton(
              heroTag: 'f2',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ButtonsPage()));
              },
              child: const Icon(Icons.arrow_forward_ios_rounded),
            ),
          ),
        ],
      ),
    );
  }
}

class StartPage extends StatelessWidget {
  const StartPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Start Learning Flutter!!"),
        centerTitle: true,
        titleTextStyle: const TextStyle(
            color: Colors.blueAccent,
            fontSize: 30,
            fontStyle: FontStyle.normal),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const HomePage()));
        },
        child: const Icon(Icons.arrow_forward_ios_rounded),
      ),
    );
  }
}

class ButtonsPage extends StatelessWidget {
  const ButtonsPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learning about Buttons!!'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(5),
            margin: const EdgeInsets.all(5),
            child: const Text(
              'For Buttons *onPressed:* is a required property. Below we have kept it empty for Demonstration',
              style: TextStyle(
                  fontSize: 15, color: Colors.red, fontWeight: FontWeight.bold),
              softWrap: true,
            ),
          ),
          Container(
            //margin: const EdgeInsets.all(5),
            //padding: const EdgeInsets.all(5),
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.all(5),
                  padding: const EdgeInsets.all(5),
                  child: TextButton(
                      onPressed: () {}, child: const Text('Text Button')),
                ),
                Container(
                  width: 300,
                  margin: const EdgeInsets.all(5),
                  padding: const EdgeInsets.all(5),
                  child: const Text(
                      'Syntax: TextButton(onPressed: () {}, child: Text("Text Button"))'),
                )
              ],
            ),
          ),
          Container(
            //margin: const EdgeInsets.all(5),
            //padding: const EdgeInsets.all(5),
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.all(5),
                  padding: const EdgeInsets.all(5),
                  child: ElevatedButton(
                      onPressed: () {}, child: const Text('Elevated Button')),
                ),
                Container(
                  width: 270,
                  margin: const EdgeInsets.all(5),
                  padding: const EdgeInsets.all(5),
                  child: const Text(
                      'Syntax: ElevatedButton(onPressed: () {}, child: const Text("Elevated Button"))'),
                )
              ],
            ),
          ),
          Container(
            ///margin: const EdgeInsets.all(5),
            //padding: const EdgeInsets.all(5),
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.all(5),
                  padding: const EdgeInsets.all(5),
                  child: OutlinedButton(
                      onPressed: () {}, child: const Text('Outlined Button')),
                ),
                Container(
                  width: 270,
                  margin: const EdgeInsets.all(5),
                  padding: const EdgeInsets.all(5),
                  child: const Text(
                      'Syntax:OutlinedButton(onPressed: () {}, child: const Text("Outlined Button")) '),
                )
              ],
            ),
          ),
          Container(
            //margin: const EdgeInsets.all(5),
            padding: const EdgeInsets.all(5),
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.all(5),
                  padding: const EdgeInsets.all(5),
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.emoji_emotions),
                    label: Text('Icon Button'),
                  ),
                ),
                Container(
                  width: 270,
                  margin: const EdgeInsets.all(5),
                  padding: const EdgeInsets.all(5),
                  child: const Text(
                      'Syntax: ElevatedButton.icon(onPressed: () {}, icon: Icon(Icons.emoji_emotions), label: Text("Icon Button"),)'),
                )
              ],
            ),
          ),
          Container(
            //margin: const EdgeInsets.all(5),
            padding: const EdgeInsets.all(5),
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.all(5),
                  padding: const EdgeInsets.all(5),
                  width: 150,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.smart_button),
                  ),
                ),
                Container(
                  width: 270,
                  margin: const EdgeInsets.all(5),
                  padding: const EdgeInsets.all(5),
                  child: const Text(
                      'Syntax: IconButton(onPressed: () {}, icon: Icon(Icons.smart_button),)'),
                )
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: Wrap(
        direction: Axis.horizontal,
        children: [
          //Back Button
          Container(
            margin: const EdgeInsets.all(10),
            child: FloatingActionButton(
              heroTag: 'f1',
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back_ios_new_rounded),
            ),
          ),
          //ForwardButton
          Container(
            margin: const EdgeInsets.all(10),
            child: FloatingActionButton(
              heroTag: 'f2',
              onPressed: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => const ButtonsPage()));
              },
              child: const Icon(Icons.arrow_forward_ios_rounded),
            ),
          ),
        ],
      ),
    );
  }
}
