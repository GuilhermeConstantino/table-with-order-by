import 'package:flutter/material.dart';
import 'package:draft/drafts/instances.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';

class ListWithOrderBy extends StatelessWidget {
  const ListWithOrderBy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Center(child: Text('List of Drafts')),
            leading: TextButton(
                child: const Text(
                  'Back',
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () => Navigator.of(context).pop())),
        body: Center(
          child: Scrollbar(
            controller: listWithOrderByController.tableVerticalScrollController,
            thumbVisibility: true,
            trackVisibility: true,
            child: Scrollbar(
              controller:
                  listWithOrderByController.tableHorizontalScrollController,
              thumbVisibility: true,
              trackVisibility: true,
              notificationPredicate: notification.depth == 0,
              child: Container(
                clipBehavior: Clip.hardEdge,
                height: 200,
                width: 300,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                ),
                child: SingleChildScrollView(
                  controller:
                      listWithOrderByController.tableVerticalScrollController,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    controller: listWithOrderByController
                        .tableHorizontalScrollController,
                    child: Observer(builder: (context) {
                      return DataTable(
                        sortColumnIndex:
                            listWithOrderByController.sortColumnIndex,
                        sortAscending: listWithOrderByController.sortAscending,
                        columns: [
                          DataColumn(
                              label: const Center(child: Text('Id')),
                              onSort: ((columnIndex, ascending) {
                                listWithOrderByController.orderTable(
                                    columnIndex, ascending);
                              })),
                          DataColumn(
                              label: const Center(child: Text('Name')),
                              onSort: ((columnIndex, ascending) {
                                listWithOrderByController.orderTable(
                                    columnIndex, ascending);
                              })),
                          const DataColumn(
                              label: Center(child: Text('E-mail'))),
                          const DataColumn(
                              label: Center(child: Text('Balance'))),
                        ],
                        rows: listWithOrderByController.list
                            .map(
                              (e) => DataRow(
                                cells: <DataCell>[
                                  DataCell(Text(e['id'].toString())),
                                  DataCell(Text(e['name'])),
                                  DataCell(Text(e['email'])),
                                  DataCell(Text(e['balance'].toString()))
                                ],
                              ),
                            )
                            .toList(),
                      );
                    }),
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
