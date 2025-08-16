import 'package:flutter/material.dart';

class updates extends StatefulWidget {
  static const String id = 'updates';
  const updates({super.key});

  @override
  State<updates> createState() => _updatesState();
}

class _updatesState extends State<updates> {
  bool _showSearch = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title:
              (_showSearch)
                  ? TextFormField(
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.arrow_back),
                      fillColor: Colors.grey.shade100,
                      hintText: 'Search',
                      hintStyle: TextStyle(
                        fontFamily: 'RobotoSlab',
                        fontWeight: FontWeight.normal,
                      ),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  )
                  : Text('Updates'),
          centerTitle: false,
          actions: [
            IconButton(
              onPressed: () {
                setState(() {
                  _showSearch = !_showSearch;
                });
              },
              icon: Icon(Icons.search),
            ),
            PopupMenuButton(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              offset: Offset(0, 50),
              itemBuilder:
                  (context) => [
                    PopupMenuItem(
                      value: '1',
                      child: Text(
                        'Create channel',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 16,
                          fontFamily: 'RobotoSlab',
                          color: Colors.black87,
                        ),
                      ),
                    ),
                    PopupMenuItem(
                      value: '2',
                      child: Text(
                        'Status privacy',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 16,
                          fontFamily: 'RobotoSlab',
                          color: Colors.black87,
                        ),
                      ),
                    ),
                    PopupMenuItem(
                      value: '3',
                      child: Text(
                        'Settings',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 16,
                          fontFamily: 'RobotoSlab',
                          color: Colors.black87,
                        ),
                      ),
                    ),
                  ],
            ),
          ],
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Text(
                  'Status',
                  style: TextStyle(
                    color: Colors.black87,
                    fontFamily: 'RobotoSlab',
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: IconButton(
                      onPressed: () {},
                      icon: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(
                              'https://images.pexels.com/photos/31572535/pexels-photo-31572535/free-photo-of-close-up-portrait-of-a-british-shorthair-cat.jpeg?auto=compress&cs=tinysrgb&w=600',
                            ),
                          ),
                          Icon(
                            Icons.add_circle_rounded,
                            color: Colors.green.shade500,
                          ),
                        ],
                      ),
                    ),
                  ),
                  RichText(
                    textAlign: TextAlign.start,
                    text: TextSpan(
                      text: '\nMy status',
                      style: TextStyle(
                        color: Colors.black87,
                        fontFamily: 'RobotoSlab',
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                      ),
                      children: [
                        TextSpan(
                          text: '\nTab to add status update',
                          style: TextStyle(
                            color: Colors.grey.shade700,
                            fontFamily: 'RobotoSlab',
                            fontWeight: FontWeight.normal,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                child: Text(
                  'Recent updates',
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontFamily: 'RobotoSlab',
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Color(0xff4CAF50),
                            width: 3,
                          ),
                        ),
                        child: CircleAvatar(
                          radius: 25,
                          backgroundImage: NetworkImage(
                            'https://images.pexels.com/photos/25636722/pexels-photo-25636722/free-photo-of-portrait-of-cat.jpeg?auto=compress&cs=tinysrgb&w=600',
                          ),
                        ),
                      ),
                      title: Text(
                        'Meow',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'RobotoSlab',
                          color: Colors.black,
                          fontSize: 15.5,
                        ),
                      ),
                      subtitle: Text(
                        '6:24 pm',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontFamily: 'RobotoSlab',
                          color: Colors.grey.shade700,
                          fontSize: 14,
                        ),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                child: Text(
                  'Viewed updates',
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontFamily: 'RobotoSlab',
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.grey, width: 3),
                        ),
                        child: CircleAvatar(
                          radius: 25,
                          backgroundImage: NetworkImage(
                            'https://images.pexels.com/photos/25636722/pexels-photo-25636722/free-photo-of-portrait-of-cat.jpeg?auto=compress&cs=tinysrgb&w=600',
                          ),
                        ),
                      ),
                      title: Text(
                        'Meow',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'RobotoSlab',
                          color: Colors.black,
                          fontSize: 15.5,
                        ),
                      ),
                      subtitle: Text(
                        '6:24 pm',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontFamily: 'RobotoSlab',
                          color: Colors.grey.shade700,
                          fontSize: 14,
                        ),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Text(
                  'Channels',
                  style: TextStyle(
                    color: Colors.black87,
                    fontFamily: 'RobotoSlab',
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ),
                ),
              ),
              Divider(color: Colors.grey.shade200, thickness: 1),
            ],
          ),
        ),
      ),
    );
  }
}
