/*import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  get children => null;

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red ,
        leading: Icon(
          Icons.menu,
        ),
        title: Text(
            "Abdo Redaa "
        ),
        actions: [
          Icon(
              Icons.notification_important
          ),
        ],
      ),
      body:Column(
       //   color:Colors.black,
       //   width:double.infinity,
       //   child: Column(
  //     crossAxisAlignment:CrossAxisAlignment.center,
         children:[
           Image(
              image: NetworkImage('https://img.freepik.com/free-psd/flower-top-view_187299-10221.jpg?w=2000'
              ),
          ),

 /*       Container(
          color: Colors.teal,
          child:Text("AbdoReda 1",),
        ),
        Container(
          color: Colors.red,
          child:Text("AbdoReda 2",),
        ),
        Container(
          color: Colors.green,
          child:Text("AbdoReda 3",),   */
        ]
  ),
   );
  }
}
*/
/*
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<Data> itemdata = [
    Data(
        text: " Online Visit",
        imageUrl: "images\istockphoto-1177145926-612x612.jpg"),
    Data(
        text: "  Clinic Visit",
        imageUrl: "images\istockphoto-1177145926-612x612.jpg"),
    Data(
        text: " Ambulance",
        imageUrl: "images\istockphoto-1177145926-612x612.jpg"),

  ];

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: Size.height / 8,
              width: Size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Icon(
                      Icons.menu,
                      color: Color.fromRGBO(55, 82, 178, 1),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      height: Size.height / 12,
                      width: Size.width / 12,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                'images\istockphoto-1177145926-612x612.jpg')),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: Size.width / 1.1,
              child: const Text(
                " Appointement With  /n A Doctor",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30.0),
              child: SearchField(Size),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: SizedBox(
                width: Size.width / 1.1,
                child: const Text(
                  "How Can We Help You",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            helpwidgeBuilder(Size),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: SizedBox(
                width: Size.width / 1.1,
                child: const Text(
                  "Popular Categries",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            CategriesBuilder(Size),
          ],
        ),
      ),
    );
  }

  Widget CategriesBuilder(Size size) {
    return SizedBox(
      height: size.height / 5,
      width: size.width,
      child: Row(
        children: [
          CategriesItems(size, "images\istockphoto-1177145926-612x612.jpg",
              "Cordeology", Colors.white),
          CategriesItems(
            size,
            "images\istockphoto-1177145926-612x612.jpg",
            "Pulmonology",
            const Color.fromRGBO(55, 82, 178, 1),
          ),
        ],
      ),
    );
  }

  Widget CategriesItems(Size size, String imageUrl, String Text, Color color) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(15),
        color: color,
        child: Container(
          height: size.height / 5,
          width: size.width / 2.5,
          decoration: const BoxDecoration(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: size.height / 12,
                width: size.width / 12,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(imageUrl),
                  ),
                ),
              ),

              //  Text('xs',
              //  style:TextStyle(
              //   fontSize:  16,
              //   fontWeight: FontWeight.w500,
              //   color: color !=Colors.white ?Colors.white: Colors.black,
              //  ),
              //   ),
            ],
          ),
        ),
      ),
    );
  }

  Widget helpwidgeBuilder(Size size) {
    return SizedBox(
      height: size.height / 7,
      width: size.width,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: itemdata.length,
          itemBuilder: (context, index) {
            return items(size, index);
          }),
    );
  }

  Widget items(Size size, int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(20),
        child: SizedBox(
          height: size.height / 8,
          width: size.width / 3.5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: size.height / 12,
                width: size.width / 12,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(itemdata[index].imageUrl))),
              ),
              Text(
                itemdata[index].text,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget SearchField(Size size) {
    return Container(
      height: size.height / 12,
      width: size.width / 1.18,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey[300],
      ),
      child: Row(
        children: [
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Icon(Icons.search),
          ),
          const Expanded(
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Search Your Symptoms ..."),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              height: size.height / 12,
              width: size.width / 28,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(55, 82, 178, 1),
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Data {
  final String imageUrl, text;
  Data({required this.imageUrl, required this.text});
}
*/
