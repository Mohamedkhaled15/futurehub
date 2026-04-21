import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:future_hub/puncher/orders/model/service_provider_order_model.dart';
import 'package:future_hub/puncher/orders/services/puncher_order_services.dart';
import 'package:image_picker/image_picker.dart';

import 'order_states/service_provider_order_states.dart';

class ServiceProviderOrdersCubit extends Cubit<ServiceProviderOrderStates> {
  ServiceProviderOrdersCubit() : super(ServiceProviderOrdersInitState());
  static ServiceProviderOrdersCubit get(context) => BlocProvider.of(context);
  int fuelPage = 1;
  int servicePage = 1;
  bool canLoadMoreFuel = true;
  bool canLoadMoreServices = true;
  final _ordersService = PuncherOrderServices();
  List<Datum> fuelOrders = [];
  List<Datum> serviceOrders = [];

  Future<void> loadOrders({bool refresh = false}) async {
    if (state is ServiceProviderOrdersLoadingState) return;

    if (refresh) {
      fuelPage = 1;
      fuelOrders = [];
    }

    emit(ServiceProviderOrdersLoadingState(fuelOrders, isFirstFetch: fuelPage == 1));

    try {
      final newOrders = await _ordersService.fetchOrders(page: fuelPage);
      canLoadMoreFuel = newOrders.meta?.currentPage != newOrders.meta?.lastPage;
      fuelPage++;
      if (newOrders.data != null) {
        fuelOrders.addAll(newOrders.data!);
      }

      emit(ServiceProviderOrdersLoadedState(fuelOrders, newOrders.meta?.total ?? 0));
    } catch (e) {
      print('Error loading fuel orders: $e');
      emit(ServiceProviderOrdersErrorState(e.toString()));
    }
  }

  Future<void> updatOrders() async {
    if (state is ServiceProviderOrdersLoadingState) return;

    emit(ServiceProviderOrdersLoadingState(fuelOrders, isFirstFetch: false));
    try {
      var newOrders = await _ordersService.fetchOrders(page: 1, cache: false);
      fuelOrders = newOrders.data ?? [];
      fuelPage = 2; // Reset pagination to next page
      canLoadMoreFuel = newOrders.meta?.currentPage != newOrders.meta?.lastPage;

      emit(ServiceProviderOrdersLoadedState(fuelOrders, newOrders.meta?.total ?? 0));
    } catch (e) {
      print('Error updating fuel orders: $e');
      emit(ServiceProviderOrdersErrorState(e.toString()));
    }
  }

  Future<void> loadServicesOrders({bool refresh = false}) async {
    if (state is ServiceProviderOrdersServicesLoadingState) return;

    if (refresh) {
      servicePage = 1;
      serviceOrders = [];
    }
    emit(ServiceProviderOrdersServicesLoadingState(serviceOrders, isFirstFetch: servicePage == 1));
    try {
      final newOrders = await _ordersService.fetchServicesOrders(page: servicePage);
      canLoadMoreServices = newOrders.meta?.currentPage != newOrders.meta?.lastPage;
      servicePage++;

      if (newOrders.data != null) {
        serviceOrders.addAll(newOrders.data!);
      }

      emit(ServiceProviderServicesOrdersLoadedState(serviceOrders, newOrders.meta?.total ?? 0));
    } catch (e) {
      print('Error loading service orders: $e');
      emit(ServiceProviderOrdersErrorState(e.toString()));
    }
  }

  Future<void> updateServicesOrders() async {
    if (state is ServiceProviderOrdersServicesLoadingState) return;

    emit(ServiceProviderOrdersServicesLoadingState(serviceOrders, isFirstFetch: false));
    try {
      var newOrders = await _ordersService.fetchServicesOrders(page: 1, cache: false);
      serviceOrders = newOrders.data ?? [];
      servicePage = 2; // Reset pagination to next page
      canLoadMoreServices = newOrders.meta?.currentPage != newOrders.meta?.lastPage;

      emit(ServiceProviderServicesOrdersLoadedState(serviceOrders, newOrders.meta?.total ?? 0));
    } catch (e) {
      print('Error updating service orders: $e');
      emit(ServiceProviderOrdersErrorState(e.toString()));
    }
  }

  //=========================== ocr plate ==========================

  Future<bool> ocrScanPlate({required XFile image, required String vehicleId}) async {
    var newOrders = await _ordersService.ocrPlate(image, vehicleId);

    return newOrders;
  }
}
