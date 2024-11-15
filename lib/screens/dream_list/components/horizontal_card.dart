import 'package:dream_catcher/image_source.dart';
import 'package:flutter/material.dart';
import 'package:dream_catcher/app_colors.dart';
import 'package:dream_catcher/app_text_styles.dart';

class HorizontalCard extends StatelessWidget {
  const HorizontalCard({
    super.key,
    required this.title,
    required this.description,
    required this.imageSource,
    required this.onTap,
  });

  final String title;
  final String description;
  final ImageSource imageSource;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Ink(
          height: 80,
          decoration: BoxDecoration(
            color: AppColors.m3SysLightBackground,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: AppColors.m3SysLightOutlineVariant,
              width: 1,
            ),
          ),
          child: Row(
            children: [
              // 左側のアバター画像
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundColor: AppColors.m3SysLightPrimaryContainer,
                  child: Text(
                    'A',
                    style: AppTextStyles.m3TitleMedium.copyWith(
                      color: AppColors.m3SysLightOnPrimaryContainer,
                    ),
                  ),
                ),
              ),

              // 中央のテキスト部分
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        title,
                        style: AppTextStyles.m3TitleMedium.copyWith(
                          color: AppColors.m3SysLightOnSurface,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        description,
                        style: AppTextStyles.m3BodyMedium.copyWith(
                          color: AppColors.m3SysLightOnSurfaceVariant,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ),

              // 右側の画像
              // ClipRRect(
              //   borderRadius: const BorderRadius.only(
              //     topRight: Radius.circular(12),
              //     bottomRight: Radius.circular(12),
              //   ),
              //   child: switch (imageSource) {
              //     Asset(path: final path) => Image.asset(path),
              //     Network(url: final url) => Image.network(url),
              //   },
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
