.class public Lorg/fourthline/cling/support/model/dlna/DLNAProfileAttribute;
.super Lorg/fourthline/cling/support/model/dlna/DLNAAttribute;
.source "DLNAProfileAttribute.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/support/model/dlna/DLNAAttribute",
        "<",
        "Lorg/fourthline/cling/support/model/dlna/DLNAProfiles;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute;-><init>()V

    .line 23
    sget-object v0, Lorg/fourthline/cling/support/model/dlna/DLNAProfiles;->NONE:Lorg/fourthline/cling/support/model/dlna/DLNAProfiles;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/dlna/DLNAProfileAttribute;->setValue(Ljava/lang/Object;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/support/model/dlna/DLNAProfiles;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute;-><init>()V

    .line 27
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/model/dlna/DLNAProfileAttribute;->setValue(Ljava/lang/Object;)V

    .line 28
    return-void
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/dlna/DLNAProfileAttribute;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/dlna/DLNAProfiles;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/dlna/DLNAProfiles;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 31
    invoke-static {p1, p2}, Lorg/fourthline/cling/support/model/dlna/DLNAProfiles;->valueOf(Ljava/lang/String;Ljava/lang/String;)Lorg/fourthline/cling/support/model/dlna/DLNAProfiles;

    move-result-object v0

    .line 32
    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/InvalidDLNAProtocolAttributeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t parse DLNA profile from: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/fourthline/cling/support/model/dlna/InvalidDLNAProtocolAttributeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_0
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/dlna/DLNAProfileAttribute;->setValue(Ljava/lang/Object;)V

    .line 36
    return-void
.end method
