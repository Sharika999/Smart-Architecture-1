import 'package:flutter/material.dart';
import 'package:smart_architecture/standard/items_details_screen.dart';

import 'items.dart';

class ItemUiDesignWidget extends StatefulWidget
{
  Items? itemsInfo;
  BuildContext? context;

  ItemUiDesignWidget({
    this.itemsInfo,
    this.context
  });

  @override
  State<ItemUiDesignWidget> createState() => _ItemUiDesignWidgetState();
}



class _ItemUiDesignWidgetState extends State<ItemUiDesignWidget>
{
  @override
  Widget build(BuildContext context)
  {
    return InkWell(
      onTap: ()
      {
        //send user to the item detail screen

        Navigator.push(context, MaterialPageRoute(builder: (c)=>ItemsDetailsScreen
          (
          clickedItemInfo: widget.itemsInfo,
        ),
        ),
        );
      },
      splashColor: Colors.amber.shade700,
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: SizedBox(
          height: 180,
          width: MediaQuery.of(context).size.width,
          child: Row(
            children: [
              
              //image
              Image.network(
                widget.itemsInfo!.itemImage.toString(),
                width: 140,
                height: 140,
              ),

              const SizedBox(width: 4.0,),

              Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                          height: 15
                      ),

                      //itemName
                      Expanded(
                          child: Text(
                            widget.itemsInfo!.itemName.toString(),
                            maxLines: 2,
                            style: const TextStyle(
                              color: Colors.white70,
                              fontSize: 16
                            ),
                          )
                      ),


                      //sellerName
                      Expanded(
                          child: Text(
                            widget.itemsInfo!.sellerName.toString(),
                            maxLines: 2,
                            style: const TextStyle(
                                color: Colors.pinkAccent,
                                fontSize: 14,
                            ),
                          ),
                      ),


                      // show discount badge-50% OFF BADGE
                      //price - original
                      // new price
                      Row(
                        children: [


                          //50% OFF BADGE
                          

                              

                          const SizedBox(
                            width: 10,
                          ),

                          //original price
                          //new price
                          



                        ],
                      ),

                      const SizedBox(
                        height: 8.0,
                      ),


                      const Divider(
                        height: 4,
                        color: Colors.white70,
                      )

                    ],
                  ),
              )
              
            ],
          ),
        ),
      ),
    );
  }
}
