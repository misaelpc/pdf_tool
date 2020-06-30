defmodule PdfTool.Repo do
  use Ecto.Repo,
    otp_app: :pdf_tool,
    adapter: Ecto.Adapters.Postgres
end
