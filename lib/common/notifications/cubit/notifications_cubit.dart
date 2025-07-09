import 'package:bloc/bloc.dart';
import 'package:future_hub/common/notifications/cubit/notifications_state.dart';
import 'package:future_hub/common/notifications/services/notifications_service.dart';

class NotificationsCubit extends Cubit<NotificationsState> {
  NotificationsCubit() : super(NotificationsLoading());

  final NotificationsService _notificationsService = NotificationsService();

  Future<void> init() async {
    try {
      final result = await _notificationsService.getNotifications();

      emit(NotificationsLoaded(result.data));
    } catch (error) {
      emit(NotificationsLoadFailed());
    }
  }
}
