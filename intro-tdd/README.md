# tdd-ruby-code
* Create a Car class
  * Has a model, miles, and fuel
  * Miles is 0 at initialization, fuel is 100
* Create a method to drive the car a certain distance
  * Method should increase miles by the distance
  * Method should decrease fuel by distance * .1
  * Should throw an error if there is not enough fuel

```
rspec --init
```

```
describe "behavior" do 
 it "produces outcome" do
  expect(behavior).to eq(outcome)
 end
end
```

``` 
 before(:each) do
  @object = Object.new
 end
```
 
 
[RSpec Docs](https://rspec.info/documentation/)
