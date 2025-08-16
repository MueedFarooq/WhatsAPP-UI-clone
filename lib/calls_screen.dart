import 'package:flutter/material.dart';

class calls extends StatefulWidget {
  static const String id = 'calls';
  const calls({super.key});

  @override
  State<calls> createState() => _callsState();
}
bool _showSearch= false;
class _callsState extends State<calls> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: (_showSearch) ? TextFormField(
          textAlign: TextAlign.start,
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.arrow_back),
            fillColor:Colors.grey.shade100,
            hintText: 'Search',
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
        ):Text('Calls'),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: (){
              setState(() {
                _showSearch =! _showSearch;
              });
            },
            icon: Icon(Icons.search,),
          ),
          PopupMenuButton(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              offset: Offset(0, 50),
              itemBuilder: (context) =>[
                PopupMenuItem(value: '1',child: Text(
                  'Clear call log',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 16,
                    fontFamily: 'RobotoSlab',
                    color: Colors.black87,
                  ),
                )),
                PopupMenuItem(value: '2',child: Text(
                  'Settings',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 16,
                    fontFamily: 'RobotoSlab',
                    color: Colors.black87,
                  ),
                )),
              ] )
        ],
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text('Favourites',style: TextStyle(
                  color: Colors.black87,
                  fontFamily: 'RobotoSlab',
                  fontWeight: FontWeight.w500,
                  fontSize: 20
              ),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: IconButton(onPressed: (){}, icon: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.green.shade500
                          ),
                        ),
                        Icon(Icons.favorite,size: 22,color: Colors.white,)

                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                    child: Text('Add favorite',style: TextStyle(
                        color: Colors.black87,
                        fontFamily: 'RobotoSlab',
                        fontWeight: FontWeight.w500,
                        fontSize: 18
                    ),),
                  ),
                ],
              )),
            ),
            Padding(padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text('Recent',style: TextStyle(
                color: Colors.black87,
                fontFamily: 'RobotoSlab',
                fontWeight: FontWeight.w500,
                fontSize: 20
            ),)

            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 20,
                  itemBuilder: (context,index){
                    return (index < 20&& index %2 ==0) ?
                    ListTile(
                      leading: CircleAvatar(
                        radius: 20,
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
                      subtitle:(index >10 && index %2 ==0 )?
                      Row(children: [Icon(Icons.call_made_outlined,color: Colors.green,size: 16,),Text('Yesterday,11:02 pm',style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontFamily: 'RobotoSlab',
                          color: Colors.grey.shade700,
                          fontSize: 14
                      )),],)
                          :
                      Row(children: [Icon(Icons.call_made_outlined,color: Colors.red,size: 16,),Text('Yesterday,11:02 pm',style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontFamily: 'RobotoSlab',
                          color: Colors.grey.shade700,
                          fontSize: 14
                      )),],),
                      trailing: Icon(Icons.call_outlined,size: 25,color: Colors.black,),
                    )
                        :
                    ListTile(
                      leading: CircleAvatar(
                        radius: 20,
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
                      subtitle: Row(
                        children: [
                        Icon(Icons.call_made_outlined,color: Colors.green,size: 16,),
                        Text('21 march, 4:36',style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontFamily: 'RobotoSlab',
                          color: Colors.grey.shade700,
                          fontSize: 14
                      )),
                      ],),
                      trailing: Icon(Icons.video_call_outlined,size: 25,color: Colors.black,)
                    );
                  }),
            ),
            Divider(color: Colors.grey.shade200,thickness: 1,)
          ],
        ),
      ),

    );
  }
}
