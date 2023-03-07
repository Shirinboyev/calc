import 'home/data.dart';
import 'home/food.dart';

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