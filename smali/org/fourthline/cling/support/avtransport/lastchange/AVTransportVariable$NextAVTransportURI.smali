.class public Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$NextAVTransportURI;
.super Lorg/fourthline/cling/support/lastchange/EventedValueURI;
.source "AVTransportVariable.java"


# direct methods
.method public constructor <init>(Ljava/net/URI;)V
    .locals 0

    .prologue
    .line 294
    invoke-direct {p0, p1}, Lorg/fourthline/cling/support/lastchange/EventedValueURI;-><init>(Ljava/net/URI;)V

    .line 295
    return-void
.end method

.method public constructor <init>([Ljava/util/Map$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 298
    invoke-direct {p0, p1}, Lorg/fourthline/cling/support/lastchange/EventedValueURI;-><init>([Ljava/util/Map$Entry;)V

    .line 299
    return-void
.end method
