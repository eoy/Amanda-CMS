module ApplicationHelper

  def available_entry_types
    AmandaCms::Entry.descendants
  end
end
