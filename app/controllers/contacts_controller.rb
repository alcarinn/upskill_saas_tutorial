class ContactsController < ApplicationController
    def new
        @conctact = Contact.new
    end
    
    def create
        @conctact = Contact.new(contact_params)
        if @conctact.save
            redirect_to new_contact_path, notice: "Message sent."
        else
            redirect_to new_contact_path, notice: "Error occured."
        end
    end
    
    private
        def contact_params
            params.require(:contact).permit(:name, :email, :comments)
        end
end