import 'story.dart';


class StoryBrain{
  // ignore: prefer_final_fields
  List<Story> _storyData =[
    Story(
    storytitle:
    'Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception.A rusty pickup truch rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: "Need a ride, boy?" . ',
    choice1: 'i\'ll hop in, Thanks for the help',
    choice2: 'Better ask him if he\'s a murder first'),
    Story(
      storytitle:'He nods slowly, unphased by the question.', 
      choice1:'At least he\'s honest. i\'ll climb in. ',
      choice2: 'wait, I know how to change tire.'),
    Story(
        storytitle: 'As you begin to drive, the stranger starts talking about his relationship with his mother. He get agnrier and angrier by the minute. he ask to open the glovebox. Inside you find the bloody knife, two served fingers, and a cassette tapr of Elton Jhon.He reaches for the glove box', 
        choice1: 'i love elton Jhon! Hand hom the cassette tape.', 
        choice2: 'It\'s him or me! You take the knife and stab him'),
    Story(
        storytitle: 'What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?',
        choice1: 'Restart',
        choice2: ''),
    Story(storytitle: 'As you smash through the gurdrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in',
     choice1: 'Restart', 
     choice2: ''), 
    Story(
        storytitle: 'You bond with the murderer while crooning verses of "Can you feel the love tonight". He drops you of at the next town. Before you go he asks you if yopu know any good places to dump bodies. you reply:" Try the pier".', 
        choice1: 'Restart ',
        choice2: '')

  ];


  String getstory(){
    return _storyData[_storynumber].storytitle;
  }

  String getChoice1(){
    return _storyData[_storynumber].choice1;
  }

  String getChoice2(){
    return _storyData[_storynumber].choice2;
  }
  
  int _storynumber = 0;
 
  void nextStory(int choiceNumber) {
   
    if (choiceNumber == 1 && _storynumber == 0) {
      _storynumber = 2;
    }else if (choiceNumber == 2 && _storynumber == 0){
      _storynumber = 1;
    } else if(choiceNumber == 1 && _storynumber == 1){
      _storynumber = 2;
    }else if (choiceNumber == 2 && _storynumber == 1){
      _storynumber = 3;
    }else if (choiceNumber == 1 && _storynumber == 2){
      _storynumber = 5;
    }else if (choiceNumber == 2 && _storynumber == 2){
      _storynumber = 4;
    }
    else if (_storynumber == 3 || _storynumber == 4 || _storynumber == 5){
      restart();
    }
  }
    void restart(){
      _storynumber = 0;

    }

    bool buttonShouldBeVisible(){
      if (_storynumber < 3){
        return true;
      }else{
        return false;
      }
    }
  
}