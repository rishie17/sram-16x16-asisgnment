import numpy as np, sys
def load(f):
    d=np.loadtxt(f); return d[:,0], d[:,1]
def snm(x,y):
    # curve A: y=f(x); curve B: mirror x=f(y). Rotate 45 deg (Seevinck).
    s=np.sqrt(2)
    uA=(x-y)/s; vA=(x+y)/s
    uB=(y-x)/s; vB=(y+x)/s
    oa=np.argsort(uA); ob=np.argsort(uB)
    u=np.linspace(max(uA.min(),uB.min()),min(uA.max(),uB.max()),4000)
    va=np.interp(u,uA[oa],vA[oa]); vb=np.interp(u,uB[ob],vB[ob])
    d=va-vb
    lobe1=d[u<0]; lobe2=d[u>0]
    m1=np.max(np.abs(lobe1)); m2=np.max(np.abs(lobe2))
    return min(m1,m2)/s
if __name__=="__main__":
    for f in sys.argv[1:]:
        x,y=load(f); print(f, "SNM = %.0f mV"%(1000*snm(x,y)))
