import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottery/src/providers/sell_provider.dart';
import 'dart:ui';

class SellPage extends StatefulWidget {
  @override
  State<SellPage> createState() => _SellPageState();
}

class _SellPageState extends State<SellPage> {
  @override
  Widget build(BuildContext context) {
    final List<String> lotteries = ['Nacional', 'Leidsa'];
    bool _isChecked = false;
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Text('Vender'),
        backgroundColor: Colors.blue[900],
      ),
      body: Stack(children: [
        DataTable(
            showCheckboxColumn: false,
            dividerThickness: 2,
            headingRowHeight: 55,
            dataRowHeight: 55,
            columnSpacing: 22,
            columns: <DataColumn>[
              DataColumn(
                label: Text(
                  'Tipo',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ),
              DataColumn(
                label: Text(
                  'Numero',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ),
              DataColumn(
                label: Text(
                  'Valor',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ),
              DataColumn(
                label: Text(
                  'Actualizar',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ),
              DataColumn(
                label: Text(
                  'Eliminar',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ),
            ],
            rows: [
              DataRow(
                onSelectChanged: null,
                selected: false,
                cells: <DataCell>[
                  DataCell(
                    Center(
                        child: Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 3,
                        horizontal: 0,
                      ),
                      child: Text('Nacional'),
                    )),
                  ),
                  DataCell(
                    Center(
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 3,
                          horizontal: 0,
                        ),
                        child: Text('004333'),
                      ),
                    ),
                  ),
                  DataCell(
                    Center(
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 3,
                          horizontal: 0,
                        ),
                        child: Text('20'),
                      ),
                    ),
                  ),
                  DataCell(
                    Center(
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 3,
                          horizontal: 0,
                        ),
                        child: Icon(
                          Icons.edit,
                          color: Colors.blue[900],
                        ),
                      ),
                    ),
                  ),
                  DataCell(Center(
                      child: Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 3,
                      horizontal: 0,
                    ),
                    child: Icon(
                      Icons.delete,
                      color: Colors.blue[900],
                    ),
                  )))
                ],
              ),
              DataRow(
                onSelectChanged: null,
                selected: false,
                cells: <DataCell>[
                  DataCell(
                    Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 3,
                        horizontal: 0,
                      ),
                      child: Text('PL'),
                    ),
                  ),
                  DataCell(
                    Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 3,
                        horizontal: 0,
                      ),
                      child: Text('00045400'),
                    ),
                  ),
                  DataCell(
                    Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 3,
                        horizontal: 0,
                      ),
                      child: Text('50'),
                    ),
                  ),
                  DataCell(
                    Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 3,
                        horizontal: 0,
                      ),
                      child: Icon(
                        Icons.edit,
                        color: Colors.blue[900],
                      ),
                    ),
                  ),
                  DataCell(Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 3,
                      horizontal: 0,
                    ),
                    child: Icon(
                      Icons.delete,
                      color: Colors.blue[900],
                    ),
                  ))
                ],
              ),
              DataRow(
                onSelectChanged: null,
                selected: false,
                cells: <DataCell>[
                  DataCell(
                    Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 3,
                        horizontal: 0,
                      ),
                      child: Text('TR'),
                    ),
                  ),
                  DataCell(
                    Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 3,
                        horizontal: 0,
                      ),
                      child: Text('0524'),
                    ),
                  ),
                  DataCell(
                    Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 3,
                        horizontal: 0,
                      ),
                      child: Text('10'),
                    ),
                  ),
                  DataCell(
                    Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 3,
                        horizontal: 0,
                      ),
                      child: Icon(
                        Icons.edit,
                        color: Colors.blue[900],
                      ),
                    ),
                  ),
                  DataCell(Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 3,
                      horizontal: 0,
                    ),
                    child: Icon(
                      Icons.delete,
                      color: Colors.blue[900],
                    ),
                  ))
                ],
              ),
            ]),
        Positioned(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Align(
                alignment: FractionalOffset.centerRight,
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.storefront_rounded,
                          color: Colors.blue[900],
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 115),
                          constraints: BoxConstraints(
                            maxWidth: 150,
                          ),
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (_) => AlertDialog(
                                  title: Text('Loterias'),
                                  actions: [],
                                  content: SingleChildScrollView(
                                    child: Container(
                                      height: 220,
                                        width: double.infinity,
                                        child: SingleChildScrollView(
                                          scrollDirection: Axis.vertical,
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,

                                            children: [
                                              CheckboxListTile(
                                               
                                                value: _isChecked,
                                                onChanged: (bool value) {
                                                  setState(() {
                                                    _isChecked = value;
                                                  });
                                                },
                                               title: const Text('Nacional'),
                                              ),
                                              CheckboxListTile(
                                                value: _isChecked,
                                                onChanged: (bool value) {
                                                  setState(() {
                                                    _isChecked = value;
                                                  });
                                                },
                                                title: const Text('Nacional'),
                                              ),
                                              CheckboxListTile(
                                                value: _isChecked,
                                                onChanged: (bool value) {
                                                  setState(() {
                                                    _isChecked = value;
                                                  });
                                                },
                                                title: const Text('Nacional'),
                                              ),
                                              CheckboxListTile(
                                                value: _isChecked,
                                                onChanged: (bool value) {
                                                  setState(() {
                                                    _isChecked = value;
                                                  });
                                                },
                                                title: const Text('Nacional'),
                                              ),
                                              CheckboxListTile(
                                                value: _isChecked,
                                                onChanged: (bool value) {
                                                  setState(() {
                                                    _isChecked = value;
                                                  });
                                                },
                                                title: const Text('Nacional'),
                                              ),
                                               CheckboxListTile(
                                              value: _isChecked,
                                              onChanged: (bool value) {
                                                setState(() {
                                                  _isChecked = value;
                                                });
                                              },
                                              title: const Text('Nacional'),
                                            ),
                                             CheckboxListTile(
                                              value: _isChecked,
                                              onChanged: (bool value) {
                                                setState(() {
                                                  _isChecked = value;
                                                });
                                              },
                                              title: const Text('Nacional'),
                                            ),
                                             CheckboxListTile(
                                              value: _isChecked,
                                              onChanged: (bool value) {
                                                setState(() {
                                                  _isChecked = value;
                                                });
                                              },
                                              title: const Text('Nacional'),
                                            ),
                                            
                                              ],
                                          )
                                        )),
                                  ),
                                ),
                              );
                            },
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.blue[900])),
                            child: Text(
                              'Loteria',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 16.0),
                            ),
                          ),
                        ),
                        Text(
                          'Total: 70',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                  color: Colors.blue.withOpacity(0.2),
                  height: 50,
                ),
              ),
              Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: Container(
                    color: Colors.white,
                    height: 50,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                                constraints: BoxConstraints(
                                    maxWidth: 100, maxHeight: 25)),
                            initialValue: 'Prueba 00000',
                          ),
                          DropdownButton<String>(
                            items: <String>['Nacional', 'TR', 'Leidsa', '']
                                .map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            onChanged: (_) {},
                          ),
                          TextFormField(
                              decoration: InputDecoration(
                                  constraints: BoxConstraints(
                                      maxWidth: 40, maxHeight: 25)),
                              initialValue: '0.0',
                              keyboardType: TextInputType.number),
                          Icon(
                            Icons.add_box_rounded,
                            color: Colors.blue[900],
                            size: 40,
                          ),
                        ],
                      ),
                    ),
                  )),
            ],
          ),
        )
      ]),
    );
  }
}
