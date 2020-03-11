# Jungle

A mini e-commerce application built with Rails 4.2 for purposes of teaching Rails by example.

# Final Product
1.screenshot of Home page

!["ScreenShot of Home page Layout"](https://github.com/Meghanath91/jungle-rails/blob/master/vendor/assets/images_animation/Screenshot_of_home_page.jpg)

2.ScreenShot of order_summary

!["ScreenShot of order_summary"](https://github.com/Meghanath91/jungle-rails/blob/master/vendor/assets/images_animation/Screenshot_order_summary.jpg)

3.ScreenShot of order cart

!["ScreenShot of order cart"](https://github.com/Meghanath91/jungle-rails/blob/master/vendor/assets/images_animation/screenshot_of_order_cart.jpg)


4.This animation will show the overall working of Application

!["Animation of application use"](https://github.com/Meghanath91/jungle-rails/blob/master/vendor/assets/images_animation/Jungle.gif)


## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rake db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe
