class School
  require 'pry'
  
  def initialize(school_name)
    @school_name = school_name
  end

  def add_student(name, grade)
    @name = name
    @grade = grade
    @student_list ||= {}
    if @student_list[@grade].nil?
      @students = []
      @students << @name
      @student_list[@grade] = @students
    else
      @students << @name
      @student_list[@grade] = @students
    end

  end

  def roster
    if @student_list.nil?
      @student_list = {}
    else
      @student_list
    end
  end

  def grade(num)
    @grade = num
    return @student_list[@grade]
  end

  def sort
    sorted_list = {}
    sorted = @student_list.sort
    sorted.each do |major|
      student = major[1].sort
      sorted_list[major[0]] = student
    end
    sorted_list
  end
end








