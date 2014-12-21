class Array

  def my_inject(*args,&block)
    init = self[0]
    i = 1
    while self[i]
      init = block.call(init,self[i])
      i += 1
    end
    return init
  end

end

#[1.2.3.4].my_inject{|m,n| m * n }
