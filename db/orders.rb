Car.delete_all
car1 = Car.create(model: "朗逸", cc: "1.4T", price: "128000", color: "香槟金", vin: "A00000001")
car2 = Car.create(model: "高尔夫", cc: "1.6T", price: "148000", color: "黑", vin: "A00000002")
car3 = Car.create(model: "POLO", cc: "1.6T", price: "108000", color: "银灰", vin: "A00000003")
car4 = Car.create(model: "桑塔纳", cc: "1.4T", price: "90000", color: "白", vin: "A00000004")
car5 = Car.create(model: "帕萨特", cc: "1.8T", price: "2280000", color: "黑", vin: "A00000005")
car6 = Car.create(model: "朗逸", cc: "1.4T", price: "128000", color: "白", vin: "A00000006")
car7 = Car.create(model: "朗逸", cc: "1.4T", price: "128000", color: "灰", vin: "A00000007")
car8 = Car.create(model: "朗逸", cc: "1.4T", price: "128000", color: "黑", vin: "A00000008")

Accessory.delete_all
acc1 = Accessory.create(name: "脚垫", price: "3000")
acc2 = Accessory.create(name: "脚垫", price: "3000")
acc3 = Accessory.create(name: "脚垫", price: "3000")
acc4 = Accessory.create(name: "脚垫", price: "3000")
acc5 = Accessory.create(name: "脚垫", price: "3000")
acc6 = Accessory.create(name: "车载导航", price: "15000")
acc7 = Accessory.create(name: "车载导航", price: "15000")
acc8 = Accessory.create(name: "车载导航", price: "15000")
acc9 = Accessory.create(name: "车载导航", price: "15000")
acc10 = Accessory.create(name: "车载导航", price: "15000")
acc11 = Accessory.create(name: "车载导航", price: "15000")
acc12 = Accessory.create(name: "车载导航", price: "15000")
acc13 = Accessory.create(name: "车载导航", price: "15000")

Order.delete_all
order1 = Order.create(car: car1, customer_name: "张三", price: "128000", status: "待审批")
order1.order_accessories << OrderAccessory.create(accessory: acc1)
order1.order_accessories << OrderAccessory.create(accessory: acc2)
order1.save

order2 = Order.create(car: car2, customer_name: "李斯", price: "148000", status: "等待付款")
order2.order_accessories << OrderAccessory.create(accessory: acc3)
order2.order_accessories << OrderAccessory.create(accessory: acc4)
order2.order_accessories << OrderAccessory.create(accessory: acc5)
order2.save

order2 = Order.create(car: car3, customer_name: "王武", price: "148000", status: "待审批")
order2.order_accessories << OrderAccessory.create(accessory: acc6)
order2.save