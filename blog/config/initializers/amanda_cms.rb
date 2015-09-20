AmandaCms.configure do |config|
  config.entry_types = %w(Article Slide)
end

AmandaCms.configuration.entry_types.each do |type|
  AmandaCms::Entry.define_entry_type(type)
end