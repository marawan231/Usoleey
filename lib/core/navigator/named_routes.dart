enum NamedRoutes {
  splash('/'),
  chooseAppLanguage('/chooseAppLanguage'),
  //onBoarding
  onBoarding('/onBoarding'),
  //login
  login('/login'),
  //layout
  layout('/layout'),
  //ownerLayout
  ownerLayout('/ownerLayout'),
  //home
  home('/home'),
  //notifications
  notifications('/notifications'),
  //account info
  accountInfo('/accountInfo'),
  //offers
  offers('/offers'),
  //about app
  aboutApp('/aboutApp'),
  //terms and conditions
  termsAndConditions('/termsAndConditions'),
  //help and support
  helpAndSupport('/helpAndSupport'),
  //ticket details
  ticketDetails('/ticketDetails'),
  //propertyDetails
  propertyDetails('/propertyDetails'),
  //createUnit
  createUnit('/createUnit'),
  //ownerPropertyDetails
  ownerPropertyDetails('/ownerPropertyDetails'),
  //unitDetails
  ownerUnitDetails('/unitDetails'), //unitDetails
  ownerInvoices('/ownerInvoices'),
  ownerTikcets('/ownerTikcets'),
  updateUnit('/updateUnit'),
  ;

  final String routeName;

  const NamedRoutes(this.routeName);
}
