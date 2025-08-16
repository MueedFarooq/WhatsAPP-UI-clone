import 'package:flutter/material.dart';

class chats_sc extends StatefulWidget {
  static const String id = 'chats';
  const chats_sc({super.key});

  @override
  State<chats_sc> createState() => _chats_scState();
}

class _chats_scState extends State<chats_sc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'WhatsApp',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: Color(0xff25D366),
          ),
        ),
        centerTitle: false,
        actions: [
          Icon(Icons.camera_alt_outlined),
          PopupMenuButton(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            offset: Offset(0, 40),
            itemBuilder:
                (context) => [
              PopupMenuItem(
                value: '1',
                child: Text(
                  'New group',
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
                  'New broadcast',
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
                  'Linked devices',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 16,
                    fontFamily: 'RobotoSlab',
                    color: Colors.black87,
                  ),
                ),
              ),
              PopupMenuItem(
                value: '4',
                child: Text(
                  'Starred Massages',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 16,
                    fontFamily: 'RobotoSlab',
                    color: Colors.black87,
                  ),
                ),
              ),
              PopupMenuItem(
                value: '5',
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextFormField(
                textAlign: TextAlign.start,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search,),
                fillColor:Colors.grey.shade100,
                hintText: 'Ask Meta Ai or Search',
                hintStyle: TextStyle(fontFamily: 'RobotoSlab',fontWeight: FontWeight.normal),
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
            ),
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
            child: Row(
              children: [
                Icon(Icons.archive_outlined,color: Colors.grey.shade700,),
                SizedBox(width: 20,),
                Text('Archived',style: TextStyle(
                  color: Colors.grey.shade700,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'RobotoSlab'
                ),)
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context,index){
                  return (index < 20&& index %2 ==0) ?
                  ListTile(
                    leading: CircleAvatar(
                      radius: 25,
                      backgroundImage: (index < 10 && index %2 ==0) ? NetworkImage('https://images.pexels.com/photos/29524213/pexels-photo-29524213/free-photo-of-cat-gazing-out-of-sunlit-window.jpeg?auto=compress&cs=tinysrgb&w=400'):
                      NetworkImage('https://images.pexels.com/photos/15267836/pexels-photo-15267836/free-photo-of-cat-looking-up.jpeg?auto=compress&cs=tinysrgb&w=600')
                      ,
                    ),
                    title: Text('Zero',style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontFamily: 'RobotoSlab',
                        color: Colors.black,
                        fontSize: 15.5
                    )),
                    subtitle: Text('Hy I am using Whatsapp',style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontFamily: 'RobotoSlab',
                        color: Colors.grey.shade700,
                        fontSize: 14
                    )),
                    trailing: Text('5:32',style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontFamily: 'RobotoSlab',
                        color: Colors.grey.shade700,
                        fontSize: 11
                    )),
                  ) :
                  ListTile(
                    leading: CircleAvatar(
                      radius: 25,
                      backgroundImage: (index < 10 && index %2 ==0) ? NetworkImage('https://images.pexels.com/photos/29524213/pexels-photo-29524213/free-photo-of-cat-gazing-out-of-sunlit-window.jpeg?auto=compress&cs=tinysrgb&w=400'):
                      NetworkImage('https://images.pexels.com/photos/15267836/pexels-photo-15267836/free-photo-of-cat-looking-up.jpeg?auto=compress&cs=tinysrgb&w=600')
                      ,
                    ),
                    title: Text('Jhon',style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontFamily: 'RobotoSlab',
                        color: Colors.black,
                        fontSize: 15.5
                    )),
                    subtitle: Text('Hy how are you doing',style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontFamily: 'RobotoSlab',
                        color: Colors.grey.shade700,
                        fontSize: 14
                    )),
                    trailing: Text('Yesterday',style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: 'RobotoSlab',
                      color: Colors.grey.shade700,
                      fontSize: 11
                    ),),
                  );
                }),
          ),
          Divider(color: Colors.grey.shade200,thickness: 1,)
        ],
      ),

    );

  }
}
