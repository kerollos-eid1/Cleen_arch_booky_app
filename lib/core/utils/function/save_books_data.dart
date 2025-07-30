
  import 'package:clean_arch_booky_app/Features/home/Domain/entities/book_entity.dart';
import 'package:hive/hive.dart';

void saveBooksData(List<BookEntity> books , String boxName) {
     var box =Hive.box(boxName);
    box.addAll(books);
  }