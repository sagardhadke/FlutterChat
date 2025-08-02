import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat/domain/constants/cubits/themestates.dart';

class ThemeCubit extends Cubit<ThemeStates> {
  ThemeCubit() : super(LightThemeStates());

  void toggleTheme() {
    if (state is LightThemeStates) {
      emit(DarkThemeStates());
    } else {
      emit(LightThemeStates());
    }
  }
}
