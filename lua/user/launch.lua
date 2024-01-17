-- take in plugin spec, add it to the table {LAZY_PLUGIN_SPEC}
LAZY_PLUGIN_SPEC = {}

function spec(item)
  table.insert(LAZY_PLUGIN_SPEC, { import = item })
end
