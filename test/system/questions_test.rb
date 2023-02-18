# test/system/questions_test.rb
require 'application_system_test_case'

class QuestionsTest < ApplicationSystemTestCase
  test 'visiting /ask renders the form' do
    visit ask_url
    assert_selector 'p', text: 'Ask your coach anything'
    take_screenshot
  end

  test 'saying Hello yields a grumpy response from the coach' do
    visit ask_url
    fill_in 'question', with: 'Hello'
    click_on 'Ask'
    assert_text "I don't care, get dressed and go to work!"
    take_screenshot
  end

  test 'you can return to the /ask page' do
    visit answer_url
    assert_selector 'a', text: 'Back to questions!'
    click_on 'Back to questions!'
    take_screenshot
  end
end
