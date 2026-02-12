import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace_app/model/table_row_model.dart';

import '../../../core/resourses/assets_manager.dart';

class CustomTableRowStatsPage extends StatelessWidget {
  const CustomTableRowStatsPage(
      {super.key, required this.tableRowModel,
     });
  final TableRowModel tableRowModel;
   
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            " ${tableRowModel.order}",
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(
            width: 10,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image(
                width: 39,
                height: 39,
                fit: BoxFit.contain,
                image: AssetImage( tableRowModel.image)),
          ),
          SizedBox(
            width: 14,
          ),
          Container(
            height: 39,
            width: 114,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                tableRowModel.  name,
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                 tableRowModel.  subname,
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 28,
          ),
          Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.link,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Text(
                    tableRowModel. count,
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
              Text(
               tableRowModel.  precent,
                style: TextStyle(color: tableRowModel.active? Colors.green: Colors.red),
              )
            ],
          )
        ],
      ),
    );
  }
}
