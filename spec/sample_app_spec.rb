RSpec.describe SampleApp do
  it "has a version number" do
    expect(SampleApp::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(SampleApp.greet("Hello")).to eq("Hi!, Hello")
  end
end
