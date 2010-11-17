module ViewsHelper

  def h1(sym)
    "<h1>#{translate(sym)}</h1>"
  end

  def h2(sym)
    "<h2>#{translate(sym)}</h2>"
  end

  def h3(sym)
    "<h3>#{translate(sym)}</h3>"
  end

  def link_to_back(ops={})
    link_to(translate(:Back), ops)
  end

  def link_to_destroy(obj)
    link_to(translate(:Destroy), obj, :confirm => translate(:Destroy_Confirm), :method => :delete)
  end

  def link_to_edit(ops={})
    link_to(translate(:Edit), ops)
  end

  def link_to_new(ops={})
    link_to(translate(:New), ops)
  end

  def link_to_show(ops={})
    link_to(translate(:Show), ops)
  end

end
