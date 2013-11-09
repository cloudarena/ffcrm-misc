
class Product

  attr_accessor :name, :price

  def initialize(opts={})
    @name = opts.fetch(:name).to_s
    @price = opts.fetch(:price).to_f
  end

  class << self
    #
    # load product {name:price} hash from a yaml file
    # 
    #  Just list all name: price pair in the yaml file. e.g.
    #   Name1: Price1
    #  Name2: Price1
    def load_from_yaml path
      hash = YAML.load_file(path)
      hash.map {|name, price|
        Product.new({:name=>name, :price=>price})
      }
    end

    #
    # load products.yml file.  first check application config directory, if not found check plugin's config directory.
    # only one of them is loaded.
    #
    def all
      load_files = [Rails.root, FfcrmMisc::Engine.root].map{|r| "#{r}/config/products.yml"}
      for f in load_files do
          if File.exists?(f)
              return load_from_yaml(f)
          end
      end
    end

  end

end
