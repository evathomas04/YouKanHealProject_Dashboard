import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AppBar Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // List of institutions (dummy data)
  final List<Map<String, String>> institutions = [
    {
      'type': 'college',
      'logo': 'assets/college_logo.png',
      'name': 'St Teresas College',
      'place': 'Ernakulam',
      'value': '1600',
      'date': 'May 2024',
    },
    {
      'type': 'school',
      'logo': 'assets/school_logo.png',
      'name': 'Chinmaya',
      'place': 'Ernakulam',
      'value': '1000',
      'date': 'Aug 2024',
    },
    {
      'type': 'college',
      'logo': 'assets/college_logo.png',
      'name': 'ABC College',
      'place': 'location',
      'value': '100',
      'date': 'Jul 2024',
    },
  ];

  String selectedCategory = 'all'; // Default selected category

  // Function to filter institutions based on selected category
  List<Map<String, String>> get filteredInstitutions {
    if (selectedCategory == 'all') {
      return institutions;
    } else {
      return institutions
          .where((institution) => institution['type'] == selectedCategory)
          .toList();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: PreferredSize(
                preferredSize: const Size.fromHeight(kToolbarHeight),
                child: AppBar(
                  leading: IconButton(
                    icon: const Icon(Icons.menu),
                    onPressed: () {},
                  ),
                  title: Center(
                    child: Image.asset(
                      'assets/logo.png',
                      fit: BoxFit.contain,
                      height: 40,
                    ),
                  ),
                  actions: <Widget>[
                    IconButton(
                      icon: const Icon(Icons.account_circle),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Challenge Dashboard',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                width: 375,
                height: 200,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 3, 98, 18),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Total Number of Participants',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(height: 4),
                      Text(
                        '300',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 27.0,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(height: 8),
                      Divider(color: Colors.white),
                      SizedBox(height: 8),
                      Center(
                        child: Column(
                          children: <Widget>[
                            Text(
                              'Sustainable Mensuration',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17.0,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 6),
                            Text(
                              '2200',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 29.0,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Statistics',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                width: 375,
                height: 225,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 228, 229, 229),
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Institutions',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                width: 375,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          // Filter button for All
                          TextButton(
                            onPressed: () {
                              setState(() {
                                selectedCategory = 'all';
                              });
                            },
                            child: Text(
                              'All',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: selectedCategory == 'all'
                                    ? Colors.green
                                    : Colors.grey,
                                decoration: selectedCategory == 'all'
                                    ? TextDecoration.underline
                                    : null,
                              ),
                            ),
                          ),
                          // Filter button for Colleges
                          TextButton(
                            onPressed: () {
                              setState(() {
                                selectedCategory = 'college';
                              });
                            },
                            child: Text(
                              'Colleges',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: selectedCategory == 'college'
                                    ? Colors.green
                                    : Colors.grey,
                                decoration: selectedCategory == 'college'
                                    ? TextDecoration.underline
                                    : null,
                              ),
                            ),
                          ),
                          // Filter button for Schools
                          TextButton(
                            onPressed: () {
                              setState(() {
                                selectedCategory = 'school';
                              });
                            },
                            child: Text(
                              'Schools',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: selectedCategory == 'school'
                                    ? Colors.green
                                    : Colors.grey,
                                decoration: selectedCategory == 'school'
                                    ? TextDecoration.underline
                                    : null,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(height: 1.0, color: Colors.grey),
                    // Display filtered institutions
                    ...filteredInstitutions.map((institution) {
                      return ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage(institution['logo']!),
                        ),
                        title: Text(institution['name']!),
                        subtitle: Text(institution['place']!),
                        trailing: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Text(
                              institution['value']!,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(institution['date']!),
                          ],
                        ),
                      );
                    }).toList(),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                width: 375,
                height: 200,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 3, 98, 18),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        'assets/green.png',
                        height: 40,
                        width: 40,
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Green\nProtocol',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 27.0,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                width: 375,
                height: 200,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 3, 98, 18),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        'assets/sustainable_mensuration.png', // Path to the small logo
                        height: 40, // Adjust the height as needed
                        width: 40, // Adjust the width as needed
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Sustainable\nMensuration',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 27.0,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                width: 375,
                height: 200,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 3, 98, 18),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        'assets/ban_the_bag.png', // Path to the small logo
                        height: 40, // Adjust the height as needed
                        width: 40, // Adjust the width as needed
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Ban The Bag',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 27.0,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
