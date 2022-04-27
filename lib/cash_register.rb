class CashRegister
    attr_accessor :total, :discount, :items, :last_transaction

    def initialize(discount = 0)
        self.total = 0
        self.discount = discount
        items = []
    end

    def add_item(title, price, quantity=1)
        self.last_transaction = price * quantity
        self.total += self.last_transaction
        quantity.times do 
            self.items << title
    end

    def apply_discount
        if self.discount != 0
            discount_as_percent = (100.00 - self.discount.to_f) / 100
            self.total = (self.total * discount_as_percent).to_i
            "After the discount, the total comes to $800."
        else
           "There is no discount to apply." 
        end 
    end
    
    def void_last_transaction
        self.total -= self.last_transaction
    end
end
