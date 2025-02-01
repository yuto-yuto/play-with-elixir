defmodule MyAppWeb.HelloHTML do
  use MyAppWeb, :html

  embed_templates "hello_html/*"
end
