module BeginAndEndViewHelper

  # Begin a view page by providing a page-specific footer,
  # typically with a headline and/or links for REST actions.
  #
  # Called by:
  #   - begin_view_new
  #   - begin_view_edit
  #   - begin_view_index
  #   - begin_view_show
  #
  # Exampe:
  #   begin_view("foo","goo","hoo") 
  #   => "<h1>foogoohoo</h1>"

  def begin_view(*html_fragments)
    "<h1>#{html_fragments.join}</h1>\n\n".html_safe
  end


  # Begin a page that is view/*/edit.html.erb.
  # You may want to override this for your app.
  # This returns "<h1>Edit Object</h1>".

  def begin_view_edit(object_locale_key)
    begin_view(t(:Edit)," ",t(object_locale_key))
  end


  # Begin a page that is view/*/index.html.erb.
  # You may want to override this for your app.
  # This returns "<h1>List Objects</h1>".

  def begin_view_index(objects_locale_key)
    begin_view(t(:List)," ",t(objects_locale_key))
  end


  # Begin a page that is view/*/new.html.erb.
  # You may want to override this for your app.
  # This returns "<h1>Create Object</h1>".

  def begin_view_new(object_locale_key)
    begin_view(t(:Create)," ",t(object_locale_key))
  end


  # Begin a page that is view/*/show.html.erb
  # You may want to override this for your app.
  # This returns "<h1>Show Object</h1>".

  def begin_view_show(object_locale_key)
    begin_view(t(:Show)," ",t(object_locale_key))
  end



  # End a view page by providing a page-specific footer,
  # typically with navigation links for REST actions.
  #
  # Called by:
  #   - end_view_new
  #   - end_view_edit
  #   - end_view_index
  #   - end_view_show
  #
  # Exampe:
  #   end_view("foo","goo","hoo") 
  #   => "<div id="end">foogoohoo</div>>

  def end_view(*html_fragments)
    "<div id=\"end\">#{html_fragments.join}</div>\n".html_safe
  end


  # End a page that is view/*/edit.html.erb.
  # You may want to override this for your app.
  # This adds a link_to_back and link_to_show.

  def end_view_edit(objects_path,object)
    end_view(link_to_back(objects_path),link_to_show(object))
  end


  # End a page that is view/*/index.html.erb.
  # You may want to override this for your app.
  # This adds a link_to_create.

  def end_view_index(new_object_path)
    end_view(link_to_create(new_object_path))
  end


  # End a page that is view/*/new.html.erb.
  # You may want to override this for your app.
  # This adds a link_to_back.

  def end_view_new(objects_path)
    end_view(link_to_back(objects_path))
  end


  # End a page that is view/*/show.html.erb
  # You may want to override this for your app.
  # This adds a link_to_back and link_to_edit.

  def end_view_show(objects_path, edit_object_path)
    end_view(link_to_back(items_path)," ",link_to_edit(edit_object_path))
  end


end
