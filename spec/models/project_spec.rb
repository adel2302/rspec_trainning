require 'rails_helper'


describe "Initialization" do
  let(:project) {Project.new}
  let(:task) {Task.new}

  it "considers a project with no test to be done" do
  	expect(project).to be_done
  end

 it "Know that a project with an incomplete test is not done" do
   project.tasks << task
   expect(project).not_to be_done
 end

end

describe 'Project' do
	it "considers a project with no tasks to be done" do
		project = Project.new
		expect(project.done?).to be_truthy
	end

	it "knows that a project with an incomplete task is not done" do
    project = Project.new
    task = Task.new
    project.tasks << task
    expect(project.done?).to be_falsy
	end

end


