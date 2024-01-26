// ignore_for_file: constant_identifier_names

const String imagePath = "assets/images";
// const String svgPath = "assets/svg";
const String imageSVGPath = "assets/svgs";
const String imagePngPath = "assets/images/png";
const String imageTempPath = "assets/temp";

class AssetsManager {
  //create temp
  static const String homeProfileTemp = "$imageTempPath/home_profile_temp.jpg";
  //app logo
  static const String appLogo = "$imagePath/app_logo.png";

  //onBoarding
  static const String backgroundShape = "$imageSVGPath/background_shape.svg";
  static const String onBoarding1 = "$imageSVGPath/on_boarding1.svg";
  static const String onBoarding2 = "$imageSVGPath/on_boarding2.svg";
  static const String onBoarding3 = "$imageSVGPath/on_boarding3.svg";
  //login
  static const String loginBackground = "$imagePath/login_banner.png";
  //navbar home
  static const String navbarHome = "$imageSVGPath/navbar_home.svg";
  static const String navbarFwateer = "$imageSVGPath/navbar_fwateer.svg";
  static const String navbarTickets = "$imageSVGPath/navbar_tickets.svg";
  static const String navbarMore = "$imageSVGPath/navbar_more.svg";
}
