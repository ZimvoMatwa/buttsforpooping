import 'package:blockbucks/core/components/primary_button.dart';
import 'package:blockbucks/core/components/text_field.dart';
import 'package:flutter/material.dart';

class BolekaHomePage extends StatelessWidget {
  const BolekaHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final keyboardOpen = MediaQuery.of(context).viewInsets.bottom == 0;
    return Scaffold(
      backgroundColor: const Color(0xFFE4E4E4),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: const Icon(Icons.arrow_back, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                height: 187,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                ),
                child: const Center(
                  child: Text(
                    'R 0.00',
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              const Text(
                'Loan Balance: R 4, 20.69',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              const Row(
                children: [
                  Icon(
                    Icons.info_outline_rounded,
                    color: Color(0xFF231F20),
                    size: 10,
                  ),
                  SizedBox(width: 3),
                  Text(
                    'This is how much you can borrow',
                    style: TextStyle(color: Color(0xFF868080), fontSize: 10),
                  ),
                ],
              ),
              const SizedBox(height: 46),
              const CustomTextField(hintText: 'Wallet ID'),
              const SizedBox(height: 23),
              const CustomTextField(hintText: 'Amount'),
              const SizedBox(height: 23),
              const CustomTextField(
                hintText: '1.2%',
                isEnabled: false,
              ),
              const SizedBox(height: 23),
              const CustomTextField(hintText: 'Repayment period'),
              const SizedBox(height: 23),
              const CustomTextField(hintText: 'Monthly repayment'),
              const SizedBox(height: 15),
              const Text(
                'Learn how interest is calculated, and how we determine amount loanable to you and your friends...',
                style: TextStyle(fontSize: 13, color: Color(0xFF868080)),
              ),
              const SizedBox(height: 100),
            ],
          ),
        ),
      ),
      floatingActionButton: keyboardOpen
          ? PrimaryButton(
              title: 'Next',
              onTap: () {},
            )
          : null,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
