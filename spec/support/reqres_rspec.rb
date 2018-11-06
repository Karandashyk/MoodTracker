# frozen_string_literal: true
ReqresRspec.configure do |config|
  config.formatters = %w(ReqresRspec::Formatters::HTML ReqresRspec::Formatters::Pdf)
end
