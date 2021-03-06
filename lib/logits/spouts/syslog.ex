defmodule LogIts.Spout.SysLog do
  # use GenServer
  require Logger
  alias Elixir.Stream, as: S

  def process_log_stream(stream) do
    stream
    |> S.each(&( Logger.debug "Syslog: #{inspect &1}" ))
  end
end
