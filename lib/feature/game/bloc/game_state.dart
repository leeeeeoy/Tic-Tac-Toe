part of 'game_bloc.dart';

sealed class GameState extends Equatable {
  const GameState();

  @override
  List<Object?> get props => [];
}

final class GameInitial extends GameState {
  const GameInitial();
}

final class GameTimerLoaded extends GameState {
  const GameTimerLoaded({required this.second});

  final int second;

  @override
  List<Object?> get props => [second];
}

final class GameMarkChecked extends GameState {
  const GameMarkChecked({
    required this.currentPlayerNumber,
    required this.markMap,
    required this.firstPlayerUndoCount,
    required this.secondPlayerUndoCount,
  });

  final int currentPlayerNumber;
  final Map<int, MarkData?> markMap;
  final int firstPlayerUndoCount;
  final int secondPlayerUndoCount;

  @override
  List<Object?> get props => [currentPlayerNumber, markMap, firstPlayerUndoCount, secondPlayerUndoCount];
}

final class GameFinished extends GameState {
  const GameFinished({required this.winnerPlayer});

  final int? winnerPlayer;

  @override
  List<Object?> get props => [winnerPlayer];
}

final class GameLoading extends GameState {
  const GameLoading();
}

final class GameSaveSucceed extends GameState {
  const GameSaveSucceed();
}

final class GameSaveError extends GameState {
  const GameSaveError();
}
