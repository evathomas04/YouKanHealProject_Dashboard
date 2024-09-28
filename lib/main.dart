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
  const MyHomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
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
              leading: const Icon(Icons.dashboard),
              title: const Text('Dashboard'),
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                width: 120,
                height: 55,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 3, 98, 18),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: 3),
                      Text(
                        'Add Monthly Data',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 19.0,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
              ),
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
                    const Divider(color: Colors.grey),
                    // Institutions list
                    Column(
                      children: filteredInstitutions.map((institution) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 4.0),
                          child: Container(
                            width: 375,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: const Color.fromARGB(255, 241, 243, 243),
                            ),
                            child: ListTile(
                              leading: Image.asset(
                                institution['logo']!,
                                height: 50,
                                width: 50,
                              ),
                              title: Text(
                                institution['name']!,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0,
                                  color: Colors.black,
                                ),
                              ),
                              subtitle: Text(
                                '${institution['place']} - ${institution['value']} students (${institution['date']})',
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
            ),
            // Add clickable boxes here
            const SizedBox(height: 20),
// Vertically aligned boxes
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                // First box
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const GreenProtocol(message: 'Hello 1'),
                      ),
                    );
                  },
                  child: Padding(
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
                ),
                const SizedBox(height: 20),
                // Second box
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const SustainableMensuration(message: 'Hello 2'),
                      ),
                    );
                  },
                  child: Padding(
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
                ),
                const SizedBox(height: 20),
                // Third box
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const BanTheBag(message: 'Hello 3'),
                      ),
                    );
                  },
                  child: Padding(
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
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class GreenProtocol extends StatelessWidget {
  final String message;

  const GreenProtocol({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Green Protocol'),
        backgroundColor: const Color.fromARGB(
            255, 3, 98, 18), // Set the background color of the AppBar
        titleTextStyle: const TextStyle(
          color: Colors.white, // Set the text color of the AppBar title
          fontSize: 20, // You can also change the font size here
          fontWeight: FontWeight.bold, // Adjust the font weight if needed
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Institution Dropdown
              DropdownButtonFormField<String>(
                decoration: const InputDecoration(
                  labelText: 'Select Institution',
                  border: OutlineInputBorder(),
                ),
                items: <String>[
                  "St. Teresa's college",
                  'ABC College',
                  'Chinmaya',
                  'Institution 4',
                  'Institution 5'
                ].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (_) {},
              ),
              const SizedBox(height: 20),
              // Month Dropdown
              DropdownButtonFormField<String>(
                decoration: const InputDecoration(
                  labelText: 'Select Year',
                  border: OutlineInputBorder(),
                ),
                items: <String>[
                  '2022',
                  '2023',
                  '2024',
                ].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (_) {},
              ),

              const SizedBox(height: 20),
              // Month Dropdown
              DropdownButtonFormField<String>(
                decoration: const InputDecoration(
                  labelText: 'Select Month',
                  border: OutlineInputBorder(),
                ),
                items: <String>[
                  'January',
                  'February',
                  'March',
                  'April',
                  'May',
                  'June',
                  'July',
                  'August',
                  'September',
                  'October',
                  'November',
                  'December'
                ].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (_) {},
              ),

              const SizedBox(height: 32),
// Total Participants Section with Pie Chart
              Container(
                decoration: BoxDecoration(
                  color:
                      const Color.fromARGB(255, 3, 98, 18), // Background color
                  borderRadius: BorderRadius.circular(15.0), // Rounded corners
                ),
                width: 375, // Set a fixed width (adjust as needed)
                padding:
                    const EdgeInsets.all(16), // Padding inside the container
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Total Participants count
                    Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.center, // Aligns text to the start
                      children: [
                        Text(
                          'Total Participants',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          '302', // Replace with dynamic data
                          style: TextStyle(
                            fontSize: 36,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              //Pie Chart
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2.0),
                child: Container(
                  width: 375,
                  height: 200,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 228, 229, 229),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // Stat Cards Section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Graph (Placeholder for now)
                  Expanded(
                    child: Container(
                      height: 210,
                      margin: const EdgeInsets.only(right: 8),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 228, 229, 229),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Icon(Icons.show_chart,
                            size: 60), // Placeholder graph
                      ),
                    ),
                  ),

                  // Stat Cards (Bring your own bag, etc.)
                  Expanded(
                    child: Column(
                      children: [
                        // Bring your own bag card
                        Container(
                          height: 100,
                          margin: const EdgeInsets.only(bottom: 8),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 48, 171, 68),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment
                                  .center, // Center horizontally
                              children: [
                                Text(
                                  'Willing to be Part of this Challenge', // First text
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white),
                                ),
                                SizedBox(
                                    height: 8), // Spacing between the texts
                                Text(
                                  '400', // Second text
                                  style: TextStyle(
                                      fontSize: 24,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),

                        // Plastic bags reduced card
                        Container(
                          height: 100,
                          margin: const EdgeInsets.only(bottom: 8),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 48, 171, 68),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Center(
                            child: Column(
                              mainAxisAlignment:
                                  MainAxisAlignment.center, // Center vertically
                              crossAxisAlignment: CrossAxisAlignment
                                  .center, // Center horizontally
                              children: [
                                Text(
                                  'Total Number of Plastic Cups Reduced', // First text
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                                SizedBox(
                                    height: 8), // Spacing between the texts
                                Text(
                                  '320', // Second text
                                  style: TextStyle(
                                      fontSize: 24,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SustainableMensuration extends StatelessWidget {
  final String message;

  const SustainableMensuration({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sustainable Mensuration'),
        backgroundColor: const Color.fromARGB(
            255, 3, 98, 18), // Set the background color of the AppBar
        titleTextStyle: const TextStyle(
          color: Colors.white, // Set the text color of the AppBar title
          fontSize: 20, // You can also change the font size here
          fontWeight: FontWeight.bold, // Adjust the font weight if needed
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Institution Dropdown
              DropdownButtonFormField<String>(
                decoration: const InputDecoration(
                  labelText: 'Select Institution',
                  border: OutlineInputBorder(),
                ),
                items: <String>[
                  "St. Teresa's college",
                  'ABC College',
                  'Chinmaya',
                  'Institution 4',
                  'Institution 5'
                ].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (_) {},
              ),
              const SizedBox(height: 20),
              // Month Dropdown
              DropdownButtonFormField<String>(
                decoration: const InputDecoration(
                  labelText: 'Select Year',
                  border: OutlineInputBorder(),
                ),
                items: <String>[
                  '2022',
                  '2023',
                  '2024',
                ].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (_) {},
              ),

              const SizedBox(height: 20),
              // Month Dropdown
              DropdownButtonFormField<String>(
                decoration: const InputDecoration(
                  labelText: 'Select Month',
                  border: OutlineInputBorder(),
                ),
                items: <String>[
                  'January',
                  'February',
                  'March',
                  'April',
                  'May',
                  'June',
                  'July',
                  'August',
                  'September',
                  'October',
                  'November',
                  'December'
                ].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (_) {},
              ),

              const SizedBox(height: 32),
// Total Participants Section with Pie Chart
              Container(
                decoration: BoxDecoration(
                  color:
                      const Color.fromARGB(255, 3, 98, 18), // Background color
                  borderRadius: BorderRadius.circular(15.0), // Rounded corners
                ),
                width: 375, // Set a fixed width (adjust as needed)
                padding:
                    const EdgeInsets.all(16), // Padding inside the container
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Total Participants count
                    Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.center, // Aligns text to the start
                      children: [
                        Text(
                          'Total Participants',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          '296', // Replace with dynamic data
                          style: TextStyle(
                            fontSize: 36,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              //Pie Chart
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2.0),
                child: Container(
                  width: 375,
                  height: 200,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 228, 229, 229),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // Stat Cards Section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Graph (Placeholder for now)
                  Expanded(
                    child: Container(
                      height: 210,
                      margin: const EdgeInsets.only(right: 8),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 228, 229, 229),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Icon(Icons.show_chart,
                            size: 60), // Placeholder graph
                      ),
                    ),
                  ),

                  // Stat Cards (Bring your own bag, etc.)
                  Expanded(
                    child: Column(
                      children: [
                        // Bring your own bag card
                        Container(
                          height: 100,
                          margin: const EdgeInsets.only(bottom: 8),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 48, 171, 68),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment
                                  .center, // Center horizontally
                              children: [
                                Text(
                                  'Willing to be Part of this Challenge', // First text
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white),
                                ),
                                SizedBox(
                                    height: 8), // Spacing between the texts
                                Text(
                                  '100', // Second text
                                  style: TextStyle(
                                      fontSize: 24,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),

                        // Plastic bags reduced card
                        Container(
                          height: 100,
                          margin: const EdgeInsets.only(bottom: 8),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 48, 171, 68),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Center(
                            child: Column(
                              mainAxisAlignment:
                                  MainAxisAlignment.center, // Center vertically
                              crossAxisAlignment: CrossAxisAlignment
                                  .center, // Center horizontally
                              children: [
                                Text(
                                  'Total Number of Sanitary Pads Reduced', // First text
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                                SizedBox(
                                    height: 8), // Spacing between the texts
                                Text(
                                  '143', // Second text
                                  style: TextStyle(
                                      fontSize: 24,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BanTheBag extends StatelessWidget {
  final String message;

  const BanTheBag({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ban The Bag'),
        backgroundColor: const Color.fromARGB(
            255, 3, 98, 18), // Set the background color of the AppBar
        titleTextStyle: const TextStyle(
          color: Colors.white, // Set the text color of the AppBar title
          fontSize: 20, // You can also change the font size here
          fontWeight: FontWeight.bold, // Adjust the font weight if needed
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Institution Dropdown
              DropdownButtonFormField<String>(
                decoration: const InputDecoration(
                  labelText: 'Select Institution',
                  border: OutlineInputBorder(),
                ),
                items: <String>[
                  "St. Teresa's college",
                  'ABC College',
                  'Chinmaya',
                  'Institution 4',
                  'Institution 5'
                ].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (_) {},
              ),
              const SizedBox(height: 20),
              // Month Dropdown
              DropdownButtonFormField<String>(
                decoration: const InputDecoration(
                  labelText: 'Select Year',
                  border: OutlineInputBorder(),
                ),
                items: <String>[
                  '2022',
                  '2023',
                  '2024',
                ].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (_) {},
              ),

              const SizedBox(height: 20),
              // Month Dropdown
              DropdownButtonFormField<String>(
                decoration: const InputDecoration(
                  labelText: 'Select Month',
                  border: OutlineInputBorder(),
                ),
                items: <String>[
                  'January',
                  'February',
                  'March',
                  'April',
                  'May',
                  'June',
                  'July',
                  'August',
                  'September',
                  'October',
                  'November',
                  'December'
                ].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (_) {},
              ),

              const SizedBox(height: 32),
// Total Participants Section with Pie Chart
              Container(
                decoration: BoxDecoration(
                  color:
                      const Color.fromARGB(255, 3, 98, 18), // Background color
                  borderRadius: BorderRadius.circular(15.0), // Rounded corners
                ),
                width: 375, // Set a fixed width (adjust as needed)
                padding:
                    const EdgeInsets.all(16), // Padding inside the container
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Total Participants count
                    Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.center, // Aligns text to the start
                      children: [
                        Text(
                          'Total Participants',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          '198', // Replace with dynamic data
                          style: TextStyle(
                            fontSize: 36,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              //Pie Chart
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2.0),
                child: Container(
                  width: 375,
                  height: 200,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 228, 229, 229),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // Stat Cards Section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Graph (Placeholder for now)
                  Expanded(
                    child: Container(
                      height: 210,
                      margin: const EdgeInsets.only(right: 8),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 228, 229, 229),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Icon(Icons.show_chart,
                            size: 60), // Placeholder graph
                      ),
                    ),
                  ),

                  // Stat Cards (Bring your own bag, etc.)
                  Expanded(
                    child: Column(
                      children: [
                        // Bring your own bag card
                        Container(
                          height: 100,
                          margin: const EdgeInsets.only(bottom: 8),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 48, 171, 68),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment
                                  .center, // Center horizontally
                              children: [
                                Text(
                                  'Willing to be Part of this Challenge', // First text
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white),
                                ),
                                SizedBox(
                                    height: 8), // Spacing between the texts
                                Text(
                                  '147', // Second text
                                  style: TextStyle(
                                      fontSize: 24,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),

                        // Plastic bags reduced card
                        Container(
                          height: 100,
                          margin: const EdgeInsets.only(bottom: 8),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 48, 171, 68),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Center(
                            child: Column(
                              mainAxisAlignment:
                                  MainAxisAlignment.center, // Center vertically
                              crossAxisAlignment: CrossAxisAlignment
                                  .center, // Center horizontally
                              children: [
                                Text(
                                  'Total Number of Plastic Bags Reduced', // First text
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                                SizedBox(
                                    height: 8), // Spacing between the texts
                                Text(
                                  '203', // Second text
                                  style: TextStyle(
                                      fontSize: 24,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
