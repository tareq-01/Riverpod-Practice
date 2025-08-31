import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:practice_riverpod/counter_state.dart';
import 'package:practice_riverpod/utility_function.dart';

class CounterNotifier extends StateNotifier<Response> {
  CounterNotifier() : super(Response());
  // void increment() {
  //   state = state.copyWith(counter: state.counter! + 1);
  // }
     final TextEditingController emailTEcontroller = TextEditingController();
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void emailChecker(){
    if(!Utility().validateEmail(emailTEcontroller.text.trim())){
       state = state.copyWith(errorMessage: "Email is Invalid",isButtonEnable: false);
    }else if(emailTEcontroller.text.trim().isEmpty){

      state = state.copyWith(errorMessage: "Email Can't be Empty", isButtonEnable: false);

    }else{
            state = state.copyWith(errorMessage: null, isButtonEnable: true);

    }

  }

}

final counterProvider = StateNotifierProvider<CounterNotifier, Response>(
  (ref) => CounterNotifier(),
);
