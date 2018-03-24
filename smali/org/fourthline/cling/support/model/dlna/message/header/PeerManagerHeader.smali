.class public Lorg/fourthline/cling/support/model/dlna/message/header/PeerManagerHeader;
.super Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader;
.source "PeerManagerHeader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader",
        "<",
        "Lorg/fourthline/cling/model/ServiceReference;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader;-><init>()V

    .line 26
    return-void
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/dlna/message/header/PeerManagerHeader;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/ServiceReference;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/ServiceReference;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setString(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 30
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    :try_start_0
    new-instance v0, Lorg/fourthline/cling/model/ServiceReference;

    invoke-direct {v0, p1}, Lorg/fourthline/cling/model/ServiceReference;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v0}, Lorg/fourthline/cling/model/ServiceReference;->getUdn()Lorg/fourthline/cling/model/types/UDN;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/ServiceReference;->getServiceId()Lorg/fourthline/cling/model/types/ServiceId;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 34
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/dlna/message/header/PeerManagerHeader;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    return-void

    :catch_0
    move-exception v0

    .line 40
    :cond_0
    new-instance v0, Lorg/fourthline/cling/model/message/header/InvalidHeaderException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid PeerManager header value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/fourthline/cling/model/message/header/InvalidHeaderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
