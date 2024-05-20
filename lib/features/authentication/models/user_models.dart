class UserModel {
  final String? username;
  final String? name;
  final String? phone;
  final String? email;
  final String? balance;
  final double? referralBalance;
  final int? kycStatus;
  final String? userType;
  final String? pin;
  final String? profileImage;
  final String? sterlingAccount;
  final String? fedAccount;
  final String? wemaAccount;
  final String? rolexAccount;
  final String? address;
  final String? webhook;
  final String? about;
  final String? token; // Change apiKey to token

  UserModel({
    this.username,
    this.name,
    this.phone,
    this.email,
    this.balance,
    this.referralBalance,
    this.kycStatus,
    this.userType,
    this.pin,
    this.profileImage,
    this.sterlingAccount,
    this.fedAccount,
    this.wemaAccount,
    this.rolexAccount,
    this.address,
    this.webhook,
    this.about,
    this.token, // Change apiKey to token
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      username: json['username'],
      name: json['name'],
      phone: json['phone'],
      email: json['email'],
      balance: json['bal'],
      referralBalance:
          json['refbal'] != null ? double.parse(json['refbal']) : null,
      kycStatus: json['kyc'],
      userType: json['type'],
      pin: json['pin'],
      profileImage: json['profile_image'],
      sterlingAccount: json['sterlen'],
      fedAccount: json['fed'],
      wemaAccount: json['wema'],
      rolexAccount: json['rolex'],
      address: json['address'],
      webhook: json['webhook'],
      about: json['about'],
      token: json['token'], // Change apiKey to token
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'username': username,
      'name': name,
      'phone': phone,
      'email': email,
      'bal': balance?.toString(),
      'refbal': referralBalance?.toString(),
      'kyc': kycStatus,
      'type': userType,
      'pin': pin,
      'profile_image': profileImage,
      'sterlen': sterlingAccount,
      'fed': fedAccount,
      'wema': wemaAccount,
      'rolex': rolexAccount,
      'address': address,
      'webhook': webhook,
      'about': about,
      'token': token, // Change apiKey to token
    };
  }
}
