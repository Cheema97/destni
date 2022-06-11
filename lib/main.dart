// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, camel_case_types
import 'package:flutter/material.dart';
import 'story_brain.dart';

void main() => runApp(Destni());

class Destni extends StatelessWidget {
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Destni',
      theme:ThemeData.dark(),
      home:StoryPage(),
    ); 
  }
}


StoryBrain storyBrain = StoryBrain();

class StoryPage extends StatefulWidget {
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Text(
          'Destni',
          style: TextStyle(
            fontSize: 25),
            textAlign: TextAlign.left,
            textWidthBasis: TextWidthBasis.longestLine,
          ),
          titleTextStyle: TextStyle(
            color: Colors.red,
            ),
          ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        padding: EdgeInsets.symmetric(vertical: 50.0,horizontal: 15.0),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget> [
              Expanded(
                flex: 12,
                child: Center(
                  child: Text(
                    storyBrain.getstory(),
                    style: TextStyle(
                      fontSize: 25.0,
                    ),
                    ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Visibility(
                  child: FlatButton(
                    onPressed: (){
                      setState(() {
                        storyBrain.nextStory(1);
                      });
                    },
                    color: Colors.red,
                    child: Text(
                      storyBrain.getChoice1(),
                      style: TextStyle(
                        fontSize: 15.0,
                      ),
                      ),
                    ),
                ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Expanded(
                  flex: 2,
                  child: Visibility(
                    visible: storyBrain.buttonShouldBeVisible(),
                    child: FlatButton(
                      onPressed: (){
                        setState(() {
                          storyBrain.nextStory(2);
                        });
                      },
                      color: Colors.green,
                      child: Text(
                        storyBrain.getChoice2(),
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                    ),
                  )
                )
            ],
          )),
      ),
    );
  }
}



