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

  #def createPDFInvoice(source) do
    #{:ok, html} = File.read(source)
    #{:ok, pdf} = PdfGenerator.generate(html)
    #File.rename(pdf, "lib/invoice.pdf")
  #end

  def createPDFInvoice() do
    #{:ok, html} = File.read(source)
    #{:ok, pdf} = PdfGenerator.generate(html)
    #File.rename(pdf, result)
    html_path = Path.absname("files/invoice.html")
    pdf_path = Path.absname("files/invoice.pdf")
    PuppeteerPdf.Generate.from_file(html_path,pdf_path)
  end

  #def createPDFInvoice() do
    #{:ok, html} = File.read("files/invoice.html")
    #{:ok, pdf} = PdfGenerator.generate(html)
    #File.rename(pdf, "files/invoice.pdf")
  #end
end
