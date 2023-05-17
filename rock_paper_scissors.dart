import 'dart:io';
import 'dart:math';
enum Move{rock, paper, scissors}
void main (){
  final rag = Random();
  while(true){
  stdout.write('Rock, paper or scissors? (r/p/s) ');
 final input = stdin.readLineSync();
 if(input=='r' || input== 'p'  || input == 's'){
  var playerMove;
  if(input=='r'){
   playerMove=Move.rock; 
  }
  else if(input=='p'){
    playerMove= Move.paper;
  }
  else{ playerMove = Move.scissors;
  }
  final random = rag.nextInt(3);
  final aiMove = Move.values[random];
  print('you played: $playerMove');
  print('aiMove: $aiMove');
  if(playerMove == aiMove){
    print('it is a draw');
  }
  else if(playerMove == Move.rock && aiMove ==Move.scissors || 
  playerMove == Move.paper && aiMove == Move.rock || 
  playerMove == Move.scissors && aiMove == Move.paper){
    print('You won');
  }
  else {
    print('You lose');
  }
  print('selected: ${input}');
 }
 else if (input == 'q'){
  break;
 }
 else {
  print('invalid input');
 }

 }
}