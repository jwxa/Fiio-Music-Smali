.class public Lorg/fourthline/cling/model/types/BinHexDatatype;
.super Lorg/fourthline/cling/model/types/AbstractDatatype;
.source "BinHexDatatype.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/model/types/AbstractDatatype",
        "<[B>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/fourthline/cling/model/types/AbstractDatatype;-><init>()V

    .line 26
    return-void
.end method


# virtual methods
.method public bridge synthetic getString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lorg/fourthline/cling/model/types/BinHexDatatype;->getString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString([B)Ljava/lang/String;
    .locals 3

    .prologue
    .line 43
    if-nez p1, :cond_0

    const-string v0, ""

    .line 45
    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-static {p1}, Lorg/seamless/util/io/HexBin;->bytesToString([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    new-instance v1, Lorg/fourthline/cling/model/types/InvalidValueException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/fourthline/cling/model/types/InvalidValueException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getValueType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 29
    const-class v0, [B

    return-object v0
.end method

.method public bridge synthetic valueOf(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/model/types/BinHexDatatype;->valueOf(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public valueOf(Ljava/lang/String;)[B
    .locals 3

    .prologue
    .line 33
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-static {p1}, Lorg/seamless/util/io/HexBin;->stringToBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    new-instance v1, Lorg/fourthline/cling/model/types/InvalidValueException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/fourthline/cling/model/types/InvalidValueException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
