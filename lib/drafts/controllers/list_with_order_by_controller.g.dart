// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_with_order_by_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ListWithOrderByController on ListWithOrderByControllerBase, Store {
  late final _$listAtom =
      Atom(name: 'ListWithOrderByControllerBase.list', context: context);

  @override
  List<Map<String, dynamic>> get list {
    _$listAtom.reportRead();
    return super.list;
  }

  @override
  set list(List<Map<String, dynamic>> value) {
    _$listAtom.reportWrite(value, super.list, () {
      super.list = value;
    });
  }

  late final _$sortAscendingAtom = Atom(
      name: 'ListWithOrderByControllerBase.sortAscending', context: context);

  @override
  bool get sortAscending {
    _$sortAscendingAtom.reportRead();
    return super.sortAscending;
  }

  @override
  set sortAscending(bool value) {
    _$sortAscendingAtom.reportWrite(value, super.sortAscending, () {
      super.sortAscending = value;
    });
  }

  late final _$sortColumnIndexAtom = Atom(
      name: 'ListWithOrderByControllerBase.sortColumnIndex', context: context);

  @override
  int? get sortColumnIndex {
    _$sortColumnIndexAtom.reportRead();
    return super.sortColumnIndex;
  }

  @override
  set sortColumnIndex(int? value) {
    _$sortColumnIndexAtom.reportWrite(value, super.sortColumnIndex, () {
      super.sortColumnIndex = value;
    });
  }

  late final _$ListWithOrderByControllerBaseActionController =
      ActionController(name: 'ListWithOrderByControllerBase', context: context);

  @override
  dynamic getData() {
    final _$actionInfo = _$ListWithOrderByControllerBaseActionController
        .startAction(name: 'ListWithOrderByControllerBase.getData');
    try {
      return super.getData();
    } finally {
      _$ListWithOrderByControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic orderTable(int columnIndex, bool ascending) {
    final _$actionInfo = _$ListWithOrderByControllerBaseActionController
        .startAction(name: 'ListWithOrderByControllerBase.orderTable');
    try {
      return super.orderTable(columnIndex, ascending);
    } finally {
      _$ListWithOrderByControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
list: ${list},
sortAscending: ${sortAscending},
sortColumnIndex: ${sortColumnIndex}
    ''';
  }
}
