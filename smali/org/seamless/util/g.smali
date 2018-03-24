.class final Lorg/seamless/util/g;
.super Ljava/util/BitSet;
.source "URIUtil.java"


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 262
    invoke-direct {p0}, Ljava/util/BitSet;-><init>()V

    .line 263
    sget-object v0, Lorg/seamless/util/URIUtil;->ALLOWED:Ljava/util/BitSet;

    invoke-virtual {p0, v0}, Lorg/seamless/util/g;->or(Ljava/util/BitSet;)V

    .line 264
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Lorg/seamless/util/g;->set(I)V

    .line 265
    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Lorg/seamless/util/g;->set(I)V

    .line 266
    return-void
.end method
