
class CompletionDetails {
  final Duration? totalDuration;
  final Duration? loadDuration;
  final int? sampleCount;
  final Duration? sampleDuration;
  final int? promptEvalCount;
  final Duration? promptEvalDuration;
  final int? evalCount;
  final Duration? evalDuration;
  final List<int>? context;

  CompletionDetails({
    this.totalDuration,
    this.loadDuration,
    this.sampleCount,
    this.sampleDuration,
    this.promptEvalCount,
    this.promptEvalDuration,
    this.evalCount,
    this.evalDuration,
    this.context,
  });

  double? get speed {
    if (evalCount == null || evalDuration == null) return null;
    return evalCount! / evalDuration!.inSeconds;
  }
}
