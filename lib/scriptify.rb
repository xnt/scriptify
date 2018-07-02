require "scriptify/version"
require "scriptify/scriptify_catalog"

module Scriptify
  DEFAULT_OPTS = {
    :fallback_lower => false,
    :replace_unknown => false
  }

  def superscript(opts = {})
    scriptify(ScriptifyCatalog.superscripts, opts)
  end

  def subscript(opts = {})
    scriptify(ScriptifyCatalog.subscripts, opts)
  end

  private
  def scriptify(catalog, opts)
    opts.merge(DEFAULT_OPTS)
    scripted = ""
    self.to_s.split("").each do |c|
      scripted += char_script(catalog, c, opts)
    end
    scripted
  end

  def char_script(catalog, char, opts)
    sym = char.to_sym
    return catalog[sym] if catalog.key?(sym)
    return char_script(catalog, char.downcase, opts) if opts[:fallback_lower] && upcase?(char)
    return opts[:replace_unknown] if opts[:replace_unknown]
    char
  end

  def upcase?(char)
    char.match(/^[[:alpha:]]$/) && char == char.upcase
  end
end
