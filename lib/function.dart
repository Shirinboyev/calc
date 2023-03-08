import 'home/map.dart';
import 'home/class.dart';
int b = 0;
List getInfo(){
      List<Food> list = [];
    for (Map<dynamic,dynamic> mp in foood.values){
      list.add(Food(
        title: mp['title']!, 
        time: mp['time']!, 
        rating: mp['rating']!,  
        energy: mp['energy']!,),
        );
    }return list;
}