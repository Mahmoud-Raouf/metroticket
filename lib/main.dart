import 'package:flutter/material.dart';
import 'package:metroticket/support.dart';

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  String _selectedItem1 = 'محطة الربيع';
  String _selectedItem2 = 'محطة MOE';

  bool _isChecked1 = false;
  @override
  Widget build(BuildContext context) {
    Size ksize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 237, 248, 255),
      appBar: AppBar(
        backgroundColor: const Color(0xFF18315A),
        centerTitle: true, // لوضع العنوان في المنتصف
        title: Text(
          'Trip',
          style: TextStyle(fontSize: ksize.width * 0.05, fontWeight: FontWeight.w700),
        ),
        leading: IconButton(
          onPressed: () {
            // Add your back logic here
          },
          icon: const Icon(Icons.arrow_back), // أيقونة الرجوع
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: ksize.height * 0.33,
                    child: Image.network(
                      'https://api.aqarsas.sa/mstatic/909764',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const SizedBox(height: 15),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text(
                              'Form',
                              style: TextStyle(fontSize: ksize.width * 0.05, color: const Color(0xFF18315A)),
                            ),
                          ),
                          const SizedBox(height: 5),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              border: Border.all(width: 1, color: const Color(0xFF18315A)),
                            ),
                            child: DropdownButtonHideUnderline(
                              // لإخفاء الخط الخاص بالDropdownButton
                              child: DropdownButton<String>(
                                value: _selectedItem1,
                                onChanged: (String? newValue) {
                                  setState(() {
                                    _selectedItem1 = newValue!;
                                  });
                                },

                                items: <String>[
                                  'محطة الربيع',
                                  'محطة STC',
                                  'محطة حي النزهة',
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 20),
                                      child: Text(
                                        value,
                                        style: const TextStyle(fontWeight: FontWeight.w600, color: Color(0xFF18315A)),
                                      ),
                                    ),
                                  );
                                }).toList(),
                                icon: const Icon(Icons.arrow_drop_down_sharp), // تحديد الأيقونة المستخدمة للسهم
                                iconSize: 40, // تحديد حجم الأيقونة
                                isExpanded: true, // تحديد توسيع القائمة بالكامل
                                dropdownColor: Colors.white, // تحديد لون الخلفية للقائمة المنسدلة
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text(
                              'To',
                              style: TextStyle(fontSize: ksize.width * 0.05, color: const Color(0xFF18315A)),
                            ),
                          ),
                          const SizedBox(height: 5),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              border: Border.all(width: 1, color: const Color(0xFF18315A)),
                            ),
                            child: DropdownButtonHideUnderline(
                              // لإخفاء الخط الخاص بالDropdownButton
                              child: DropdownButton<String>(
                                value: _selectedItem2,
                                onChanged: (String? newValue) {
                                  setState(() {
                                    _selectedItem2 = newValue!;
                                  });
                                },

                                items: <String>[
                                  'محطة MOE',
                                  'محطة الفلاح والوادي',
                                  'محطة الربيع',
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 20),
                                      child: Text(
                                        value,
                                        style: const TextStyle(fontWeight: FontWeight.w600, color: Color(0xFF18315A)),
                                      ),
                                    ),
                                  );
                                }).toList(),
                                icon: const Icon(Icons.arrow_drop_down_sharp), // تحديد الأيقونة المستخدمة للسهم
                                iconSize: 40, // تحديد حجم الأيقونة
                                isExpanded: true, // تحديد توسيع القائمة بالكامل
                                dropdownColor: Colors.white, // تحديد لون الخلفية للقائمة المنسدلة
                              ),
                            ),
                          ),
                          SizedBox(height: ksize.height * 0.04),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    _isChecked1 = !_isChecked1;
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: _isChecked1
                                      ? Colors.green
                                      : const Color.fromARGB(255, 252, 252, 252), // لون الخلفية
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0), // تحديد زاوية الحواف
                                    side: const BorderSide(
                                        width: 1, color: Color(0xFF18315A)), // تحديد حدود الزر وسماكتها ولونها
                                  ),
                                  elevation: 0, // لحذف الظل
                                ),
                                child: const Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      Icons.calendar_month,
                                      color: Color(0xFF18315A), // لون الأيقونة
                                    ),
                                    SizedBox(width: 10), // المسافة بين الأيقونة والنص
                                    Text(
                                      '27 jan 2024',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF18315A), // لون النص
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 20),
                              ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    _isChecked1 = !_isChecked1;
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: _isChecked1
                                      ? Colors.green
                                      : const Color.fromARGB(255, 252, 252, 252), // لون الخلفية
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0), // تحديد زاوية الحواف
                                    side: const BorderSide(
                                        width: 1, color: Color(0xFF18315A)), // تحديد حدود الزر وسماكتها ولونها
                                  ),
                                  elevation: 0, // لحذف الظل
                                ),
                                child: const Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      Icons.person,
                                      color: Color(0xFF18315A), // لون الأيقونة
                                    ),
                                    SizedBox(width: 30), // المسافة بين الأيقونة والنص
                                    Text(
                                      '1',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF18315A), // لون النص
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/car.png', // مسار الصورة
                                width: 27, // تحديد العرض
                                height: 27, // تحديد الارتفاع
                              ),
                              const SizedBox(width: 5),
                              const Text(
                                '15 minutes',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 25,
                                  color: Color(0xFF18315A), // لون النص
                                ),
                              ),
                              SizedBox(width: ksize.width * 0.1),
                              Image.asset(
                                'assets/car2.png', // مسار الصورة
                                width: 27, // تحديد العرض
                                height: 27, // تحديد الارتفاع
                              ),
                              const SizedBox(width: 5),
                              const Text(
                                '35 minutes',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 25,
                                  color: Color(0xFF18315A), // لون النص
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Add your booking logic here
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF18315A), // لون الخلفية
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0), // حواف دائرية
              ),
            ),
            child: SizedBox(
              // لجعل الزر يأخذ عرض الشاشة بالكامل
              width: ksize.width * 0.8,
              height: ksize.height * 0.07,
              child: const Center(
                child: Text(
                  'Buy Ticket',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white, // لون النص
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: ksize.width * 0.01),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: const Support(),
    theme: ThemeData(
      fontFamily: "Cairo",
    ),
  ));
}
