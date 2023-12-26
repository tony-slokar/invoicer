defmodule InvoicerTest do
  use ExUnit.Case
  doctest Invoicer

  test "greets the world" do
    assert Invoicer.hello() == :world
  end
end
