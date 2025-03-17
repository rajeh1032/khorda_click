import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:khorda_click/presentation/screens/home/custom_page_view.dart';
import 'package:khorda_click/presentation/widgets/CategoryItem.dart';
import 'package:khorda_click/presentation/screens/home/RecentlyAddedItem.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'dummy_data.dart';
import 'search_delegate.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "HomeScreen";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController _bannerController = PageController();
  final PageController _recentlyAddedController = PageController();
  int _selectedIndex = 0;

  @override
  void dispose() {
    _bannerController.dispose();
    _recentlyAddedController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F5F5),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              // 🟢 البحث والموقع
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 33, 16, 10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              showSearch(
                                  context: context,
                                  delegate: ProductSearchDelegate());
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12.0, vertical: 14.0),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(22),
                                color: Colors.white,
                              ),
                              child: Row(
                                children: [
                                  Image.asset("assets/icons/search-icon.png",
                                      width: 16),
                                  const SizedBox(width: 10),
                                  Text(
                                    "ابحث عن كراكبك",
                                    style: TextStyle(
                                        color: Colors.grey[600], fontSize: 16),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        IconButton(
                          icon: Image.asset("assets/icons/camera-icon.png"),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Image.asset("assets/icons/location-icon.png"),
                        const SizedBox(width: 4),
                        Expanded(
                          child: Text(
                            "Your Location 3517 W. Cairo St. Elmaday",
                            style: GoogleFonts.almarai(
                              fontSize: 16,
                              fontWeight: FontWeight.w800,
                              color: Colors.grey[600],
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Image.asset("assets/icons/down-icon.png"),
                      ],
                    ),
                  ],
                ),
              ),

              // 🟢 الـ PageView مع المؤشر
              CustomPageView(
                controller: _bannerController,
                images: ["assets/images/banner.png"],
              ),
              const SizedBox(height: 8),

              // 🟢 الكراكب الأكثر طلبًا
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "الكراكب الأكثر طلبًا",
                      style: GoogleFonts.almarai(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade700,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Expanded(
                          child: CategoryItem(
                            image:
                                "assets/images/265ff4e58ce99a49af756723801148b1 (1).png",
                            name: "زيت قلى",
                          ),
                        ),
                        Expanded(
                          child: CategoryItem(
                            image:
                                "assets/images/xVaMZGC47cbLREMB3HzpPy9nbo6rkCttgUJ1PaMq.png",
                            name: "عبوات الكارتون",
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: CategoryItem(
                            image:
                                "assets/images/3IjNxQWhqr2EGuZCutzq3ZX2hR1gpK9D86GOeDah.png",
                            name: "إلكترونيات",
                          ),
                        ),
                        Expanded(
                          child: CategoryItem(
                            image:
                                "assets/images/wZqzAnvQPEd7jrGdHEb5QXh68eLahTPSGF1vVSVt.png",
                            name: "ورقيات",
                          ),
                        ),
                        Expanded(
                          child: CategoryItem(
                            image:
                                "assets/images/LWFCShcrgc1tIINMZlJwRbIfEcSW1lqJtL4Zlo16 (1).png",
                            name: "بلاستيك",
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // 🟢 عندك كراكب ايه؟
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                child: Text(
                  "عندك كراكب ايه؟",
                  style: GoogleFonts.almarai(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade700,
                  ),
                ),
              ),

              // 🟢 قائمة المنتجات مع الأسعار
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: SizedBox(
                  height: 160,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: DummyData.products.map((product) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4.0),
                          child: CategoryItem(
                            image: product["image"]!,
                            name: product["name"]!,
                            price: product["price"]!,
                            showPrice: true,
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ),

              // 🟢 تمت إضافته مؤخرًا من أجلك
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "تمت إضافته مؤخرًا من أجلك",
                      style: GoogleFonts.almarai(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade700,
                      ),
                    ),
                    const SizedBox(height: 8), // Adjusted spacing
                    SizedBox(
                      height: 280,
                      child: PageView.builder(
                        controller: _recentlyAddedController,
                        itemCount: (DummyData.products.length / 3).ceil(),
                        itemBuilder: (context, index) {
                          final startIndex = index * 3;
                          final endIndex =
                              (startIndex + 3) > DummyData.products.length
                                  ? DummyData.products.length
                                  : startIndex + 3;
                          final pageProducts =
                              DummyData.products.sublist(startIndex, endIndex);

                          return Column(
                            children: pageProducts.map((product) {
                              return Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 2.0), // Reduced padding
                                child: RecentlyAddedItem(
                                  name: product["name"]!,
                                  price: product["price"]!,
                                  image: product["image"]!,
                                ),
                              );
                            }).toList(),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 8), // Adjusted spacing
                    Center(
                      child: SmoothPageIndicator(
                        controller: _recentlyAddedController,
                        count: (DummyData.products.length / 3).ceil(),
                        effect: const WormEffect(
                          dotHeight: 8,
                          dotWidth: 8,
                          activeDotColor: Colors.green,
                          dotColor: Colors.grey,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16), // Extra spacing at the bottom
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset("assets/icons/home-icon.png", width: 24),
            label: "الرئيسية",
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/icons/cart-icon.png", width: 24),
            label: "العربة",
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/icons/cart-icon.png", width: 24),
            label: "أقسام",
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/icons/user-icon.png", width: 24),
            label: "حسابي",
          ),
        ],
      ),
    );
  }
}
