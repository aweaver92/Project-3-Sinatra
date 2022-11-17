class ApplicationController < Sinatra::Base
    set :default_content_type, 'application/json'
end

#gets all orders
get '/admin/order-history' do
    order = Order.all
    order.to_json
end

#get all reviews
get '/admin/reviews' do
    review = Review.all
    review.to_json
end

#get reviews by meal
get '/admin/reviews/:id' do
    review = Review.sort_review_by_meal(params[:id])
    review.to_json
end

#filter by breakfast/lunch/dinner
get '/admin/meals/:type' do
    review = Meal.sort_by_meal(params[:type])
    review.to_json
end
