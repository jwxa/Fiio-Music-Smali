.class final Lorg/seamless/util/c;
.super Ljava/util/BitSet;
.source "URIUtil.java"


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 237
    invoke-direct {p0}, Ljava/util/BitSet;-><init>()V

    .line 238
    sget-object v0, Lorg/seamless/util/URIUtil;->ALLOWED:Ljava/util/BitSet;

    invoke-virtual {p0, v0}, Lorg/seamless/util/c;->or(Ljava/util/BitSet;)V

    .line 239
    const/16 v0, 0x3b

    invoke-virtual {p0, v0}, Lorg/seamless/util/c;->clear(I)V

    .line 240
    return-void
.end method
