defmodule PageFetcher do
  use Application

  # get redis 
  # pop off redis
  # tokenize the bits from redis into variables
  # fetch the page
  # save the page
  
  
  def fetch_pages() do
    IO.puts("The fetch_pages/0 routine has just been called at #{:os.system_time(:milli_seconds)}")
    fetch_pages()
  end

  # See http://elixir-lang.org/docs/stable/elixir/Application.html
  # for more information on OTP Applications
  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    # Define workers and child supervisors to be supervised
    children = [
      # Starts a worker by calling: PageFetcher.Worker.start_link(arg1, arg2, arg3)
      # worker(PageFetcher.Worker, [arg1, arg2, arg3]),
    ]

    # See http://elixir-lang.org/docs/stable/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: PageFetcher.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
