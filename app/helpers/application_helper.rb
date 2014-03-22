module ApplicationHelper

  # サイトのタイトルにページタイトルをつなげたものを返す
  def full_title(page_title)
    base_title = "自分だけの問題を作って公開 e-Mondai"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end

end
