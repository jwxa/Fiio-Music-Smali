.class public Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$CurrentTransportActions;
.super Lorg/fourthline/cling/support/lastchange/EventedValueEnumArray;
.source "AVTransportVariable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/support/lastchange/EventedValueEnumArray",
        "<",
        "Lorg/fourthline/cling/support/model/TransportAction;",
        ">;"
    }
.end annotation


# direct methods
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
    .line 328
    invoke-direct {p0, p1}, Lorg/fourthline/cling/support/lastchange/EventedValueEnumArray;-><init>([Ljava/util/Map$Entry;)V

    .line 329
    return-void
.end method

.method public constructor <init>([Lorg/fourthline/cling/support/model/TransportAction;)V
    .locals 0

    .prologue
    .line 324
    invoke-direct {p0, p1}, Lorg/fourthline/cling/support/lastchange/EventedValueEnumArray;-><init>([Ljava/lang/Enum;)V

    .line 325
    return-void
.end method


# virtual methods
.method protected bridge synthetic enumValueOf([Ljava/lang/String;)[Ljava/lang/Enum;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$CurrentTransportActions;->enumValueOf([Ljava/lang/String;)[Lorg/fourthline/cling/support/model/TransportAction;

    move-result-object v0

    return-object v0
.end method

.method protected enumValueOf([Ljava/lang/String;)[Lorg/fourthline/cling/support/model/TransportAction;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 333
    if-nez p1, :cond_0

    new-array v0, v0, [Lorg/fourthline/cling/support/model/TransportAction;

    .line 338
    :goto_0
    return-object v0

    .line 334
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 335
    array-length v2, p1

    :goto_1
    if-lt v0, v2, :cond_1

    .line 338
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/fourthline/cling/support/model/TransportAction;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/support/model/TransportAction;

    goto :goto_0

    .line 335
    :cond_1
    aget-object v3, p1, v0

    .line 336
    invoke-static {v3}, Lorg/fourthline/cling/support/model/TransportAction;->valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/TransportAction;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
