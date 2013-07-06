# -*- coding: utf-8 -*-
require 'selenium-webdriver'

# ブラウザ起動
# :chrome, :firefox, :safari, :ie, :operaなどに変更可能
driver = Selenium::WebDriver.for :chrome

# Googleにアクセス
time = Time.now

driver.navigate.to "http://fonta.kayac.com/preview#picture"
sleep(5)
driver.save_screenshot("img/#{time.to_i}_picture.jpg")

driver.navigate.to "http://konboi.com"
sleep(2)


driver.navigate.to "http://fonta.kayac.com/preview#book"
sleep(5)
driver.save_screenshot("img/#{time.to_i}_book.jpg")

driver.navigate.to "http://konboi.com"
sleep(2)

driver.navigate.to "http://fonta.kayac.com/preview#comic"
sleep(5)
driver.save_screenshot("img/#{time.to_i}_comic.jpg")


driver.quit
