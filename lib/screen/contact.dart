import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:clipboard/clipboard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyContact extends StatelessWidget {
  // const MyContact({super.key});
  final List<String> logo = <String>['☎️','📧','📍'];
  final List<String> entries = <String>['083820901567','maulaamirudin2@gmail.com','Tangerang, Banten'];
  final List<int> colorCodes = <int>[0xffEEEEEE,0xffEEEEEE,0xffEEEEEE];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        margin: EdgeInsets.all(10),
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [Container(
                width:MediaQuery.of(context).size.width,
                height:100,
                decoration: BoxDecoration(boxShadow: [BoxShadow(color: Colors.black,blurRadius: 4,offset: Offset(4,8))],
                    color: Color(0xff373A40),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50),
                        topLeft: Radius.circular(50)
                    )
                ),
              ),
                Container(
                  alignment: Alignment.center,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset("assets/p3.jpg",
                      height: 100,
                      width: 100,
                    ),
                  ),
                ),

              ]
            ),
            Container(
              decoration: BoxDecoration(
                  boxShadow: [BoxShadow(color: Colors.black,blurRadius: 4,offset: Offset(4,8))],
                  color:Color(0xff686D76),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50)
                  )
              ),
              height: 400,
              width: MediaQuery.of(context).size.width,
              child: ListView.separated(
                padding: EdgeInsets.all(8),
                itemCount: entries.length,
                itemBuilder: (BuildContext contex, int index){
                  return Container(
                    decoration: BoxDecoration(
                      color: Color(0xff373A40),
                      borderRadius: BorderRadius.all(Radius.circular(50)
                      ),
                    ),
                    height: 50,
                    // color: Color(colorCodes[index]),
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(" ${logo[index]}  ${entries[index]}",style: TextStyle(fontSize: 15,color: Colors.white),),
                          IconButton(onPressed: () async{
                            await FlutterClipboard.copy(entries[index].toString());
                            final snackbar = SnackBar(backgroundColor:Colors.transparent,content: AwesomeSnackbarContent(contentType: ContentType.success,title: "Yippie",message: "succed to copy",));
                            ScaffoldMessenger.of(context)..showSnackBar(snackbar);
                          }, icon: Icon(Icons.copy),padding: EdgeInsets.only(bottom: 10),)
                        ],
                      ),
                    ),
                  );
                  } , separatorBuilder: (BuildContext context, int index) => Divider(color: Colors.white,)
              ),
            ),
          ],
        ),
      )
    );
  }
}