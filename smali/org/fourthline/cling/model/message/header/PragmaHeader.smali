.class public Lorg/fourthline/cling/model/message/header/PragmaHeader;
.super Lorg/fourthline/cling/model/message/header/UpnpHeader;
.source "PragmaHeader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/model/message/header/UpnpHeader",
        "<",
        "Lorg/fourthline/cling/model/types/PragmaType;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/fourthline/cling/model/message/header/UpnpHeader;-><init>()V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/fourthline/cling/model/message/header/UpnpHeader;-><init>()V

    .line 36
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/model/message/header/PragmaHeader;->setString(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/types/PragmaType;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/fourthline/cling/model/message/header/UpnpHeader;-><init>()V

    .line 32
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/model/message/header/PragmaHeader;->setValue(Ljava/lang/Object;)V

    .line 33
    return-void
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/header/PragmaHeader;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/types/PragmaType;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/types/PragmaType;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setString(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 41
    :try_start_0
    invoke-static {p1}, Lorg/fourthline/cling/model/types/PragmaType;->valueOf(Ljava/lang/String;)Lorg/fourthline/cling/model/types/PragmaType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/model/message/header/PragmaHeader;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/fourthline/cling/model/types/InvalidValueException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    return-void

    :catch_0
    move-exception v0

    .line 43
    new-instance v1, Lorg/fourthline/cling/model/message/header/InvalidHeaderException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid Range Header: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/fourthline/cling/model/types/InvalidValueException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/fourthline/cling/model/message/header/InvalidHeaderException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
