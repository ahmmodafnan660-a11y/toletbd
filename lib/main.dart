import 'package:flutter/material.dart';

void main() { runApp(ToLetBDApp()); }

class ToLetBDApp extends StatefulWidget {
  @override
  _ToLetBDAppState createState() => _ToLetBDAppState();
}

class _ToLetBDAppState extends State<ToLetBDApp> {
  bool isBangla = true;
  int _index = 0;
  String search = "";
  String location = "Madaripur, Bangladesh";
  List<Map<String,String>> posts = [];
  List<Map<String,String>> saved = [];

  final titleC = TextEditingController();
  final priceC = TextEditingController();
  final distC = TextEditingController();
  final areaC = TextEditingController();
  final addrC = TextEditingController();
  final floorC = TextEditingController();
  final roomC = TextEditingController();
  final bathC = TextEditingController();
  String type = "বাসা ভাড়া";
  String postType = "ভাড়া";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text(isBangla ? "টু লেট বিডি" : "ToLetBD"),
          actions: [
            TextButton(onPressed:(){ setState(()=> isBangla = !isBangla); }, child: Text(isBangla ? "English" : "বাংলা", style: TextStyle(color: Colors.white))),
          ],
        ),
        body: _index == 0 ? homePage() : _index == 1 ? msgPage() : _index == 2 ? postPage() : _index == 3 ? savedPage() : ProfilePage(isBangla: isBangla),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _index,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.grey,
          onTap: (i){ setState(()=> _index = i); },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: isBangla ? "হোম" : "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.message), label: isBangla ? "মেসেঞ্জার" : "Messenger"),
            BottomNavigationBarItem(icon: Icon(Icons.add_circle), label: isBangla ? "সেল পোস্ট" : "Sell Post"),
            BottomNavigationBarItem(icon: Icon(Icons.bookmark), label: isBangla ? "সেভ" : "Save"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: isBangla ? "প্রোফাইল" : "Profile"),
          ],
        ),
      ),
    );
  }

  Widget homePage(){
    var filtered = posts.where((p)=> p['title']!.toLowerCase().contains(search.toLowerCase()) || p['dist']!.toLowerCase().contains(search.toLowerCase())).toList();
    return ListView(
      padding: EdgeInsets.all(12),
      children: [
        Text(isBangla ? "টু লেট বিডি" : "ToLetBD", style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: Colors.green)),
        Text("📍 $location - ${isBangla ? 'তোমার লোকেশন থেকে ঢুকছো' : 'You are from this location'}"),
        SizedBox(height: 10),
        Row(children: [
          Expanded(child: catBtn("🏠 ${isBangla ? 'ভাড়া' : 'Vara'}")),
          Expanded(child: catBtn("🏢 ${isBangla ? 'ফ্ল্যাট' : 'Flat'}")),
          Expanded(child: catBtn("🌍 ${isBangla ? 'জমি' : 'Jomi'}")),
          Expanded(child: catBtn("🏪 ${isBangla ? 'দোকান' : 'Dokan'}")),
        ]),
        SizedBox(height: 10),
        TextField(decoration: InputDecoration(hintText: isBangla ? "সার্চ - জেলা, এলাকা, ফ্ল্যাট, জমি..." : "Search - District, Flat, Jomi...", border: OutlineInputBorder(), prefixIcon: Icon(Icons.search)), onChanged: (v){ setState(()=> search = v); }),
        SizedBox(height: 10),
        Text(isBangla ? "৬৪ জেলা - সবাই চালাতে পারবে" : "64 District - All Bangladesh", style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold)),
        SizedBox(height: 10),
        if(filtered.isEmpty) Text(isBangla ? "কোনো পোস্ট নাই - তুমি প্রথম পোস্ট করো" : "No post yet - Be first"),
        ...filtered.map((p)=> Card(child: ListTile(title: Text(p['title']!), subtitle: Text("${p['dist']} - ${p['area']} - ${p['price']} টাকা - ${p['type']}"), trailing: IconButton(icon: Icon(Icons.bookmark_border), onPressed:(){ setState(()=> saved.add(p)); })))).toList(),
        SizedBox(height: 10),
        Container(padding: EdgeInsets.all(12), color: Colors.yellow[100], child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("💳 পেমেন্ট: 1 পোস্ট = 100 টাকা", style: TextStyle(fontWeight: FontWeight.bold)),
          Text("বিকাশ / নগদ: 01934187372"),
          Text("Boost লাগলে +100 টাকা"),
          Text("কমিশন: ভাড়া 1% | বিক্রি 3%"),
          Text("কমিশন না দিলে - নাম + নাম্বার Admin WhatsApp এ যাবে - 01934187372"),
          Text("2য় বার এই আইডি অ্যাপ ব্যবহার করতে পারবে না"),
        ])),
      ],
    );
  }

  Widget catBtn(String t){ return Container(margin: EdgeInsets.all(3), padding: EdgeInsets.all(8), decoration: BoxDecoration(color: Colors.green[100], borderRadius: BorderRadius.circular(10)), child: Center(child: Text(t))); }

  Widget msgPage(){
    return Center(child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text("💬 Messenger", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
      SizedBox(height: 10),
      Container(padding: EdgeInsets.all(12), margin: EdgeInsets.all(12), color: Colors.green[100], child: Text("আসসালামু আলাইকুম\nআমাদের সাথে সংযোগের জন্য আপনাকে ধন্যবাদ।\nAdmin চাইলে এড হতে পারবে।\nনাম্বার শুধু যে দিবে + Admin দেখবে।")),
      Text("ক্রেতা - বিক্রেতা এখানে কথা বলবে"),
      Text("High Security ✅ | 50 Lakh User Ready ✅"),
    ]));
  }

  Widget postPage(){
    return ListView(padding: EdgeInsets.all(12), children: [
      Text(isBangla ? "পোস্ট করো" : "Create Post", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
      SizedBox(height: 10),
      Row(children: [
        Expanded(child: ElevatedButton(onPressed:(){ setState(()=> postType="ভাড়া"); }, child: Text("ভাড়া"))),
        SizedBox(width: 8),
        Expanded(child: ElevatedButton(onPressed:(){ setState(()=> postType="বিক্রি"); }, child: Text("বিক্রি"))),
      ]),
      Text("পোস্ট টাইপ: $postType - টাইপ: $type"),
      DropdownButton<String>(value: type, isExpanded: true, items: ["বাসা ভাড়া","ফ্ল্যাট","দোকান","জমি","রিসোর্ট ভাড়া","বাসা বিক্রি"].map((e)=> DropdownMenuItem(value: e, child: Text(e))).toList(), onChanged: (v){ setState(()=> type=v!); }),
      TextField(controller: titleC, decoration: InputDecoration(labelText: "শিরোনাম / Title")),
      TextField(controller: priceC, decoration: InputDecoration(labelText: "ভাড়ার পরিমাণ / দাম - টাকা")),
      TextField(controller: distC, decoration: InputDecoration(labelText: "জেলা - District")),
      TextField(controller: areaC, decoration: InputDecoration(labelText: "এলাকা - Area")),
      TextField(controller: addrC, decoration: InputDecoration(labelText: "ঠিকানা - Address")),
      Row(children: [Expanded(child: TextField(controller: floorC, decoration: InputDecoration(labelText: "ফ্লোর"))), SizedBox(width: 8), Expanded(child: TextField(controller: roomC, decoration: InputDecoration(labelText: "রুম"))), SizedBox(width: 8), Expanded(child: TextField(controller: bathC, decoration: InputDecoration(labelText: "বাথরুম")))]),
      SizedBox(height: 15),
      Container(padding: EdgeInsets.all(12), color: Colors.yellow[100], child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text("💳 পেমেন্ট: 1 পোস্ট = 100 টাকা", style: TextStyle(fontWeight: FontWeight.bold)),
        Text("বিকাশ / নগদ: 01934187372"),
        Text("Boost লাগলে +100 টাকা"),
        Text("কমিশন: ভাড়া 1% | বিক্রি 3%"),
      ])),
      SizedBox(height: 10),
      ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.green), onPressed: (){
        if(titleC.text.isEmpty || priceC.text.isEmpty){ return; }
        setState(()=> posts.add({'title': titleC.text, 'price': priceC.text, 'dist': distC.text, 'area': areaC.text, 'type': type}));
        titleC.clear(); priceC.clear(); distC.clear(); areaC.clear(); addrC.clear();
        setState(()=> _index=0);
      }, child: Text("পোস্ট করো - 100 টাকা পেমেন্ট করে")),
      SizedBox(height: 10),
      Text("Login: Facebook / Number দিয়ে লগইন করতে হবে"),
      Text("Admin: 01934187372 ✅"),
      Text("High Security ✅ | 50 Lakh User Ready ✅"),
    ]);
  }

  Widget savedPage(){ return ListView(children: [Text("সেভ করা পোস্ট", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)), ...saved.map((p)=> ListTile(title: Text(p['title']!), subtitle: Text("${p['dist']} - ${p['price']}"))).toList()]); }
}

class ProfilePage extends StatelessWidget {
  final bool isBangla; ProfilePage({required this.isBangla});
  @override
  Widget build(BuildContext context){
    return Scaffold(appBar: AppBar(title: Text("প্রোফাইল")), body: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      CircleAvatar(radius: 40, child: Icon(Icons.person, size: 40)),
      SizedBox(height: 10), Text("Afnan - User", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
      Text("Madaripur, Bangladesh"),
      SizedBox(height: 10),
      Text("Login: Facebook / Number"),
      Text("Admin: 01934187372 ✅"),
      Text("High Security ✅ | 50 Lakh User Ready ✅"),
    ])));
  }
}
