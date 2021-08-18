import 'dart:async';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:utils_libs/utils_libs.dart';
part 'rest_client.g.dart';

@RestApi(baseUrl: "https://onthicongchuc.net/")
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;
  // =================================> GET <===================================

  @GET(BASE_URL.GET_INFO_USER)
  Future<ResponseStatus> getInfoUser();

  @GET(BASE_URL.NOTIFICATION)
  Future<NotificationResponseStatus> getNotification();

  @GET(BASE_URL.NOTIFICATION + "/{id}")
  Future<NotificationDetailResponseStatus> getDetailNotification(@Path("id") int id);

  // =================================> POST <==================================
  @POST(BASE_URL.LOGIN)
  Future<UserResponse> loginApp(@Body() LoginAppRequest loginAppRequest);

  @POST(BASE_URL.CHANGE_PASSWORD)
  Future<ResponseStatus> changePassword(@Body() ParamChangePassword paramChangePassword);

  @POST(BASE_URL.FORGOT_PASSWORD)
  Future<ResponseStatus> forgotPassword(@Body() ParamForgotPassword paramForgotPassword);

  @POST(BASE_URL.RESET_PASSWORD)
  Future<ResponseStatus> resetPassword(@Body() ParamResetPassword paramResetPassword);

  @POST(BASE_URL.PROFILE)
  Future<ResponseStatus> postUpdateProfile(@Body() InfoUser infoUser);

  @POST(BASE_URL.PROFILE)
  Future<ResponseStatus> postImages({@Part() File image, @Query('code') String code, @Query('type') int type, @Query('email') String email, @Query('name') String name});

  @POST(BASE_URL.SEEN_UPDATE + "/{id}")
  Future<NotificationSeenResponseStatus> seenNotification(@Path("id") int id);
}
