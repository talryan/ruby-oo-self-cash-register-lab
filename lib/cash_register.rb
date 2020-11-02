class CashRegister
    attr_accessor :total, :discount, :title, :price, :quantity, :last_transaction
    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @title = title
        @quantity = quantity
        @cart = []
    end
    def add_item(title, price, quantity=1)
        self.total += price*quantity 
        count = 0
        while count < quantity
          @cart << [title,price]
          count += 1
        end
        self.last_transaction = price*quantity
      end
    def apply_discount
        if @discount == 0
            "There is no discount to apply."
        else
            @discount != 0
            self.total = total - total * discount / 100
            "After the discount, the total comes to $#{total}."
        end
    end
    def items
        titles_only = []
        @cart.each do |food|
            titles_only << food[0]
        end
       titles_only
    end
    def void_last_transaction
        self.total -= self.last_transaction.to_f
    end
end