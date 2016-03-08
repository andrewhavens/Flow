module UI
  class TextInput < UI::Control
    def text_alignment
      _gravity
    end

    def text_alignment=(sym)
      self._gravity = sym
    end

    def color
      UI::Color.new(container.textColor)
    end

    def color=(color)
      container.textColor = UI::Color(color).container
    end

    def text=(text)
      container.text = text
    end

    def text
      container.text
    end

    def container
      @container ||= Android::Widget::EditText.new(UI.context)
    end
  end
end


