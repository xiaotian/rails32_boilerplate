# == Schema Information
# Schema version: 20120126201307
#
# Table name: foo_bars
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class FooBar < ActiveRecord::Base
end
