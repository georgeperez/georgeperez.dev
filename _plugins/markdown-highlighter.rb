# frozen_string_literal: true

# Turns ==something== in Markdown to <mark>something</mark> in output HTML

Jekyll::Hooks.register [:posts], :pre_render do |doc|
  replace(doc)
end

Jekyll::Hooks.register [:pages], :pre_render do |doc|
  # jekyll considers anything at the root as a page,
  # we only want to consider actual pages
  next unless doc.path.start_with?('_pages/')
  replace(doc)
end

def replace(doc)
  doc.content.gsub!(/==+([^ ](.*?)?[^ .=])==+/, "<mark>\\1</mark>")
end
