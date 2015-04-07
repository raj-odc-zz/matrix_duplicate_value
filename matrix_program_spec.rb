require 'rspec'
load 'matrix_program.rb'

describe 'find_duplicate' do
  let(:matrix_value) { [[1, 2, 3, 4], [3, 5, 6, 1]] }
  let(:instance_object) { MatrixProgram.new }

  it 'should return duplicated value' do
    expect(instance_object.find_duplicate(matrix_value)).to eq ([1, 3])
  end

  context 'if duplicate is not found' do
    let(:matrix_value) { [[2], [3, 6, 1]] }
    let(:instance_object) { MatrixProgram.new }

    it 'should return nil' do
      expect(instance_object.find_duplicate(matrix_value)).to be nil
    end
  end
end