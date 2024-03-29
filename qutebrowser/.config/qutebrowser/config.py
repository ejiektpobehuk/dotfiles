c.backend = 'webengine'
config.load_autoconfig(False)


c.editor.command = ['alacritty', '-e', 'vim', '{}']
c.editor.encoding = 'utf-8'

config.load_autoconfig(False)

c.downloads.location.directory = '~/downvotes'
c.downloads.location.prompt = False

c.aliases = {
    'arch': 'open https://archlinux.org',
    'ff': 'spawn firefox {url}',
    'mail': 'open https://e.mail.ru/messages/inbox',
    'mpv': 'spawn mpv {url}',
    'proxy-gateway': 'set content.proxy socks://localhost:8118/',
    'proxy-off': 'set content.proxy system',
    'q': 'quit',
    'stig-add': 'spawn stig add {url}',
    'tor': 'spawn tor-browser {url}',
    'w': 'session-save',
    'wq': 'quit --save',
    'yt': 'open https://youtube.com/feed/subscriptions'
}

c.url.searchengines = {
    'DEFAULT': 'https://duckduckgo.com/?q={}',
    'airbnb': 'https://www.airbnb.com/s/{}/',
    'ali': 'https://ru.aliexpress.com/wholesale?SearchText={}',
    'amazon': 'https://www.amazon.com/s/ref=nb_sb_noss?url=search-alias%3Daps&field-keywords={}',
    'aur': 'https://aur.archlinux.org/packages/?O=0&K={}',
    'avito': 'https://www.avito.ru/sankt-peterburg?q={}',
    'aw': 'https://wiki.archlinux.org/?search={}',
    'booking': 'https://www.booking.com/searchresults.ru.html?&ss={}',
    'crates': 'https://crates.io/search?q={}',
    'd': 'https://duckduckgo.com/?q={}',
    'do': 'https://www.digitalocean.com/community/search?q={}',
    'docsrs': 'https://docs.rs/releases/search?query={}',
    'dh': 'https://hub.docker.com/search?q={}&type=image',
    'ebay': 'https://www.ebay.com/sch/items/?_nkw={}',
    'elab': 'https://git.ejiek.com/search?search={}',
    'g': 'https://www.google.com/search?hl=en&q={}',
    'git215': 'https://git.spbpu.com/search?search={}',
    'gl': 'https://gitlab.com/search?search={}',
    'gh': 'https://github.com/search?utf8=/%E2%9C%93&q={}&type=',
    'ghm': 'https://github.com/marketplace?query={}',
    'gmaps': 'https://www.google.ru/maps/search/{}',
    'gw': 'https://wiki.gentoo.org/?search={}',
    'hoogle': 'https://hoogle.haskell.org/?hoogle={}',
    'ikea': 'https://www.ikea.com/ru/ru/search/?query={}',
    'imdb': 'http://www.imdb.com/find?ref_=nv_sr_fn&q={}&s=all',
    'librs': 'https://lib.rs/search?q={}',
    'maps': 'https://openstreetmap.org/search?query={}',
    'man': 'https://man.archlinux.org/man/{}',
    'market': 'https://market.yandex.ru/search?cvredirect=2&text={}&local-offers-first=1',
    'netflix': 'https://www.netflix.com/search?q={}',
    'ob': 'https://gitlab.ocado.tech/osp-cfc-platform/backlog/issues/{}',
    'obs': 'https://gitlab.ocado.tech/osp-cfc-platform/backlog/issues?scope=all&utf8=%E2%9C%93&state=all&search={}',
    'og': 'https://gitlab.ocado.tech/dashboard/groups?utf8=%E2%9C%93&filter={}',
    'op': 'https://gitlab.ocado.tech/?utf8=%E2%9C%93&name={}%09&sort=latest_activity_desc',
    'pac': 'https://www.archlinux.org/packages/?q={}',
    'paca': 'https://www.archlinuxarm.org/packages/?q={}',
    'pacd': 'https://packages.debian.org/search?suite=default&section=all&arch=any&searchon=names&keywords={}',
    'pacf': 'https://apps.fedoraproject.org/packages/s/{}',
    'pacu': 'https://packages.ubuntu.com/search?keywords={}&searchon=sourcenames',
    'pochta': 'https://www.pochta.ru/tracking#{}',
    'pdb': 'https://www.protondb.com/search?q={}',
    'pulumi': 'https://www.pulumi.com/docs/#stq={}&stp=1',
    'rcgo': 'https://rc-go.ru/search/?s={}',
    'rstd': 'https://doc.rust-lang.org/std/?search={}',
    'reddit': 'https://reddit.com/search?q={}',
    'r/': 'https://reddit.com/r/{}',
    'spotify': 'https://open.spotify.com/search/{}',
    'tpb': 'https://thepiratebay.org/search/{}',
    'unixporn': 'https://www.reddit.com/r/unixporn/search?q={}&restrict_sr=on',
    'w': 'https://en.wikipedia.org/?search={}',
    'ya': 'https://yandex.ru/search/?lr=2&text={}',
    'yamaps': 'https://yandex.ru/maps/2/saint-petersburg/search/{}/',
    'yt': 'https://youtube.com/results?search_query={}',
    'я': 'https://yandex.ru/search/?lr=2&text={}'
}

# Gruvbox light colours
c.colors.completion.fg = '#3c3836'
c.colors.completion.odd.bg = '#fbf1c7'
c.colors.completion.even.bg = '#ebdbb2'
c.colors.completion.category.fg = '#3c3836'
c.colors.completion.category.bg = 'qlineargradient(x1:0, y1:0, x2:0, y2:1, stop:0 #fbf1c7, stop:1 #bdae93)'
c.colors.completion.category.border.top = 'black'
c.colors.completion.category.border.bottom = 'black'


c.colors.completion.item.selected.bg = '#d79921'

c.colors.statusbar.normal.fg = '#3c3836'
c.colors.statusbar.normal.bg = '#fbf1c7'
c.colors.statusbar.command.fg = '#3c3836'
c.colors.statusbar.command.bg = '#fbf1c7'
c.colors.statusbar.caret.bg = '#b16286'
c.colors.statusbar.progress.bg = '#3c3836'
c.colors.statusbar.url.success.http.fg = '#d79921'
c.colors.statusbar.url.success.https.fg = '#98971a'
c.colors.statusbar.url.error.fg = '#d65d0e'
c.colors.statusbar.url.warn.fg = '#d79921'
c.colors.statusbar.url.hover.fg = '#689d6a'

c.content.notifications.enabled = False

c.colors.tabs.odd.fg = '#3c3836'
c.colors.tabs.odd.bg = '#7c6f64'
c.colors.tabs.even.fg = '#3c3836'
c.colors.tabs.even.bg = '#928374'
c.colors.tabs.selected.odd.fg = '#3c3836'
c.colors.tabs.selected.odd.bg = '#fbf1c7'
c.colors.tabs.selected.even.fg = '#3c3836'
c.colors.tabs.selected.even.bg = '#fbf1c7'

c.colors.downloads.bar.bg = '#3c3836'
c.colors.downloads.start.bg = '#458588'
c.colors.downloads.stop.bg = '#98971a'
c.colors.webpage.bg = '#fbf1c7'

c.colors.messages.error.fg = '#3c3836'
c.colors.messages.warning.fg = '#3c3836'

c.colors.prompts.fg = '#3c3836'
c.colors.prompts.bg = '#458588'
