json.array! @pages do |page|
  json.id    page.id
  json.url   page_url(page)
  json.answers page.entries do |entry|
    json.id         entry.id
    json.tag_name   entry.tag_name
    jsson.content   entry.content
  end
end
