require 'santas_diary'

describe SantasDiary do
  it 'can create an instance of santas diary' do
    santas_diary = SantasDiary.new
    expect(santas_diary).to be_kind_of(SantasDiary)
  end
  
  it 'can respond to view_list' do
  santas_diary = SantasDiary.new
  expect(santas_diary).to respond_to(:view_list)
  end

  # it 'should show list title initially "List of names"' do
  # santas_diary = SantasDiary.new
  # expect(santas_diary.view_list).to eq("List of names")
  # end

  it 'should respond to add_name' do
  santas_diary = SantasDiary.new
  expect(santas_diary).to respond_to(:add_name).with(1).argument
  end

  it 'should show added name' do
    santas_diary = SantasDiary.new
    santas_diary.add_name("Jim")
    expect(santas_diary.list).to include("Jim")
  end

  it 'should respond to remove_name' do
    santas_diary = SantasDiary.new
    expect(santas_diary).to respond_to(:remove_name).with(1).argument
    end

    it 'should remove name' do
      santas_diary = SantasDiary.new
      santas_diary.remove_name("Jim")
      expect(santas_diary.list).to include?("Jim")
    end

end
