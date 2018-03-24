.class public Lorg/fourthline/cling/support/model/dlna/DLNAOperationsAttribute;
.super Lorg/fourthline/cling/support/model/dlna/DLNAAttribute;
.source "DLNAOperationsAttribute.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/support/model/dlna/DLNAAttribute",
        "<",
        "Ljava/util/EnumSet",
        "<",
        "Lorg/fourthline/cling/support/model/dlna/DLNAOperations;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute;-><init>()V

    .line 25
    sget-object v0, Lorg/fourthline/cling/support/model/dlna/DLNAOperations;->NONE:Lorg/fourthline/cling/support/model/dlna/DLNAOperations;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/dlna/DLNAOperationsAttribute;->setValue(Ljava/lang/Object;)V

    .line 26
    return-void
.end method

.method public varargs constructor <init>([Lorg/fourthline/cling/support/model/dlna/DLNAOperations;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    invoke-direct {p0}, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute;-><init>()V

    .line 29
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 30
    aget-object v0, p1, v2

    .line 31
    array-length v1, p1

    if-le v1, v3, :cond_1

    .line 32
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v3, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 33
    invoke-static {v0, p1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/dlna/DLNAOperationsAttribute;->setValue(Ljava/lang/Object;)V

    .line 38
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/dlna/DLNAOperationsAttribute;->setValue(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 60
    sget-object v0, Lorg/fourthline/cling/support/model/dlna/DLNAOperations;->NONE:Lorg/fourthline/cling/support/model/dlna/DLNAOperations;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/dlna/DLNAOperations;->getCode()I

    move-result v1

    .line 61
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/dlna/DLNAOperationsAttribute;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    const-string v0, "%02x"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 61
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/dlna/DLNAOperations;

    .line 62
    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/dlna/DLNAOperations;->getCode()I

    move-result v0

    or-int/2addr v0, v1

    move v1, v0

    goto :goto_0
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 41
    const-class v0, Lorg/fourthline/cling/support/model/dlna/DLNAOperations;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    .line 43
    const/16 v0, 0x10

    :try_start_0
    invoke-static {p1, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 44
    invoke-static {}, Lorg/fourthline/cling/support/model/dlna/DLNAOperations;->values()[Lorg/fourthline/cling/support/model/dlna/DLNAOperations;

    move-result-object v3

    array-length v4, v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v4, :cond_0

    .line 53
    :goto_1
    invoke-virtual {v1}, Ljava/util/EnumSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 54
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/InvalidDLNAProtocolAttributeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t parse DLNA operations integer from: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/fourthline/cling/support/model/dlna/InvalidDLNAProtocolAttributeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    :try_start_1
    aget-object v5, v3, v0

    .line 45
    invoke-virtual {v5}, Lorg/fourthline/cling/support/model/dlna/DLNAOperations;->getCode()I

    move-result v6

    and-int/2addr v6, v2

    .line 46
    sget-object v7, Lorg/fourthline/cling/support/model/dlna/DLNAOperations;->NONE:Lorg/fourthline/cling/support/model/dlna/DLNAOperations;

    if-eq v5, v7, :cond_1

    invoke-virtual {v5}, Lorg/fourthline/cling/support/model/dlna/DLNAOperations;->getCode()I

    move-result v7

    if-ne v7, v6, :cond_1

    .line 47
    invoke-virtual {v1, v5}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 44
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 56
    :cond_2
    invoke-virtual {p0, v1}, Lorg/fourthline/cling/support/model/dlna/DLNAOperationsAttribute;->setValue(Ljava/lang/Object;)V

    .line 57
    return-void

    :catch_0
    move-exception v0

    goto :goto_1
.end method
