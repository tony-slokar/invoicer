defmodule Invoicer do
  @moduledoc """
  Documentation for `Invoicer`.
  """

  @spec getHTMLFile(String.t()) :: String.t()
  def getHTMLFile(filepath) do
    cond do
      File.exists?(filepath) -> "File exists"
      true -> "File does not exist"
    end
  end

  def createPDFInvoice() do
    html_path = Path.absname("files/invoice.html")
    pdf_path = Path.absname("files/invoice.pdf")
    PuppeteerPdf.Generate.from_file(html_path,pdf_path)
  end

  def createPDFInvoice(source, destination) do
    html_path = Path.absname(source)
    pdf_path = Path.absname(destination)
    PuppeteerPdf.Generate.from_file(html_path,pdf_path)
  end
end
