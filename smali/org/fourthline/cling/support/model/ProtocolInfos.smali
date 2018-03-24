.class public Lorg/fourthline/cling/support/model/ProtocolInfos;
.super Ljava/util/ArrayList;
.source "ProtocolInfos.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lorg/fourthline/cling/support/model/ProtocolInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    invoke-static {p1}, Lorg/fourthline/cling/model/ModelUtil;->fromCommaSeparatedList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 36
    if-eqz v1, :cond_0

    .line 37
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_1

    .line 39
    :cond_0
    return-void

    .line 37
    :cond_1
    aget-object v3, v1, v0

    .line 38
    new-instance v4, Lorg/fourthline/cling/support/model/ProtocolInfo;

    invoke-direct {v4, v3}, Lorg/fourthline/cling/support/model/ProtocolInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lorg/fourthline/cling/support/model/ProtocolInfos;->add(Ljava/lang/Object;)Z

    .line 37
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public varargs constructor <init>([Lorg/fourthline/cling/support/model/ProtocolInfo;)V
    .locals 3

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    .line 32
    return-void

    .line 29
    :cond_0
    aget-object v2, p1, v0

    .line 30
    invoke-virtual {p0, v2}, Lorg/fourthline/cling/support/model/ProtocolInfos;->add(Ljava/lang/Object;)Z

    .line 29
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/ProtocolInfos;->size()I

    move-result v0

    new-array v0, v0, [Lorg/fourthline/cling/support/model/ProtocolInfo;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/ProtocolInfos;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/fourthline/cling/model/ModelUtil;->toCommaSeparatedList([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
