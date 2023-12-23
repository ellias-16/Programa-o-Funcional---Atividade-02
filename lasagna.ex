# Aluno: Elias Victor

defmodule Lasagna do

  def expected_minutes_in_oven() do
    40
  end

  def remaining_minutes_in_oven(x) do
    expected_minutes_in_oven() - x
  end

  def preparation_time_in_minutes(layers) do
    layers * 2
  end

  def total_time_in_minutes(layers, x) do
    x + preparation_time_in_minutes(layers)
  end

  def alarm() do
    "Ding!"
  end

end
