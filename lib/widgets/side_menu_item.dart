import 'package:material_ui/material_ui.dart';
import 'package:qweqwe_ui/qweqwe_ui.dart';

class SideMenuItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback? onTap;

  const SideMenuItem({
    super.key,
    required this.icon,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
          children: [
            Icon(
              icon,
              color: AppColors.accent,
              size: 22,
            ),
            const SizedBox(width: 24),
            Text(
              title,
              style: AppTypography.redHeadText.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                letterSpacing: -0.3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
