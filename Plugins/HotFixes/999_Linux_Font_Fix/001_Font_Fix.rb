# Fix font vertical offset bug on newer mkxp-z versions on Linux
module MessageConfig
  reopen_module = true rescue false
end

MessageConfig.send(:remove_const, :FONT_Y_OFFSET) if MessageConfig.const_defined?(:FONT_Y_OFFSET)
MessageConfig.const_set(:FONT_Y_OFFSET, 0)

MessageConfig.send(:remove_const, :SMALL_FONT_Y_OFFSET) if MessageConfig.const_defined?(:SMALL_FONT_Y_OFFSET)
MessageConfig.const_set(:SMALL_FONT_Y_OFFSET, 0)

MessageConfig.send(:remove_const, :NARROW_FONT_Y_OFFSET) if MessageConfig.const_defined?(:NARROW_FONT_Y_OFFSET)
MessageConfig.const_set(:NARROW_FONT_Y_OFFSET, 0)

class Bitmap
  def text_offset_y=(val); @text_offset_y = 0; end
  def text_offset_y; 0; end

  def draw_text(x, y, width, height = nil, text = "", align = 0)
    if x.is_a?(Rect)
      mkxp_draw_text(x, y, width)
    else
      mkxp_draw_text(x, y, width, height, text, align)
    end
  end
end
