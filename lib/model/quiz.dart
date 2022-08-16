class Quiz{

  int _currentScore=0;
  int _attempted=0;

  int get attempted=>_attempted;
  int get score=>_currentScore;

  markAnsWrong(){
    _attempted++;
  }
  marksAnsCorrect(){
_currentScore++;
 _attempted++;
  }



ResetQuiz(){
    _attempted=0;
    _currentScore=0;
    }
}