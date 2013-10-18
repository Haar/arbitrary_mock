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
    2.0.0p247 :006 > mock.property_hash
    => nil
    2.0.0p247 :007 > mock.foo = 'baz'
    => "baz"
    2.0.0p247 :008 > mock.foo
    => "baz"
    2.0.0p247 :009 > mock.foo << 'quux'
    => "bazquux"
    2.0.0p247 :010 > mock.foo
    => "bazquux"
    2.0.0p247 :011 >

### Usage

    Model < ArbitraryMock::Base; end
    dependency = Model.new(foo: 'bar')
    Model.stub(new: dependency)

    ## insert logic here
    expect(dependency.attribute).to match 'some_value'



This project rocks and uses MIT-LICENSE.
