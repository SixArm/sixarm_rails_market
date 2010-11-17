module ViewsHelper

  def link_to_back(*ops)
    link_to(t(:Back), ops
  end

  def link_to_edit(*ops)
    link_to t(:Edit), ops
  end

end
