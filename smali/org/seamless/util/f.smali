.class final Lorg/seamless/util/f;
.super Ljava/util/BitSet;
.source "URIUtil.java"


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 253
    invoke-direct {p0}, Ljava/util/BitSet;-><init>()V

    .line 254
    sget-object v0, Lorg/seamless/util/URIUtil;->ALLOWED:Ljava/util/BitSet;

    invoke-virtual {p0, v0}, Lorg/seamless/util/f;->or(Ljava/util/BitSet;)V

    .line 255
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Lorg/seamless/util/f;->set(I)V

    .line 256
    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Lorg/seamless/util/f;->set(I)V

    .line 257
    const/16 v0, 0x3d

    invoke-virtual {p0, v0}, Lorg/seamless/util/f;->clear(I)V

    .line 258
    const/16 v0, 0x26

    invoke-virtual {p0, v0}, Lorg/seamless/util/f;->clear(I)V

    .line 259
    const/16 v0, 0x2b

    invoke-virtual {p0, v0}, Lorg/seamless/util/f;->clear(I)V

    .line 260
    return-void
.end method
