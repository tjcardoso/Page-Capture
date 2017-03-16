json.array! @pages do |page|
  json.id    page.id
  json.url   page.url
  # json.entries page.entries do |entry|
  #   # json.array! entry.tag_name
  #   json.id         entry.id
  #   json.tag_name   entry.tag_name
  #   json.content    entry.content
  # end
  json.h1 page.h1s.map { |h1| h1.content }
  json.h2 page.h2s.map { |h2| h2.content }
  json.h3 page.h3s.map { |h3| h3.content }
end
