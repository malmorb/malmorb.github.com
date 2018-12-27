module FormattingHelpers
  def short_date(value)
    value.to_date.strftime('%b %-d')
  end

  def iso_date(value)
    value.to_date.strftime('%Y-%m-%d')
  end
end
