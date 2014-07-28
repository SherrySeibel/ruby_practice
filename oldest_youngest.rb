class AgeDisplay

  def initialize
    @name_and_age = []
    @hash_name_and_age = {}
  end

  def calculate_oldest_and_youngest
    user_prompt
    collect_and_sort_user_input
    sort_user_input
  end

  private

  def user_prompt
    puts "Enter the name and age of an individual, or press ENTER to quit."
    puts "Ex: Melissa 27"
  end

  def collect_and_sort_user_input
    loop do
      print "> "
      name_with_age = gets.chomp
      if name_with_age.empty?
        break
      else
        @name_and_age << name_with_age.split
        @hash_name_and_age = Hash[@name_and_age.map { |name, age| [name, age] }]
      end
    end
  end

  def sort_user_input
    if @hash_name_and_age.any?
      person = @hash_name_and_age.sort_by { |name, age| age.to_i }
      puts "#{person.pop.first} is the oldest."

      person = @hash_name_and_age.sort_by { |name, age| age.to_i }.reverse!
      puts "#{person.pop.first} is the youngest."
    else
      puts "You did not enter any names."
    end
  end
end

AgeDisplay.new.calculate_oldest_and_youngest
