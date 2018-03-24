.class public Lorg/fourthline/cling/support/renderingcontrol/lastchange/RenderingControlVariable$Volume;
.super Lorg/fourthline/cling/support/renderingcontrol/lastchange/EventedValueChannelVolume;
.source "RenderingControlVariable.java"


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelVolume;)V
    .locals 0

    .prologue
    .line 205
    invoke-direct {p0, p1}, Lorg/fourthline/cling/support/renderingcontrol/lastchange/EventedValueChannelVolume;-><init>(Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelVolume;)V

    .line 206
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
    .line 209
    invoke-direct {p0, p1}, Lorg/fourthline/cling/support/renderingcontrol/lastchange/EventedValueChannelVolume;-><init>([Ljava/util/Map$Entry;)V

    .line 210
    return-void
.end method
