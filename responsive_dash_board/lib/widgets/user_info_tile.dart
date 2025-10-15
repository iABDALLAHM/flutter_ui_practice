import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/models/user_info_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class UserInfoTile extends StatelessWidget {
  const UserInfoTile({super.key, required this.userInfoModel});
  final UserInfoModel userInfoModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xffFAFAFA),
      elevation: 0,
      child: ListTile(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        title: Text(userInfoModel.name, style: AppStyles.styleSemiBold16),
        subtitle: Text(userInfoModel.subtitle, style: AppStyles.styleRegular12),
        leading: SvgPicture.asset(userInfoModel.image),
      ),
    );
  }
}
