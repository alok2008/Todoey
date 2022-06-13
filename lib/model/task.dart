class Task{

  late final String? name;
  late bool isDone;

  Task({this.name,this.isDone=false});
   void toggle(){
     isDone= !isDone;
}
}