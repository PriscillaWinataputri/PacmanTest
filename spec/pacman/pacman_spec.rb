require "spec_helper"

#!/usr/bin/env ruby
=begin
RSpec.describe Pacman::Robot do 
	subject {Pacman::Robot.new(0)}
	
	it "moves 3 spaces east" do
		3.times {subject.move_east}
		expect(subject.east).to eq(3)
	end

	it "moves 4 spaces east" do
		4.times {subject.move_east}
		expect(subject.east).to eq(4)
	end

	it "moves 3 spaces west" do
		3.times {subject.move_east}
		expect(subject.west).to eq(-3)
	end

	it "moves 4 spaces west" do 
		4.times { subject.move_west} 
		expect(subject.west).to eq(-4) 
	end

	it "moves 3 spaces north" do 
		3.times { subject.move_north }
		expect(subject.north).to eq(3) 
	end 

	it "moves 4 spaces north" do 
		4.times { subject.move_north } 
		expect(subject.north).to eq(4) 
	end

	it "moves 3 spaces south" do 
		3.times { subject.move_south } 
		expect(subject.north).to eq(-3) 
	end 

	it "moves 4 spaces south" do 
		4.times { subject.move_south }
		expect(subject.north).to eq(-4)
	end
end
=end

context "when facing north" do 
	subject { Pacman::Robot.new(0, 0, "NORTH") } 
		it "moves north" do 
			subject.move 
			expect(subject.north).to eq(1) 
		end 

		it "turns left to face east" do 
			subject.turn_left 
			expect(subject.direction).to eq("EAST") 
		end 

		 it "next move is to (0, 1)" do 
		 	expect(subject.next_move).to eq([0, 1]) 
		 end 
end

context "when facing south" do 
	subject { Pacman::Robot.new(0, 0, "SOUTH") } 
		it "moves south" do 
			subject.move 
			expect(subject.north).to eq(-1)
		end 

		it "turns left to face west" do
			subject.turn_left 
			expect(subject.direction).to eq("WEST") 
		end 

		it "next move is to (0, -1)" do 
		 	expect(subject.next_move).to eq([0, -1]) 
		end 
end

context "when facing east" do 
	subject { Pacman::Robot.new(0, 0, "EAST") } 
	it "moves east" do 
		subject.move 
		expect(subject.east).to eq(1) 
	end 

	it "turns left to face south" do 
		subject.turn_left 
		expect(subject.direction).to eq("SOUTH") 
	end 

	it "next move is to (1, 0)" do 
	 	expect(subject.next_move).to eq([1, 0]) 
	end 
end

context "when facing west" do 
	subject { Pacman::Robot.new(0, 0, "WEST") } 
	it "moves west" do 
		subject.move 
		expect(subject.east).to eq(-1) 
	end 

	it "turns left to face north" do 
	 	subject.turn_left 
	 	expect(subject.direction).to eq("NORTH") 
	end 

	it "next move is to (-1, 0)" do 
	 	expect(subject.next_move).to eq([-1, 0]) 
	end 
end

context "#report" do 
	subject { ToyRobot::Robot.new(5, 4, "EAST") }
		it "provides the current location and direction of the robot" do 
			expect(subject.report).to eq({ 6 east: 5, 7 north: 4, 8 direction: "EAST" 9 })
		end 
end



