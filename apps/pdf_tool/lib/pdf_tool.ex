defmodule PdfTool do
  @moduledoc """
  PdfTool keeps the contexts that define your domain
  and business logic.

  Contexts are also responsible for managing your data, regardless
  if it comes from the database, an external API or others.
  """
  def add_anotations(pdf_path, annotations) do
    GenServer.call({:global, :create_annotations}, {:add_anotation, pdf_path, annotations})
  end
end
