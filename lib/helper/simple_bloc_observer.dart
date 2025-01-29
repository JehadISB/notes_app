import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

class SimpleBlocObserver implements BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    debugPrint("change: $change");
  }

  @override
  void onClose(BlocBase bloc) {
    debugPrint("Close: $bloc");
  }

  @override
  void onCreate(BlocBase bloc) {
    debugPrint("Create: $bloc");
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    // TODO: implement onError
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    // TODO: implement onEvent
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    // TODO: implement onTransition
  }
}

//Error {
// @override
//   void onEvent(Bloc bloc, Object? event) {
//     super.onEvent(bloc, event);
//     // TODO: implement onEvent
//   }

//   @override
//   void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
//     // TODO: implement onError
//     super.onError(bloc, error, stackTrace);
//   }

//   @override
//   void onChange(BlocBase bloc, Change change) {
//     super.onChange(bloc, change);
//     debugPrint("change: $change");
//   }

//   @override
//   void onTransition(Bloc bloc, Transition transition) {
//     super.onTransition(bloc, transition);
//     // TODO: implement onChange
//   }
  
//   @override
//   void onClose(BlocBase bloc) {
//     // TODO: implement onClose
//   }
  
//   @override
//   void onCreate(BlocBase bloc) {
//     // TODO: implement onCreate
//   }
//} error