require "./notify"

lunch = Lunch.new name: '傻X', meat: 'MEAT', vegatable: 'VEGATABLE', main: 'RICE'
p lunch 
Notify.new.deliver lunch
