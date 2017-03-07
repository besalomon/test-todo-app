require 'rails_helper'

RSpec.describe Task, type: :model do
  describe '#toggle_complete!' do 
    it "should switch complete to false if it began as true" do
      task = Task.new(complete: true)
      task.toggle_complete!
      expect(task.complete).to eq(false)
    end

    it "should switch complete to true if it began as false" do 
      task = Task.new(complete: false)
      task.toggle_complete!
      expect(task.complete).to eq(true)
    end
  end

  describe '#toggle_favorite!' do
    it "should switch favorite to false if it began as true" do
      task = Task.new(favorite: true)
      task.toggle_favorite!
      expect(task.favorite).to eq(false)
    end

    it "should switch favorite to true if it began as true" do
      task = Task.new(favorite: false)
      task.toggle_favorite!
      expect(task.favorite).to eq(true)
    end

  end

  describe "#increment_priority!" do
    it 'should increment the priority of a task ' do
    task = Task.new(priority: 9)
    task.increment_priority!
    expect(task.priority).to eq(10)
    end
  end

    describe "#increment_priority!" do
    it 'should increment the priority of a task ' do
    task = Task.new(priority: 9)
    task.increment_priority!
    expect(task.priority).to eq(10)
    end
  end

end
