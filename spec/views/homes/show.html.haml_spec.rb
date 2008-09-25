require File.dirname(__FILE__) + "/../../spec_helper"

describe 'homes/show' do

  before do
    assigns[:featured_pitch] = Factory(:pitch)
  end

  it 'should render' do
    do_render
  end

  it "should show the featured pitch" do
    do_render
    template.should have_tag('a[href=?]', pitch_path(assigns[:featured_pitch]))
  end

  def do_render
    render 'homes/show'
  end
end
