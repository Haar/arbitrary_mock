# ArbitraryMock

ArbitraryMock is a basic object used for easily asserting the behaviours of
utility classes without loading the dependencies themselves, or making
specific assertions about the way the class functions.


## Example

### Basic

    2.0.0p247 :003 > require 'arbitrary_mock'
    => true
    2.0.0p247 :004 > mock = ArbitraryMock::Base.new(foo: 'bar')
    => #<ArbitraryMock::Base:0x007f97710eade8 @property_hash={:foo=>"bar"}>
    2.0.0p247 :005 > mock.foo
    => "bar"
    2.0.0p247 :007 > mock.foo = 'baz'
    => "baz"
    2.0.0p247 :009 > mock.foo << 'quux'
    => "bazquux"

### Usage
    # Check if it already exists, if so we don't need to fake it
    Model ||= ArbitraryMock::Base
    dependency = Model.new(foo: 'bar')
    Model.stub(new: dependency)

    ## insert logic here
    expect(dependency.attribute).to match 'some_value'


This project rocks and uses MIT-LICENSE.
