defmodule InvoicerTest do
  use ExUnit.Case
  use AssertHTML
  doctest Invoicer


  test "make an HTML invoice" do
    assert_html(Invoicer.getHTMLInvoice(), "title", "Invoice")
  end
end
