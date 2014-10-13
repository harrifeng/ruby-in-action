# ruby-in-action/mruby/object-model/alphanumeric2.rb
class String
  def to_alphanumeric
    gsub /[^\w\s]/, ''
  end
end

require 'test/unit'

class StringExtensionsTest < Test::Unit::TestCase
  def test_strings_non_alphanumeric_characters
    assert_equal '3 the Magic Number', '#3, the *Magic, Number*?'.to_alphanumeric
  end
end

###########################################################################
# <===================OUTPUT===================>                          #
# $ ruby alphanumeric2.rb                                                 #
# Run options:                                                            #
#                                                                         #
# # Running tests:                                                        #
#                                                                         #
# .                                                                       #
#                                                                         #
# Finished tests in 0.000345s, 2898.5507 tests/s, 2898.5507 assertions/s. #
#                                                                         #
# 1 tests, 1 assertions, 0 failures, 0 errors, 0 skips                    #
###########################################################################
