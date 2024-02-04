import 'package:hive_flutter/hive_flutter.dart';
import 'package:pitchub/core/enums.dart';

abstract class LocalStorageService {
  static init() async {
    await Hive.initFlutter();
    Hive.openBox(LocalStorageKey.token.name);
    Hive.openBox(LocalStorageKey.password.name);
  }

  ///[T] This isthe data type to be returned
  ///[key] This is the key used to access the data
  T readByKey<T>({
    required String box,
    required String key,
  });

  ///[T] This isthe data type to be returned
  ///[index] This is the index used to access the data inside the box
  ///[box] This is the parent shield holding multiple
  T readByIndex<T>({
    required String box,
    required int index,
  });

  ///[T] This isthe data type to be returned
  ///[key] This is the key that will be used to store the data
  ///[box] This is the parent shield holding multiple
  ///[data] This is the data to store inside the box using the key
  void storeByKey<T>({
    required String box,
    required String key,
    required T data,
  });

  ///[T] This isthe data type to be returned
  ///[index] This is the index used in storing the data
  ///[data] This is the data to be stored inside the box using the index
  void storeByIndex<T>({
    required String box,
    required int index,
    required T data,
  });

  ///[T] This isthe data type to be returned
  ///[index] This is the index used in updating the data
  ///[data] This is the new data that will be updated inside the box
  ///using the index
  void updateByIndex<T>({
    required String box,
    required int index,
    required T data,
  });

  ///[T] This is the data type for the incoming
  ///[key] This is the key used in updating the data
  void updateByKey<T>({
    required String box,
    required String key,
    required T data,
  });

  /// This deletes data from the box by the specified
  /// [key] and [box]
  void deleteByKey({
    required String key,
    required String box,
  });

  /// This deletes data from the box by the specified
  /// [index] and [box]
  void deleteByIndex({
    required int index,
    required String box,
  });

  ///[box] this clears the entire data on the device 
  ///local storage
  void clearAll({required String box});
}
