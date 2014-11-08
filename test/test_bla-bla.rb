require 'test/unit'
require_relative '../lib/bla-bla.rb'

class BlaBla
  public_class_method  :random_word
end

class BlaBlaSpec < Test::Unit::TestCase
  def test_random_word
    random_words = []
    10.times { random_words << BlaBla.random_word }
    assert(random_words.all? { |word| BlaBla::WORD_LIST.include?(word) })
  end

  def test_author
    10.times do
      author = BlaBla.author.split(/\W+/)
      assert_equal(2, author.length)
      first, last = author
      assert_equal(first.capitalize, first)
      assert_equal(last.capitalize, last)
    end
  end

  def test_title
    20.times do
      title = BlaBla.title
      words = title.split(/\W+/)
      assert(words.length >= 1)
      assert(words.length <= 5)
      assert_equal(words[0].capitalize, words[0])
    end
  end

  def test_sentence
    20.times do
      sentence = BlaBla.sentence
      words = sentence.split(/\W+/)
      assert(words.length >= 5)
      assert(words.length <= 10)
      assert_equal(words[0].capitalize, words[0])
    end
  end

  def test_content
    20.times do
      content = BlaBla.content
      # There must be a space after each period
      # except the last one.
      sentences = content.split(". ")
      # Make sure there are no extra spaces
      # around a sentence.
      sentences.each do |s|
        assert_equal(s.strip, s)
      end
      assert(sentences.length >= 1)
      assert(sentences.length <= 5)
    end
  end
end
