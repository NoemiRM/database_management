class Collaborator < ActiveRecord::Base
  self.table_name = 'collaborator'
  self.primary_key = 'id'
  alias_attribute :NAME, :name
  alias_attribute :LASTNAME, :lastname
  alias_attribute :SECOND_LASTNAME, :second_lastname

end