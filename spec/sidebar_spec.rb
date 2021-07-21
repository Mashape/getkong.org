describe "sidebar", type: :feature, js: true do
  describe "Gateway OSS", type: :feature, js: true do
    it "has the correct number of sidebar sections" do
      visit "/gateway-oss/"
      expect(page).to have_selector('.accordion-container > .accordion-item', count: 6)
    end
  end

  describe "decK", type: :feature, js: true do
    it "has the correct number of sidebar sections" do
      visit "/deck/"
      expect(page).to have_selector('.accordion-container > .accordion-item', count: 6)
    end
  end

  describe "Gateway Enterprise", type: :feature, js: true do
    it "has the correct number of sidebar sections" do
      visit "/enterprise/"
      expect(page).to have_selector('.accordion-container > .accordion-item', count: 11)
    end
  end
end
