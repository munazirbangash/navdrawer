import 'package:flutter/material.dart';

class NavDrawer extends StatefulWidget {
  const NavDrawer({Key? key}) : super(key: key);

  @override
  State<NavDrawer> createState() => _NavDrawerState();
}

class _NavDrawerState extends State<NavDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text("Munazir Rehman",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold)),
            accountEmail: const Text("munazirbangash11@gmail.com",style: TextStyle(color: Colors.white,fontSize: 16)),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  "https://cdn-icons-png.flaticon.com/512/3135/3135715.png",
                  width: 100,
                  height: 100,
                ),
              ),
            ),
            decoration: const BoxDecoration(
              color: Colors.green,
              image: DecorationImage(
                  image: NetworkImage(
                      "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/840d7fa9-0de0-4de2-9f6d-d140669c3572/d84tclz-67d806f1-08c2-480a-87b4-115c5c7b377e.png/v1/fill/w_520,h_320,q_80,strp/space_portal_by_j_zino_d84tclz-fullview.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MzIwIiwicGF0aCI6IlwvZlwvODQwZDdmYTktMGRlMC00ZGUyLTlmNmQtZDE0MDY2OWMzNTcyXC9kODR0Y2x6LTY3ZDgwNmYxLTA4YzItNDgwYS04N2I0LTExNWM1YzdiMzc3ZS5wbmciLCJ3aWR0aCI6Ijw9NTIwIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmltYWdlLm9wZXJhdGlvbnMiXX0.zgQk9krmiE0pvZwRtwWEaqv0iBHmyTc-baJDzWbA-ME"),
                  fit: BoxFit.cover),
            ),
          ),
          const ListTile(
            leading: Icon(Icons.favorite,color: Colors.teal,),
            title: Text("Favourites"),
          ),
          const ListTile(
            leading: Icon(Icons.people,color: Colors.teal,),
            title: Text("Friends"),
          ),
          const ListTile(
            leading: Icon(Icons.share,color: Colors.teal,),
            title: Text("Share"),
          ),
          ListTile(
            leading: const Icon(Icons.notifications,color: Colors.teal,),
            title: const Text("Request"),
            trailing: ClipOval(
              child: Container(
                color: Colors.red,
                width: 20,
                height: 20,
                child: const Center(
                    child: Text('10',
                        style: TextStyle(color: Colors.white, fontSize: 12)
                    )
                ),
              ),
            ),
          ),
          const Divider(),
          const ListTile(
            leading: Icon(Icons.settings,color: Colors.teal,),
            title: Text("Settings"),
          ),
          const ListTile(
            leading: Icon(Icons.description,color: Colors.teal,),
            title: Text("Privacy"),
          ),
          const Divider(),
          const ListTile(
            leading: Icon(Icons.exit_to_app,color: Colors.teal,),
            title: Text("Exit"),
          ),
        ],
      ),
    );
  }
}
