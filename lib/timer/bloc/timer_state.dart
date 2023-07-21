part of 'timer_bloc.dart';

sealed class TimerState extends Equatable {
  const TimerState(this.duration);

  final int duration;

  @override
  List<Object> get props => [duration];
}

final class TimerInitial extends TimerState {
  const TimerInitial(super.duration);

  @override
  String toString() => 'Timer Initial {duration: $duration}';
}

final class TimerRunPause extends TimerState {
  const TimerRunPause(super.duration);

  @override
  String toString() => 'Timer Run Pause {duration: $duration}';
}

final class TimerRunInProgress extends TimerState {
  const TimerRunInProgress(super.duration);

  @override
  String toString() => 'Timer Run In Progress {duration: $duration}';
}

final class TimerRunComplete extends TimerState {
  const TimerRunComplete() : super(0);
}
