import schemdraw, schemdraw.elements as elm
import schemdraw.logic as lg
INK='#1b2733'; ACC='#2a78d6'; MUTE='#6a7179'; ORG='#d95926'
schemdraw.config(fontsize=12, lw=1.6, color=INK, font='DejaVu Sans')
def lbl(e, txt, loc='right', ofst=None, color=MUTE, fontsize=10):
    return e.label(txt, loc=loc, fontsize=fontsize, color=color, ofst=ofst)
def vdd(d, pt, name='VDD'):
    d.add(elm.Vdd().at(pt).label(name, fontsize=10))
def gnd(d, pt):
    d.add(elm.Ground().at(pt))
def dot(d, pt, open_=False):
    d.add(elm.Dot(open=open_).at(pt))
def wire(d, *pts, color=None):
    for a, b in zip(pts, pts[1:]):
        l = elm.Line().at(a).to(b)
        if color: l.color(color)
        d.add(l)
def tag(d, pt, txt, color=ACC, halign='center', valign='center', fontsize=12, weight='bold'):
    d.add(elm.Label().at(pt).label(txt, color=color, fontsize=fontsize, halign=halign, valign=valign))

def nfet(d, drain, gate='right', name=None, size=None):
    """vertical NMOS, drain at the given top point, source 1.5 below."""
    e = elm.NFet().theta(0).anchor('drain').at(drain)
    if gate == 'left': e = e.reverse()
    d.add(e)
    _devlabel(d, e, name, size, gate)
    return e
def pfet(d, source, gate='right', name=None, size=None):
    """vertical PMOS, source at the given top point, drain 1.5 below."""
    e = elm.PFet().theta(0).anchor('source').at(source)
    if gate == 'left': e = e.reverse()
    d.add(e)
    _devlabel(d, e, name, size, gate)
    return e
def hnfet(d, drain, gate='up', name=None, size=None, rightward=True):
    """horizontal NMOS (pass gate)."""
    e = elm.NFet().theta(90 if rightward else -90).anchor('drain').at(drain)
    if (rightward and gate == 'down') or ((not rightward) and gate == 'up'): e = e.reverse()
    d.add(e)
    if name or size:
        c = e.absanchors['center']
        g = e.absanchors['gate']
        y = c[1] - 0.55 if g[1] > c[1] else c[1] + 0.55
        txt = (name or '') + ('\n' if name and size else '') + (size or '')
        d.add(elm.Label().at((c[0], y)).label(txt, fontsize=9, color=MUTE, valign='top' if g[1] > c[1] else 'bottom'))
    return e
def _devlabel(d, e, name, size, gate):
    if not (name or size): return
    c = e.absanchors['center']
    x = c[0] - 0.35 if gate == 'right' else c[0] + 0.35
    txt = (name or '') + ('\n' if name and size else '') + (size or '')
    d.add(elm.Label().at((x, c[1])).label(txt, fontsize=9, color=MUTE, halign='right' if gate == 'right' else 'left'))
def A(e, k):
    return tuple(e.absanchors[k])

def hpfet(d, drain, gate='up', name=None, size=None, rightward=True):
    e = elm.PFet().theta(90 if rightward else -90).anchor('source').at(drain)
    if (rightward and gate == 'down') or ((not rightward) and gate == 'up'): e = e.reverse()
    d.add(e)
    if name or size:
        c = e.absanchors['center']; g = e.absanchors['gate']
        y = c[1] - 0.55 if g[1] > c[1] else c[1] + 0.55
        txt = (name or '') + ('\n' if name and size else '') + (size or '')
        d.add(elm.Label().at((c[0], y)).label(txt, fontsize=9, color=MUTE, valign='top' if g[1] > c[1] else 'bottom'))
    return e
def box(d, x0, y0, x1, y1, txt='', fill='#eef4fc', ec=INK, fontsize=11):
    d.add(elm.Rect(corner1=(x0, y0), corner2=(x1, y1), fill=fill).theta(0).at((0, 0)).color(ec))
    if txt:
        d.add(elm.Label().at(((x0 + x1) / 2, (y0 + y1) / 2)).label(txt, fontsize=fontsize, color=INK))
def note(d, pt, txt, halign='center', valign='center', fontsize=10, color=MUTE):
    d.add(elm.Label().at(pt).label(txt, fontsize=fontsize, color=color, halign=halign, valign=valign))
