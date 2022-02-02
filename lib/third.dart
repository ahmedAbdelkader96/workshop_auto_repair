import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:lottie/lottie.dart';

class Third extends StatefulWidget {
   Third(  this.image,this.title,{Key? key}) : super(key: key);
  final String image;
   final String title;

   @override
  _ThirdState createState() => _ThirdState();
}

class _ThirdState extends State<Third> {
  bool show = false;
  bool show1 = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(milliseconds: 300),(){setState(() {show = true;});});
    Future.delayed(Duration(milliseconds: 1000),(){setState(() {show1 = true;});});

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          AnimationLimiter(
            child: ListView(
              //padding: EdgeInsets.only(top: _w / 30),
              children: [
                Hero(
                  //transitionOnUserGestures: true,
                  tag: widget.image,
                  child: Image.asset(widget.image,height: 200),
                ),
                SizedBox(height: 10,),

                AnimationConfiguration.staggeredList(
                  position: 1,
                  delay: const Duration(milliseconds: 0),
                  child: SlideAnimation(
                      duration: const Duration(milliseconds: 1000),
                      //curve: Curves.fastLinearToSlowEaseIn,
                      horizontalOffset: -300,
                      verticalOffset: 850,
                      // horizontalOffset: -300,
                      // verticalOffset: -850,
                      // horizontalOffset: 300,
                      // verticalOffset: 850,
                      // horizontalOffset: 300,
                      // verticalOffset: -850,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20,right: 30,),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(widget.title,style: TextStyle(fontSize: 22,fontWeight: FontWeight.w600,color: Colors.black),),
                            Row(children: [
                              Image.asset("assets/star.png",height: 15,width: 15,),
                              SizedBox(width: 6,),

                              Text("4.5 (17)",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500,color: Colors.grey[500]),),
                            ],)
                          ],
                        ),
                      ),


                  ),
                ),
                SizedBox(height: 20,),

                AnimationConfiguration.staggeredList(
                  position: 2,
                  delay: const Duration(milliseconds: 0),
                  child: SlideAnimation(
                      duration: const Duration(milliseconds: 1000),
                      //curve: Curves.fastLinearToSlowEaseIn,
                      horizontalOffset: 300,
                      verticalOffset: 850,
                      // horizontalOffset: -300,
                      // verticalOffset: -850,
                      // horizontalOffset: 300,
                      // verticalOffset: 850,
                      // horizontalOffset: 300,
                      // verticalOffset: -850,
                      child: SizedBox(
                          height:30,
                          width: double.infinity,
                          child: AnimatedPadding(
                            //curve: Curves.fastLinearToSlowEaseIn,
                            padding: EdgeInsets.only(left: show? 20 : MediaQuery.of(context).size.width ),
                            duration: Duration(milliseconds: 600),

                            child: ListView(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              children: [
                                buildContainer("assets/star.png","High rating"),
                                buildContainer("assets/correcticon.png","Verified"),
                                buildContainer("assets/money.gif","Money saving"),
                                buildContainer("assets/star.png","High rating"),
                                buildContainer("assets/correcticon.png","Verified"),
                                buildContainer("assets/money.gif","Money saving"),
                              ],
                            ),
                          )
                      ),


                  ),
                ),
                SizedBox(height: 20,),

                AnimatedOpacity(
                  duration: Duration(milliseconds: 1000),
                  opacity: show1? 1 : 0,
                  child: Row(
                    children: [
                      SizedBox(width: 20,),
                      Text("About",style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500,color: Colors.black54),),
                    ],
                  ),
                ),
                SizedBox(height: 20,),


                AnimationConfiguration.staggeredList(
                  position: 2,
                  delay: const Duration(milliseconds: 0),
                  child: SlideAnimation(
                    duration: const Duration(milliseconds: 1000),
                    //curve: Curves.fastLinearToSlowEaseIn,
                    horizontalOffset: 300,
                    verticalOffset: -850,
                    child: AnimatedOpacity(
                      duration: Duration(milliseconds: 1000),
                      opacity: show1? 1 : 0,
                      child: Padding(

                        padding:  EdgeInsets.only(left: 20,right: 10,top:  0),
                        child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry."
                            " Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, "
                            "when an unknown printer took a galley of type and scrambled it to make a "
                            "type specimen book.",textAlign: TextAlign.left,style: TextStyle(color: Colors.grey[500]),),
                      ),
                    ),


                  ),
                ),




                SizedBox(height: 10,),

                AnimatedOpacity(
                  duration: Duration(milliseconds: 1000),
                  opacity: show1? 1 : 0,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20,right: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //SizedBox(width: 20,),
                        Text("Work Area",style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500,color: Colors.black54),),
                        Lottie.asset("assets/world.json",height: 50,width: 50,animate: true)
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 5,),
                AnimatedOpacity(duration: Duration(milliseconds: 1000),
                    opacity: show1? 1 : 0,child: AnimatedContainer(margin: EdgeInsets.only(),duration: Duration(milliseconds: 500),padding: EdgeInsets.only(bottom: 0,left: 30,right: 30),width: MediaQuery.of(context).size.width*0.8,height: 130,child: ClipRRect(borderRadius: BorderRadius.circular(12),child: Image.asset("assets/location.jpeg",fit: BoxFit.cover,)))),



              ],
            ),
          ),

          // ListView(
          //   physics: BouncingScrollPhysics(),
          //   //mainAxisAlignment: MainAxisAlignment.start,
          //   children: [
          //     //SizedBox(height: 40,),
          //     Hero(
          //       //transitionOnUserGestures: true,
          //       tag: widget.image,
          //       child: Image.asset(widget.image,height: 200),
          //     ),
          //     SizedBox(height: 20,),
          //
          //     Padding(
          //       padding: const EdgeInsets.only(left: 20,right: 30,),
          //       child: Row(
          //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //         children: [
          //           Text(widget.title,style: TextStyle(fontSize: 22,fontWeight: FontWeight.w600,color: Colors.black),),
          //           Row(children: [
          //             Image.asset("assets/star.png",height: 15,width: 15,),
          //             SizedBox(width: 6,),
          //
          //             Text("4.5 (17)",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500,color: Colors.grey[500]),),
          //           ],)
          //         ],
          //       ),
          //     ),
          //     SizedBox(height: 20,),
          //
          //
          //     SizedBox(
          //         height:30,
          //         width: double.infinity,
          //         child: AnimatedPadding(
          //           //curve: Curves.fastLinearToSlowEaseIn,
          //           padding: EdgeInsets.only(left: show? 20 : MediaQuery.of(context).size.width ),
          //           duration: Duration(milliseconds: 600),
          //
          //           child: ListView(
          //             shrinkWrap: true,
          //             scrollDirection: Axis.horizontal,
          //             children: [
          //               buildContainer("assets/star.png","High rating"),
          //               buildContainer("assets/correcticon.png","Verified"),
          //               buildContainer("assets/money.gif","Money saving"),
          //               buildContainer("assets/star.png","High rating"),
          //               buildContainer("assets/correcticon.png","Verified"),
          //               buildContainer("assets/money.gif","Money saving"),
          //             ],
          //           ),
          //         )
          //     ),
          //     SizedBox(height: 20,),
          //
          //     Row(
          //       children: [
          //         SizedBox(width: 20,),
          //         Text("About",style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500,color: Colors.black54),),
          //       ],
          //     ),
          //     SizedBox(height: 20,),
          //
          //     Padding(
          //
          //       padding:  EdgeInsets.only(left: 20,right: 10,top:  0),
          //       child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry."
          //           " Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, "
          //           "when an unknown printer took a galley of type and scrambled it to make a "
          //           "type specimen book.",textAlign: TextAlign.left,style: TextStyle(color: Colors.grey[500]),),
          //     ),
          //
          //
          //     SizedBox(height: 10,),
          //
          //     Padding(
          //       padding: const EdgeInsets.only(left: 20,right: 30),
          //       child: Row(
          //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //         children: [
          //           //SizedBox(width: 20,),
          //           Text("Work Area",style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500,color: Colors.black54),),
          //           Lottie.asset("assets/world.json",height: 50,width: 50,animate: true)
          //         ],
          //       ),
          //     ),
          //     SizedBox(height: 5,),
          //     Container(padding: EdgeInsets.only(left: 30,right: 30),width: MediaQuery.of(context).size.width*0.8,height: 130,child: ClipRRect(borderRadius: BorderRadius.circular(12),child: Image.asset("assets/location.jpeg",fit: BoxFit.cover,))),
          //
          //   ],
          // ),
          Positioned(bottom: 0,child: Container(height: 75,width: MediaQuery.of(context).size.width,color: Colors.white,
            child: Row(
              children: [
                Container(padding: EdgeInsets.only(top: 10,bottom: 10,left: 30),height: 75,width:MediaQuery.of(context).size.width*0.5 ,color: Colors.transparent,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Price",style: TextStyle(fontSize: 19,color: Colors.grey[700],fontWeight:FontWeight.w400 ),),
                      Row(
                        children: [
                          Text("\$20",style: TextStyle(fontSize: 19,color: Colors.grey[700],fontWeight:FontWeight.w400 ),),
                          Text("/hour",style: TextStyle(fontSize: 13,color: Colors.grey[700],fontWeight:FontWeight.w400 ),),

                        ],
                      )

                    ],
                  ),),
                Container(padding: EdgeInsets.only(top: 5,bottom: 5,right: 20),height: 75,width:MediaQuery.of(context).size.width*0.5 ,color: Colors.transparent,
                child: ElevatedButton(
                  onPressed: (){},
                  child: Text("Hire Now",style: TextStyle(fontSize: 19,color: Colors.white,fontWeight:FontWeight.w500 ),),
                  style: ElevatedButton.styleFrom(primary: Colors.blue[900],shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
                ),),


              ],
            ),))

        ],
      ) ,
    );
  }
  Container buildContainer( String image , String title ) {
    return Container(height: 30,margin: EdgeInsets.only(left: 10,right: 10),padding: EdgeInsets.only(left: 10,right: 10),decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(15) ),
      child: Row(
        children: [
          Image.asset(image,height: 20,width: 20,),
          SizedBox(width: 5,),
          Text(title)
        ],
      ),);
  }

}
