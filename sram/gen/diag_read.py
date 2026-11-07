import numpy as np, sys
for T,tag in ((2.5e-9,'diag_2.5'),(3.0e-9,'diag_3.0')):
    f=f'sim/{tag}.dat'; h=open(f).readline().split(); d=np.loadtxt(f,skiprows=1); t=d[:,0]
    c={k:d[:,i] for i,k in enumerate(h)}
    g=lambda s:c[[k for k in h if s in k][0]]
    print(tag,T,'cols',len(h))
    k=7; e0=k*T+T/2; e1=e0+T
    def cr(v,a,b,up,th=.9):
        m=(t>=a)&(t<=b); i=np.where(m)[0]; o=(v[i]>th) if up else (v[i]<th); return (t[i][np.argmax(o)]-e0)*1e9 if o.any() else None
    print(' edge k at 0, next edge at',T*1e9)
    for n,s,up in (('ff up','xck_a2',True),('ff down','xck_a2',False),('clkb up','xwe1',True),('clkb down','xwe1',False),('pcb up (precharge off)','xrw/pcb',True),('pcb down (precharge on)','xrw/pcb',False),('wl4 up','rc4',True),('wl4 down','rc4',False)):
        print(f'  {n:24s}',cr(g(s),e0,e1+.6e-9,up))
    v=g('xrw/dl'); m=(t>=e0)&(t<=e1+.3e-9)
    print('  DL min V %.3f at %.3f ns; DL at next edge %.3f; BL7 min %.3f; rd at next edge+ %.3f; rd max %.3f'%(v[m].min(),(t[m][v[m].argmin()]-e0)*1e9,np.interp(e1,t,v),g('core/bl7')[m].min(),np.interp(e1,t,g('xrw/rd')),g('xrw/rd')[m].max()))
    for th in (.9,.7): print('  DL below',th,cr(v,e0,e1+.3e-9,False,th))
    print('  rd crosses 0.9 up',cr(g('xrw/rd'),e0,e1+.3e-9,True))
