import 'package:blockbucks/core/use_cases/home_tabs_use_cases.dart';
import 'package:blockbucks/features/home/presentation/components/home_tabs_component.dart';
import 'package:blockbucks/router.gr.dart';
import 'package:blockbucks/service_locator.dart';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final tabList = [
      HomeTabSub(HomeTabEnum.boleka),
      HomeTabSub(HomeTabEnum.wallet),
      HomeTabSub(HomeTabEnum.payment)
    ];

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            height: 169,
            width: double.maxFinite,
            margin: const EdgeInsets.symmetric(vertical: 32, horizontal: 25),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: const Color(0xFF6193C1).withOpacity(.6),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(width: 1, color: const Color(0xFF6193C1)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'R 5, 600.69',
                  style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const Text(
                  'Available Balance',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF020202)),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  height: 47,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xFFFADDA4).withOpacity(.7),
                  ),
                  child: const Expanded(
                    child: Center(
                      child: Text(
                        'TOP UP WALLET',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                tabList.length,
                (index) => HomeTabsComp(
                  tab: tabList[index],
                  onTap: () async {
                    final appRouter = serviceLocator<AppRouter>();
                    await appRouter.push(const BolekaHomeRoute());
                  },
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(.7),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  Container(
                    width: 100,
                    height: 5,
                    padding: const EdgeInsets.only(top: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  ListView.builder(
                      itemCount: 2,
                      shrinkWrap: true,
                      // physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 10),
                            const Text(
                              'Today',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            const SizedBox(height: 20),
                            ListView.builder(
                                itemCount: 6,
                                shrinkWrap: true,
                                // physics: const NeverScrollableScrollPhysics(),
                                itemBuilder: (context, _) {
                                  return const SizedBox(
                                    height: 60,
                                    child: Row(
                                      children: [
                                        CircleAvatar(),
                                        SizedBox(width: 20),
                                        Column(
                                          children: [
                                            Text(
                                              'Simon Petrikov',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.white),
                                            ),
                                            Text(
                                              'Loan Repayment',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                  color: Color(0xFFD3D3D3)),
                                            )
                                          ],
                                        ),
                                        Spacer(),
                                        Column(
                                          children: [
                                            Text(
                                              '+ R1, 500',
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                  color: Color(0xFF70EB37)),
                                            ),
                                            Text(
                                              'pending',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                  color: Color(0xFFD3D3D3)),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  );
                                }),
                          ],
                        );
                      })
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
