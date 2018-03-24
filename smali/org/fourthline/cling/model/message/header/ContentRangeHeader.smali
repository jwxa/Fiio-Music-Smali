.class public Lorg/fourthline/cling/model/message/header/ContentRangeHeader;
.super Lorg/fourthline/cling/model/message/header/UpnpHeader;
.source "ContentRangeHeader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/model/message/header/UpnpHeader",
        "<",
        "Lorg/fourthline/cling/model/types/BytesRange;",
        ">;"
    }
.end annotation


# static fields
.field public static final PREFIX:Ljava/lang/String; = "bytes "


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/fourthline/cling/model/message/header/UpnpHeader;-><init>()V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lorg/fourthline/cling/model/message/header/UpnpHeader;-><init>()V

    .line 38
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/model/message/header/ContentRangeHeader;->setString(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/types/BytesRange;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/fourthline/cling/model/message/header/UpnpHeader;-><init>()V

    .line 34
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/model/message/header/ContentRangeHeader;->setValue(Ljava/lang/Object;)V

    .line 35
    return-void
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 50
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/header/ContentRangeHeader;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/types/BytesRange;

    const/4 v1, 0x1

    const-string v2, "bytes "

    invoke-virtual {v0, v1, v2}, Lorg/fourthline/cling/model/types/BytesRange;->getString(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setString(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 43
    :try_start_0
    const-string v0, "bytes "

    invoke-static {p1, v0}, Lorg/fourthline/cling/model/types/BytesRange;->valueOf(Ljava/lang/String;Ljava/lang/String;)Lorg/fourthline/cling/model/types/BytesRange;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/model/message/header/ContentRangeHeader;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/fourthline/cling/model/types/InvalidValueException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    return-void

    :catch_0
    move-exception v0

    .line 45
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
