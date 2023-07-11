abstract class TvsEvents {}

class IncreaseCounter extends TvsEvents {
  final int value;

  IncreaseCounter(this.value);
}
