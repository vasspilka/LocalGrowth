module StoresHelper

  def entertainmet_stores
  	return Stores::EntertainmentStore.all
  end

  def food_stores
  	return Stores::FoodStore.all
  end

  def other_stores
  	return other_stores = Stores::OtherStore.all
  end

  def all_stores
  	return entertainmet_stores + food_stores + other_stores
  end


end
