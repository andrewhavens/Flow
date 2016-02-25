module UI
  class Control < View
    CONTROL_EVENTS = {
      touch:              UIControlEventTouchUpInside,
      editing_changed:    UIControlEventEditingChanged,
      editing_did_begin:  UIControlEventEditingDidBegin,
      editing_did_end:    UIControlEventEditingDidEnd
    }

    CONTROL_STATES = {
      normal:       UIControlStateNormal,
      highlighted:  UIControlStateHighlighted,
      disabled:     UIControlStateDisabled,
      selected:     UIControlStateSelected,
      focused:      UIControlStateFocused
    }

    def _state_for_key(key, default = UIControlStateNormal)
      CONTROL_STATES.fetch(key, default)
    end

    def _state_for_value(value)
      CONTROL_STATES.key(value)
    end

    def _event_for_key(key)
      CONTROL_EVENTS.fetch(key, default)
    end

    def _event_for_value(value)
      CONTROL_EVENTS.key(value)
    end
  end
end
