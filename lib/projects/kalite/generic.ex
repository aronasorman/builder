defmodule Builder.KALite.Generic do

  extraction_dir = "#{Mix.Project.build_path})/kalite_dir"

  def prepare_extraction_dir do
    File.mkdir_p extraction_dir
  end

  def execute do
    prepare_extraction_dir

    fetch_zip "develop" |> :zip.unzip
  end

  def fetch_zip(branch) do
    response = HTTPotion.get("https://github.com/learningequality/ka-lite/archive/#{branch}.zip")

    response.body
  end
end