
import 'package:get/get.dart';

class CounterController extends GetxController{
  // we'll use Rx before data types in Getx
  RxInt counter = 1.obs;

  incrementCounter() {
    counter.value++;
    print(counter.value);
  }

}
