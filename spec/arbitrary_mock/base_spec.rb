require 'arbitrary_mock/base'

describe ArbitraryMock::Base do
  it 'allows you to define attributes within an initial array' do
    mock = ArbitraryMock::Base.new(foo: 'bar')
    expect(mock.foo).to match 'bar'
  end

  it 'allows you to set arbitrary attributes' do
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
end
