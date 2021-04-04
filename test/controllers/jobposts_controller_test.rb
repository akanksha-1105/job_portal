require 'test_helper'

class JobpostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @jobpost = jobposts(:one)
  end

  test "should get index" do
    get jobposts_url
    assert_response :success
  end

  test "should get new" do
    get new_jobpost_url
    assert_response :success
  end

  test "should create jobpost" do
    assert_difference('Jobpost.count') do
      post jobposts_url, params: { jobpost: { company: @jobpost.company, description: @jobpost.description, salary: @jobpost.salary, title: @jobpost.title, url: @jobpost.url } }
    end

    assert_redirected_to jobpost_url(Jobpost.last)
  end

  test "should show jobpost" do
    get jobpost_url(@jobpost)
    assert_response :success
  end

  test "should get edit" do
    get edit_jobpost_url(@jobpost)
    assert_response :success
  end

  test "should update jobpost" do
    patch jobpost_url(@jobpost), params: { jobpost: { company: @jobpost.company, description: @jobpost.description, salary: @jobpost.salary, title: @jobpost.title, url: @jobpost.url } }
    assert_redirected_to jobpost_url(@jobpost)
  end

  test "should destroy jobpost" do
    assert_difference('Jobpost.count', -1) do
      delete jobpost_url(@jobpost)
    end

    assert_redirected_to jobposts_url
  end
end
