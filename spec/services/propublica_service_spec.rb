require 'rails_helper'

RSpec.describe "ProPublica Service API" do
  context "Search House by State" do
    it "should return hash of representatives in state" do
      results = PropublicaService.search_house_by_state(state: "CO")
      result_first = results.first
      result_last = results.last

      expect(results).to be_a Array
      expect(results.count).to eq 7
      expect(result_first).to be_a Hash

      expect(result_first).to have_key "name"
      expect(result_first["name"]).to be_a String

      expect(result_first).to have_key "party"
      expect(result_first["party"]).to be_a String

      expect(result_first).to have_key "role"
      expect(result_first["role"]).to be_a String

      expect(result_first).to have_key "district"
      expect(result_first["district"]).to be_a String

      expect(result_first).to have_key "seniority"
      expect(result_first["seniority"]).to be_a String

      expect(result_first["seniority"].to_i).to be >= result_last["seniority"].to_i
    end
  end
end
