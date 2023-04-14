class Operations
    def add(a,b)
        puts "the addition is #{a+b}"
    end
    def sub(c,d)
        puts "the substraction is #{c-d}"
    end
    def mul(e,f)
        puts "the multiplication is #{e*f}"
    end
    def modulus(g,h)
        puts "the modulus is #{g%h}"
    end
    def exi
        puts "The calculator has done its job!,Exit!"
    end

    def calling(testarg,secondarg)

        puts "Enter the Operation"
        $inp=gets.chomp
    
        puts "now enter the numbers"
        a=gets.chomp.to_i
        b=gets.chomp.to_i    
        for i in 1..100 do
        
            if secondarg=="+"
                testarg.add(a,b)
                break
            elsif secondarg=="-"
                testarg.sub(a,b)
                break
            elsif secondarg=="*"
                testarg.mul(a,b)
                break
            elsif secondarg=="%"
                testarg.modulus(a,b)
                break
            else
                testarg.exi()
                break
            end
        end
        
    end


end
test=Operations.new

test.calling(test,$inp)