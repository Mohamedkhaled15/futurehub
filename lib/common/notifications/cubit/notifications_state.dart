import 'package:equatable/equatable.dart';
import 'package:future_hub/common/notifications/models/notification_model.dart';

abstract class NotificationsState extends Equatable {}

class NotificationsLoading extends NotificationsState {
  @override
  List<Object?> get props => [];
}

class NotificationsLoadFailed extends NotificationsState {
  @override
  List<Object?> get props => [];
}

class NotificationsLoaded extends NotificationsState {
  final List<NotifactionData> notifications;

  NotificationsLoaded(this.notifications);

  @override
  List<Object?> get props => [notifications];
}
