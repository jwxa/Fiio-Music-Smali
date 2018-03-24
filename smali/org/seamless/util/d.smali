.class final Lorg/seamless/util/d;
.super Ljava/util/BitSet;
.source "URIUtil.java"


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 242
    invoke-direct {p0}, Ljava/util/BitSet;-><init>()V

    .line 243
    sget-object v0, Lorg/seamless/util/URIUtil;->ALLOWED:Ljava/util/BitSet;

    invoke-virtual {p0, v0}, Lorg/seamless/util/d;->or(Ljava/util/BitSet;)V

    .line 244
    const/16 v0, 0x3b

    invoke-virtual {p0, v0}, Lorg/seamless/util/d;->clear(I)V

    .line 245
    const/16 v0, 0x3d

    invoke-virtual {p0, v0}, Lorg/seamless/util/d;->clear(I)V

    .line 246
    return-void
.end method
