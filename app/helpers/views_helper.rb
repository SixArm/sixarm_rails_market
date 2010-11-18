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
    return "<img border=\"0\" width=\"16\" height=\"16\" src=\"/images/icons/#{file_name_key}.png\" alt=\"#{translate(alt_text_key)}\"/>".html_safe
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

end
