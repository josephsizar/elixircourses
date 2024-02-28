
defmodule Membership do
  defstruct [:type , :price]
end

defmodule User do
  defstruct [:name , :membership]
end


defmodule Les02 do

  # import Timex
  use Application
  alias UUID

  def start(_type,_args) do

    # Les02.main()
    # Les02.lesson1()
    # Les02.lesson2()
    # Les02.lesson03()
    # Les02.lesson04()
    # Les02.lesson05()
    # Les02.lesson06()
    # Les02.lesson07()
    # Les02.lesson08()
    Les02.lesson09()

    Supervisor.start_link([], strategy: :one_for_one)

  end

  def lesson09 do

    correct = :rand.uniform(10)

    guess = IO.gets("Guess a number between 0 and 8 : ") |> String.trim() |> Integer.parse()

    case guess do
      {result, _} ->
        if result === correct do
          IO.puts("You are The Winner")
        else
          IO.puts("Loser!")
        end


      :error ->
        IO.puts("Something Went Wrong!")

    end

    # IO.inspect(guess)
    # IO.puts()
    # if String.to_integer(guess) == correct do
    # IO.puts("You Win")
    # else
    #   IO.puts("You Lose")
    # end

    # IO.puts(correct)

  end




  def lesson08 do
    gold = %Membership{type: :gold, price: 29}
    silver = %Membership{type: :silver, price: 29}
    bronze = %Membership{type: :bronze, price: 29}
    iron = %Membership{type: :iron, price: 29}

    users = [
      %User{name: "Ahmed",membership: gold},
      %User{name: "Ali",membership: silver},
      %User{name: "Khadija",membership: bronze},
      %User{name: "Laila",membership: iron}
    ]



    Enum.each(users, fn %User{name: name,membership: membership} ->
      IO.puts("Name : #{name} and Price : #{membership.type}")
    end)

  end

  def lesson07 do

    memberships = %{
      gold: :gold,
      silver: :silver,
      bronze: :bronze,
      none: :none
    }

    prices = %{
      gold: 25,
      silver: 20,
      bronze: 10,
      none: 0
    }

    users = [
      {"Abdelalim",23,memberships.gold},
      {"Ahmed",43,memberships.silver},
      {"Khadija",24,memberships.bronze},
      {"Douae",18,memberships.silver},
      {"Oumaima",15,memberships.silver},
    ]

    Enum.each(users, fn {name,age,membership} -> IO.puts("Your name is #{name} and Age is #{age} with #{membership} memebership  and price #{prices[membership]}")
    end)


  end

  def lesson06 do

    memberships = {:gold,:bronze}
    memberships =  Tuple.append(memberships,:silver)

    IO.inspect(memberships)

    prices = {10,20,16,80}


    avg = Tuple.sum(prices) / tuple_size(prices)

    IO.puts("Average price from #{elem(prices,0)} and #{elem(prices,1)} and #{elem(prices,2)} and #{elem(prices,3)}  is #{avg}")

    user1 = {"Ahmed",:bronze,1890.80}

    {name,membership,shifr} = user1

    IO.puts("#{name}  ->  #{membership}  -> #{shifr}")

  end

  def lesson05 do

    times  = [
      Timex.TemporalType.from_string!("10:10:00", :hhmmss),
      Timex.TemporalType.from_string!("01:20:00", :hhmmss),
      Timex.TemporalType.from_string!("04:40:00", :hhmmss),
    ]

    total_duration = Timex.Macro.sum(times)

    IO.puts("Total Times : #{total_duration}")

  end

  def lesson04 do
    time = ~T[23:10:30.000]

    IO.puts(time.hour)
    IO.puts(time.minute)
    IO.puts(time.second)

  end

  def lesson03 do

    time = DateTime.new!(Date.new!(2025,1,1),Time.new!(0,0,0,0),"Etc/UTC")
    time_till = DateTime.diff(time,DateTime.utc_now())

    days = div(time_till,84_400)
    IO.puts("Remaining days is #{days}")

    hours = div(rem(time_till,86_400),60*60)

    IO.puts("Remaining hours is #{hours}")

    mins = div(rem(time_till,60*60),60)

    IO.puts("Remaining Minutes is #{mins}")

    x = div(16,3)

    IO.puts(x)


  end

  def lesson2 do

    # IO.puts(Integer.gcd(26,3))
    time = Time.new!(16,30,00,00)
    date = Date.new!(2024,9,8)
    date_time = DateTime.new!(date,time,"Etc/UTC")
    # IO.inspect(time.hours)
    hour = Calendar.DateTime.hour(date_time)
    IO.puts(hour)
    IO.puts(date_time.year)

  end



  def hello(n1,n2) do

    n1+n2

  end

  def lesson1 do

    a = 90
    b = 1

    # IO.puts(a+b)
    :io.format("~.20f\n",[222.30])

  end




  def main() do
    name = "Abdelalim"
    status = Enum.random([:"ddd",:dd,:gold,:silver,:iron,:"not a member"])

    # if status === :gold do
    #   IO.puts("Welcome To The Fancy Lounge , #{name}")
    # else
    #   IO.puts("Get Lost")
    # end
    # IO.puts(?0)
    # case status do

    #   :gold -> IO.puts("Welcome it's Goold and life Mr #{name}")
    #   :"not a member" -> IO.puts("You are Not A member")
    #   :silver -> IO.puts("Welcome to silver ocean dod #{name}")
    #   :iron  -> IO.puts("There is a trash take it out ")
    #   _ -> IO.puts("Get out bruh")

    # end

  end
end
