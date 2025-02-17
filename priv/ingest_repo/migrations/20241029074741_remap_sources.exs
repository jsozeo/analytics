defmodule Plausible.IngestRepo.Migrations.RemapSources do
  use Ecto.Migration

  @mappings %{
    # UTM sources
    "fb" => "Facebook",
    "fb-ads" => "Facebook",
    "fbads" => "Facebook",
    "fbad" => "Facebook",
    "facebook-ads" => "Facebook",
    "facebook_ads" => "Facebook",
    "fcb" => "Facebook",
    "facebook_ad" => "Facebook",
    "facebook_feed_ad" => "Facebook",
    "ig" => "Instagram",
    "yt" => "Youtube",
    "yt-ads" => "Youtube",
    "reddit-ads" => "Reddit",
    "google_ads" => "Google",
    "google-ads" => "Google",
    "googleads" => "Google",
    "gads" => "Google",
    "google ads" => "Google",
    "adwords" => "Google",
    "twitter-ads" => "Twitter",
    "tiktokads" => "TikTok",
    "tik.tok" => "TikTok",
    "perplexity" => "Perplexity",
    "linktree" => "Linktree",

    # Referrers
    "android-app://com.reddit.frontpage" => "Reddit",
    "perplexity.ai" => "Perplexity",
    "search.brave.com" => "Brave",
    "yandex.com.tr" => "Yandex",
    "yandex.kz" => "Yandex",
    "ya.ru" => "Yandex",
    "yandex.uz" => "Yandex",
    "yandex.fr" => "Yandex",
    "yandex.eu" => "Yandex",
    "yandex.tm" => "Yandex",
    "discord.com" => "Discord",
    "t.me" => "Telegram",
    "webk.telegram.org" => "Telegram",
    "sogou.com" => "Sogou",
    "m.sogou.com" => "Sogou",
    "wap.sogou.com" => "Sogou",
    "canary.discord.com" => "Discord",
    "ptb.discord.com" => "Discord",
    "discordapp.com" => "Discord",
    "linktr.ee" => "Linktree",
    "baidu.com" => "Baidu",
    "statics.teams.cdn.office.net" => "Microsoft Teams",
    "ntp.msn.com" => "Bing",
    "en.wikipedia.org" => "Wikipedia",
    "en.m.wikipedia.org" => "Wikipedia",
    "de.wikipedia.org" => "Wikipedia",
    "de.m.wikipedia.org" => "Wikipedia",
    "fr.wikipedia.org" => "Wikipedia",
    "ru.wikipedia.org" => "Wikipedia",
    "fr.m.wikipedia.org" => "Wikipedia",
    "es.wikipedia.org" => "Wikipedia",
    "ja.wikipedia.org" => "Wikipedia",
    "nl.wikipedia.org" => "Wikipedia",
    "ru.m.wikipedia.org" => "Wikipedia",
    "da.m.wikipedia.org" => "Wikipedia",
    "no.wikipedia.org" => "Wikipedia",
    "es.m.wikipedia.org" => "Wikipedia",
    "it.wikipedia.org" => "Wikipedia",
    "nl.m.wikipedia.org" => "Wikipedia",
    "da.wikipedia.org" => "Wikipedia",
    "sv.wikipedia.org" => "Wikipedia",
    "it.m.wikipedia.org" => "Wikipedia",
    "zh.wikipedia.org" => "Wikipedia",
    "sv.m.wikipedia.org" => "Wikipedia",
    "no.m.wikipedia.org" => "Wikipedia",
    "fi.m.wikipedia.org" => "Wikipedia",
    "fi.wikipedia.org" => "Wikipedia",
    "ca.wikipedia.org" => "Wikipedia",
    "ja.m.wikipedia.org" => "Wikipedia",
    "pt.wikipedia.org" => "Wikipedia",
    "pl.wikipedia.org" => "Wikipedia",
    "pt.m.wikipedia.org" => "Wikipedia",
    "cs.wikipedia.org" => "Wikipedia",
    "zh.m.wikipedia.org" => "Wikipedia",
    "ca.m.wikipedia.org" => "Wikipedia",
    "pl.m.wikipedia.org" => "Wikipedia",
    "cs.m.wikipedia.org" => "Wikipedia",
    "is.wikipedia.org" => "Wikipedia",
    "ko.wikipedia.org" => "Wikipedia",
    "uk.wikipedia.org" => "Wikipedia",
    "is.m.wikipedia.org" => "Wikipedia",
    "he.m.wikipedia.org" => "Wikipedia",
    "tr.wikipedia.org" => "Wikipedia",
    "he.wikipedia.org" => "Wikipedia",
    "id.m.wikipedia.org" => "Wikipedia",
    "tr.m.wikipedia.org" => "Wikipedia",
    "et.wikipedia.org" => "Wikipedia",
    "fa.m.wikipedia.org" => "Wikipedia",
    "uk.m.wikipedia.org" => "Wikipedia",
    "simple.wikipedia.org" => "Wikipedia",
    "ko.m.wikipedia.org" => "Wikipedia",
    "id.wikipedia.org" => "Wikipedia",
    "hr.m.wikipedia.org" => "Wikipedia",
    "simple.m.wikipedia.org" => "Wikipedia",
    "vi.wikipedia.org" => "Wikipedia",
    "el.wikipedia.org" => "Wikipedia",
    "hr.wikipedia.org" => "Wikipedia",
    "sk.wikipedia.org" => "Wikipedia",
    "hu.wikipedia.org" => "Wikipedia",
    "hu.m.wikipedia.org" => "Wikipedia",
    "fa.wikipedia.org" => "Wikipedia",
    "el.m.wikipedia.org" => "Wikipedia",
    "arz.m.wikipedia.org" => "Wikipedia",
    "th.m.wikipedia.org" => "Wikipedia",
    "ta.m.wikipedia.org" => "Wikipedia",
    "ga.wikipedia.org" => "Wikipedia",
    "et.m.wikipedia.org" => "Wikipedia",
    "vi.m.wikipedia.org" => "Wikipedia",
    "ro.wikipedia.org" => "Wikipedia",
    "ro.m.wikipedia.org" => "Wikipedia",
    "ms.m.wikipedia.org" => "Wikipedia",
    "bs.m.wikipedia.org" => "Wikipedia",
    "az.m.wikipedia.org" => "Wikipedia",
    "bg.m.wikipedia.org" => "Wikipedia",
    "nn.wikipedia.org" => "Wikipedia",
    "bg.wikipedia.org" => "Wikipedia",
    "ml.m.wikipedia.org" => "Wikipedia",
    "bn.m.wikipedia.org" => "Wikipedia",
    "sl.wikipedia.org" => "Wikipedia",
    "nn.m.wikipedia.org" => "Wikipedia",
    "sk.m.wikipedia.org" => "Wikipedia",
    "ms.wikipedia.org" => "Wikipedia",
    "uz.wikipedia.org" => "Wikipedia",
    "th.wikipedia.org" => "Wikipedia",
    "sr.m.wikipedia.org" => "Wikipedia",
    "hi.m.wikipedia.org" => "Wikipedia",
    "eu.wikipedia.org" => "Wikipedia",
    "uz.m.wikipedia.org" => "Wikipedia",
    "sr.wikipedia.org" => "Wikipedia",
    "lv.wikipedia.org" => "Wikipedia",
    "la.wikipedia.org" => "Wikipedia",
    "sl.m.wikipedia.org" => "Wikipedia",
    "arz.wikipedia.org" => "Wikipedia",
    "ta.wikipedia.org" => "Wikipedia",
    "ka.m.wikipedia.org" => "Wikipedia",
    "ga.m.wikipedia.org" => "Wikipedia",
    "lt.wikipedia.org" => "Wikipedia",
    "lv.m.wikipedia.org" => "Wikipedia",
    "kk.m.wikipedia.org" => "Wikipedia",
    "lt.m.wikipedia.org" => "Wikipedia",
    "ar.wikipedia.org" => "Wikipedia",
    "eo.wikipedia.org" => "Wikipedia",
    "sw.m.wikipedia.org" => "Wikipedia",
    "sh.wikipedia.org" => "Wikipedia",
    "bs.wikipedia.org" => "Wikipedia",
    "ml.wikipedia.org" => "Wikipedia",
    "hy.wikipedia.org" => "Wikipedia",
    "ka.wikipedia.org" => "Wikipedia",
    "hi.wikipedia.org" => "Wikipedia",
    "la.m.wikipedia.org" => "Wikipedia",
    "bn.wikipedia.org" => "Wikipedia",
    "ur.m.wikipedia.org" => "Wikipedia",
    "sh.m.wikipedia.org" => "Wikipedia",
    "az.wikipedia.org" => "Wikipedia",
    "si.m.wikipedia.org" => "Wikipedia",
    "sq.wikipedia.org" => "Wikipedia",
    "zh-yue.wikipedia.org" => "Wikipedia",
    "ckb.m.wikipedia.org" => "Wikipedia",
    "kn.wikipedia.org" => "Wikipedia",
    "lij.wikipedia.org" => "Wikipedia",
    "fy.wikipedia.org" => "Wikipedia",
    "lij.m.wikipedia.org" => "Wikipedia",
    "hy.m.wikipedia.org" => "Wikipedia",
    "mn.m.wikipedia.org" => "Wikipedia",
    "ar.m.wikipedia.org" => "Wikipedia",
    "tl.wikipedia.org" => "Wikipedia",
    "eu.m.wikipedia.org" => "Wikipedia",
    "fo.wikipedia.org" => "Wikipedia",
    "mn.wikipedia.org" => "Wikipedia",
    "mr.wikipedia.org" => "Wikipedia",
    "zh-classical.wikipedia.org" => "Wikipedia",
    "cy.wikipedia.org" => "Wikipedia",
    "olo.wikipedia.org" => "Wikipedia",
    "te.m.wikipedia.org" => "Wikipedia",
    "mk.wikipedia.org" => "Wikipedia",
    "dz.wikipedia.org" => "Wikipedia",
    "as.m.wikipedia.org" => "Wikipedia",
    "szl.m.wikipedia.org" => "Wikipedia",
    "oc.wikipedia.org" => "Wikipedia",
    "rw.m.wikipedia.org" => "Wikipedia",
    "tl.m.wikipedia.org" => "Wikipedia",
    "si.wikipedia.org" => "Wikipedia",
    "nostalgia.wikipedia.org" => "Wikipedia",
    "lrc.wikipedia.org" => "Wikipedia",
    "eo.m.wikipedia.org" => "Wikipedia",
    "ky.wikipedia.org" => "Wikipedia",
    "new.wikipedia.org" => "Wikipedia",
    "be.wikipedia.org" => "Wikipedia",
    "bcl.m.wikipedia.org" => "Wikipedia",
    "sq.m.wikipedia.org" => "Wikipedia",
    "am.wikipedia.org" => "Wikipedia",
    "nds-nl.m.wikipedia.org" => "Wikipedia",
    "gu.m.wikipedia.org" => "Wikipedia",
    "bjn.wikipedia.org" => "Wikipedia",
    "pa.m.wikipedia.org" => "Wikipedia",
    "sa.m.wikipedia.org" => "Wikipedia",
    "tt.wikipedia.org" => "Wikipedia",
    "qu.wikipedia.org" => "Wikipedia",
    "be-tarask.wikipedia.org" => "Wikipedia",
    "mg.m.wikipedia.org" => "Wikipedia",
    "dga.m.wikipedia.org" => "Wikipedia",
    "bat-smg.wikipedia.org" => "Wikipedia",
    "sw.wikipedia.org" => "Wikipedia",
    "wuu.wikipedia.org" => "Wikipedia",
    "ne.m.wikipedia.org" => "Wikipedia",
    "yi.m.wikipedia.org" => "Wikipedia",
    "vec.wikipedia.org" => "Wikipedia",
    "be-tarask.m.wikipedia.org" => "Wikipedia",
    "crh.wikipedia.org" => "Wikipedia"
  }

  def up do
    {keys, values} = Enum.unzip(@mappings)

    events_sql = """
      ALTER TABLE events_v2
      UPDATE referrer_source = transform(referrer_source, {$0:Array(String)}, {$1:Array(String)})
      WHERE referrer_source IN {$0:Array(String)}
    """

    sessions_sql = """
      ALTER TABLE sessions_v2
      UPDATE referrer_source = transform(referrer_source, {$0:Array(String)}, {$1:Array(String)})
      WHERE referrer_source IN {$0:Array(String)}
    """

    execute(fn -> repo().query!(events_sql, [keys, values]) end)
    execute(fn -> repo().query!(sessions_sql, [keys, values]) end)
  end

  def down do
    raise "irreversible"
  end
end
