require "test_helper"

class ProductTest < ActiveSupport::TestCase
  fixtures :products

  setup do
    @product = Product.new(title: "My Product Title", description: "My description.", image_url: "abc.jpg")
  end

  test "should not allow empty product attributes" do
    product = Product.new
    assert product.invalid?
    assert product.errors[:title].any?
    assert product.errors[:description].any?
    assert product.errors[:image_url].any?
    assert product.errors[:price].any?
  end

  test "should not allow negative prices" do
    @product.price = -1
    assert @product.invalid?
    assert_equal ["must be greater than or equal to 0.01"], @product.errors[:price]
  end

  test "should not allow 0 as price" do
    @product.price = 0
    assert @product.invalid?
    assert_equal ["must be greater than or equal to 0.01"], @product.errors[:price]
  end

  test "should allow 0.01 as price" do
    @product.price = 0.01
    assert @product.valid?
  end

  def new_product(image_url)
    Product.new(title: "My Title", description: "My description.", price: 1, image_url: image_url)
  end

  test "image url" do
    ok = %w{test.gif test.jpg test.png TEST.JPG TEST.Jpg https://a.b.c/a/b/c/test.gif}
    bad = %w{test.doc test.gif/more test.gif.more test.rb}

    ok.each do |image_url|
      assert new_product(image_url).valid?, "#{image_url} must be valid"
    end

    bad.each do |image_url|
      assert new_product(image_url).invalid?, "#{image_url} must be invalid"
    end
  end

  test "should have a unique title" do
    product = Product.new(title: products(:one).title, description: "test", price: 1, image_url: "test.jpg")

    assert product.invalid?
    assert_equal ["has already been taken"], product.errors[:title]
  end
end
