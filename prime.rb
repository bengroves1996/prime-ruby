def prime?(num)
    num = num.abs()
    list1 = (1..num).to_a
    bin1 = []
    bin2 = []
    i = 0
    for i in list1
        factor = num % list1[i-1]
        if factor >= 1
            bin1.append(factor)
        else
            bin2.append(factor)
        end 
    end 

    if num == 2 || num == -2
        return true
    elsif num == 1 || num == -1
        return false
    elsif bin2.length == 2
        return true
    end 
  end