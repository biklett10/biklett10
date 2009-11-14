# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def checklist(name, collection, value_method, display_method, selected)
    selected ||= []
    
    ERB.new(%{
    <div class="checklist" style="border:1px solid #666; width:20em; height:5em; overflow:auto">
      <% for item in collection %>
        <%= check_box_tag name, item.send(value_method), selected.include?(item.send(value_method)) %> <%=h item.send(display_method) %><br />
      <% end %>
    </div>}).result(binding)
  end # checklist

  # Transform string into google search href attribute
  def google_it(this)
    that = this.gsub(/ /,'+')
    "http://www.google.com/search?q=#{that}"
  end # def google_it(this)

  # Transform string into google-maps href attribute
  def map_it(this)
    that = this.gsub(/ /,'+')
    "http://maps.google.com/maps?q=#{that}"
  end # def map_it(this)

  # Scan string into list of anchors pointing to twitter-hash-tags
  def twitter_tag_scan(s)
    li_a = s.scan(/\#\w+/).map{ |t| "<li><a href='http://twitter.com/search?q=#{t.sub(/\#/,'%23')}' target='tt'>#{t}</a></li>"}
    "<ul>#{li_a.to_s}</ul>"
  end

  # Scan string into list of anchors pointing to URLs
  def twitter_url_scan(txt)
    url_regexp = %r[(http://([^\s])+)+]
    li_s = ""
    txt.scan(url_regexp).flatten.each{ |uurl| li_s << "<li><a href='#{uurl}' target='u'>#{uurl}</a></li>" if uurl =~ /http:\/\//}
    "<ul>#{li_s}</ul>"
  end

end

