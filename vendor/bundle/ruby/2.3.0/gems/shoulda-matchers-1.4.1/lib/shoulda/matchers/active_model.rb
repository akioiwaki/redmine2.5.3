require 'shoulda/matchers/active_model/helpers'
require 'shoulda/matchers/active_model/validation_matcher'
require 'shoulda/matchers/active_model/validation_message_finder'
require 'shoulda/matchers/active_model/exception_message_finder'
require 'shoulda/matchers/active_model/allow_value_matcher'
require 'shoulda/matchers/active_model/ensure_length_of_matcher'
require 'shoulda/matchers/active_model/ensure_inclusion_of_matcher'
require 'shoulda/matchers/active_model/ensure_exclusion_of_matcher'
require 'shoulda/matchers/active_model/validate_presence_of_matcher'
require 'shoulda/matchers/active_model/validate_format_of_matcher'
require 'shoulda/matchers/active_model/validate_uniqueness_of_matcher'
require 'shoulda/matchers/active_model/validate_acceptance_of_matcher'
require 'shoulda/matchers/active_model/validate_confirmation_of_matcher'
require 'shoulda/matchers/active_model/validate_numericality_of_matcher'
require 'shoulda/matchers/active_model/allow_mass_assignment_of_matcher'
require 'shoulda/matchers/active_model/errors'


module Shoulda
  module Matchers
    # = Matchers for your active record models
    #
    # These matchers will test most of the validations of ActiveModel::Validations.
    #
    #   describe User do
    #     it { should validate_presence_of(:name) }
    #     it { should validate_presence_of(:phone_number) }
    #     %w(abcd 1234).each do |value|
    #       it { should_not allow_value(value).for(:phone_number) }
    #     end
    #     it { should allow_value("(123) 456-7890").for(:phone_number) }
    #     it { should_not allow_mass_assignment_of(:password) }
    #     it { should allow_value('Activated', 'Pending').for(:status).strict }
    #     it { should_not allow_value('Amazing').for(:status).strict }
    #   end
    #
    # These tests work with the following model:
    #
    # class User < ActiveRecord::Base
    #   validates_presence_of :name
    #   validates_presence_of :phone_number
    #   validates_format_of :phone_number, :with => /\\(\\d{3}\\) \\d{3}\\-\\d{4}/
    #   validates_inclusion_of :status, :in => %w(Activated Pending), :strict => true
    #   attr_accessible :name, :phone_number
    # end
    module ActiveModel
    end
  end
end
