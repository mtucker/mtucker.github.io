require 'liquid'
require 'uri'

module TitlecaseFilter
  def titlecase(input, delimeter)
    return input.split(delimeter).map(&:capitalize).join(' ')
  end
end

Liquid::Template.register_filter(TitlecaseFilter)