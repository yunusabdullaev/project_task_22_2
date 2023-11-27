
import 'data/data_person.dart';
import 'service/network_service.dart';

void main() async {
  String data = await NetworkService.getData(NetworkService.apiPerson);

  List<Person> listData = userListFromData(data);

  for (int i = 0; i < listData.length; i++){
    print(listData[i].address.zipCode);
  }

}