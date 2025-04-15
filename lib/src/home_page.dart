import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rive/rive.dart' hide Image;
import 'package:steniooliv/src/services/url_launcher.dart';
import 'package:steniooliv/src/shared/widgets/label_button_widget.dart';
import 'package:steniooliv/src/tokens/tokens_text_styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: SvgPicture.asset(
              "assets/images/svg/background.svg",
              fit: BoxFit.fill,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 48),
              child: SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 800),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/images/png/stenio-face.png",
                          height: size.height * 0.33,
                        ),
                        SizedBox(
                          height: size.height * 0.07,
                        ),
                        Text(
                          "Olá, \nMeu nome é Stênio! \n\nSou desenvolvedor Flutter e você pode entrar em contato comigo abaixo:",
                          style: STextStyles.h36Bold
                              .copyWith(color: const Color(0xFFF2F2F2)),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: size.height * 0.07,
                        ),
                        SizedBox(
                          height: size.height * 0.07,
                          child: const RiveAnimation.asset(
                              "assets/rive/scroll-down.riv"),
                        ),
                        SizedBox(
                          height: size.height * 0.07,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 8,
                          ),
                          child: SLabelButtonWidget(
                            label: "GitHub",
                            onPressed: () {
                              launchBrowserDefault(
                                "https://www.github.com/steniooliv",
                              );
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 8,
                          ),
                          child: SLabelButtonWidget(
                            label: "LinkedIn",
                            onPressed: () {
                              launchBrowserDefault(
                                "https://www.linkedin.com/in/steniooliv",
                              );
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 8,
                          ),
                          child: SLabelButtonWidget(
                            label: "YouTube",
                            onPressed: () {
                              launchBrowserDefault(
                                "https://www.youtube.com/steniooliv",
                              );
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 8,
                          ),
                          child: SLabelButtonWidget(
                            label: "Instagram",
                            onPressed: () {
                              launchBrowserDefault(
                                "https://www.instagram.com/steniooliv",
                              );
                            },
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.15,
                        ),
                        Text(
                          "made with 💙 in Flutter",
                          style: STextStyles.b18Bold
                              .copyWith(color: const Color(0xFFF2F2F2)),
                        ),
                        Text(
                          "by steniooliv",
                          style: STextStyles.b18Bold
                              .copyWith(color: const Color(0xFFF2F2F2)),
                        ),
                        const SizedBox(
                          height: 32,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
