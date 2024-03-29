part of 'setting_bloc.dart';

sealed class SettingState extends Equatable {
  const SettingState();

  @override
  List<Object?> get props => [];
}

final class SettingInitial extends SettingState {
  const SettingInitial();
}

final class SettingDataChecked extends SettingState {
  const SettingDataChecked({required this.maxNumber});

  final int maxNumber;

  @override
  List<Object?> get props => [maxNumber];
}

final class SettingPlayerDataChecked extends SettingState {
  const SettingPlayerDataChecked({
    required this.firstPlayerColorIndex,
    required this.secondPlayerColorIndex,
    required this.firstPlayerIconIndex,
    required this.secondPlayerIconIndex,
    required this.firstAttackPlayerNumber,
  });

  final int firstPlayerColorIndex;
  final int secondPlayerColorIndex;
  final int firstPlayerIconIndex;
  final int secondPlayerIconIndex;
  final int firstAttackPlayerNumber;

  @override
  List<Object?> get props => [
        firstPlayerColorIndex,
        secondPlayerColorIndex,
        firstPlayerIconIndex,
        secondPlayerIconIndex,
        firstAttackPlayerNumber,
      ];
}
