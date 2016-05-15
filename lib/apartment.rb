class Apartment < Dwelling
  include Manager

  attr_accessor :rent, :lease_start_date, :lease_end_date

  def initialize(address, city_or_town, state, zip_code, rent, lease_start_date, lease_end_date)
    super(address, city_or_town, state, zip_code)
    @rent = rent #per month
    @lease_start_date = lease_start_date
    @lease_end_date = lease_end_date
    @space = []
    @space_max = 10
  end
end
