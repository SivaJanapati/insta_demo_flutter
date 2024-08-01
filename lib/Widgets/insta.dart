import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class Insta extends StatelessWidget {
  const Insta({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        centerTitle: false,
        backgroundColor: Colors.white,
        title: Text(
          'Nazriya',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 20,
          ),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              height: 200,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.fromLTRB(18, 8, 5, 8),
                    width: 170,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/images/naz.jpg'),
                          radius: 60,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Nazriya',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          'Actress/Kerala',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                profileDetails('978', 'Posts'),
                                SizedBox(
                                  width: 5,
                                ),
                                profileDetails('8.2M', 'Followers'),
                                SizedBox(
                                  width: 5,
                                ),
                                profileDetails('571', 'Following'),
                              ],
                            ),
                          ),
                          SizedBox(height: 15),
                          Container(
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    height: 45,
                                    child: ElevatedButton(
                                      style: ButtonStyle(
                                        backgroundColor:
                                            WidgetStateProperty.all(
                                                Colors.blue),
                                      ),
                                      onPressed: () {},
                                      child: Text(
                                        "Follow",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Container(
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.blue,
                                      width: 2,
                                    ),
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(
                                    Icons.keyboard_arrow_down,
                                    color: Colors.blue,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.all(3),
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/naz1.jpg'),
                              fit: BoxFit.cover),
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.purple),
                          color: Colors.orange,
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text('Random'),
                    ],
                  );
                },
              ),
            ),
            Container(
              height: 50,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Divider(
                    height: 2,
                    thickness: 2,
                    color: Colors.grey[400],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 40,
                        child: Center(
                          child: Text(
                            "Email",
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        "|",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.grey[400],
                        ),
                      ),
                      SizedBox(
                        height: 40,
                        child: Center(
                          child: Text(
                            "Site",
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        "|",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.grey[400],
                        ),
                      ),
                      SizedBox(
                        height: 40,
                        child: Center(
                          child: Text(
                            'Phone',
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    height: 2,
                    thickness: 2,
                    color: Colors.grey[400],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,mainAxisExtent: 150),
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                       image: DecorationImage(image: AssetImage('assets/images/naz2.jpg'),fit:BoxFit.cover ),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.shade200,
                      ),
                      margin:EdgeInsets.all(3),
                      height:100,
                      width:100,
                      
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget profileDetails(String text1, String text2) {
  return Column(
    children: [
      Text(
        text1,
        style: TextStyle(fontSize: 20),
      ),
      Text(
        text2,
        style: TextStyle(fontSize: 14),
      ),
    ],
  );
}
