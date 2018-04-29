module FormattingHelpers
  def short_date(value)
    value.to_date.strftime('%b %-d')
  end
end
