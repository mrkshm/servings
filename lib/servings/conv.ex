defmodule Servings.Conv do
  defstruct method: "", path: "", params: %{}, resp_body: "", status: nil

  def full_status(%Servings.Conv{status: status}) when is_integer(status) do
    "#{status} #{status_reason(status)}"
  end

  def full_status(%Servings.Conv{}), do: "000 Unknown"

  defp status_reason(code) do
    %{
      200 => "OK",
      404 => "Not Found",
      500 => "Internal Server Error"
    }
    |> Map.get(code, "Unknown")
  end
end
