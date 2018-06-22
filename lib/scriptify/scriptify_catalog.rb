##
# Arguably we could use YAML, but... ¯\_(ツ)_/¯
##
class ScriptifyCatalog
  @@SuperScripts = {
    :A => 'ᴬ',
    :B => 'ᴮ',
    :D => 'ᴰ',
    :E => 'ᴱ',
    :G => 'ᴳ',
    :H => 'ᴴ',
    :I => 'ᴵ',
    :J => 'ᴶ',
    :K => 'ᴷ',
    :L => 'ᴸ',
    :M => 'ᴹ',
    :N => 'ᴺ',
    :O => 'ᴼ',
    :P => 'ᴾ',
    :R => 'ᴿ',
    :T => 'ᵀ',
    :U => 'ᵁ',
    :V => 'ⱽ',
    :W => 'ᵂ',
    :a => 'ᵃ',
    :b => 'ᵇ',
    :c => 'ᶜ',
    :d => 'ᵈ',
    :e => 'ᵉ',
    :f => 'ᶠ',
    :g => 'ᵍ',
    :h => 'ʰ',
    :i => 'ⁱ',
    :j => 'ʲ',
    :k => 'ᵏ',
    :l => 'ˡ',
    :m => 'ᵐ',
    :n => 'ⁿ',
    :o => 'ᵒ',
    :p => 'ᵖ',
    :r => 'ʳ',
    :s => 'ˢ',
    :t => 'ᵗ',
    :u => 'ᵘ',
    :v => 'ᵛ',
    :w => 'ʷ',
    :x => 'ˣ',
    :y => 'ʸ',
    :z => 'ᶻ'
  }.freeze

  def self.superscripts
    @@SuperScripts
  end
end