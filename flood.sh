#!/bin/bash 
clear 
 
for((i=1;i<=10;i++)); do
    bundle exec ruby ./fake_order.rb
done;
