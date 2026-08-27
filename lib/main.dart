import 'package:flutter/material.dart';

void main() {
  runApp(const PortfolioAnggaApp());
}

class PortfolioAnggaApp extends StatelessWidget {
  const PortfolioAnggaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Angga | Video Editor',
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Arial',
      ),
      home: const PortfolioHomePage(),
    );
  }
}

class PortfolioHomePage extends StatelessWidget {
  const PortfolioHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0B0B0B),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const PortfolioNavbar(),

            // HERO SECTION
            Container(
              width: double.infinity,
              constraints: const BoxConstraints(minHeight: 650),
              padding: const EdgeInsets.symmetric(
                horizontal: 40,
                vertical: 80,
              ),
              child: Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 1200),
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      final isMobile = constraints.maxWidth < 800;

                      if (isMobile) {
                        return const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            HeroText(),
                            SizedBox(height: 50),
                            HeroVisual(),
                          ],
                        );
                      }

                      return const Row(
                        children: [
                          Expanded(
                            flex: 6,
                            child: HeroText(),
                          ),
                          SizedBox(width: 50),
                          Expanded(
                            flex: 4,
                            child: HeroVisual(),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
            ),

            // ABOUT SECTION
            PortfolioSection(
              title: 'ABOUT ME',
              child: LayoutBuilder(
                builder: (context, constraints) {
                  final isMobile = constraints.maxWidth < 800;

                  if (isMobile) {
                    return const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AboutText(),
                        SizedBox(height: 40),
                        ExperienceCard(),
                      ],
                    );
                  }

                  return const Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(flex: 6, child: AboutText()),
                      SizedBox(width: 80),
                      Expanded(flex: 4, child: ExperienceCard()),
                    ],
                  );
                },
              ),
            ),

            // SKILLS / TOOLS
            PortfolioSection(
              title: 'TOOLS I USE',
              child: Wrap(
                spacing: 20,
                runSpacing: 20,
                children: const [
                  ToolCard(
                    name: 'Adobe Premiere Pro',
                    shortName: 'Pr',
                  ),
                  ToolCard(
                    name: 'After Effects',
                    shortName: 'Ae',
                  ),
                  ToolCard(
                    name: 'DaVinci Resolve',
                    shortName: 'DaV',
                  ),
                  ToolCard(
                    name: 'CapCut',
                    shortName: 'CC',
                  ),
                  ToolCard(
                    name: 'Canva',
                    shortName: 'C',
                  ),
                  ToolCard(
                    name: 'Figma',
                    shortName: 'F',
                  ),
                ],
              ),
            ),

            // SERVICES
            PortfolioSection(
              title: 'WHAT I DO',
              child: LayoutBuilder(
                builder: (context, constraints) {
                  final width = constraints.maxWidth;

                  return Wrap(
                    spacing: 20,
                    runSpacing: 20,
                    children: [
                      ServiceCard(
                        width: width > 900 ? (width - 40) / 3 : width,
                        number: '01',
                        title: 'Video Editing',
                        description:
                            'Editing engaging and professional videos with strong storytelling and pacing.',
                      ),
                      ServiceCard(
                        width: width > 900 ? (width - 40) / 3 : width,
                        number: '02',
                        title: 'Motion Graphics',
                        description:
                            'Creating dynamic motion elements, typography, transitions, and visual effects.',
                      ),
                      ServiceCard(
                        width: width > 900 ? (width - 40) / 3 : width,
                        number: '03',
                        title: 'Content Creation',
                        description:
                            'Creating visual content optimized for social media and digital platforms.',
                      ),
                    ],
                  );
                },
              ),
            ),

            // EXPERIENCE
            PortfolioSection(
              title: 'EXPERIENCE',
              child: Container(
                padding: const EdgeInsets.all(30),
                decoration: BoxDecoration(
                  color: const Color(0xFF151515),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.white.withOpacity(0.08),
                  ),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '2023 — 2026',
                      style: TextStyle(
                        color: Color(0xFFB7FF00),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      'VIDEO EDITOR',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      'Developing creative video content, editing engaging visuals, creating motion graphics, and continuously improving storytelling through video.',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 16,
                        height: 1.7,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // CONTACT
            Container(
              width: double.infinity,
              color: const Color(0xFFB7FF00),
              padding: const EdgeInsets.symmetric(
                horizontal: 40,
                vertical: 80,
              ),
              child: Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 1200),
                  child: const ContactSection(),
                ),
              ),
            ),

            // FOOTER
            Container(
              width: double.infinity,
              color: Colors.black,
              padding: const EdgeInsets.all(30),
              child: const Center(
                child: Text(
                  '© 2026 ANGGA. ALL RIGHTS RESERVED.',
                  style: TextStyle(
                    color: Colors.white54,
                    letterSpacing: 1.5,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PortfolioNavbar extends StatelessWidget {
  const PortfolioNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: 40,
        vertical: 25,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFF0B0B0B),
        border: Border(
          bottom: BorderSide(
            color: Colors.white.withOpacity(0.08),
          ),
        ),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'ANGGA.',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.w900,
              letterSpacing: 2,
            ),
          ),
          Text(
            'VIDEO EDITOR',
            style: TextStyle(
              color: Color(0xFFB7FF00),
              fontSize: 14,
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
            ),
          ),
        ],
      ),
    );
  }
}

class HeroText extends StatelessWidget {
  const HeroText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'HELLO, I AM',
          style: TextStyle(
            color: Color(0xFFB7FF00),
            fontSize: 16,
            fontWeight: FontWeight.bold,
            letterSpacing: 4,
          ),
        ),
        const SizedBox(height: 20),
        const Text(
          'ANGGA',
          style: TextStyle(
            color: Colors.white,
            fontSize: 76,
            fontWeight: FontWeight.w900,
            height: 0.9,
          ),
        ),
        const SizedBox(height: 10),
        const Text(
          'VIDEO EDITOR',
          style: TextStyle(
            color: Colors.white,
            fontSize: 42,
            fontWeight: FontWeight.w800,
            letterSpacing: 2,
          ),
        ),
        const SizedBox(height: 30),
        const SizedBox(
          width: 550,
          child: Text(
            'I create engaging visual stories through creative editing, motion graphics, and compelling digital content.',
            style: TextStyle(
              color: Colors.white70,
              fontSize: 18,
              height: 1.7,
            ),
          ),
        ),
        const SizedBox(height: 35),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFFB7FF00),
            foregroundColor: Colors.black,
            padding: const EdgeInsets.symmetric(
              horizontal: 28,
              vertical: 20,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: const Text(
            'VIEW MY WORK  →',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
            ),
          ),
        ),
      ],
    );
  }
}

class HeroVisual extends StatelessWidget {
  const HeroVisual({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 480,
      decoration: BoxDecoration(
        color: const Color(0xFF171717),
        borderRadius: BorderRadius.circular(25),
        border: Border.all(
          color: Colors.white.withOpacity(0.08),
        ),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 30,
            right: 30,
            child: Container(
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: const Color(0xFFB7FF00),
                borderRadius: BorderRadius.circular(50),
              ),
              child: const Icon(
                Icons.play_arrow,
                color: Colors.black,
                size: 35,
              ),
            ),
          ),
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.movie_creation_outlined,
                color: Color(0xFFB7FF00),
                size: 100,
              ),
              SizedBox(height: 20),
              Text(
                'CREATIVE\nVIDEO EDITOR',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.w900,
                  letterSpacing: 2,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class PortfolioSection extends StatelessWidget {
  final String title;
  final Widget child;

  const PortfolioSection({
    super.key,
    required this.title,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: 40,
        vertical: 80,
      ),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1200),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Color(0xFFB7FF00),
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 3,
                ),
              ),
              const SizedBox(height: 35),
              child,
            ],
          ),
        ),
      ),
    );
  }
}

class AboutText extends StatelessWidget {
  const AboutText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'I am a passionate Video Editor with experience from 2023 to 2026. I focus on transforming raw footage into engaging visual stories that capture attention and communicate ideas effectively.\n\nI enjoy exploring creative editing techniques, motion graphics, transitions, pacing, and visual storytelling to create content that feels modern, dynamic, and memorable.',
      style: TextStyle(
        color: Colors.white70,
        fontSize: 18,
        height: 1.8,
      ),
    );
  }
}

class ExperienceCard extends StatelessWidget {
  const ExperienceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(35),
      decoration: BoxDecoration(
        color: const Color(0xFF151515),
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '3+ YEARS',
            style: TextStyle(
              color: Color(0xFFB7FF00),
              fontSize: 32,
              fontWeight: FontWeight.w900,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'VIDEO EDITING EXPERIENCE',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
            ),
          ),
        ],
      ),
    );
  }
}

class ToolCard extends StatelessWidget {
  final String name;
  final String shortName;

  const ToolCard({
    super.key,
    required this.name,
    required this.shortName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 150,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFF151515),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: Colors.white.withOpacity(0.08),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 55,
            height: 55,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.08),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              shortName,
              style: const TextStyle(
                color: Color(0xFFB7FF00),
                fontWeight: FontWeight.w900,
                fontSize: 20,
              ),
            ),
          ),
          const SizedBox(height: 15),
          Text(
            name,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 13,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

class ServiceCard extends StatelessWidget {
  final double width;
  final String number;
  final String title;
  final String description;

  const ServiceCard({
    super.key,
    required this.width,
    required this.number,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: const Color(0xFF151515),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            number,
            style: const TextStyle(
              color: Color(0xFFB7FF00),
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 35),
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 15),
          Text(
            description,
            style: const TextStyle(
              color: Colors.white60,
              fontSize: 15,
              height: 1.6,
            ),
          ),
        ],
      ),
    );
  }
}

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'LET’S WORK\nTOGETHER.',
          style: TextStyle(
            color: Colors.black,
            fontSize: 60,
            fontWeight: FontWeight.w900,
            height: 0.95,
          ),
        ),
        SizedBox(height: 25),
        Text(
          'Have a project in mind? Let’s create something amazing together.',
          style: TextStyle(
            color: Colors.black87,
            fontSize: 18,
          ),
        ),
        SizedBox(height: 30),
        Text(
          'CONTACT ME →',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w900,
            letterSpacing: 2,
          ),
        ),
      ],
    );
  }
}
