import 'package:flutter/material.dart';

void main() {
  runApp(Food());
}

class Food extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Find Your",
                  style: TextStyle(fontSize: 24),
                ),
                Text(
                  "Favorite Food",
                  style: TextStyle(fontSize: 24),
                ),
              ],
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.notifications_active),
              onPressed: () {},
            ),
          ],
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(height: 20),
          Container(
            color: Color.fromARGB(255, 209, 209, 209),
            width: double.infinity,
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.search,
                  ),
                  onPressed: () {
                    // Handle search button pressed
                  },
                ),
                Text("What do you want to order?"),
                IconButton(
                  icon: Icon(Icons.filter_alt),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 213, 212, 211),
                foregroundColor: Color.fromARGB(255, 66, 71, 61),
                padding: EdgeInsets.all(10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                  // side: BorderSide(color: Colors.red),
                ),
              ),
              child: Text(
                'Soup  x',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              "Popular Menu",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: ListView(
              children: [
                buildMenuItem(
                  "Herbal Pancake",
                  "\$7",
                  "Warung Herbal",
                  'https://s3-alpha-sig.figma.com/img/2a59/e19b/9108f564bea4664604119fa97296b74c?Expires=1715558400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=fblqyRthkrJREI4DYUYzcG7rCtdNtLsiNbqzo~x4ngFwsX6iSQdLh9GHX1fgq4jd56s1xoKeBYld6Agt~8F8lOxqMmVvyRJzSWHSopyuRiECSVKf3CbKjbX7E4tMKTPsIBAAOEVTeAbj4rav6COPskLqpq8lnUCtfdfDNJKCtzLtcQ2EXzZrk45WtMlL9j7q09k70FzwrkScDPuACJZgJEGFew3m3dEH1vdMhihPoVWEVznB9z7tdbhuscUxu3AGGA8arW4dOTOryuGNfGDdnUVSh9SjjnenmX2L7qraFMEn6U0GDFpPHCB-K1zrj9PIj9c1aPQ~Xvd~DwpsWGZWew__',
                ),
                buildMenuItem(
                  "Fruit Salad",
                  "\$5",
                  "Wijie Resto",
                  'https://s3-alpha-sig.figma.com/img/4b07/0072/91bdc0136d2f5b6e45552b2f0c4e4e3e?Expires=1715558400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=E6enpr28ayI1ys0gkEwIJlzjHLW7bV0xqg~a5S8LesMBERa3GQxZsoGdF8m9nrooSJYQAAJCQlg4ENTDobI9EEtvPWTEGVdDqEmYfIqioVj~R6Jf9L9uSU~t-G4reQPk~HigLBb3o8cq5xdFUMm9OmjDoW0B2MY7X7kcwTQ72lRDEAg2Ps27x~UJ4dD90FWfQ8nG-T~tNVXOfIBDjzYIFz-lTxNQU4HYCmy8f-G8qhtPXFFW~p3vVr7avasisjraFuxfug1K5534QGxE11O7dkMFq6VTN5L1koixDdiXewN5zmG~4YxhquPABz0YrsBj2U1vjQPuFZb8G8JBC3oWpg__',
                ),
                buildMenuItem(
                  "Green Noddle",
                  "\$15",
                  "Noodle Home",
                  'https://s3-alpha-sig.figma.com/img/05a6/cd94/19ccced53502306f1dbcc697b87862e3?Expires=1715558400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=o8S~fXf7lNp0DDxiwF9skt6BbOab4hmBXLCbVaorYR9hfaKV~MUv9GYEBct7WdtmIeag3n4fXfaRhB~4H8cpj2oD6uL~awkaIhqb81ntjNFslIpAk~jtr0OXvr2PN7naRZ1b9dY4dxP2U7MvYUGIfS~DJXqs-bPNh~gCqCpUoFJKPxUKaIvwf27ScPbSrpecjsAx4vuvNtyVw7kQtFC4kCQ6bvSUwkzzzVdAhMkjSB9SCrYIQR~BumO3f8RTrfZNVzUJzia3iN9ITwnCk~JSCqjbY1R0y3icIp7BF13SR49ylFr8jPzPmjhlvXQpA3vTVTk4hkcH0Y9mXW6j6It77A__',
                ),
              ],
            ),
          ),
        ]),
        bottomNavigationBar: BottomAppBar(
          color: const Color.fromRGBO(255, 255, 255, 1),
          shadowColor: const Color.fromRGBO(0, 0, 0, 0.25),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Text(''),
                Container(
                  width: 70,
                  child: IconButton(
                    icon: Icon(
                      Icons.home,
                      color: Color(0x79075D0C),
                    ),
                    onPressed: () {},
                  ),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 146, 230, 149),
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.person_2_sharp,
                    size: 27,
                    color: Color.fromRGBO(11, 187, 105, 1),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.shopping_cart,
                    size: 27,
                    color: Color.fromRGBO(11, 187, 105, 1),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.chat_rounded,
                    size: 27,
                    color: Color.fromRGBO(11, 187, 105, 1),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildMenuItem(
      String title, String price, String restaurant, String imageUrl) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border:
              Border.all(color: Color.fromARGB(255, 221, 221, 221), width: 5),
        ),
        child: Row(
          children: [
            Container(
              width: 80,
              height: 90,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                image: DecorationImage(
                  image: NetworkImage(imageUrl),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title),
                Text(
                  restaurant,
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            Spacer(),
            Text(
              price,
              style: TextStyle(
                fontSize: 30,
                color: Colors.orange,
              ),
            ),
            SizedBox(width: 16),
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
