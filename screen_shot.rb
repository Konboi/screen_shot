# -*- coding: utf-8 -*-
require 'selenium-webdriver'

# ブラウザ起動
# :chrome, :firefox, :safari, :ie, :operaなどに変更可能
driver = Selenium::WebDriver.for :chrome

# Googleにアクセス
time = Time.now

driver.navigate.to "http://fonta.kayac.com/preview#picture"
puts "wait 5"
sleep(5)
driver.save_screenshot("img/#{time.to_i}_1_picture.jpg")

driver.find_element(:id, 'prev_st').click
puts "wait 5"
sleep(5)
driver.save_screenshot("img/#{time.to_i}_2_picture.jpg")

driver.find_element(:id, 'prev_st').click
puts "wait 5"
sleep(5)
driver.find_element(:id, 'prev_st').click
puts "wait 5"
driver.save_screenshot("img/#{time.to_i}_3_picture.jpg")

sleep(5)
driver.find_element(:id, 'prev_st').click
puts "wait 5"
sleep(5)
driver.save_screenshot("img/#{time.to_i}_4_picture.jpg")





driver.navigate.to "http://konboi.com"
sleep(2)


driver.navigate.to "http://fonta.kayac.com/preview#book"
sleep(5)
#driver.save_screenshot("img/#{time.to_i}_book.jpg")

driver.navigate.to "http://konboi.com"
sleep(2)

driver.navigate.to "http://fonta.kayac.com/preview#comic"
sleep(5)
#driver.save_screenshot("img/#{time.to_i}_comic.jpg")


driver.quit
