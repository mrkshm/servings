defmodule Servings.Handler do
  def handle(request) do
    request
    |> log
    |> parse_request
    |> route
    |> format_response
  end

  def parse_request(request) do
    request
  end

  def route(conv) do
    conv
  end

  def format_response(conv) do
    conv
  end

  defp log(conv) do
    IO.inspect(conv)
  end
end

request = """
GET /wildthings HTTP/1.1
Host: example.com
User-Agent: ExampleBrowser/1.0
Accept: */*

"""

bear_request = """
GET /wildthings HTTP/1.1
Host: example.com
User-Agent: ExampleBrowser/1.0
Accept: */*

"""

_expected_response = """
HTTP/1.1 200 OK
Content-Type: text/html
Content-Length: 20

Bears, Lions, Tigers
"""

result = Servings.Handler.handle(request)
IO.inspect(result)

result = Servings.Handler.handle(bear_request)
IO.inspect(result)
