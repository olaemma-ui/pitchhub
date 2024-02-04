import 'package:hive/hive.dart';
import 'package:pitchub/exceptions/exceptions.dart';
import 'package:pitchub/service/localstorage_service/local_storage_service.dart';

class LocalStorageServiceImpl extends LocalStorageService {
  @override
  T readByIndex<T>({required String box, required int index}) {
    // TODO: implement readByIndex
    return Hive.box(box).getAt(index) as T;
  }

  @override
  T readByKey<T>({required String box, required String key}) {
    
    // TODO: implement readByKey
    return Hive.box(box).get(key) as T;
  }

  @override
  void storeByIndex<T>({
    required String box,
    required int index,
    required T data,
  }) {
    final $box = Hive.box(box);
    if ($box.containsKey(index)) {
      throw BadFormatException(
        prettyMessage: 'Something went wrong',
        devMessage: 'Index [$index] already exist with data, use '
            'updateByKey method to update the value',
      );
    }
    Hive.box(box).putAt(index, data) as T;
  }

  @override
  void storeByKey<T>({
    required String box,
    required String key,
    required T data,
  }) {
    final $box = Hive.box(box);
    if ($box.containsKey(key)) {
      throw BadFormatException(
        prettyMessage: 'Something went wrong',
        devMessage: 'Key [$key] already exist with data, use '
            'updateByKey method to update the value',
      );
    }
    Hive.box(box).put(key, data) as T;
  }

  @override
  void updateByIndex<T>({
    required String box,
    required int index,
    required T data,
  }) {
    Hive.box(box).putAt(index, data) as T;
  }

  @override
  void updateByKey<T>({
    required String box,
    required String key,
    required T data,
  }) {
    Hive.box(box).put(key, data) as T;
  }

  @override
  void clearAll({required String box}) {
    Hive.box(box).clear();
  }

  @override
  void deleteByIndex({required int index, required String box}) {
    Hive.box(box).deleteAt(index);
  }

  @override
  void deleteByKey({required String key, required String box}) {
    // TODO: implement deleteByKey
    Hive.box(box).delete(key);
  }
}
