import 'package:day20/data_recieved_page.dart';
import 'package:flutter/material.dart';

class AlertDialogDemo extends StatefulWidget {
   const AlertDialogDemo({Key? key}) : super(key: key);


  @override
  State<AlertDialogDemo> createState() => _AlertDialogDemoState();
}

class _AlertDialogDemoState extends State<AlertDialogDemo> {
  TextEditingController userIdController=TextEditingController();
  TextEditingController passwordController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Dialog"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      backgroundColor: Colors.white70,
                      title: Text("Alert Dialog",style: TextStyle(color: Colors.black87),),
                      content: Container(
                        height: 400,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: <Color>[Colors.blueGrey, Colors.indigo],
                          ),
                        ),
                        child: Column(
                          children: [
                            TextFormField(
                              controller: userIdController,
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.verified_user,
                                  color: Colors.white70,
                                ),
                                hintText: "Enter User ID",
                                hintStyle: TextStyle(
                                  color: Colors.white38,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                ),
                                fillColor: Colors.black26,
                                filled: true,
                                enabled: true,
                                focusedBorder: InputBorder.none,
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            TextFormField(
                              controller: passwordController,
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.password_outlined,
                                  color: Colors.white70,
                                ),
                                hintText: "Password",
                                hintStyle: TextStyle(
                                  color: Colors.white38,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                ),
                                fillColor: Colors.black26,
                                filled: true,
                                enabled: true,
                                focusedBorder: InputBorder.none,
                              ),
                            ),
                            Center(
                              child: ActionChip(
                                backgroundColor: Colors.blueGrey,
                                  label: Text("click to save",style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white70
                                  ),),
                                  onPressed: (){
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context)=>DataRecievedPage(
                                          userIdController.text, passwordController.text)));

                                  })
                            )
                          ],
                        ),
                      ),
                    );
                  });
            },
            child: Text("click here")),
      ),
    );
  }
}
