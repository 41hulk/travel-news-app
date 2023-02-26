import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travelui/app_style.dart';
import 'package:travelui/size_config.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        children: [
          Row(
            children: [
              Container(
                height: 51,
                width: 51,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(kBorderRadius),
                  color: kLightBlue,
                  image: const DecorationImage(
                      image: NetworkImage(
                          'https://cdn3d.iconscout.com/3d/premium/thumb/man-avatar-6299539-5187871.png')),
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Welcome back!',
                    style: kPoppinsBold.copyWith(
                      fontSize: SizeConfig.blockSizeHorizontal! * 4,
                    ),
                  ),
                  Text(
                    'Monday, 31 October',
                    style: kPoppinsRegular.copyWith(
                      color: kGrey,
                      fontSize: SizeConfig.blockSizeHorizontal! * 3,
                    ),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(kBorderRadius),
              color: kWhite,
              boxShadow: [
                BoxShadow(
                  color: kDarkBlue.withOpacity(0.051),
                  offset: const Offset(0.0, 0.3),
                  blurRadius: 24.0,
                  spreadRadius: 0.0,
                ),
              ],
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    style: kPoppinsRegular.copyWith(
                      color: kBlue,
                      fontSize: SizeConfig.blockSizeHorizontal! * 3,
                    ),
                    controller: TextEditingController(),
                    decoration: InputDecoration(
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 13),
                      hintText: 'Search for article',
                      border: kBorder,
                      focusedBorder: kBorder,
                      errorBorder: kBorder,
                      disabledBorder: kBorder,
                      focusedErrorBorder: kBorder,
                      hintStyle: kPoppinsRegular.copyWith(
                        color: kLightGrey,
                        fontSize: SizeConfig.blockSizeHorizontal! * 3,
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: kBlue,
                      borderRadius: BorderRadius.circular(kBorderRadius)),
                  child: IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset('assets/search_icon.svg'),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          SizedBox(
            height: 14,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 32),
                    child: Text(
                      '#Health',
                      style: kPoppinsMedium.copyWith(
                        color: kGrey,
                        fontSize: SizeConfig.blockSizeHorizontal! * 3,
                      ),
                    ),
                  );
                }),
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 304,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.all(12),
                  margin: const EdgeInsets.only(right: 20),
                  height: 304,
                  width: 255,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(kBorderRadius),
                    color: kWhite,
                    boxShadow: [
                      BoxShadow(
                        color: kDarkBlue.withOpacity(0.051),
                        offset: const Offset(0.0, 0.3),
                        blurRadius: 24.0,
                        spreadRadius: 0.0,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 164,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(kBorderRadius),
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              'https://a.cdn-hotels.com/gdcs/production143/d1112/c4fedab1-4041-4db5-9245-97439472cf2c.jpg',
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      Flexible(
                        child: Text(
                          'Bali - Uniqure, unmatched. There is no other place like Bali in this world.',
                          style: kPoppinsBold.copyWith(
                            fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const CircleAvatar(
                                radius: 19,
                                backgroundColor: kLightBlue,
                                backgroundImage: NetworkImage(
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT487nXaqNH2Zb9IeQ26uj7aUICBF6H2F75cg&usqp=CAU'),
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Guy Ntare',
                                    style: kPoppinsSemibold.copyWith(
                                      fontSize:
                                          SizeConfig.blockSizeHorizontal! * 3,
                                    ),
                                  ),
                                  Text(
                                    'Sep 9, 2022',
                                    style: kPoppinsRegular.copyWith(
                                      color: kGrey,
                                      fontSize:
                                          SizeConfig.blockSizeHorizontal! * 3,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          Container(
                            height: 38,
                            width: 38,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(kBorderRadius),
                              color: kLightWhite,
                            ),
                            child: SvgPicture.asset(
                              'assets/share_icon.svg',
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Short For you',
                style: kPoppinsBold.copyWith(
                  fontSize: SizeConfig.blockSizeHorizontal! * 4.5,
                ),
              ),
              Text(
                'View all',
                style: kPoppinsMedium.copyWith(
                  color: kBlue,
                  fontSize: SizeConfig.blockSizeHorizontal! * 3,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 19,
          ),
          SizedBox(
            height: 88,
            child: ListView.builder(
              itemCount: 12,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.all(9),
                  margin: const EdgeInsets.only(right: 20),
                  width: 208,
                  height: 88,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(kBorderRadius),
                    color: kWhite,
                    boxShadow: [
                      BoxShadow(
                        color: kDarkBlue.withOpacity(0.051),
                        offset: const Offset(0.0, 0.3),
                        blurRadius: 24.0,
                        spreadRadius: 0.0,
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        padding: const EdgeInsets.all(26),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(kBorderRadius),
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              'https://homeiswhereyourbagis.com/wp-content/uploads/2019/06/lombok-mustsees-mawun-beach-drohne.jpg',
                            ),
                          ),
                        ),
                        child: SvgPicture.asset(
                          'assets/play_icon.svg',
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Flexible(
                          child: Column(
                        children: [
                          Text(
                            'Top Treding Island in 2022',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: kPoppinsSemibold.copyWith(
                              fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                            ),
                          ),
                          SizedBox(
                            height: SizeConfig.blockSizeVertical! * 0.3,
                          ),
                          Row(
                            children: [
                              SvgPicture.asset(
                                'assets/eye_icon.svg',
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              Text(
                                '40,999',
                                style: kPoppinsMedium.copyWith(
                                  color: kGrey,
                                  fontSize: SizeConfig.blockSizeHorizontal! * 3,
                                ),
                              )
                            ],
                          )
                        ],
                      ))
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
