require File.expand_path(File.dirname(__FILE__) + '/neo')
# frozen_string_literal: true
# Class AboutSymbols
# This class smells of :reek:UncommunicativeModuleName
class AboutSymbols < Neo::Koan
  # This method smells of :reek:UncommunicativeMethodName
  # This method smells of :reek:UncommunicativeVariableName
  # This method smells of :reek:TooManyStatements
  # This method smells of :reek:FeatureEnvy
  def test_symbols_are_symbols
    symbol = :ruby
    assert_equal true, symbol.is_a?(Symbol)
  end

  # This method smells of :reek:UncommunicativeMethodName
  # This method smells of :reek:UncommunicativeVariableName
  # This method smells of :reek:TooManyStatements
  # This method smells of :reek:FeatureEnvy
  def test_symbols_can_be_compared
    symbol1 = :a_symbol
    symbol2 = :a_symbol
    symbol3 = :something_else

    assert_equal true, symbol1 == symbol2
    assert_equal false, symbol1 == symbol3
  end

  # This method smells of :reek:UncommunicativeMethodName
  # This method smells of :reek:UncommunicativeVariableName
  # This method smells of :reek:TooManyStatements
  # This method smells of :reek:FeatureEnvy
  def test_identical_symbols_are_a_single_internal_object
    symbol1 = :a_symbol
    symbol2 = :a_symbol

    assert_equal true, symbol1           == symbol2
    assert_equal true, symbol1.object_id == symbol2.object_id
  end

  # This method smells of :reek:UncommunicativeMethodName
  # This method smells of :reek:UncommunicativeVariableName
  # This method smells of :reek:TooManyStatements
  # This method smells of :reek:FeatureEnvy
  # rubocop:disable Metrics/LineLength
  def test_method_names_become_symbols
    symbols_as_strings = Symbol.all_symbols.map(&:to_s)
    assert_equal true, symbols_as_strings.include?('test_method_names_become_symbols')
  end
  # rubocop:enable Metrics/LineLength

  # THINK ABOUT IT:
  #
  # Why do we convert the list of symbols to strings and then compare
  # against the string value rather than against symbols?
  # rubocop:disable Style/RedundantFreeze
  in_ruby_version('mri') do
    RUBY_CONSTANT = 'What is the sound of one hand clapping?'.freeze
    # rubocop:enable Style/RedundantFreeze
    # This method smells of :reek:UncommunicativeMethodName
    # This method smells of :reek:UncommunicativeVariableName
    # This method smells of :reek:TooManyStatements
    # This method smells of :reek:FeatureEnvy
    def test_constants_become_symbols
      all_symbols_as_strings = Symbol.all_symbols.map(&:to_s)

      assert_equal false, all_symbols_as_strings.include?(RUBY_CONSTANT)
    end
  end

  # This method smells of :reek:UncommunicativeMethodName
  # This method smells of :reek:UncommunicativeVariableName
  # This method smells of :reek:TooManyStatements
  # This method smells of :reek:FeatureEnvy
  def test_symbols_can_be_made_from_strings
    string = 'catsAndDogs'
    assert_equal :catsAndDogs, string.to_sym
  end

  # This method smells of :reek:UncommunicativeMethodName
  # This method smells of :reek:UncommunicativeVariableName
  # This method smells of :reek:TooManyStatements
  # This method smells of :reek:FeatureEnvy
  def test_symbols_with_spaces_can_be_built
    symbol = :"cats and dogs"

    assert_equal 'cats and dogs'.to_sym, symbol
  end

  # This method smells of :reek:UncommunicativeMethodName
  # This method smells of :reek:UncommunicativeVariableName
  # This method smells of :reek:TooManyStatements
  # This method smells of :reek:FeatureEnvy
  def test_symbols_with_interpolation_can_be_built
    symbol = :"cats and dogs"

    assert_equal 'cats and dogs'.to_sym, symbol
  end

  # This method smells of :reek:UncommunicativeMethodName
  # This method smells of :reek:UncommunicativeVariableName
  # This method smells of :reek:TooManyStatements
  # This method smells of :reek:FeatureEnvy
  def test_to_s_is_called_on_interpolated_symbols
    string = 'It is raining cats and dogs.'

    assert_equal 'It is raining cats and dogs.', string
  end

  # This method smells of :reek:UncommunicativeMethodName
  # This method smells of :reek:UncommunicativeVariableName
  # This method smells of :reek:TooManyStatements
  # This method smells of :reek:FeatureEnvy
  def test_symbols_are_not_strings
    symbol = :ruby
    assert_equal false, symbol.is_a?(String)
    assert_equal false, symbol.eql?('ruby')
  end

  # This method smells of :reek:UncommunicativeMethodName
  # This method smells of :reek:UncommunicativeVariableName
  # This method smells of :reek:TooManyStatements
  # This method smells of :reek:FeatureEnvy
  # This method smells of :reek:ManualDispatch
  def test_symbols_do_not_have_string_methods
    symbol = :not_a_string
    assert_equal false, symbol.respond_to?(:each_char)
    assert_equal false, symbol.respond_to?(:reverse)
  end

  # It's important to realize that symbols are not "immutable
  # strings", though they are immutable. None of the
  # interesting string operations are available on symbols.

  # This method smells of :reek:UncommunicativeMethodName
  # This method smells of :reek:UncommunicativeVariableName
  # This method smells of :reek:TooManyStatements
  # This method smells of :reek:FeatureEnvy
  def test_symbols_cannot_be_concatenated
    # Exceptions will be pondered further down the path
    assert_raise(NoMethodError) do
      :cats + :dogs
    end
  end

  # This method smells of :reek:UncommunicativeMethodName
  # This method smells of :reek:UncommunicativeVariableName
  # This method smells of :reek:TooManyStatements
  # This method smells of :reek:FeatureEnvy
  def test_symbols_can_be_dynamically_created
    assert_equal :catsdogs, ('cats' + 'dogs').to_sym
  end

  # THINK ABOUT IT:
  #
  # Why is it not a good idea to dynamically create a lot of symbols?
end
