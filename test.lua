local function BaseClass(init)
  local self = {}
  local private_field = init

  function self.foo()
    return private_field
  end

  function self.bar()
    private_field = private_field + 1
  end

  return self

end


local function DerivedClass(init, init2)
  local self = BaseClass(init)
  self.public_field = init2
  local private_field = init2

  base_foo = self.foo
  function self.foo()
    return private_field + self.public_field + base_foo()
  end

  return self
end

local i = DerivedClass(1, 2)
print(i.foo())
i.bar()
print(i.foo())
