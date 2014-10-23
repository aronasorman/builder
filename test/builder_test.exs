defmodule WebFrontendtests do
  use ExUnit.Case

  setup do
  end

  # test "Builder.Generic.Frontend accepts POST requests" do
  #   :httpc.request :post, "http://127.0.0.1:4000/update/ka-lite"
  # end
end


defmodule Builder.KALite.Generic.Tests do
  use ExUnit.Case

  import Mock

  test "Has execute method" do
    Builder.KALite.Generic.execute
  end

  test "'download_zip' tries to download a zip" do
    with_mock HTTPotion, [get: fn(_url) -> "<html></html>" end] do
      Builder.KALite.Generic.download_zip("master")

      assert called HTTPotion.get("https://github.com/learningequality/ka-lite/archive/master.zip")
    end
  end

  test "''"
end