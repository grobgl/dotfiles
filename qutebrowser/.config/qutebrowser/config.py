import os

c.spellcheck.languages = ['en-GB']

# visuals
c.tabs.position = 'right'
c.tabs.width = 240
c.tabs.padding = {'bottom': 4, 'left': 5, 'right': 5, 'top': 4}
c.tabs.favicons.scale = 1.5
c.tabs.show = 'switching'
c.fonts.tabs = '13px sans-serif'
c.fonts.statusbar = '14px sans-serif'
# c.fonts.monospace = 'FuraCode Nerd Font'
c.statusbar.padding = {'bottom': 4, 'left': 0, 'right': 0, 'top': 4}
c.content.host_blocking.lists = [
    'https://someonewhocares.org/hosts/',
    'https://pgl.yoyo.org/adservers/serverlist.php?hostformat=hosts;showintro=0',
    'https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts'
]

c.qt.highdpi = True

# bindings
unbindings = ['go']
for u in unbindings:
    config.unbind(u)

bindings = {
    't': 'set-cmd-text -s :open -t',
    'T': 'set-cmd-text -s :open -t {url}',
    'O': 'set-cmd-text -s :open {url}',
    'x': 'tab-close',
    'X': 'undo',
    'd': 'scroll-page 0 0.5',
    'u': 'scroll-page 0 -0.5',
    '>': 'tab-move +',
    '<': 'tab-move -',
    'gp': 'tab-pin',
    'b': 'set-cmd-text -s :buffer ',
    ',t': 'config-cycle tabs.show always switching',
}

for k,v in bindings.items():
    kw = {}
    if isinstance(v, list):
        v, kw = v
    config.bind(k, v, **kw)

# quickmarks
quickmarks_path = os.path.realpath(__file__).replace(os.path.basename(__file__), 'quickmarks')
with open(quickmarks_path, 'r') as f:
    for line in f:
        mark, url = line.strip().split(' ')
        config.bind(f'go{mark}', f'open {url}')
        config.bind(f'gn{mark}', f'open -t {url}')

c.content.pdfjs = True

# with config.pattern('*://*.theverge.com/') as p:
#     p.content.javascript.enabled = False

config.source('nord-qutebrowser.py')

