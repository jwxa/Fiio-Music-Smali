.class public Lorg/fourthline/cling/support/model/ProtocolInfo;
.super Ljava/lang/Object;
.source "ProtocolInfo.java"


# static fields
.field public static final WILDCARD:Ljava/lang/String; = "*"


# instance fields
.field protected additionalInfo:Ljava/lang/String;

.field protected contentFormat:Ljava/lang/String;

.field protected network:Ljava/lang/String;

.field protected protocol:Lorg/fourthline/cling/support/model/Protocol;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    sget-object v0, Lorg/fourthline/cling/support/model/Protocol;->ALL:Lorg/fourthline/cling/support/model/Protocol;

    iput-object v0, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->protocol:Lorg/fourthline/cling/support/model/Protocol;

    .line 32
    const-string v0, "*"

    iput-object v0, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->network:Ljava/lang/String;

    .line 33
    const-string v0, "*"

    iput-object v0, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->contentFormat:Ljava/lang/String;

    .line 34
    const-string v0, "*"

    iput-object v0, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->additionalInfo:Ljava/lang/String;

    .line 37
    if-nez p1, :cond_0

    .line 38
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 39
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 40
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 48
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Lorg/fourthline/cling/support/model/Protocol;->valueOrNullOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/Protocol;

    move-result-object v1

    iput-object v1, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->protocol:Lorg/fourthline/cling/support/model/Protocol;

    .line 49
    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->network:Ljava/lang/String;

    .line 50
    const/4 v1, 0x2

    aget-object v1, v0, v1

    iput-object v1, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->contentFormat:Ljava/lang/String;

    .line 51
    array-length v1, v0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 52
    const/4 v1, 0x3

    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->additionalInfo:Ljava/lang/String;

    .line 54
    :cond_1
    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/support/model/Protocol;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    sget-object v0, Lorg/fourthline/cling/support/model/Protocol;->ALL:Lorg/fourthline/cling/support/model/Protocol;

    iput-object v0, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->protocol:Lorg/fourthline/cling/support/model/Protocol;

    .line 32
    const-string v0, "*"

    iput-object v0, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->network:Ljava/lang/String;

    .line 33
    const-string v0, "*"

    iput-object v0, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->contentFormat:Ljava/lang/String;

    .line 34
    const-string v0, "*"

    iput-object v0, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->additionalInfo:Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->protocol:Lorg/fourthline/cling/support/model/Protocol;

    .line 64
    iput-object p2, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->network:Ljava/lang/String;

    .line 65
    iput-object p3, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->contentFormat:Ljava/lang/String;

    .line 66
    iput-object p4, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->additionalInfo:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public constructor <init>(Lorg/seamless/util/MimeType;)V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    sget-object v0, Lorg/fourthline/cling/support/model/Protocol;->ALL:Lorg/fourthline/cling/support/model/Protocol;

    iput-object v0, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->protocol:Lorg/fourthline/cling/support/model/Protocol;

    .line 32
    const-string v0, "*"

    iput-object v0, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->network:Ljava/lang/String;

    .line 33
    const-string v0, "*"

    iput-object v0, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->contentFormat:Ljava/lang/String;

    .line 34
    const-string v0, "*"

    iput-object v0, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->additionalInfo:Ljava/lang/String;

    .line 57
    sget-object v0, Lorg/fourthline/cling/support/model/Protocol;->HTTP_GET:Lorg/fourthline/cling/support/model/Protocol;

    iput-object v0, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->protocol:Lorg/fourthline/cling/support/model/Protocol;

    .line 58
    invoke-virtual {p1}, Lorg/seamless/util/MimeType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->contentFormat:Ljava/lang/String;

    .line 59
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 91
    if-ne p0, p1, :cond_1

    .line 107
    :cond_0
    :goto_0
    return v0

    .line 93
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 94
    goto :goto_0

    .line 96
    :cond_3
    check-cast p1, Lorg/fourthline/cling/support/model/ProtocolInfo;

    .line 98
    iget-object v2, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->additionalInfo:Ljava/lang/String;

    iget-object v3, p1, Lorg/fourthline/cling/support/model/ProtocolInfo;->additionalInfo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 99
    goto :goto_0

    .line 100
    :cond_4
    iget-object v2, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->contentFormat:Ljava/lang/String;

    iget-object v3, p1, Lorg/fourthline/cling/support/model/ProtocolInfo;->contentFormat:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 101
    goto :goto_0

    .line 102
    :cond_5
    iget-object v2, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->network:Ljava/lang/String;

    iget-object v3, p1, Lorg/fourthline/cling/support/model/ProtocolInfo;->network:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    .line 103
    goto :goto_0

    .line 104
    :cond_6
    iget-object v2, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->protocol:Lorg/fourthline/cling/support/model/Protocol;

    iget-object v3, p1, Lorg/fourthline/cling/support/model/ProtocolInfo;->protocol:Lorg/fourthline/cling/support/model/Protocol;

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 105
    goto :goto_0
.end method

.method public getAdditionalInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->additionalInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getContentFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->contentFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getContentFormatMimeType()Lorg/seamless/util/MimeType;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->contentFormat:Ljava/lang/String;

    invoke-static {v0}, Lorg/seamless/util/MimeType;->valueOf(Ljava/lang/String;)Lorg/seamless/util/MimeType;

    move-result-object v0

    return-object v0
.end method

.method public getNetwork()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->network:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocol()Lorg/fourthline/cling/support/model/Protocol;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->protocol:Lorg/fourthline/cling/support/model/Protocol;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->protocol:Lorg/fourthline/cling/support/model/Protocol;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/Protocol;->hashCode()I

    move-result v0

    .line 113
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->network:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 114
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->contentFormat:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 115
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->additionalInfo:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 116
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->protocol:Lorg/fourthline/cling/support/model/Protocol;

    invoke-virtual {v1}, Lorg/fourthline/cling/support/model/Protocol;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->network:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->contentFormat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 122
    iget-object v1, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->additionalInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
