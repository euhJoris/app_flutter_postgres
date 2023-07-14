// SYSTEM MODE STTEINGS 
class SystemModeSettings {
  bool user_active;
  bool system_active;
  String mode;

  SystemModeSettings(this.user_active, this.system_active, {this.mode = ''});

  List<bool> get systemInfos {
    return [user_active, system_active];
  }

// GETTERS
  get getUserActive => user_active;

  get getSystemActive => system_active;

  get getMode => mode;

// SETTERS
  set user_active_state(bool value) => user_active = value;

  set system_active_state(bool value) => system_active = value;

  set system_mode(String value) => mode = value;

// FUNCTIONS
  void changeStates() {
    user_active = !user_active;
    system_active = !system_active;
  }
}

