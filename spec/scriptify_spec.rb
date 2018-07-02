class String
  include Scriptify
end

RSpec.describe Scriptify do
  it "has a version number" do
    expect(Scriptify::VERSION).not_to be nil
  end

  it "superscripts simple sentences" do
    expect("hello".superscript).to eq("ʰᵉˡˡᵒ")
  end

  it "subscripts simple sentences" do
    expect("air".subscript).to eq("ₐᵢᵣ")
  end

  it "fallbacks to lowercase if specified" do
    opts = {fallback_lower: true}
    expect("ABC".superscript(opts)).to eq("ᴬᴮᶜ")
  end

  it "does not fallback to lowercase by default" do
    expect("ABC".superscript).to eq("ᴬᴮC")
  end

  it "replaces if specified" do
    opts = {fallback_lower: false, replace_unknown: 'X'}
    expect("ABC".superscript(opts)).to eq("ᴬᴮX")
  end

  it "removes not found on empty replace" do
    opts = {replace_unknown: '' }
    expect("ABQ".superscript(opts)).to eq("ᴬᴮ")
  end

  it "works fine with spaces" do
    expect("A B B".superscript).to eq("ᴬ ᴮ ᴮ")
  end
end
