import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mishads_codefolio/core/config/web_base_scaffold.dart';
import 'package:mishads_codefolio/core/config/web_colors.dart';
import 'package:mishads_codefolio/core/config/web_icons.dart';
import 'package:mishads_codefolio/core/config/web_social_links.dart';
import 'package:mishads_codefolio/core/utils/web_custom_text.dart';
import 'package:mishads_codefolio/feature/home/view_model/home_view_model.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StoryView extends StatelessWidget {
  const StoryView({super.key});

  static const List<Map<String, String>> _achievements = [
    {
      'icon': '🏆',
      'title': 'Learnathon 3.0 Finalist',
      'detail': 'Runners-up in the Flutter Stack — a 3-month intensive training & competition sponsored by Brain Station 23.',
    },
    {
      'icon': '🌏',
      'title': 'ICPC Asia Dhaka Regional',
      'detail': 'Honorable Mention at the ICPC Asia Dhaka Regional contest, competing against top university teams.',
    },
    {
      'icon': '💻',
      'title': 'Intra-University Programming Contest',
      'detail': 'Ranked Top 10 in competitive programming among university peers.',
    },
    {
      'icon': '🎓',
      'title': 'University Club System',
      'detail': 'Designed and implemented a university-wide club management platform used across departments.',
    },
    {
      'icon': '⚙️',
      'title': 'EDU Engineering Day Hackathon',
      'detail': 'Collaborated on complex technical challenges in a team setting during the annual engineering day event.',
    },
  ];

  static const List<Map<String, String>> _certifications = [
    {
      'title': 'App Development with Flutter',
      'issuer': 'Ostad',
      'color': 'primary',
    },
    {
      'title': 'Flutter & Dart – The Complete Guide',
      'issuer': 'Udemy',
      'color': 'purple',
    },
    {
      'title': 'Android Mobile App Development',
      'issuer': 'Coursera',
      'color': 'primary',
    },
    {
      'title': 'Data Structures & Algorithms (C++)',
      'issuer': 'Udemy',
      'color': 'purple',
    },
    {
      'title': 'Object-Oriented Programming with C++',
      'issuer': 'Udemy',
      'color': 'primary',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<HomeViewModel>(context, listen: false);
    return WebBaseScaffold(
      widget: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _buildHeader(),
          SizedBox(height: 6.h),
          _buildStats(),
          SizedBox(height: 7.h),
          _buildSectionTitle('Notable Achievements', 'Wins & milestones along the journey'),
          SizedBox(height: 3.h),
          _buildAchievements(),
          SizedBox(height: 7.h),
          _buildSectionTitle('Certifications', 'Verified skills and completed courses'),
          SizedBox(height: 3.h),
          _buildCertifications(),
          SizedBox(height: 8.h),
          _buildContact(model),
          SizedBox(height: 5.h),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Column(
      children: [
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Achievements ',
                style: GoogleFonts.urbanist(
                  fontSize: 26,
                  fontWeight: FontWeight.w700,
                  color: WebColors.white,
                ),
              ),
              TextSpan(
                text: '& Recognition',
                style: GoogleFonts.urbanist(
                  fontSize: 26,
                  fontWeight: FontWeight.w700,
                  color: WebColors.primary,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        WebText(
          'Competitive wins, certifications, and milestones',
          color: WebColors.gray400,
          fontSize: 14,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget _buildStats() {
    final stats = [
      {'value': '400+', 'label': 'DSA Problems', 'sub': 'LeetCode & Codeforces', 'icon': '🧩'},
      {'value': '2+', 'label': 'Years Experience', 'sub': 'Professional & freelance', 'icon': '💼'},
      {'value': '30+', 'label': 'Projects Built', 'sub': 'Flutter, Kotlin, Python & more', 'icon': '🚀'},
    ];
    return Wrap(
      spacing: 24,
      runSpacing: 16,
      alignment: WrapAlignment.center,
      children: stats.map((s) => _StatCard(stat: s)).toList(),
    );
  }

  Widget _buildSectionTitle(String title, String sub) {
    return Column(
      children: [
        WebText(title, fontSize: 20, fontWeight: FontWeight.w600),
        const SizedBox(height: 4),
        WebText(sub, color: WebColors.gray400, fontSize: 13),
      ],
    );
  }

  Widget _buildAchievements() {
    return Wrap(
      spacing: 20,
      runSpacing: 16,
      alignment: WrapAlignment.center,
      children: _achievements.map((a) => _AchievementCard(achievement: a)).toList(),
    );
  }

  Widget _buildCertifications() {
    return Wrap(
      spacing: 20,
      runSpacing: 16,
      alignment: WrapAlignment.center,
      children: _certifications
          .map((c) => _CertCard(cert: c))
          .toList(),
    );
  }

  Widget _buildContact(HomeViewModel model) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 700),
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 40),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: WebColors.gray800,
        border: Border.all(color: WebColors.primary.withOpacity(0.25)),
      ),
      child: Column(
        children: [
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Let's ",
                  style: GoogleFonts.urbanist(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    color: WebColors.white,
                  ),
                ),
                TextSpan(
                  text: 'Connect',
                  style: GoogleFonts.urbanist(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    color: WebColors.primary,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          const WebText(
            'Open to collaborations, freelance work, and exciting opportunities.',
            color: WebColors.gray400,
            fontSize: 14,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 28),
          Wrap(
            spacing: 16,
            runSpacing: 12,
            alignment: WrapAlignment.center,
            children: [
              _ContactButton(
                label: 'sakifmishad.dev@gmail.com',
                icon: Icons.email_outlined,
                onTap: () => model.openUrl('mailto:sakifmishad.dev@gmail.com'),
                filled: true,
              ),
              _ContactButton(
                label: 'GitHub',
                svgIcon: WebIcons.github,
                onTap: () => model.openUrl(WebSocialLinks.githubLink),
              ),
              _ContactButton(
                label: 'LinkedIn',
                svgIcon: WebIcons.linkedin,
                onTap: () => model.openUrl(WebSocialLinks.linkedinLink),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _StatCard extends StatefulWidget {
  final Map<String, String> stat;
  const _StatCard({required this.stat});

  @override
  State<_StatCard> createState() => _StatCardState();
}

class _StatCardState extends State<_StatCard> {
  bool _hovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _hovered = true),
      onExit: (_) => setState(() => _hovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 180),
        width: 200,
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: _hovered ? WebColors.gray700 : WebColors.gray800,
          border: Border.all(
            color: _hovered
                ? WebColors.primary.withOpacity(0.7)
                : WebColors.primary.withOpacity(0.2),
          ),
          boxShadow: _hovered
              ? [BoxShadow(color: WebColors.primary.withOpacity(0.12), blurRadius: 18)]
              : [],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(widget.stat['icon']!, style: const TextStyle(fontSize: 26)),
            const SizedBox(height: 8),
            Text(
              widget.stat['value']!,
              style: GoogleFonts.urbanist(
                fontSize: 32,
                fontWeight: FontWeight.w800,
                color: WebColors.primary,
              ),
            ),
            const SizedBox(height: 4),
            WebText(
              widget.stat['label']!,
              fontWeight: FontWeight.w600,
              fontSize: 13,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 2),
            WebText(
              widget.stat['sub']!,
              color: WebColors.gray400,
              fontSize: 11,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class _AchievementCard extends StatefulWidget {
  final Map<String, String> achievement;
  const _AchievementCard({required this.achievement});

  @override
  State<_AchievementCard> createState() => _AchievementCardState();
}

class _AchievementCardState extends State<_AchievementCard> {
  bool _hovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _hovered = true),
      onExit: (_) => setState(() => _hovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 180),
        width: 340,
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: _hovered ? WebColors.gray700 : WebColors.gray800,
          border: Border.all(
            color: _hovered
                ? WebColors.purple300.withOpacity(0.5)
                : Colors.white.withOpacity(0.06),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.achievement['icon']!,
              style: const TextStyle(fontSize: 28),
            ),
            const SizedBox(width: 14),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  WebText(
                    widget.achievement['title']!,
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: WebColors.white,
                  ),
                  const SizedBox(height: 6),
                  WebText(
                    widget.achievement['detail']!,
                    color: WebColors.gray400,
                    fontSize: 12,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CertCard extends StatefulWidget {
  final Map<String, String> cert;
  const _CertCard({required this.cert});

  @override
  State<_CertCard> createState() => _CertCardState();
}

class _CertCardState extends State<_CertCard> {
  bool _hovered = false;

  @override
  Widget build(BuildContext context) {
    final isPrimary = widget.cert['color'] == 'primary';
    final accentColor = isPrimary ? WebColors.primary : WebColors.purple300;

    return MouseRegion(
      onEnter: (_) => setState(() => _hovered = true),
      onExit: (_) => setState(() => _hovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 180),
        width: 280,
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: _hovered ? WebColors.gray700 : WebColors.gray800,
          border: Border.all(
            color: _hovered ? accentColor.withOpacity(0.6) : accentColor.withOpacity(0.2),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: accentColor.withOpacity(0.12),
              ),
              child: Text(
                widget.cert['issuer']!,
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w600,
                  color: accentColor,
                ),
              ),
            ),
            const SizedBox(height: 10),
            WebText(
              widget.cert['title']!,
              fontWeight: FontWeight.w500,
              fontSize: 13,
              color: WebColors.white,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Icon(Icons.verified, size: 14, color: accentColor),
                const SizedBox(width: 4),
                WebText('Certified', color: accentColor, fontSize: 11),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _ContactButton extends StatefulWidget {
  final String label;
  final IconData? icon;
  final String? svgIcon;
  final VoidCallback onTap;
  final bool filled;

  const _ContactButton({
    required this.label,
    this.icon,
    this.svgIcon,
    required this.onTap,
    this.filled = false,
  });

  @override
  State<_ContactButton> createState() => _ContactButtonState();
}

class _ContactButtonState extends State<_ContactButton> {
  bool _hovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => _hovered = true),
      onExit: (_) => setState(() => _hovered = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 150),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: widget.filled
                ? (_hovered ? WebColors.primary.withOpacity(0.85) : WebColors.primary)
                : (_hovered ? WebColors.gray700 : Colors.transparent),
            border: widget.filled
                ? null
                : Border.all(color: WebColors.gray400.withOpacity(0.4)),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (widget.icon != null)
                Icon(widget.icon, size: 16, color: widget.filled ? Colors.black : WebColors.white),
              if (widget.svgIcon != null)
                SvgPicture.asset(
                  widget.svgIcon!,
                  height: 16,
                  width: 16,
                  colorFilter: ColorFilter.mode(
                    widget.filled ? Colors.black : WebColors.white,
                    BlendMode.srcIn,
                  ),
                ),
              const SizedBox(width: 8),
              Text(
                widget.label,
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: widget.filled ? Colors.black : WebColors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
