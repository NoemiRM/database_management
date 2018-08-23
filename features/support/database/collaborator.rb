class Collaborator < ActiveRecord::Base
  self.table_name = 'collaborator'
  self.primary_key = 'id'
  alias_attribute :name, :name
  alias_attribute :lastname, :lastname
  alias_attribute :second_lastname, :second_lastname

end