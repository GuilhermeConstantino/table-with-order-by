import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../../mock/mockdata.dart';
part 'list_with_order_by_controller.g.dart';

class ListWithOrderByController = ListWithOrderByControllerBase
    with _$ListWithOrderByController;

abstract class ListWithOrderByControllerBase with Store {
  @observable
  List<Map<String, dynamic>> list = mockJsonData;

  @observable
  ScrollController tableVerticalScrollController = ScrollController();

  @observable
  ScrollController tableHorizontalScrollController = ScrollController();

  @observable
  bool sortAscending = true;

  @observable
  int? sortColumnIndex = 1;

  @action
  getData() {
    list = mockJsonData;
  }

  @action
  orderTable(int columnIndex, bool ascending) {
    if (ascending) {
      list.sort((a, b) {
        return a.values
            .toList()[columnIndex]
            .compareTo(b.values.toList()[columnIndex]);
      });
    } else {
      list.sort((a, b) {
        return b.values
            .toList()[columnIndex]
            .compareTo(a.values.toList()[columnIndex]);
      });
    }
    sortColumnIndex = columnIndex;
    sortAscending = ascending;
  }
}
