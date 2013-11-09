

#  
#  View Hooks for opportunity form  top section (both create form and edit form)
#
class  OpportunityTopSectionHook < FatFreeCRM::Callback::Base

  # hook to opportunity_top_section_bottom
  def opportunity_top_section_bottom(view, context={})
    view.controller.render_to_string :partial => "top_section_patch", :locals => context
  end
end
