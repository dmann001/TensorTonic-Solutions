import numpy as np

def global_avg_pool(x):
    """
    Compute global average pooling over spatial dims.
    Supports (C,H,W) => (C,) and (N,C,H,W) => (N,C).
    """
    # Write code here
    x= np.asarray(x)#if chw
    if x.ndim==3:
        gap=x.mean(axis=(1,2))
        return gap
    elif x.ndim==4:#if nchw
        gap=x.mean(axis=(2,3))
        return gap
    else:
        raise ValueError("Error")
    
    pass