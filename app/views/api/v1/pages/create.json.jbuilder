json.id  @page.id
json.url @page.url
json.h1s @page.h1s.pluck(:content)
json.h2s @page.h2s.pluck(:content)
json.h3s @page.h3s.pluck(:content)
