class Person
    attr_accessor :bank_account
    attr_reader :name, :happiness, :hygiene

    def initialize(name)
        @name=name
         @bank_account = 25
         @happiness = 8
        @hygiene = 8
        
    end
    def happiness=(num)
        @happiness = num.clamp(0, 10)
    end 
    def hygiene=(num)
        @hygiene = num.clamp(0, 10)
    end   
    def clean?
        self.hygiene> 7
    end
    def happy?
        self.happiness >7
    end
    def get_paid (salary_amount)
        @salary_amount=salary_amount
        self.bank_account += salary_amount
        return "all about the benjamins"
    end
    def take_bath(num=4)
        self.hygiene += num
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    def work_out (num1=2, num2=3)
        self.happiness += num1
        self.hygiene -= num2
        "♪ another one bites the dust ♫"
    end
    def call_friend(friend)
        num=3
        self.happiness += num
        friend.happiness += num
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        case topic 
        when "politics"
          [self, friend].each { |person| person.happiness -= 2 }
          "blah blah partisan blah lobbyist"
        when "weather"
          [self, friend].each { |person| person.happiness += 1 }
          "blah blah sun blah rain"
        else
          "blah blah blah blah blah"
        end
      end
end