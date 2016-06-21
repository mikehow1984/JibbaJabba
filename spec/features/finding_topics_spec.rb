require "rails_helper"

RSpec.feature "Users can search for topics" do
	scenario "with valid search term" do
		visit "/"

		fill_in "Search", with "Politics"
		click_button "Find topic"

		expect(page).to have_content "Search complete."
	end
end

RSpec.feature "Users can create topics" do
	scenario"with valid search term" do
		visit "/"

		fill_in "Create", with "Politics"
		click_button "Create Topic"

		expect(page).to have_content "Creation Form"

		fill_in "Body", with "How about that debate?"
		click_button "Submit"

		expect(page).to have_content "Topic posted"
	end
end
