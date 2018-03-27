  class School
    def initialize
      @hsh = {}
    end

    def to_h
      @hsh.values.each{|value| value.sort!}
      @hsh.sort.to_h
    end

    def add(s_name, grade)
      @hsh[grade] ? (@hsh[grade] << s_name) : (@hsh[grade] = [s_name]) 
    end

    def grade(number)
      if @hsh.keys.flatten.include?(number)
        @hsh[number]
      else
        []
      end
    end
  end