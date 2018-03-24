.class public Lorg/fourthline/cling/support/model/dlna/message/header/ContentFeaturesHeader;
.super Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader;
.source "ContentFeaturesHeader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader",
        "<",
        "Ljava/util/EnumMap",
        "<",
        "Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;",
        "Lorg/fourthline/cling/support/model/dlna/DLNAAttribute;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader;-><init>()V

    .line 27
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/dlna/message/header/ContentFeaturesHeader;->setValue(Ljava/lang/Object;)V

    .line 28
    return-void
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 49
    const-string v1, ""

    .line 50
    invoke-static {}, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;->values()[Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

    move-result-object v4

    array-length v5, v4

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-lt v3, v5, :cond_0

    .line 56
    return-object v1

    .line 50
    :cond_0
    aget-object v6, v4, v3

    .line 51
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/dlna/message/header/ContentFeaturesHeader;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/EnumMap;

    invoke-virtual {v0, v6}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/dlna/message/header/ContentFeaturesHeader;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/EnumMap;

    invoke-virtual {v0, v6}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute;->getString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 52
    :goto_1
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    .line 53
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, ""

    :goto_2
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;->getAttributeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50
    :goto_3
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move-object v1, v0

    goto :goto_0

    .line 51
    :cond_1
    const/4 v0, 0x0

    move-object v2, v0

    goto :goto_1

    .line 53
    :cond_2
    const-string v0, ";"

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_3
.end method

.method public setString(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 32
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 34
    array-length v4, v3

    move v1, v2

    :goto_0
    if-lt v1, v4, :cond_1

    .line 45
    :cond_0
    return-void

    .line 34
    :cond_1
    aget-object v0, v3, v1

    .line 35
    const-string v5, "="

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 36
    array-length v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 37
    aget-object v5, v0, v2

    invoke-static {v5}, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;->valueOfAttributeName(Ljava/lang/String;)Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

    move-result-object v5

    .line 38
    if-eqz v5, :cond_2

    .line 39
    const/4 v6, 0x1

    aget-object v0, v0, v6

    const-string v6, ""

    invoke-static {v5, v0, v6}, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute;->newInstance(Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;Ljava/lang/String;Ljava/lang/String;)Lorg/fourthline/cling/support/model/dlna/DLNAAttribute;

    move-result-object v6

    .line 40
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/dlna/message/header/ContentFeaturesHeader;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/EnumMap;

    invoke-virtual {v0, v5, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
