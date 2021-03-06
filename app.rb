require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @r_name = params[:name].reverse
    "#{@r_name}"
  end

  get '/square/:number' do
    @squared = params[:number].to_i * params[:number].to_i
    "#{@squared}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    @total = ""
    @num.times do
      @total += "#{@phrase}"
    end
    "#{@total}"
  end
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    @n1 = params[:number1].to_i
    @op = params[:operation]
    @n2 = params[:number2].to_i
    if @op == 'add'
      @result = @n1 + @n2
    elsif @op == 'subtract'
      @result = @n1 - @n2
    elsif @op == 'multiply'
      @result = @n1 * @n2
    elsif @op == 'divide'
      @result = @n1 / @n2
    end
    "#{@result}"
  end
end
