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
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 3, 98, 18),
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('About'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.flag),
              title: Text('Challenge'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.dashboard),
              title: Text('Dashboard'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.contact_mail),
              title: Text('Contact'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
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
                    // Display filtered list of institutions
                    ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: filteredInstitutions.length,
                      itemBuilder: (context, index) {
                        final institution = filteredInstitutions[index];
                        return ListTile(
                          leading: Image.asset(institution['logo']!),
                          title: Text(institution['name']!),
                          subtitle: Text(institution['place']!),
                          trailing: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text('₹ ${institution['value']}'),
                              Text(institution['date']!),
                            ],
                          ),
                        );
                      },
                    ),
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
                        'assets/green.png', // Path to the small logo
                        height: 40, // Adjust the height as needed
                        width: 40, // Adjust the width as needed
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
