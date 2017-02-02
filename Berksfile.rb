source "https://supermarket.chef.io"

metadata

group :integration do
  cookbook 'test-helper', path: '../../cookbooks/test-helper'
end
