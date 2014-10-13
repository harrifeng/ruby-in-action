# ruby-in-action/mruby/object-model/alphanumeric.rb
def to_alphanumeric(s)
  s.gsub /[^\w\s]/, ''
end

require 'test/unit'

class ToAlphanumericTest < Test::Unit::TestCase
  def test_strips_non_alphanumeric_characters
    assert_equal '3 the Magic Number', to_alphanumeric('#3, the *Magic, Number*?')
  end
end

###########################################################################
# <===================OUTPUT===================>                          #
# $ ruby alphanumeric.rb                                                  #
# Run options:                                                            #
#                                                                         #
# # Running tests:                                                        #
#                                                                         #
# .                                                                       #
#                                                                         #
# Finished tests in 0.000577s, 1733.1023 tests/s, 1733.1023 assertions/s. #
#                                                                         #
# 1 tests, 1 assertions, 0 failures, 0 errors, 0 skips                    #
###########################################################################
