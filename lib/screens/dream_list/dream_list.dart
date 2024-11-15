import 'package:flutter/material.dart';
import 'package:dream_catcher/app_colors.dart';
import 'package:dream_catcher/app_text_styles.dart';
import 'package:dream_catcher/screens/dream_list/components/horizontal_card.dart';

class DreamList extends StatelessWidget {
  const DreamList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.m3SysLightBackground,
      appBar: AppBar(
        backgroundColor: AppColors.m3SysLightSurface,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.account_circle_sharp),
          onPressed: () {},
          color: AppColors.m3SysLightOnSurface,
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_outlined),
            onPressed: () {},
            color: AppColors.m3SysLightOnSurface,
          ),
          IconButton(
            icon: const Icon(Icons.settings_outlined),
            onPressed: () {},
            color: AppColors.m3SysLightOnSurface,
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(
            '最近見た夢',
            style: AppTextStyles.m3HeadlineMedium.copyWith(
              color: AppColors.m3SysLightOnSurface,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 24),

          // 今日の夢セクション
          Text(
            '今日の夢',
            style: AppTextStyles.m3TitleMedium.copyWith(
              color: AppColors.m3SysLightOnSurface,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 3,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: HorizontalCard(
                  avatarUrl:
                      'https://pbs.twimg.com/profile_images/1615218542852608000/u0mxo1Ln_400x400.jpg',
                  title: '着ぐるみを着て競争する夢',
                  description: '巨大なウサギの着ぐるみを着せられて...',
                  imageUrl:
                      'https://docs.flutter.dev/assets/images/dash/Dash.png',
                  onTap: () {
                    debugPrint('Tapped today\'s dream ${index + 1}');
                  },
                ),
              );
            },
          ),
          const SizedBox(height: 24),

          // もう一度見たい夢セクション
          Text(
            'もう一度見たい夢',
            style: AppTextStyles.m3TitleMedium.copyWith(
              color: AppColors.m3SysLightOnSurface,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 3,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: HorizontalCard(
                  avatarUrl:
                      'https://pbs.twimg.com/profile_images/1615218542852608000/u0mxo1Ln_400x400.jpg',
                  title: '南国で寝る夢',
                  description: '温かな太陽と心地よいそよ風が...',
                  imageUrl:
                      'https://docs.flutter.dev/assets/images/dash/Dash.png',
                  onTap: () {
                    debugPrint('Tapped favorite dream ${index + 1}');
                  },
                ),
              );
            },
          ),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        backgroundColor: AppColors.m3SysLightSurface,
        selectedIndex: 0,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.bedtime_outlined),
            label: 'ゆめ',
          ),
          NavigationDestination(
            icon: Icon(Icons.favorite_outline),
            selectedIcon: Icon(Icons.favorite),
            label: 'パターン',
          ),
          NavigationDestination(
            icon: Icon(Icons.star_outline),
            label: 'アイテム',
          ),
        ],
      ),
    );
  }
}
