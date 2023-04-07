class OnboardingContents {
  final String title;
  final String image;
  final String desc;

  OnboardingContents(
      {required this.title, required this.image, required this.desc});
}

List<OnboardingContents> contents = [
  OnboardingContents(
    title: "Bienvenue !",
    image: "assets/images/11.jpg",
    desc: "Louez la voiture, vivez le moment.",
  ),
  OnboardingContents(
    title: "Explorez le monde sur quatre roues",
    image: "assets/images/12.jpg",
    desc: "Prenez le volant avec prudence!",
  ),
  OnboardingContents(
    title: "Débloquez votre voyage avec nous. !",
    image: "assets/images/13.jpg",
    desc: "Votre trajet, en famille c'est mieux",
  ),
  OnboardingContents(
    title: "Conduisez vos rêves.",
    image: "assets/images/14.jpg",
    desc: "Les clés de votre aventure.",
  )
];
