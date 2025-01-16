/// Global busy state indicator
bool gIsBusy = false;

/// Set the global busy state
void gSetBusy() => gIsBusy = true;

/// Set the global idle state
void gSetIdle() => gIsBusy = false;
