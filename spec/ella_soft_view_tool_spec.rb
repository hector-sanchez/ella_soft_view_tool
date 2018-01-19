RSpec.describe EllaSoftViewTool do
  class String
    def html_safe
      self
    end
  end

  it "has a version number" do
    expect(EllaSoftViewTool::VERSION).not_to be nil
  end

  it "renders the copyright message" do
    copyright_message = EllaSoftViewTool::Renderer.copyright('Hector Sanchez', 'All rights reserved.')
    expect(copyright_message).to eq("&copy; 2018 | <b>Hector Sanchez</b> All rights reserved.")
  end
end
