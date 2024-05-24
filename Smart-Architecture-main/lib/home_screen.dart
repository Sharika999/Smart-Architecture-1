
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:smart_architecture/standard/item_ui_design_widget.dart';
import 'package:smart_architecture/standard/items_upload_screen.dart';

import 'standard/items.dart';


class HomeScreen extends StatefulWidget
{
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}



class _HomeScreenState extends State<HomeScreen>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      //backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 82, 41, 9),
        title: const Text(
            "Decor",
          style: TextStyle(
            fontSize: 18,
            letterSpacing: 2,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
              onPressed:()
      {
Navigator.push(context, MaterialPageRoute(builder: (c)=> ItemsUploadScreen()));
      },
      icon:const Icon(
        Icons .add,
        color:Colors.white,
      ),

    ),
  ],
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 114, 42, 24),
                Color.fromARGB(255, 255, 255, 255),
              ],
            ),
          ),
        child: StreamBuilder(
          stream: FirebaseFirestore
              .instance.collection("items")
              .orderBy("publishedDate",descending: true)
              .snapshots(),
          builder: (context, AsyncSnapshot dataSnapshot)
          {
            if(dataSnapshot.hasData)
            {
              return ListView.builder(
                itemCount: dataSnapshot.data!.docs.length,
                itemBuilder: (context, index)
                {
                  Items eachItemInfo = Items.fromJson(
                    dataSnapshot.data!.docs[index].data() as Map<String, dynamic>
                  );
      
                  return ItemUiDesignWidget(
                    itemsInfo: eachItemInfo,
                    context: context,
                  );
                },
              );
            }
            else
            {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Center(
                    child: Text(
                      "Data is not available",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.grey
                      ),
                    ),
                  )
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
