
import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';

class CreateQRScreen extends StatefulWidget {
  const CreateQRScreen({Key? key}) : super(key: key);

  @override
  State<CreateQRScreen> createState() => _CreateQRScreenState();
}

class _CreateQRScreenState extends State<CreateQRScreen> {

  var qrName="";
  @override
  Widget build(BuildContext context) {
    final MD=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title:const Text("Creating QR "),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BarcodeWidget(
              data: qrName,
              barcode: Barcode.qrCode(),
              color: Colors.black,
              width: double.infinity,
              height: MD.height *.33,
            ),
            Container(
              alignment: Alignment.center,
              width:MD.width *.8 ,
              child: TextField(
                cursorColor:Colors.white,
                onChanged: (str){
                  setState(() {
                    qrName=str;
                  });
                },
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide:const BorderSide(
                        color: Colors.white,
                        width: 2,
                      )
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide:const BorderSide(
                        color: Colors.white,
                        width: 2,
                      )
                  ),
                  hintText: "Enter Data ",
                ),
              ),
            ),
            SizedBox(width: MD.width,)
          ],
        ),
      ),
    );
  }
}
