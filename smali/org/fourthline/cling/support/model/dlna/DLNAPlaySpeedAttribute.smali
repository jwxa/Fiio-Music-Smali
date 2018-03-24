.class public Lorg/fourthline/cling/support/model/dlna/DLNAPlaySpeedAttribute;
.super Lorg/fourthline/cling/support/model/dlna/DLNAAttribute;
.source "DLNAPlaySpeedAttribute.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/support/model/dlna/DLNAAttribute",
        "<[",
        "Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$TransportPlaySpeed;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute;-><init>()V

    .line 26
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$TransportPlaySpeed;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/dlna/DLNAPlaySpeedAttribute;->setValue(Ljava/lang/Object;)V

    .line 27
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute;-><init>()V

    .line 34
    array-length v0, p1

    new-array v1, v0, [Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$TransportPlaySpeed;

    .line 36
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    array-length v2, p1
    :try_end_0
    .catch Lorg/fourthline/cling/model/types/InvalidValueException; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v0, v2, :cond_0

    .line 42
    invoke-virtual {p0, v1}, Lorg/fourthline/cling/support/model/dlna/DLNAPlaySpeedAttribute;->setValue(Ljava/lang/Object;)V

    .line 43
    return-void

    .line 37
    :cond_0
    :try_start_1
    new-instance v2, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$TransportPlaySpeed;

    aget-object v3, p1, v0

    invoke-direct {v2, v3}, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$TransportPlaySpeed;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v0
    :try_end_1
    .catch Lorg/fourthline/cling/model/types/InvalidValueException; {:try_start_1 .. :try_end_1} :catch_0

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 40
    :catch_0
    move-exception v0

    new-instance v0, Lorg/fourthline/cling/support/model/dlna/InvalidDLNAProtocolAttributeException;

    const-string v1, "Can\'t parse DLNA play speeds."

    invoke-direct {v0, v1}, Lorg/fourthline/cling/support/model/dlna/InvalidDLNAProtocolAttributeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$TransportPlaySpeed;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute;-><init>()V

    .line 30
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/model/dlna/DLNAPlaySpeedAttribute;->setValue(Ljava/lang/Object;)V

    .line 31
    return-void
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 65
    const-string v2, ""

    .line 66
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/dlna/DLNAPlaySpeedAttribute;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$TransportPlaySpeed;

    array-length v4, v0

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    if-lt v3, v4, :cond_0

    .line 71
    return-object v2

    .line 66
    :cond_0
    aget-object v5, v0, v3

    .line 67
    invoke-virtual {v5}, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$TransportPlaySpeed;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v6, "1"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 68
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ""

    :goto_1
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 66
    :goto_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move-object v2, v1

    goto :goto_0

    .line 68
    :cond_1
    const-string v1, ","

    goto :goto_1

    :cond_2
    move-object v1, v2

    goto :goto_2
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 46
    .line 47
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 48
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 50
    :try_start_0
    array-length v0, v3

    new-array v0, v0, [Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$TransportPlaySpeed;

    .line 51
    const/4 v2, 0x0

    :goto_0
    array-length v4, v3
    :try_end_0
    .catch Lorg/fourthline/cling/model/types/InvalidValueException; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v2, v4, :cond_0

    .line 58
    :goto_1
    if-nez v0, :cond_1

    .line 59
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/InvalidDLNAProtocolAttributeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t parse DLNA play speeds from: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/fourthline/cling/support/model/dlna/InvalidDLNAProtocolAttributeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_0
    :try_start_1
    new-instance v4, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$TransportPlaySpeed;

    aget-object v5, v3, v2

    invoke-direct {v4, v5}, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$TransportPlaySpeed;-><init>(Ljava/lang/String;)V

    aput-object v4, v0, v2
    :try_end_1
    .catch Lorg/fourthline/cling/model/types/InvalidValueException; {:try_start_1 .. :try_end_1} :catch_0

    .line 51
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    .line 61
    :cond_1
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/dlna/DLNAPlaySpeedAttribute;->setValue(Ljava/lang/Object;)V

    .line 62
    return-void

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method
