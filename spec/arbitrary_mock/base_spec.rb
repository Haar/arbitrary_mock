require 'arbitrary_mock/base'

describe ArbitraryMock::Base do
  describe '#initialize' do
    it 'allows you to set arbitrary attributes' do
      mock = ArbitraryMock::Base.new(foo: 'bar')
      expect(mock.foo).to match 'bar'
    end
  end

  it 'allows you to set attributes as setters' do
    mock = ArbitraryMock::Base.new
    mock.foo = 'bar'
    expect(mock.foo).to match 'bar'
  end

  it 'allows you to directly modify attributes' do
    mock = ArbitraryMock::Base.new(foo: 'bar')
    mock.foo << 'bang'
    expect(mock.foo).to match 'barbang'
  end

  it 'allows you to overload a class for isolated settings' do
    MyClass ||= ArbitraryMock::Base
    MyClass.new(foo: 'bar').foo.should == 'bar'
  end

  it 'allows you to "try" a method' do
    MyClass ||= ArbitraryMock::Base
    MyClass.new(foo: 'bar').try(:foo).should == 'bar'
  end
end
