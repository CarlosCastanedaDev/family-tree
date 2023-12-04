class Contact < MailForm::Base
  attribute :name, validate: true
  attribute :email, validate: true
  attribute :message, validate: true
end