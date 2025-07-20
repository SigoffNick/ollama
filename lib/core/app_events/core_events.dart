import 'app_event_bus_interface.dart';

sealed class CoreEvent extends AppEvent {
  const CoreEvent();
}

class InternetConnectionLostEvent extends CoreEvent {
  const InternetConnectionLostEvent();
}
