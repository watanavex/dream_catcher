import 'package:dream_catcher/image_source.dart';
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
            itemCount: _todaysDreams.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: HorizontalCard(
                  title: _todaysDreams[index].$1,
                  description: _todaysDreams[index].$2,
                  imageSource: _todaysDreams[index].$3,
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
            itemCount: _favoriteDreams.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: HorizontalCard(
                  title: _favoriteDreams[index].$1,
                  description: _favoriteDreams[index].$2,
                  imageSource: _favoriteDreams[index].$3,
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

// 今日の夢のリスト
final _todaysDreams = [
  (
    '着ぐるみを着て競争する夢',
    '巨大なウサギの着ぐるみを着せられ、見知らぬ動物たちと広大な迷路で競争することに。',
    Asset('media.png'),
  ),
  (
    '空を飛ぶ夢',
    'なぜかみんな普通に空を飛べる世界で、高度を調整できず、雲の中をぐるぐる回り続ける。',
    Asset('media2.png'),
  ),
  (
    '試験を受ける夢',
    '試験会場に入ると、見知らぬ文字で埋め尽くされたテスト用紙が渡される。',
    Asset('media3.png'),
  ),
];

// もう一度見たい夢のリスト
final _favoriteDreams = [
  (
    '南国で寝る夢',
    '温かな太陽と心地よいそよ風が、まるで毛布のように包み込んでくれる。',
    Asset('media4.png'),
  ),
  (
    'お金がいっぱいの夢',
    '手を伸ばすと、紙幣がさらさらと指の間をすり抜ける感触がたまらない。',
    Asset('media5.png'),
  ),
  (
    '子どもの頃の夢',
    '子どもの頃のままの公園で、大好きな友達と無邪気に遊び回る。',
    Asset('media6.png'),
  ),
];
