require 'rails_helper'

describe 'Relativの簡単なテスト', 'FirefoxExample' do
  before do
    @webdriver = Selenium::WebDriver.for :firefox
  end

  it "relativ画面にアクセスする" do
    @webdriver.navigate.to "http://dev.activo.com/about"
    expect(@webdriver.current_url).to eq "http://dev.activo.com/about"
  end

  after do
    @webdriver.quit
  end
end