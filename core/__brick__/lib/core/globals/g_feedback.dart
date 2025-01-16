import 'package:flutter/material.dart';
import 'package:{{packageName.snakeCase()}}/core/services/feedback_service.dart';
import 'package:{{packageName.snakeCase()}}/core/services/notification_service.dart';
import 'package:{{packageName.snakeCase()}}/core/typedefs/string_builder.dart';
import 'package:turbo_response/turbo_response.dart';

void gShowNotification({
  BuildContext? context,
  required String title,
}) =>
    NotificationService.locate.showNotification(
      context: context,
      title: title,
      message: null,
    );

void gShowResponse({
  required TurboResponse response,
  BuildContext? context,
}) =>
    FeedbackService.locate.showResponse(
      context: context,
      response: response,
    );

void gTryShowFutureResponse({
  required Future<TurboResponse> futureResponse,
  BuildContext? context,
}) =>
    FeedbackService.locate.tryShowFutureResponse(
      context: context,
      futureResponse: futureResponse,
    );

void gShowOkDialog({
  StringBuilder? message,
  StringBuilder? okButtonText,
  StringBuilder? title,
  WidgetBuilder? content,
  bool barrierDismissible = true,
  BuildContext? context,
}) =>
    FeedbackService.locate.showOkDialog(
      context: context,
      title: title,
      content: content,
      message: message,
      okButtonText: okButtonText,
      barrierDismissible: barrierDismissible,
    );

Future<bool?> gShowOkCancelDialog({
  StringBuilder? message,
  StringBuilder? okButtonText,
  StringBuilder? cancelButtonText,
  StringBuilder? title,
  WidgetBuilder? content,
  bool barrierDismissible = true,
  BuildContext? context,
}) =>
    FeedbackService.locate.showOkCancelDialog(
      context: context,
      title: title,
      content: content,
      message: message,
      okButtonText: okButtonText,
      cancelButtonText: cancelButtonText,
      barrierDismissible: barrierDismissible,
    );
