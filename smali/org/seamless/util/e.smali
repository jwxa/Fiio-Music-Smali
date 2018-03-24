.class final Lorg/seamless/util/e;
.super Ljava/util/BitSet;
.source "URIUtil.java"


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 248
    invoke-direct {p0}, Ljava/util/BitSet;-><init>()V

    .line 249
    sget-object v0, Lorg/seamless/util/URIUtil;->ALLOWED:Ljava/util/BitSet;

    invoke-virtual {p0, v0}, Lorg/seamless/util/e;->or(Ljava/util/BitSet;)V

    .line 250
    const/16 v0, 0x3b

    invoke-virtual {p0, v0}, Lorg/seamless/util/e;->clear(I)V

    .line 251
    return-void
.end method
