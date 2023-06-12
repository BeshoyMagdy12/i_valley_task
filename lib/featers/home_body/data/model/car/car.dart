import 'package:equatable/equatable.dart';

class CarModel extends Equatable {
  final int? advertismentId;
  final double? price;
  final dynamic count;
  final DateTime? carModel;
  final DateTime? createdDate;
  final String? createdBy;
  final DateTime? lastModifiedDate;
  final dynamic lastModifiedBy;
  final dynamic isDeleted;
  final int? advertTypeId;
  final int? carBrandId;
  final int? carTypeId;
  final int? exhibitionProfileId;
  final String? note;
  final String? mainTitle;
  final String? model;
  final dynamic advertCityId;
  final dynamic transmissionTypeId;
  final int? categoryTypeId;
  final int? colorId;
  final int? whatsappCounter;
  final int? callCounter;
  final String? description;
  final String? keyWords;
  final bool? isOnline;
  final bool? isFinance;
  final int? numberOfCars;
  final double? registrationAmont;
  final dynamic agencyWarranty;
  final bool? isYoutube;
  final dynamic youtubeUrl;
  final dynamic youtubeImageUrl;
  final String? mainImagePath;
  final String? smallImagePath;
  final String? brandName;
  final String? typeName;
  final String? userId;
  final String? logopath;
  final dynamic transmissionTypeName;
  final dynamic color;
  final String? categoryType;
  final String? city;
  final String? rate;
  final dynamic cityName;
  final String? advertTypeName;
  final int? hours;
  final int? minuts;
  final int? liked;
  final int? exhibitionProfileId1;
  final String? fullName;
  final String? phone;
  final dynamic otherPhone;
  final String? exhibitionLogo;
  final String? email;
  final dynamic commercialRegister;
  final dynamic municipalLicense;
  final DateTime? loginExpireDate;
  final String? city1;
  final String? rate1;
  final String? userId1;
  final DateTime? createdDate1;
  final dynamic createdBy1;
  final DateTime? lastModifiedDate1;
  final dynamic lastModifiedBy1;
  final dynamic isDeleted1;
  final bool? isLock;
  final dynamic otherPhone2;
  final int? typeOfSubscriptionId;
  final dynamic otherPhone3;
  final dynamic otherPhone4;
  final dynamic otherPhone5;
  final dynamic otherPhone6;
  final dynamic otherPhone7;
  final dynamic isStopBundel;
  final bool? canAddDailyAdver;
  final dynamic isMembership;
  final int? rateCount;

  const CarModel({
    this.advertismentId,
    this.price,
    this.count,
    this.carModel,
    this.createdDate,
    this.createdBy,
    this.lastModifiedDate,
    this.lastModifiedBy,
    this.isDeleted,
    this.advertTypeId,
    this.carBrandId,
    this.carTypeId,
    this.exhibitionProfileId,
    this.note,
    this.mainTitle,
    this.model,
    this.advertCityId,
    this.transmissionTypeId,
    this.categoryTypeId,
    this.colorId,
    this.whatsappCounter,
    this.callCounter,
    this.description,
    this.keyWords,
    this.isOnline,
    this.isFinance,
    this.numberOfCars,
    this.registrationAmont,
    this.agencyWarranty,
    this.isYoutube,
    this.youtubeUrl,
    this.youtubeImageUrl,
    this.mainImagePath,
    this.smallImagePath,
    this.brandName,
    this.typeName,
    this.userId,
    this.logopath,
    this.transmissionTypeName,
    this.color,
    this.categoryType,
    this.city,
    this.rate,
    this.cityName,
    this.advertTypeName,
    this.hours,
    this.minuts,
    this.liked,
    this.exhibitionProfileId1,
    this.fullName,
    this.phone,
    this.otherPhone,
    this.exhibitionLogo,
    this.email,
    this.commercialRegister,
    this.municipalLicense,
    this.loginExpireDate,
    this.city1,
    this.rate1,
    this.userId1,
    this.createdDate1,
    this.createdBy1,
    this.lastModifiedDate1,
    this.lastModifiedBy1,
    this.isDeleted1,
    this.isLock,
    this.otherPhone2,
    this.typeOfSubscriptionId,
    this.otherPhone3,
    this.otherPhone4,
    this.otherPhone5,
    this.otherPhone6,
    this.otherPhone7,
    this.isStopBundel,
    this.canAddDailyAdver,
    this.isMembership,
    this.rateCount,
  });

  factory CarModel.fromJson(Map<String, dynamic> json) => CarModel(
        advertismentId: json['AdvertismentID'] as int?,
        price: json['Price'] as double?,
        count: json['Count'] as dynamic,
        carModel: json['CarModel'] == null
            ? null
            : DateTime.parse(json['CarModel'] as String),
        createdDate: json['CreatedDate'] == null
            ? null
            : DateTime.parse(json['CreatedDate'] as String),
        createdBy: json['CreatedBy'] as String?,
        lastModifiedDate: json['LastModifiedDate'] == null
            ? null
            : DateTime.parse(json['LastModifiedDate'] as String),
        lastModifiedBy: json['LastModifiedBy'] as dynamic,
        isDeleted: json['IsDeleted'] as dynamic,
        advertTypeId: json['AdvertTypeID'] as int?,
        carBrandId: json['CarBrandID'] as int?,
        carTypeId: json['CarTypeID'] as int?,
        exhibitionProfileId: json['ExhibitionProfileID'] as int?,
        note: json['Note'] as String?,
        mainTitle: json['MainTitle'] as String?,
        model: json['Model'] as String?,
        advertCityId: json['AdvertCityID'] as dynamic,
        transmissionTypeId: json['TransmissionTypeId'] as dynamic,
        categoryTypeId: json['CategoryTypeId'] as int?,
        colorId: json['ColorId'] as int?,
        whatsappCounter: json['WhatsappCounter'] as int?,
        callCounter: json['CallCounter'] as int?,
        description: json['Description'] as String?,
        keyWords: json['KeyWords'] as String?,
        isOnline: json['IsOnline'] as bool?,
        isFinance: json['IsFinance'] as bool?,
        numberOfCars: json['NumberOfCars'] as int?,
        registrationAmont: json['RegistrationAmont'] as double?,
        agencyWarranty: json['AgencyWarranty'] as dynamic,
        isYoutube: json['IsYoutube'] as bool?,
        youtubeUrl: json['YoutubeURL'] as dynamic,
        youtubeImageUrl: json['YoutubeImageURL'] as dynamic,
        mainImagePath: json['MainImagePath'] as String?,
        smallImagePath: json['SmallImagePath'] as String?,
        brandName: json['BrandName'] as String?,
        typeName: json['TypeName'] as String?,
        userId: json['UserID'] as String?,
        logopath: json['logopath'] as String?,
        transmissionTypeName: json['TransmissionTypeName'] as dynamic,
        color: json['Color'] as dynamic,
        categoryType: json['CategoryType'] as String?,
        city: json['City'] as String?,
        rate: json['Rate'] as String?,
        cityName: json['CityName'] as dynamic,
        advertTypeName: json['AdvertTypeName'] as String?,
        hours: json['Hours'] as int?,
        minuts: json['Minuts'] as int?,
        liked: json['Liked'] as int?,
        exhibitionProfileId1: json['ExhibitionProfileID1'] as int?,
        fullName: json['FullName'] as String?,
        phone: json['Phone'] as String?,
        otherPhone: json['OtherPhone'] as dynamic,
        exhibitionLogo: json['ExhibitionLogo'] as String?,
        email: json['Email'] as String?,
        commercialRegister: json['CommercialRegister'] as dynamic,
        municipalLicense: json['MunicipalLicense'] as dynamic,
        loginExpireDate: json['LoginExpireDate'] == null
            ? null
            : DateTime.parse(json['LoginExpireDate'] as String),
        city1: json['City1'] as String?,
        rate1: json['Rate1'] as String?,
        userId1: json['UserID1'] as String?,
        createdDate1: json['CreatedDate1'] == null
            ? null
            : DateTime.parse(json['CreatedDate1'] as String),
        createdBy1: json['CreatedBy1'] as dynamic,
        lastModifiedDate1: json['LastModifiedDate1'] == null
            ? null
            : DateTime.parse(json['LastModifiedDate1'] as String),
        lastModifiedBy1: json['LastModifiedBy1'] as dynamic,
        isDeleted1: json['IsDeleted1'] as dynamic,
        isLock: json['IsLock'] as bool?,
        otherPhone2: json['OtherPhone2'] as dynamic,
        typeOfSubscriptionId: json['TypeOfSubscriptionID'] as int?,
        otherPhone3: json['OtherPhone3'] as dynamic,
        otherPhone4: json['OtherPhone4'] as dynamic,
        otherPhone5: json['OtherPhone5'] as dynamic,
        otherPhone6: json['OtherPhone6'] as dynamic,
        otherPhone7: json['OtherPhone7'] as dynamic,
        isStopBundel: json['IsStopBundel'] as dynamic,
        canAddDailyAdver: json['CanAddDailyAdver'] as bool?,
        isMembership: json['isMembership'] as dynamic,
        rateCount: json['RateCount'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'AdvertismentID': advertismentId,
        'Price': price,
        'Count': count,
        'CarModel': carModel?.toIso8601String(),
        'CreatedDate': createdDate?.toIso8601String(),
        'CreatedBy': createdBy,
        'LastModifiedDate': lastModifiedDate?.toIso8601String(),
        'LastModifiedBy': lastModifiedBy,
        'IsDeleted': isDeleted,
        'AdvertTypeID': advertTypeId,
        'CarBrandID': carBrandId,
        'CarTypeID': carTypeId,
        'ExhibitionProfileID': exhibitionProfileId,
        'Note': note,
        'MainTitle': mainTitle,
        'Model': model,
        'AdvertCityID': advertCityId,
        'TransmissionTypeId': transmissionTypeId,
        'CategoryTypeId': categoryTypeId,
        'ColorId': colorId,
        'WhatsappCounter': whatsappCounter,
        'CallCounter': callCounter,
        'Description': description,
        'KeyWords': keyWords,
        'IsOnline': isOnline,
        'IsFinance': isFinance,
        'NumberOfCars': numberOfCars,
        'RegistrationAmont': registrationAmont,
        'AgencyWarranty': agencyWarranty,
        'IsYoutube': isYoutube,
        'YoutubeURL': youtubeUrl,
        'YoutubeImageURL': youtubeImageUrl,
        'MainImagePath': mainImagePath,
        'SmallImagePath': smallImagePath,
        'BrandName': brandName,
        'TypeName': typeName,
        'UserID': userId,
        'logopath': logopath,
        'TransmissionTypeName': transmissionTypeName,
        'Color': color,
        'CategoryType': categoryType,
        'City': city,
        'Rate': rate,
        'CityName': cityName,
        'AdvertTypeName': advertTypeName,
        'Hours': hours,
        'Minuts': minuts,
        'Liked': liked,
        'ExhibitionProfileID1': exhibitionProfileId1,
        'FullName': fullName,
        'Phone': phone,
        'OtherPhone': otherPhone,
        'ExhibitionLogo': exhibitionLogo,
        'Email': email,
        'CommercialRegister': commercialRegister,
        'MunicipalLicense': municipalLicense,
        'LoginExpireDate': loginExpireDate?.toIso8601String(),
        'City1': city1,
        'Rate1': rate1,
        'UserID1': userId1,
        'CreatedDate1': createdDate1?.toIso8601String(),
        'CreatedBy1': createdBy1,
        'LastModifiedDate1': lastModifiedDate1?.toIso8601String(),
        'LastModifiedBy1': lastModifiedBy1,
        'IsDeleted1': isDeleted1,
        'IsLock': isLock,
        'OtherPhone2': otherPhone2,
        'TypeOfSubscriptionID': typeOfSubscriptionId,
        'OtherPhone3': otherPhone3,
        'OtherPhone4': otherPhone4,
        'OtherPhone5': otherPhone5,
        'OtherPhone6': otherPhone6,
        'OtherPhone7': otherPhone7,
        'IsStopBundel': isStopBundel,
        'CanAddDailyAdver': canAddDailyAdver,
        'isMembership': isMembership,
        'RateCount': rateCount,
      };

  @override
  List<Object?> get props {
    return [
      advertismentId,
      price,
      count,
      carModel,
      createdDate,
      createdBy,
      lastModifiedDate,
      lastModifiedBy,
      isDeleted,
      advertTypeId,
      carBrandId,
      carTypeId,
      exhibitionProfileId,
      note,
      mainTitle,
      model,
      advertCityId,
      transmissionTypeId,
      categoryTypeId,
      colorId,
      whatsappCounter,
      callCounter,
      description,
      keyWords,
      isOnline,
      isFinance,
      numberOfCars,
      registrationAmont,
      agencyWarranty,
      isYoutube,
      youtubeUrl,
      youtubeImageUrl,
      mainImagePath,
      smallImagePath,
      brandName,
      typeName,
      userId,
      logopath,
      transmissionTypeName,
      color,
      categoryType,
      city,
      rate,
      cityName,
      advertTypeName,
      hours,
      minuts,
      liked,
      exhibitionProfileId1,
      fullName,
      phone,
      otherPhone,
      exhibitionLogo,
      email,
      commercialRegister,
      municipalLicense,
      loginExpireDate,
      city1,
      rate1,
      userId1,
      createdDate1,
      createdBy1,
      lastModifiedDate1,
      lastModifiedBy1,
      isDeleted1,
      isLock,
      otherPhone2,
      typeOfSubscriptionId,
      otherPhone3,
      otherPhone4,
      otherPhone5,
      otherPhone6,
      otherPhone7,
      isStopBundel,
      canAddDailyAdver,
      isMembership,
      rateCount,
    ];
  }
}
