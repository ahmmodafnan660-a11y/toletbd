import 'package:flutter/material.dart';
void main() => runApp(ToLetBDApp());

class ToLetBDApp extends StatefulWidget {
  @override
  State<ToLetBDApp> createState() => _ToLetBDAppState();
}

class _ToLetBDAppState extends State<ToLetBDApp> {
  bool isBangla = true;
  bool isLoggedIn = false;
  int pageIndex = 0;
  String selectedJela = "All - সব জেলা";
  String searchText = "";
  String postType = "Vara"; // Vara / Bikri

  List<String> jelaList = [
    "All - সব জেলা",
    "Dhaka - ঢাকা", "Gazipur - গাজীপুর", "Narayanganj - নারায়ণগঞ্জ", "Tangail - টাঙ্গাইল", "Manikganj - মানিকগঞ্জ", "Munshiganj - মুন্সিগঞ্জ", "Narsingdi - নরসিংদী", "Faridpur - ফরিদপুর", "Madaripur - মাদারীপুর", "Gopalganj - গোপালগঞ্জ", "Rajbari - রাজবাড়ী", "Shariatpur - শরীয়তপুর", "Kishoreganj - কিশোরগঞ্জ",
    "Chattogram - চট্টগ্রাম", "Cox's Bazar - কক্সবাজার", "Cumilla - কুমিল্লা", "Chandpur - চাঁদপুর", "Feni - ফেনী", "Noakhali - নোয়াখালী", "Lakshmipur - লক্ষ্মীপুর", "Brahmanbaria - ব্রাহ্মণবাড়িয়া", "Bandarban - বান্দরবান", "Rangamati - রাঙ্গামাটি", "Khagrachari - খাগড়াছড়ি",
    "Rajshahi - রাজশাহী", "Natore - নাটোর", "Naogaon - নওগাঁ", "Chapainawabganj - চাঁপাইনবাবগঞ্জ", "Pabna - পাবনা", "Sirajganj - সিরাজগঞ্জ", "Bogra - বগুড়া", "Joypurhat - জয়পুরহাট",
    "Khulna - খুলনা", "Bagerhat - বাগেরহাট", "Satkhira - সাতক্ষীরা", "Jessore - যশোর", "Narail - নড়াইল", "Magura - মাগুরা", "Jhenaidah - ঝিনাইদহ", "Kushtia - কুষ্টিয়া", "Meherpur - মেহেরপুর", "Chuadanga - চুয়াডাঙ্গা",
    "Barishal - বরিশাল", "Bhola - ভোলা", "Patuakhali - পটুয়াখালী", "Pirojpur - পিরোজপুর", "Barguna - বরগুনা", "Jhalokathi - ঝালকাঠি",
    "Sylhet - সিলেট", "Moulvibazar - মৌলভীবাজার", "Habiganj - হবিগঞ্জ", "Sunamganj - সুনামগঞ্জ",
    "Rangpur - রংপুর", "Kurigram - কুড়িগ্রাম", "Gaibandha - গাইবান্ধা", "Nilphamari - নীলফামারী", "Lalmonirhat - লালমনিরহাট", "Dinajpur - দিনাজপুর", "Thakurgaon - ঠাকুরগাঁও", "Panchagarh - পঞ্চগড়",
    "Mymensingh - ময়মনসিংহ", "Netrokona - নেত্রকোনা", "Jamalpur - জামালপুর", "Sherpur - শেরপুর"
  ];

  List<String> propertyTypesVara = ["বাসা ভাড়া - Basa", "ফ্ল্যাট ভাড়া - Flat", "দোকান ভাড়া - Dokan", "রিসোর্ট ভাড়া - Resort", "ফ্লোর ভাড়া - Floor", "অফিস ভাড়া - Office"];
  List<String> propertyTypesBikri = ["ফ্ল্যাট বিক্রি - Flat", "দোকান বিক্রি - Dokan", "জমি বিক্রি - Jomi", "বাসা বিক্রি - Basa", "বাড়ি বিক্রি - Bari"];
  List<String> roomList = ["1 Room", "2 Room", "3 Room", "4 Room", "5+ Room"];
  List<String> bathList = ["1 Bathroom", "2 Bathroom", "3 Bathroom", "4+ Bathroom"];
  List<String> floorList = ["1st Floor", "2nd Floor", "3rd Floor", "4th Floor", "5th+ Floor", "Ground Floor"];

  List<Map<String,String>> allProperties = [
    {"jela": "Madaripur - মাদারীপুর", "type": "বাসা ভাড়া", "price": "৳১২,০০০ / মাস", "details": "২ রুম • ১ বাথ • ২য় তলা • ৭৫০ sqft", "loc": "মাদারীপুর সদর"},
    {"jela": "Dhaka - ঢাকা", "type": "ফ্ল্যাট ভাড়া", "price": "৳২৫,০০০ / মাস", "details": "৩ রুম • ২ বাথ • ৫ম তলা • ১২০০ sqft", "loc": "মিরপুর, ঢাকা"},
    {"jela": "Chattogram - চট্টগ্রাম", "type": "দোকান বিক্রি", "price": "৳৩০,০০,০০০", "details": "১ রুম • ১ বাথ • গ্রাউন্ড ফ্লোর", "loc": "আগ্রাবাদ"},
    {"jela": "Rajshahi - রাজশাহী", "type": "জমি বিক্রি", "price": "৳১৫,০০,০০০", "details": "৫ শতাংশ • রাজশাহী", "loc": "সাহেব বাজার"},
  ];

  Map<String, Map<String, String>> L = {
    'bn': {
      'title': '🏠 টু লেট বিডি - ৬৪ জেলা',
      'sub': 'ভাড়া | ক্রয় | বিক্রয় | ৬৪ জেলা | ৫০ লাখ ইউজার',
      'ver': 'PLAY STORE READY - 1.0.4 - FINAL 12 REQ',
      'pay': '💰 PAYMENT 01934187372 - bKash/Nagad',
      'bkash': 'পোস্ট ফি ১০০ টাকা | বুস্ট ১০০ টাকা | ৬৪ জেলা Active',
      'loc': '📍 Location: ON - ',
      'locOn': 'লোকেশন ON আছে ✅ - ৬৪ জেলা',
      'guest': 'Guest Login - ৬৪ জেলা দেখুন',
      'fb': 'Facebook দিয়ে Login',
      'num': 'Number দিয়ে Login - High Security',
      'sec': '🔒 HIGH SECURITY - শুধু Number - Admin দেখবে ✅',
      'google': '৫০ লাখ ইউজার রেডি - High Security',
      'privacy': 'Privacy Policy',
      'terms': 'Terms',
      'contact': 'Admin: 01934187372 WhatsApp | Madaripur',
      'search': 'জেলা, এলাকা, ভাড়া, জমি খুঁজুন... ৬৪ জেলা',
      'vara': '🏠 ভাড়া',
      'flat': '🏢 ফ্ল্যাট',
      'jomi': '🌍 জমি',
      'dokan': '🏪 দোকান',
      'featured': 'Featured - ',
      'seeAll': 'সব দেখুন >',
      'home': 'Home',
      'msg': 'Messenger',
      'sell': 'Sell Post',
      'save': 'Save',
      'profile': 'Profile',
      'postTitle': 'বাড়ি ভাড়া/বিক্রি পোস্ট করুন - ৬৪ জেলা',
      'postSub': '১০০ টাকা পোস্ট ফি - ৬৪ জেলা - ৫০ লাখ ইউজার রেডি',
      'postBtn': 'পোস্ট করুন - 100 Taka Pay 01934187372',
      'msgTitle': 'Messenger - ক্রেতা বিক্রেতা আলোচনা',
      'autoMsg': 'আসসালামু আলাইকুম\nআমাদের সাথে সংযোগের জন্য আপনাকে ধন্যবাদ।\nআপনি কোন জেলা থেকে বলছেন? ভাড়া/ক্রয়/বিক্রয়?\nAdmin: 01934187372 WhatsApp এ আছে।\nNumber শুধু আপনি আর Admin দেখবে - High Security।',
      'saveTitle': 'Saved - 64 Jela',
      'profileTitle': 'Profile',
      'high': 'High Security • 50 Lakh+ User • 64 Jela • Admin 01934187372',
      'comm': 'Commission: ভাড়া ১% | বিক্রি ৩% | না দিলে ID Block + WhatsApp Admin',
      'logout': 'Logout',
      'jelaSelect': 'জেলা সিলেক্ট করুন - ৬৪ জেলা',
      'varaTab': 'ভাড়া পোস্ট',
      'bikriTab': 'বিক্রি পোস্ট',
    },
    'en': {
      'title': '🏠 To Let BD - 64 Jela',
      'sub': 'Vara | Buy | Sell | 64 Jela | 50 Lakh User',
      'ver': 'PLAY STORE READY - 1.0.4 - FINAL 12 REQ',
      'pay': '💰 PAYMENT 01934187372 - bKash/Nagad',
      'bkash': 'Post Fee 100 Taka | Boost 100 Taka | 64 Jela Active',
      'loc': '📍 Location: ON - ',
      'locOn': 'Location ON ✅ - 64 Jela',
      'guest': 'Guest Login - See 64 Jela',
      'fb': 'Facebook Login',
      'num': 'Number Login - High Security',
      'sec': '🔒 HIGH SECURITY - Number Only Admin See ✅',
      'google': '50 Lakh User Ready - High Security',
      'privacy': 'Privacy Policy',
      'terms': 'Terms',
      'contact': 'Admin: 01934187372 WhatsApp | 64 Jela',
      'search': 'Search Jela, Elaka, Vara, Jomi... 64 Jela',
      'vara': '🏠 Vara',
      'flat': '🏢 Flat',
      'jomi': '🌍 Jomi',
      'dokan': '🏪 Dokan',
      'featured': 'Featured - ',
      'seeAll': 'See All >',
      'home': 'Home',
      'msg': 'Messenger',
      'sell': 'Sell Post',
      'save': 'Save',
      'profile': 'Profile',
      'postTitle': 'Post Vara/Bikri - 64 Jela',
      'postSub': '100 Taka Fee - 64 Jela - 50 Lakh User Ready',
      'postBtn': 'Post Now - 100 Taka Pay 01934187372',
      'msgTitle': 'Messenger - Buyer Seller Chat',
      'autoMsg': 'As-salamu Alaikum\nThank you for connecting with us.\nWhich Jela? Vara/Buy/Sell?\nAdmin: 01934187372 WhatsApp active.\nNumber only you & Admin can see - High Security.',
      'saveTitle': 'Saved - 64 Jela',
      'profileTitle': 'Profile',
      'high': 'High Security • 50 Lakh+ User • 64 Jela • Admin 01934187372',
      'comm': 'Commission: Vara 1% | Sell 3% | No Commission = ID Block + WhatsApp Admin',
      'logout': 'Logout',
      'jelaSelect': 'Select Jela - 64 Jela',
      'varaTab': 'Vara Post',
      'bikriTab': 'Bikri Post',
    }
  };

  String t(String k) => L[isBangla ? 'bn' : 'en']![k] ?? k;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: isLoggedIn ? mainScaffold() : loginPage());
  }

  Widget loginPage() {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(height: 10),
              Text(t('title'), style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.green), textAlign: TextAlign.center),
              Text(t('sub'), textAlign: TextAlign.center, style: TextStyle(fontSize: 12)),
              Text(t('ver'), style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold, fontSize: 10)),
              SizedBox(height: 12),
              Container(padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6), decoration: BoxDecoration(color: Colors.green, borderRadius: BorderRadius.circular(20)), child: Text(t('locOn'), style: TextStyle(color: Colors.white, fontSize: 11))),
              SizedBox(height: 12),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: isBangla ? Colors.green : Colors.grey.shade300), onPressed: () => setState(() => isBangla = true), child: Text("বাংলা", style: TextStyle(color: isBangla ? Colors.white : Colors.black))),
                SizedBox(width: 10),
                ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: !isBangla ? Colors.green : Colors.grey.shade300), onPressed: () => setState(() => isBangla = false), child: Text("English", style: TextStyle(color: !isBangla ? Colors.white : Colors.black))),
              ]),
              SizedBox(height: 15),
              Text("🔐 Login - Facebook / Number - High Security", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
              SizedBox(height: 10),
              SizedBox(width: double.infinity, child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.green, padding: EdgeInsets.symmetric(vertical: 14)), onPressed: () => setState(() => isLoggedIn = true), child: Text(t('guest'), style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)))),
              SizedBox(height: 8),
              SizedBox(width: double.infinity, child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.blue.shade600), onPressed: () { ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Facebook Login - Coming Soon - Admin 01934187372"))); setState(()=> isLoggedIn = true); }, child: Text(t('fb'), style: TextStyle(color: Colors.white)))),
              SizedBox(height: 8),
              SizedBox(width: double.infinity, child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.orange), onPressed: () => setState(() => isLoggedIn = true), child: Text(t('num'), style: TextStyle(color: Colors.white)))),
              SizedBox(height: 12),
              Text(t('sec'), style: TextStyle(fontWeight: FontWeight.bold, fontSize: 11)),
              Text(t('google'), style: TextStyle(fontSize: 10, color: Colors.grey)),
              SizedBox(height: 8),
              Text(t('contact'), style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold)),
              Text(t('comm'), style: TextStyle(fontSize: 9, color: Colors.red, fontWeight: FontWeight.bold), textAlign: TextAlign.center),
              SizedBox(height: 6),
              Text(t('high'), style: TextStyle(fontSize: 8, color: Colors.grey), textAlign: TextAlign.center),
            ],
          ),
        ),
      ),
    );
  }

  Widget mainScaffold() {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green, title: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text(t('title'), style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14)), Text("${t('loc')}$selectedJela", style: TextStyle(color: Colors.white70, fontSize: 10))]), actions: [IconButton(onPressed: () => setState(() => isBangla = !isBangla), icon: Text(isBangla ? "EN" : "বাং", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)))]),
      body: getPage(),
      bottomNavigationBar: BottomNavigationBar(currentIndex: pageIndex, selectedItemColor: Colors.green, unselectedItemColor: Colors.grey, type: BottomNavigationBarType.fixed, onTap: (i) => setState(() => pageIndex = i), items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: t('home')),
        BottomNavigationBarItem(icon: Icon(Icons.message), label: t('msg')),
        BottomNavigationBarItem(icon: Icon(Icons.add_box), label: t('sell')),
        BottomNavigationBarItem(icon: Icon(Icons.bookmark), label: t('save')),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: t('profile')),
      ]),
    );
  }

  Widget getPage() {
    if (pageIndex == 0) return homePage();
    if (pageIndex == 1) return messengerPage();
    if (pageIndex == 2) return sellPage();
    if (pageIndex == 3) return savePage();
    return profilePage();
  }

  Widget homePage() {
    List<Map<String,String>> filtered = allProperties.where((p){
      bool matchJela = selectedJela.contains("All") || p["jela"]!.contains(selectedJela.split(" -")[0]);
      bool matchSearch = searchText.isEmpty || p["jela"]!.toLowerCase().contains(searchText.toLowerCase()) || p["loc"]!.toLowerCase().contains(searchText.toLowerCase()) || p["type"]!.toLowerCase().contains(searchText.toLowerCase());
      return matchJela && matchSearch;
    }).toList();

    return SingleChildScrollView(
      padding: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(width: double.infinity, padding: EdgeInsets.all(12), decoration: BoxDecoration(color: Colors.pink.shade100, borderRadius: BorderRadius.circular(12), border: Border.all(color: Colors.pink.shade200)), child: Column(children: [Text(t('pay'), style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.pink.shade700)), Text("01934187372", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.red)), Text(t('bkash'), style: TextStyle(color: Colors.pink.shade700, fontSize: 10), textAlign: TextAlign.center), SizedBox(height:4), Text(t('comm'), style: TextStyle(color: Colors.red, fontSize: 8, fontWeight: FontWeight.bold), textAlign: TextAlign.center)])),
          SizedBox(height: 10),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [cat(t('vara'), Icons.home), cat(t('flat'), Icons.apartment), cat(t('jomi'), Icons.map), cat(t('dokan'), Icons.store)]),
          SizedBox(height: 10),
          TextField(onChanged: (v)=> setState(()=> searchText = v), decoration: InputDecoration(hintText: t('search'), prefixIcon: Icon(Icons.search), border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)))),
          SizedBox(height: 8),
          Container(padding: EdgeInsets.symmetric(horizontal: 10), decoration: BoxDecoration(border: Border.all(color: Colors.green), borderRadius: BorderRadius.circular(12)), child: DropdownButtonHideUnderline(child: DropdownButton<String>(value: selectedJela, isExpanded: true, items: jelaList.map((j)=> DropdownMenuItem(value: j, child: Text(j, style: TextStyle(fontSize: 12)))).toList(), onChanged: (v)=> setState(()=> selectedJela = v!)))),
          SizedBox(height: 4),
          Text("${t('jelaSelect')}: $selectedJela - ${filtered.length} found - 50 Lakh User Ready", style: TextStyle(fontSize: 10, color: Colors.green, fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text(t('featured') + selectedJela.split(" -")[0], style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold)), Text(t('seeAll'), style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold, fontSize: 12))]),
          SizedBox(height: 8),
          ...filtered.map((p)=> propertyCard(p)).toList(),
          if(filtered.isEmpty) Center(child: Padding(padding: EdgeInsets.all(20), child: Text("No property in this Jela yet. Be first to post! - $selectedJela", style: TextStyle(color: Colors.grey, fontSize: 12)))),
        ],
      ),
    );
  }

  Widget cat(String name, IconData icon) {
    return Column(children: [Container(padding: EdgeInsets.all(12), decoration: BoxDecoration(color: Colors.white, border: Border.all(color: Colors.grey.shade300), borderRadius: BorderRadius.circular(12)), child: Icon(icon, color: Colors.green, size: 24)), SizedBox(height: 4), Text(name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10))]);
  }

  Widget propertyCard(Map<String,String> p) {
    return Container(margin: EdgeInsets.only(bottom: 12), decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12), border: Border.all(color: Colors.grey.shade200)), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(height: 140, decoration: BoxDecoration(color: Colors.grey.shade300, borderRadius: BorderRadius.vertical(top: Radius.circular(12)), image: DecorationImage(image: NetworkImage("https://images.unsplash.com/photo-1522708323590-d24dbb6b0267?w=500"), fit: BoxFit.cover))),
      Padding(padding: EdgeInsets.all(10), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text(p["price"]!, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.green)), Container(padding: EdgeInsets.symmetric(horizontal:6, vertical:2), decoration: BoxDecoration(color: Colors.orange.shade100, borderRadius: BorderRadius.circular(4)), child: Text(p["type"]!, style: TextStyle(fontSize:9, fontWeight: FontWeight.bold)))]),
        Text(p["details"]!, style: TextStyle(fontSize: 11)),
        SizedBox(height: 3),
        Row(children: [Icon(Icons.location_on, size: 12, color: Colors.grey), SizedBox(width: 3), Expanded(child: Text("${p["loc"]} - ${p["jela"]}", style: TextStyle(color: Colors.grey, fontSize: 10), overflow: TextOverflow.ellipsis))]),
        SizedBox(height: 4),
        Row(children: [Container(padding: EdgeInsets.symmetric(horizontal:6, vertical:3), decoration: BoxDecoration(color: Colors.green.shade50, borderRadius: BorderRadius.circular(4)), child: Text("Ready - ${p["jela"]!.split(" -")[0]}", style: TextStyle(color: Colors.green, fontSize: 9))), SizedBox(width:6), Container(padding: EdgeInsets.symmetric(horizontal:6, vertical:3), decoration: BoxDecoration(color: Colors.blue.shade50, borderRadius: BorderRadius.circular(4)), child: Text("High Security", style: TextStyle(color: Colors.blue, fontSize: 9)))]),
      ])),
    ]));
  }

  Widget messengerPage() {
    return SingleChildScrollView(padding: EdgeInsets.all(15), child: Column(children: [
      Icon(Icons.message, size: 50, color: Colors.green),
      SizedBox(height: 8),
      Text(t('msgTitle'), style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      Text("Number শুধু আপনি + Admin দেখবে - High Security", style: TextStyle(fontSize: 10, color: Colors.green)),
      SizedBox(height: 10),
      Container(width: double.infinity, padding: EdgeInsets.all(12), decoration: BoxDecoration(color: Colors.green.shade50, borderRadius: BorderRadius.circular(10), border: Border.all(color: Colors.green.shade200)), child: Text(t('autoMsg'), style: TextStyle(fontSize: 12))),
      SizedBox(height: 15),
      Align(alignment: Alignment.centerLeft, child: Text("Chats - Admin can join:", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13))),
      SizedBox(height: 8),
      chatTile("Madaripur Buyer", "Vara koto? Madaripur e?", "10:30 AM"),
      chatTile("Admin - 01934187372", "Commission 1% Vara 3% Bikri - WhatsApp", "Online"),
      chatTile("Dhaka Seller", "Flat বিক্রি - 30 lakh - Dhaka", "Yesterday"),
    ]));
  }

  Widget chatTile(String name, String msg, String time){
    return Container(margin: EdgeInsets.only(bottom:8), padding: EdgeInsets.all(10), decoration: BoxDecoration(border: Border.all(color: Colors.grey.shade300), borderRadius: BorderRadius.circular(10)), child: Row(children: [CircleAvatar(backgroundColor: Colors.green, radius:18, child: Icon(Icons.person, color: Colors.white, size:16)), SizedBox(width:10), Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text(name, style: TextStyle(fontWeight: FontWeight.bold, fontSize:12)), Text(msg, style: TextStyle(fontSize:10, color: Colors.grey), overflow: TextOverflow.ellipsis)])), Text(time, style: TextStyle(fontSize:9, color: Colors.grey))]));
  }

  Widget sellPage() {
    String selectedProp = postType=="Vara" ? propertyTypesVara[0] : propertyTypesBikri[0];
    String selectedRoom = roomList[1];
    String selectedBath = bathList[0];
    String selectedFloor = floorList[1];
    String selectedJelaPost = jelaList[9];
    TextEditingController titleC = TextEditingController();
    TextEditingController priceC = TextEditingController();
    TextEditingController elakaC = TextEditingController();
    TextEditingController addressC = TextEditingController();

    return StatefulBuilder(builder: (context, setSB){
      return SingleChildScrollView(padding: EdgeInsets.all(15), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(t('postTitle'), style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        Text(t('postSub'), style: TextStyle(color: Colors.grey, fontSize: 10)),
        SizedBox(height: 10),
        Row(children: [
          Expanded(child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: postType=="Vara" ? Colors.green : Colors.grey.shade300), onPressed: ()=> setSB(()=> postType="Vara"), child: Text(t('varaTab'), style: TextStyle(color: postType=="Vara" ? Colors.white : Colors.black, fontSize:12)))),
          SizedBox(width:8),
          Expanded(child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: postType=="Bikri" ? Colors.green : Colors.grey.shade300), onPressed: ()=> setSB(()=> postType="Bikri"), child: Text(t('bikriTab'), style: TextStyle(color: postType=="Bikri" ? Colors.white : Colors.black, fontSize:12)))),
        ]),
        SizedBox(height: 12),
        TextField(controller: titleC, decoration: InputDecoration(labelText: "শিরোনাম / Title *", border: OutlineInputBorder(), isDense: true)),
        SizedBox(height: 10),
        TextField(controller: priceC, decoration: InputDecoration(labelText: postType=="Vara" ? "ভাড়ার পরিমাণ / Vara Amount - Tk *" : "বিক্রির পরিমাণ / Price - Tk *", border: OutlineInputBorder(), isDense: true)),
        SizedBox(height: 10),
        Text("প্রপার্টি টাইপ / Property Type *", style: TextStyle(fontWeight: FontWeight.bold, fontSize:12)),
        SizedBox(height: 4),
        Container(padding: EdgeInsets.symmetric(horizontal:10), decoration: BoxDecoration(border: Border.all(color: Colors.grey), borderRadius: BorderRadius.circular(8)), child: DropdownButtonHideUnderline(child: DropdownButton<String>(value: selectedProp, isExpanded: true, items: (postType=="Vara" ? propertyTypesVara : propertyTypesBikri).map((j)=> DropdownMenuItem(value: j, child: Text(j, style: TextStyle(fontSize:12)))).toList(), onChanged: (v)=> setSB(()=> selectedProp = v!)))),
        SizedBox(height: 10),
        Row(children: [
          Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("রুম / Room", style: TextStyle(fontSize:11, fontWeight: FontWeight.bold)), Container(padding: EdgeInsets.symmetric(horizontal:8), decoration: BoxDecoration(border: Border.all(color: Colors.grey), borderRadius: BorderRadius.circular(8)), child: DropdownButtonHideUnderline(child: DropdownButton<String>(value: selectedRoom, isExpanded: true, items: roomList.map((j)=> DropdownMenuItem(value: j, child: Text(j, style: TextStyle(fontSize:11)))).toList(), onChanged: (v)=> setSB(()=> selectedRoom = v!))))])),
          SizedBox(width:8),
          Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("বাথরুম / Bath", style: TextStyle(fontSize:11, fontWeight: FontWeight.bold)), Container(padding: EdgeInsets.symmetric(horizontal:8), decoration: BoxDecoration(border: Border.all(color: Colors.grey), borderRadius: BorderRadius.circular(8)), child: DropdownButtonHideUnderline(child: DropdownButton<String>(value: selectedBath, isExpanded: true, items: bathList.map((j)=> DropdownMenuItem(value: j, child: Text(j, style: TextStyle(fontSize:11)))).toList(), onChanged: (v)=> setSB(()=> selectedBath = v!))))])),
          SizedBox(width:8),
          Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("ফ্লোর / Floor", style: TextStyle(fontSize:11, fontWeight: FontWeight.bold)), Container(padding: EdgeInsets.symmetric(horizontal:8), decoration: BoxDecoration(border: Border.all(color: Colors.grey), borderRadius: BorderRadius.circular(8)), child: DropdownButtonHideUnderline(child: DropdownButton<String>(value: selectedFloor, isExpanded: true, items: floorList.map((j)=> DropdownMenuItem(value: j, child: Text(j, style: TextStyle(fontSize:11)))).toList(), onChanged: (v)=> setSB(()=> selectedFloor = v!))))])),
        ]),
        SizedBox(height: 10),
        Text(t('jelaSelect')+" *", style: TextStyle(fontWeight: FontWeight.bold, fontSize:12)),
        SizedBox(height: 4),
        Container(padding: EdgeInsets.symmetric(horizontal:10), decoration: BoxDecoration(border: Border.all(color: Colors.green), borderRadius: BorderRadius.circular(8)), child: DropdownButtonHideUnderline(child: DropdownButton<String>(value: selectedJelaPost, isExpanded: true, items: jelaList.where((e)=> !e.contains("All")).map((j)=> DropdownMenuItem(value: j, child: Text(j, style: TextStyle(fontSize:12)))).toList(), onChanged: (v)=> setSB(()=> selectedJelaPost = v!)))),
        SizedBox(height: 10),
        TextField(controller: elakaC, decoration: InputDecoration(labelText: "এলাকা / Elaka * - ${selectedJelaPost.split(" -")[0]}", border: OutlineInputBorder(), isDense: true)),
        SizedBox(height: 10),
        TextField(controller: addressC, decoration: InputDecoration(labelText: "ঠিকানা / Full Address *", border: OutlineInputBorder(), isDense: true)),
        SizedBox(height: 12),
        Container(padding: EdgeInsets.all(10), decoration: BoxDecoration(color: Colors.orange.shade50, borderRadius: BorderRadius.circular(10), border: Border.all(color: Colors.orange.shade200)), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("💰 Payment: 100 Taka Post Fee + 100 Taka Boost = 01934187372 bKash/Nagad ✅ - $selectedJelaPost", style: TextStyle(fontSize:11, fontWeight: FontWeight.bold)), SizedBox(height:4), Text(t('comm'), style: TextStyle(fontSize:10, color: Colors.red, fontWeight: FontWeight.bold)), Text("⚠️ Commission না দিলে - Name/Number Admin WhatsApp 01934187372 তে যাবে + ID Block - 2nd time use করতে পারবে না", style: TextStyle(fontSize:9, color: Colors.red)) ])),
        SizedBox(height: 15),
        SizedBox(width: double.infinity, child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.green, padding: EdgeInsets.symmetric(vertical:14)), onPressed: () {
          if(titleC.text.isEmpty || priceC.text.isEmpty){ ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Title & Price Required!"))); return; }
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Post Success! $selectedJelaPost - $selectedProp - $selectedRoom - PAYMENT 01934187372 - Commission: ${postType=="Vara" ? "1%" : "3%"}")));
          setState((){ pageIndex = 0; selectedJela = selectedJelaPost; allProperties.insert(0, {"jela": selectedJelaPost, "type": selectedProp, "price": priceC.text, "details": "$selectedRoom • $selectedBath • $selectedFloor", "loc": elakaC.text.isEmpty ? selectedJelaPost.split(" -")[0] : elakaC.text}); });
        }, child: Text(t('postBtn'), style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize:12)))),
      ]));
    });
  }

  Widget savePage() { return Center(child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [Icon(Icons.bookmark, size:50, color: Colors.green), Text(t('saveTitle')), Text("Saved Properties will show here - 64 Jela", style: TextStyle(fontSize:11, color: Colors.grey))])); }
  Widget profilePage() {
    return ListView(padding: EdgeInsets.all(15), children: [
      CircleAvatar(radius: 35, backgroundColor: Colors.green, child: Icon(Icons.person, size: 35, color: Colors.white)),
      SizedBox(height: 8),
      Center(child: Text("Guest User - 64 Jela - 50 Lakh Ready", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold))),
      Center(child: Text(t('contact'), style: TextStyle(fontSize:11))),
      SizedBox(height: 8),
      Container(padding: EdgeInsets.all(10), decoration: BoxDecoration(color: Colors.green.shade50, borderRadius: BorderRadius.circular(10)), child: Column(children: [Text("Selected: $selectedJela\n${jelaList.length-1} Jela Active - Pura Bangladesh - 50 Lakh User Ready", textAlign: TextAlign.center, style: TextStyle(fontSize:11)), SizedBox(height:4), Text(t('comm'), style: TextStyle(fontSize:9, color: Colors.red, fontWeight: FontWeight.bold), textAlign: TextAlign.center)])),
      SizedBox(height: 15),
      ListTile(leading: Icon(Icons.language), title: Text(isBangla ? "Language: বাংলা" : "Language: English", style: TextStyle(fontSize:12)), trailing: Switch(value: isBangla, onChanged: (v) => setState(() => isBangla = v))),
      ListTile(leading: Icon(Icons.map), title: Text("64 Jela - ${jelaList.length-1} Active", style: TextStyle(fontSize:12)), subtitle: Text("Pura Bangladesh chalbe - Vara/Buy/Sell", style: TextStyle(fontSize:10))),
      ListTile(leading: Icon(Icons.security), title: Text("High Security - Number Only Admin See", style: TextStyle(fontSize:12)), subtitle: Text("Admin WhatsApp 01934187372 - ID Block System Active", style: TextStyle(fontSize:10))),
      ListTile(leading: Icon(Icons.logout, color: Colors.red), title: Text(t('logout'), style: TextStyle(color: Colors.red, fontSize:12)), onTap: () => setState(() { isLoggedIn = false; pageIndex = 0; })),
      SizedBox(height: 10),
      Center(child: Text(t('high'), style: TextStyle(fontSize: 9, color: Colors.grey), textAlign: TextAlign.center)),
      Center(child: Text("Facebook + Number Login • Messenger Auto Salam • Commission 1%/3% • Boost 100 Taka • 50 Lakh User", style: TextStyle(fontSize: 8, color: Colors.grey), textAlign: TextAlign.center)),
    ]);
  }
}
