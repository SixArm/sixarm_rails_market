module ViewsHelper

  H1_OPEN = "<h1>".html_safe
  H1_SHUT = "</h1>".html_safe
  H2_OPEN = "<h2>".html_safe
  H2_SHUT = "</h2>".html_safe
  H3_OPEN = "<h3>".html_safe
  H3_SHUT = "</h3>".html_safe

  def h1(sym)
    H1_OPEN + translate(sym) + H1_SHUT
  end

  def h2(sym)
    H2_OPEN + translate(sym) + H2_SHUT
  end

  def h3(sym)
    H3_OPEN + translate(sym) + H3_SHUT
  end

  def icon(file_name_key,alt_text_key)
    "<img border=\"0\" width=\"16\" height=\"16\" src=\"/images/icons/#{file_name_key}.png\" alt=\"#{translate(alt_text_key)}\"/>".html_safe
  end

  def link_to_create(ops={})
    link_to(icon(:create, translate(:Create)), ops)
  end

  def link_to_back(ops={})
    link_to(icon(:back, translate(:Back)), ops)
  end

  def link_to_delete(obj)
    link_to(icon(:delete, translate(:Delete)), obj, :confirm => translate(:Delete_Confirm), :method => :delete)
  end

  def link_to_edit(ops={})
    link_to(icon(:edit, translate(:Edit)), ops)
  end

  def link_to_show(ops={})
    link_to(icon(:show, translate(:Show)), ops)
  end


  # End a page by providing a page-specific footer,
  # typically with navigation links for REST actions.
  #
  # Called by:
  #   - ending_view_new
  #   - ending_view_edit
  #   - ending_view_index
  #   - ending_view_show
  #
  # Exampe:
  #   ending_view("foo","goo","hoo") 
  #   => "<div id="ending">foo goo hoo</div>

  def ending_view(html_fragments)
    "<div id=\"ending\">#{html_fragments.join}</div>\n"
  end


  # End a page that is view/*/edit.html.erb.
  # You may want to override this for your app.
  # This adds a link_to_back and link_to_show.

  def ending_view_edit(objects_path,object)
    ending_view(link_to_back_(objects_path),link_to_show(object))
  end


  # End a page that is view/*/index.html.erb.
  # You may want to override this for your app.
  # This adds a link_to_create.

  def ending_view_index(new_object_path)
    ending_view(link_to_create(new_object_path))
  end


  # End a page that is view/*/new.html.erb.
  # You may want to override this for your app.
  # This adds a link_to_back.

  def ending_view_new(objects_path)
    ending_view(link_to_back(objects_path))
  end


  # End a page that is view/*/show.html.erb
  # You may want to override this for your app.
  # This adds a link_to_back and link_to_edit.

  def ending_view_show(objects_path, edit_object_path)
    ending_view(link_to_back(items_path)," ",link_to_edit(edit_object_path))
  end



end
