defmodule PhoenixEnvSettings.MemoView do
  use PhoenixEnvSettings.Web, :view

  def render("index.json", %{memos: memos}) do
    %{data: render_many(memos, PhoenixEnvSettings.MemoView, "memo.json")}
  end

  def render("show.json", %{memo: memo}) do
    %{data: render_one(memo, PhoenixEnvSettings.MemoView, "memo.json")}
  end

  def render("memo.json", %{memo: memo}) do
    %{id: memo.id,
      title: memo.title,
      body: memo.body}
  end
end
