import 'package:flutter/material.dart';

class dashboard extends StatefulWidget {
  const dashboard({super.key});

  @override
  State<dashboard> createState() => dashboardState();
}

class dashboardState extends State<dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: Column(
          children: [


            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 15,
              ),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  const Text(
                    "eWS",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),

                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.search,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),


            SizedBox(
              height: 190,

              child: ListView(
                scrollDirection: Axis.horizontal,

                children: [

                  newsCard(
                    "https://picsum.photos/id/1011/800/400",
                    "Digital Wallet Are The Killer App for Drizzy",
                  ),

                  newsCard(
                    "https://picsum.photos/id/1015/800/400",
                    "4 Surprising Things You Should Know",
                  ),

                ],
              ),
            ),

            const SizedBox(height: 15),


            Expanded(
              child: ListView(
                children: [

                  newsItem(
                    "https://picsum.photos/id/1025/300/200",
                    "Recently, there were many pieces about how the new technology is changing our lives.",
                    "Forbes.com",
                  ),

                  newsItem(
                    "https://picsum.photos/id/1035/300/200",
                    "Opinions expressed by entrepreneur contributors around the world.",
                    "Entrepreneur",
                  ),

                  newsItem(
                    "https://picsum.photos/id/1040/300/200",
                    "We, as a society, are now experiencing a major change in technology.",
                    "Cointelegraph",
                  ),

                  newsItem(
                    "https://picsum.photos/id/1043/300/200",
                    "Jacob from XenSpec is back with another interesting article.",
                    "Lowendbox",
                  ),

                  newsItem(
                    "https://picsum.photos/id/1062/300/200",
                    "Allen Farrington writes about the latest developments in technology.",
                    "Coindesk",
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }



  Widget newsCard(String image, String title) {
    return Container(
      width: 340,
      margin: const EdgeInsets.only(
        left: 15,
        right: 5,
      ),

      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),

        child: Stack(
          children: [

            // Image
            Image.network(
              image,
              width: 340,
              height: 190,
              fit: BoxFit.cover,
            ),

            // Dark overlay
            Container(
              width: 340,
              height: 190,
              color: Colors.black26,
            ),

            // Title
            Positioned(
              left: 12,
              bottom: 35,

              child: SizedBox(
                width: 270,

                child: Text(
                  title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,

                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            // Date
            const Positioned(
              left: 12,
              bottom: 10,

              child: Text(
                "May 24, 2020",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
            ),

            // Play button
            const Positioned(
              right: 12,
              bottom: 10,

              child: CircleAvatar(
                radius: 18,
                backgroundColor: Colors.white,

                child: Icon(
                  Icons.play_arrow,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }


 

  Widget newsItem(
      String image,
      String title,
      String source,
      ) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 8,
      ),

      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [

          // IMAGE
          ClipRRect(
            borderRadius: BorderRadius.circular(12),

            child: Stack(
              children: [

                Image.network(
                  image,
                  width: 130,
                  height: 100,
                  fit: BoxFit.cover,
                ),

                Positioned.fill(
                  child: Center(
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.white,

                      child: Icon(
                        Icons.play_arrow,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(width: 15),

          // TEXT
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [

                Text(
                  title,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,

                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 10),

                Row(
                  children: [

                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 6,
                      ),

                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(5),
                      ),

                      child: Text(
                        source,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 11,
                        ),
                      ),
                    ),

                    const SizedBox(width: 10),

                    const Text(
                      "May 24, 2020",
                      style: TextStyle(
                        fontSize: 11,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}