.class public Lorg/fourthline/cling/support/renderingcontrol/lastchange/EventedValueChannelVolumeDB;
.super Lorg/fourthline/cling/support/lastchange/EventedValue;
.source "EventedValueChannelVolumeDB.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/support/lastchange/EventedValue",
        "<",
        "Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelVolumeDB;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelVolumeDB;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lorg/fourthline/cling/support/lastchange/EventedValue;-><init>(Ljava/lang/Object;)V

    .line 35
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
    .line 38
    invoke-direct {p0, p1}, Lorg/fourthline/cling/support/lastchange/EventedValue;-><init>([Ljava/util/Map$Entry;)V

    .line 39
    return-void
.end method


# virtual methods
.method public getAttributes()[Ljava/util/Map$Entry;
    .locals 10
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
    .line 58
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/util/Map$Entry;

    const/4 v2, 0x0

    .line 59
    new-instance v3, Lorg/fourthline/cling/support/shared/AbstractMap$SimpleEntry;

    .line 60
    const-string v4, "val"

    .line 61
    new-instance v5, Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytesDatatype;

    invoke-direct {v5}, Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytesDatatype;-><init>()V

    .line 62
    new-instance v6, Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytes;

    invoke-virtual {p0}, Lorg/fourthline/cling/support/renderingcontrol/lastchange/EventedValueChannelVolumeDB;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelVolumeDB;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelVolumeDB;->getVolumeDB()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v8, v0

    invoke-direct {v6, v8, v9}, Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytes;-><init>(J)V

    .line 61
    invoke-virtual {v5, v6}, Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytesDatatype;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-direct {v3, v4, v0}, Lorg/fourthline/cling/support/shared/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 65
    new-instance v3, Lorg/fourthline/cling/support/shared/AbstractMap$SimpleEntry;

    .line 66
    const-string v4, "channel"

    .line 67
    invoke-virtual {p0}, Lorg/fourthline/cling/support/renderingcontrol/lastchange/EventedValueChannelVolumeDB;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelVolumeDB;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelVolumeDB;->getChannel()Lorg/fourthline/cling/support/model/Channel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/Channel;->name()Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-direct {v3, v4, v0}, Lorg/fourthline/cling/support/shared/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v1, v2

    .line 58
    return-object v1
.end method

.method protected getDatatype()Lorg/fourthline/cling/model/types/Datatype;
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Lorg/fourthline/cling/support/renderingcontrol/lastchange/EventedValueChannelVolumeDB;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelVolumeDB;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelVolumeDB;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic valueOf([Ljava/util/Map$Entry;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/renderingcontrol/lastchange/EventedValueChannelVolumeDB;->valueOf([Ljava/util/Map$Entry;)Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelVolumeDB;

    move-result-object v0

    return-object v0
.end method

.method protected valueOf([Ljava/util/Map$Entry;)Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelVolumeDB;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelVolumeDB;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 43
    .line 45
    array-length v5, p1

    const/4 v0, 0x0

    move v4, v0

    move-object v1, v3

    move-object v2, v3

    :goto_0
    if-lt v4, v5, :cond_0

    .line 53
    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    new-instance v0, Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelVolumeDB;

    invoke-direct {v0, v2, v1}, Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelVolumeDB;-><init>(Lorg/fourthline/cling/support/model/Channel;Ljava/lang/Integer;)V

    :goto_1
    return-object v0

    .line 45
    :cond_0
    aget-object v6, p1, v4

    .line 46
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v7, "channel"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/fourthline/cling/support/model/Channel;->valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/Channel;

    move-result-object v0

    move-object v2, v0

    .line 48
    :cond_1
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v7, "val"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 49
    new-instance v1, Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytesDatatype;

    invoke-direct {v1}, Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytesDatatype;-><init>()V

    .line 50
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytesDatatype;->valueOf(Ljava/lang/String;)Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytes;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytes;->getValue()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 45
    :goto_2
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move-object v1, v0

    goto :goto_0

    :cond_2
    move-object v0, v3

    .line 53
    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method
