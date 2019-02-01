print((1...999).filter({$0 % 3 == 0 || $0 % 5 == 0}).reduce(0, {x,y in x + y}))
