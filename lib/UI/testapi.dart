import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import '../Service/api.dart';
import 'package:plant/Models/tumbuhan.dart';

class APIPage extends StatefulWidget {
  const APIPage({Key? key}) : super(key: key);

  @override
  State<APIPage> createState() => APIPageState();
}

class APIPageState extends State<APIPage> {
  late Future<Object> _packages;
  @override
  void initState() {
    //TODO implement initState
    super.initState();
    // _packages = APIstatic.getPackages() as Future<Packages>;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // child: Text("CRUD"),
        appBar: AppBar(title: Text('CRUD')),
        body: FutureBuilder<List<Object>>(
          future: APIstatic.getPetanis(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else {
              List<Petanis>? listPetanis = snapshot.data?.cast<Petanis>();
              return Container(
                padding: EdgeInsets.all(8),
                child: ListView.builder(
                  itemCount: listPetanis?.length,
                  itemBuilder: (BuildContext context, int index) {
                    Petanis petanis = listPetanis![index];
                    return InkWell(
                      onTap: () {},
                      child: Container(
                        child: Row(
                          children: [
                            Image.network(
                              "https://s3-media2.fl.yelpcdn.com/bphoto/rvoHSr8kDwah43wVXHqmnw/ls.jpg",
                              width: 100,
                            ),
                            Text(petanis.nama as String),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              );
            }
            ;
          },
        ));
  }
}
