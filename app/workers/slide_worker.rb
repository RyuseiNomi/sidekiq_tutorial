class SlideWorker
  include Sidekiq::Worker
  sidekiq_options queue: :event

  def perform()
    puts "\n\nお試し！Sidekiq ~テストコードを添えて~\n\n"
    puts "\n\nKanazawa.rb #120\n\n"
    puts "\n\n-------------------------------------------\n\n"
    sleep 8

    puts "\n\n\n「とんと」と申します！\n\n普段は Saas デベロッパーをやっています。\n\n\n Ruby / Javascript / Go / QA \n\n\n"
    puts "\n\n-------------------------------------------\n\n"
    sleep 8

    puts "\n\nSidekiq って知っていますか？\n\n"
    puts "\n\n-------------------------------------------\n\n"
    sleep 3

    puts "\n\nSidekiq はこのように、メインプロセスとは別スレッドで\n非同期的に Ruby のプロセスが実行できるライブラリです。\n\n"
    puts "\n\n-------------------------------------------\n\n"
    sleep 8

    puts "\n\n【用意するもの】\n\n"
    puts "\n\n・Ruby (基本ですね)\n\n"
    puts "\n\n・Rails (無くても出来ます)\n\n"
    puts "\n\n・Sidekiq (今回の主役です)\n\n"
    puts "\n\n・Redis (Sidekiq は基本的に redis とセットで使われます)\n\n"
    puts "\n\n-------------------------------------------\n\n"
    sleep 10

    puts "\n\n今回は簡単な足し算をする処理を作ってみました\n\n"
    puts "\n\n-------------------------------------------\n\n"
    sleep 3

    puts "\n\n今日は Sidekiq を実演し、その場でテストコードを書いてみようという企画です！\n\n"
    puts "\n\n-------------------------------------------\n\n"
    sleep 5

    puts "\n\n対戦よろしくお願いします。\n\n"
    puts "\n\n-------------------------------------------\n\n"
    sleep 3
  end
end
