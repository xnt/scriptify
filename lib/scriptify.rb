require "scriptify/version"
require "scriptify/scriptify_catalog"

module Scriptify
  DEFAULT_OPTS = {
    :fallback_lower => false,
    :replace_unknown => false
  }

  def superscript(opts = {})
    opts.merge(DEFAULT_OPTS)
    superscripted = ""
    self.to_s.split("").each do |c|
      superscripted += char_superscript(c, opts)
    end
    superscripted
  end

  private
  def char_superscript(char, opts)
    sym = char.to_sym
    return ScriptifyCatalog.superscripts[sym] if ScriptifyCatalog.superscripts.key?(sym)
    return char_superscript(char.downcase, opts) if opts[:fallback_lower] && upcase?(char)
    return opts[:replace_unknown] if opts[:replace_unknown]
    char
  end

  def upcase?(char)
    char.match(/^[[:alpha:]]$/) && char == char.upcase
  end
end
