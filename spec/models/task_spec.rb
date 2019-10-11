require 'rails_helper'

describe Task do
  it "is valid with a title, start_date and end_date" do
    task = Task.new(
      title: 'Correr en la mañana',
      start_date: Time.now,
      end_date: Time.now+2.hours)
    expect(task).to be_valid
  end

  it "is invalid without a title" do
    task = Task.new(title: nil)
    task.valid?
    expect(task.errors[:title]).to include("can't be blank")
  end

  it "is invalid without a start_date" do
    task = Task.new(title: 'Correr', start_date: nil)
    task.valid?
    expect(task.errors[:start_date]).to include("can't be blank")
  end

  it "is invalid without a end_date" do
    task = Task.new(title: 'Correr', start_date: Time.now, end_date: nil)
    task.valid?
    expect(task.errors[:end_date]).to include("can't be blank")
  end

  it "is invalid if email format is invalid" do
    task = Task.new(
      title: 'Correr en la mañana',
      start_date: Time.now,
      end_date: Time.now+2.hours,
      email: 'falso-email')
    expect(task).to be_invalid
  end

  it "is invalid if dates overlap" do
    task1 = Task.new(
      title: 'Correr en la mañana',
      start_date: Time.now,
      end_date: Time.now+2.hours)
    expect(task1).to be_valid 
    task2 = Task.new(
        title: 'Correr en la mañana',
        start_date: Time.now,
        end_date: Time.now+20.minutes) 
    task2.save      
    expect(task2).to be_invalid
  end

end
