module ViewsHelper

  H1_OPEN = "<h1>".html_safe
  H1_SHUT = "</h1>".html_safe
  H2_OPEN = "<h2>".html_safe
  H2_SHUT = "</h2>".html_safe
  H3_OPEN = "<h3>".html_safe
  H3_SHUT = "</h3>".html_safe

  def h1(sym)
    H1_OPEN + t(sym) + H1_SHUT
  end

  def h2(sym)
    H2_OPEN + t(sym) + H2_SHUT
  end

  def h3(sym)
    H3_OPEN + t(sym) + H3_SHUT
  end

  def icon(file_name_key,alt_text_key)
    "<img border=\"0\" width=\"16\" height=\"16\" src=\"/images/icons/#{file_name_key}.png\" alt=\"#{t(alt_text_key)}\"/>".html_safe
  end

  def link_to_create(ops={})
    link_to(icon(:create, t(:Create)), ops)
  end

  def link_to_back(ops={})
    link_to(icon(:back, t(:Back)), ops)
  end

  def link_to_delete(obj)
    link_to(icon(:delete, t(:Delete)), obj, :confirm => t(:Delete_Confirm), :method => :delete)
  end

  def link_to_edit(ops={})
    link_to(icon(:edit, t(:Edit)), ops)
  end

  def link_to_show(ops={})
    link_to(icon(:show, t(:Show)), ops)
  end

  def link_to_show_edit_delete(obj, edit_obj_path)
    link_to_show(obj) + link_to_edit(edit_obj_path) + link_to_delete(obj)
  end

end
