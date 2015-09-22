AmandaCms.configure do |config|
  # Do not remove this file
  config.entry_types = ["Article", "Slide"] #+ AmandaCms::EntryGroup.pluck(:title)
end


AmandaCms::EntryGroup.all.each do |type|
  type.define_entry_type(type.title, type.fields)
end

#AmandaCms.configuration.entry_types.each do |type|
#  AmandaCms::Entry.define_entry_type(type)
#end