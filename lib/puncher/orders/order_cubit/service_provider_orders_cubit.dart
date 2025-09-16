import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:future_hub/puncher/orders/model/service_provider_order_model.dart';
import 'package:future_hub/puncher/orders/services/puncher_order_services.dart';
import 'package:image_picker/image_picker.dart';

import 'order_states/service_provider_order_states.dart';

class ServiceProviderOrdersCubit extends Cubit<ServiceProviderOrderStates> {
  ServiceProviderOrdersCubit() : super(ServiceProviderOrdersInitState());
  static ServiceProviderOrdersCubit get(context) => BlocProvider.of(context);
  int page = 1;
  bool canLoadMore = true;
  final _ordersService = PuncherOrderServices();
  List<Datum> cubitOrders = [];
  Future<void> loadOrders({bool refresh = false}) async {
    if (state is ServiceProviderOrdersLoadingState) return;

    // final currentState = state;
    // var oldOrders = <Datum>[];
    //
    // if (currentState is ServiceProviderOrdersLoadedState) {
    //   oldOrders = currentState.orders;
    // }

    if (refresh) {
      page = 1;
      cubitOrders = [];
    }

    emit(ServiceProviderOrdersLoadingState(cubitOrders, isFirstFetch: page == 1));

    try {
      final newOrders = await _ordersService.fetchOrders(page: page);
      canLoadMore = newOrders.meta?.currentPage != newOrders.meta?.lastPage;
      page++;
      // final orders = (state as ServiceProviderOrdersLoadingState).oldOrders;
      if (newOrders.data != null) {
        cubitOrders.addAll(newOrders.data!); // Append new data
      }

      // cubitOrders = orders;

      emit(ServiceProviderOrdersLoadedState(
        cubitOrders,
      ));
    } catch (e) {
      print('Error loading orders: $e');
      emit(ServiceProviderOrdersErrorState(e.toString()));
    }
  }

  Future<void> updatOrders() async {
    if (state is ServiceProviderOrdersLoadingState) return;
    final currentState = state;
    var oldOrders = <Datum>[];

    if (currentState is ServiceProviderOrdersLoadedState) {
      oldOrders = currentState.orders;
    }
    emit(ServiceProviderOrdersLoadingState(oldOrders, isFirstFetch: false));
    var newOrders = await _ordersService.fetchOrders(page: 1, cache: false);

    cubitOrders = newOrders.data!;
    emit(
      ServiceProviderOrdersLoadedState(
        cubitOrders,
      ),
    );
  }

  Future<void> loadServicesOrders({bool refresh = false}) async {
    if (state is ServiceProviderOrdersServicesLoadingState) return;
    // final currentState = state;
    // var oldOrders = <Datum>[];
    // if (currentState is ServiceProviderServicesOrdersLoadedState) {
    //   oldOrders = currentState.orders;
    // }
    if (refresh) {
      page = 1;
      cubitOrders = [];
    }
    emit(ServiceProviderOrdersServicesLoadingState(cubitOrders, isFirstFetch: page == 1));
    try {
      final newOrders = await _ordersService.fetchServicesOrders(page: page);
      canLoadMore = newOrders.meta?.currentPage != newOrders.meta?.lastPage;
      page++;
      // final orders =
      //     (state as ServiceProviderOrdersServicesLoadingState).oldOrders;
      if (newOrders.data != null) {
        cubitOrders.addAll(newOrders.data!); // Append new data
      }
      // cubitOrders = orders;
      emit(ServiceProviderServicesOrdersLoadedState(
        cubitOrders,
      ));
    } catch (e) {
      print('Error loading orders: $e');
      emit(ServiceProviderOrdersErrorState(e.toString()));
    }
  }

  Future<void> updateServicesOrders() async {
    if (state is ServiceProviderOrdersServicesLoadingState) return;
    final currentState = state;
    var oldOrders = <Datum>[];

    if (currentState is ServiceProviderServicesOrdersLoadedState) {
      oldOrders = currentState.orders;
    }
    emit(ServiceProviderOrdersServicesLoadingState(oldOrders, isFirstFetch: false));
    var newOrders = await _ordersService.fetchServicesOrders(page: 1, cache: false);

    cubitOrders = newOrders.data!;
    emit(
      ServiceProviderServicesOrdersLoadedState(
        cubitOrders,
      ),
    );
  }

  //=========================== ocr plate ==========================

  Future<bool> ocrScanPlate({required XFile image, required String vehicleId}) async {
    var newOrders = await _ordersService.ocrPlate(image, vehicleId);

    return newOrders;
  }
}
