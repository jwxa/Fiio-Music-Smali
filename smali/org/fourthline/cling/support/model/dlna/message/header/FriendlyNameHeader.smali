.class public Lorg/fourthline/cling/support/model/dlna/message/header/FriendlyNameHeader;
.super Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader;
.source "FriendlyNameHeader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader;-><init>()V

    .line 25
    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/dlna/message/header/FriendlyNameHeader;->setValue(Ljava/lang/Object;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader;-><init>()V

    .line 29
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/model/dlna/message/header/FriendlyNameHeader;->setValue(Ljava/lang/Object;)V

    .line 30
    return-void
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/dlna/message/header/FriendlyNameHeader;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public setString(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 34
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/model/dlna/message/header/FriendlyNameHeader;->setValue(Ljava/lang/Object;)V

    .line 36
    return-void

    .line 38
    :cond_0
    new-instance v0, Lorg/fourthline/cling/model/message/header/InvalidHeaderException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid GetAvailableSeekRange header value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/fourthline/cling/model/message/header/InvalidHeaderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
