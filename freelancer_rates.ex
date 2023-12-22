defmodule FreelancerRates do
  def daily_rate(hourly_rate) do
    (hourly_rate * 8)/1.0
  end

  def apply_discount(before_discount, discount) do
    (before_discount * ((100 - discount)/100))/1.0
  end

  def monthly_rate(hourly_rate, discount) do
    ceil((apply_discount(daily_rate(hourly_rate), discount)) * 22)
  end

  def days_in_budget(budget, hourly_rate, discount) do
    result = budget/(apply_discount(daily_rate(hourly_rate), discount))
    Float.floor(result * 10)/10
  end
end
