***spec/controllers/contacts_controller_spec.rb***

context "with invalid attributes" do

  let(:post) { create(:post) }
  let(comment) { create(:comment) }

  it "does not create a new contact" do
    post :create, comment: attributes_for(:comment)
      expect(Contact.count).to eq(0)
    end
  end
end
