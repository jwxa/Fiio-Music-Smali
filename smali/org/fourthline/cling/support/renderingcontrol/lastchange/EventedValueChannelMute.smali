.class public Lorg/fourthline/cling/support/renderingcontrol/lastchange/EventedValueChannelMute;
.super Lorg/fourthline/cling/support/lastchange/EventedValue;
.source "EventedValueChannelMute.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/support/lastchange/EventedValue",
        "<",
        "Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelMute;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelMute;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lorg/fourthline/cling/support/lastchange/EventedValue;-><init>(Ljava/lang/Object;)V

    .line 34
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
    .line 37
    invoke-direct {p0, p1}, Lorg/fourthline/cling/support/lastchange/EventedValue;-><init>([Ljava/util/Map$Entry;)V

    .line 38
    return-void
.end method


# virtual methods
.method public getAttributes()[Ljava/util/Map$Entry;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/util/Map$Entry;

    const/4 v2, 0x0

    .line 56
    new-instance v3, Lorg/fourthline/cling/support/shared/AbstractMap$SimpleEntry;

    .line 57
    const-string v4, "val"

    .line 58
    new-instance v5, Lorg/fourthline/cling/model/types/BooleanDatatype;

    invoke-direct {v5}, Lorg/fourthline/cling/model/types/BooleanDatatype;-><init>()V

    invoke-virtual {p0}, Lorg/fourthline/cling/support/renderingcontrol/lastchange/EventedValueChannelMute;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelMute;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelMute;->getMute()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/fourthline/cling/model/types/BooleanDatatype;->getString(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-direct {v3, v4, v0}, Lorg/fourthline/cling/support/shared/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 60
    new-instance v3, Lorg/fourthline/cling/support/shared/AbstractMap$SimpleEntry;

    .line 61
    const-string v4, "channel"

    .line 62
    invoke-virtual {p0}, Lorg/fourthline/cling/support/renderingcontrol/lastchange/EventedValueChannelMute;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelMute;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelMute;->getChannel()Lorg/fourthline/cling/support/model/Channel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/Channel;->name()Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-direct {v3, v4, v0}, Lorg/fourthline/cling/support/shared/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v1, v2

    .line 55
    return-object v1
.end method

.method protected getDatatype()Lorg/fourthline/cling/model/types/Datatype;
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lorg/fourthline/cling/support/renderingcontrol/lastchange/EventedValueChannelMute;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelMute;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelMute;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic valueOf([Ljava/util/Map$Entry;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/renderingcontrol/lastchange/EventedValueChannelMute;->valueOf([Ljava/util/Map$Entry;)Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelMute;

    move-result-object v0

    return-object v0
.end method

.method protected valueOf([Ljava/util/Map$Entry;)Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelMute;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelMute;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 42
    .line 44
    array-length v5, p1

    const/4 v0, 0x0

    move v4, v0

    move-object v1, v3

    move-object v2, v3

    :goto_0
    if-lt v4, v5, :cond_0

    .line 50
    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    new-instance v0, Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelMute;

    invoke-direct {v0, v2, v1}, Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelMute;-><init>(Lorg/fourthline/cling/support/model/Channel;Ljava/lang/Boolean;)V

    :goto_1
    return-object v0

    .line 44
    :cond_0
    aget-object v6, p1, v4

    .line 45
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v7, "channel"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/fourthline/cling/support/model/Channel;->valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/Channel;

    move-result-object v0

    move-object v2, v0

    .line 47
    :cond_1
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v7, "val"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 48
    new-instance v1, Lorg/fourthline/cling/model/types/BooleanDatatype;

    invoke-direct {v1}, Lorg/fourthline/cling/model/types/BooleanDatatype;-><init>()V

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/fourthline/cling/model/types/BooleanDatatype;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 44
    :goto_2
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move-object v1, v0

    goto :goto_0

    :cond_2
    move-object v0, v3

    .line 50
    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method
