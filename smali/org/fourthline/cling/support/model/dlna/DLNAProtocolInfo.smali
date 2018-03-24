.class public Lorg/fourthline/cling/support/model/dlna/DLNAProtocolInfo;
.super Lorg/fourthline/cling/support/model/ProtocolInfo;
.source "DLNAProtocolInfo.java"


# instance fields
.field protected final attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;",
            "Lorg/fourthline/cling/support/model/dlna/DLNAAttribute;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lorg/fourthline/cling/support/model/ProtocolInfo;-><init>(Ljava/lang/String;)V

    .line 34
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/fourthline/cling/support/model/dlna/DLNAProtocolInfo;->attributes:Ljava/util/Map;

    .line 38
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/dlna/DLNAProtocolInfo;->parseAdditionalInfo()V

    .line 39
    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/support/model/Protocol;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/fourthline/cling/support/model/ProtocolInfo;-><init>(Lorg/fourthline/cling/support/model/Protocol;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/fourthline/cling/support/model/dlna/DLNAProtocolInfo;->attributes:Ljava/util/Map;

    .line 60
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/dlna/DLNAProtocolInfo;->parseAdditionalInfo()V

    .line 61
    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/support/model/Protocol;Ljava/lang/String;Ljava/lang/String;Ljava/util/EnumMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/support/model/Protocol;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/EnumMap",
            "<",
            "Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;",
            "Lorg/fourthline/cling/support/model/dlna/DLNAAttribute;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    const-string v0, ""

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/fourthline/cling/support/model/ProtocolInfo;-><init>(Lorg/fourthline/cling/support/model/Protocol;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/fourthline/cling/support/model/dlna/DLNAProtocolInfo;->attributes:Ljava/util/Map;

    .line 65
    iget-object v0, p0, Lorg/fourthline/cling/support/model/dlna/DLNAProtocolInfo;->attributes:Ljava/util/Map;

    invoke-interface {v0, p4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 66
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/dlna/DLNAProtocolInfo;->getAttributesString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/support/model/dlna/DLNAProtocolInfo;->additionalInfo:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/support/model/ProtocolInfo;)V
    .locals 4

    .prologue
    .line 70
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/ProtocolInfo;->getProtocol()Lorg/fourthline/cling/support/model/Protocol;

    move-result-object v0

    .line 71
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/ProtocolInfo;->getNetwork()Ljava/lang/String;

    move-result-object v1

    .line 72
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/ProtocolInfo;->getContentFormat()Ljava/lang/String;

    move-result-object v2

    .line 73
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/ProtocolInfo;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/fourthline/cling/support/model/dlna/DLNAProtocolInfo;-><init>(Lorg/fourthline/cling/support/model/Protocol;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/support/model/dlna/DLNAProfiles;)V
    .locals 3

    .prologue
    .line 46
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/dlna/DLNAProfiles;->getContentFormat()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/seamless/util/MimeType;->valueOf(Ljava/lang/String;)Lorg/seamless/util/MimeType;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/fourthline/cling/support/model/ProtocolInfo;-><init>(Lorg/seamless/util/MimeType;)V

    .line 34
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/fourthline/cling/support/model/dlna/DLNAProtocolInfo;->attributes:Ljava/util/Map;

    .line 47
    iget-object v0, p0, Lorg/fourthline/cling/support/model/dlna/DLNAProtocolInfo;->attributes:Ljava/util/Map;

    sget-object v1, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;->DLNA_ORG_PN:Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

    new-instance v2, Lorg/fourthline/cling/support/model/dlna/DLNAProfileAttribute;

    invoke-direct {v2, p1}, Lorg/fourthline/cling/support/model/dlna/DLNAProfileAttribute;-><init>(Lorg/fourthline/cling/support/model/dlna/DLNAProfiles;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/dlna/DLNAProtocolInfo;->getAttributesString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/support/model/dlna/DLNAProtocolInfo;->additionalInfo:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/support/model/dlna/DLNAProfiles;Ljava/util/EnumMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/support/model/dlna/DLNAProfiles;",
            "Ljava/util/EnumMap",
            "<",
            "Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;",
            "Lorg/fourthline/cling/support/model/dlna/DLNAAttribute;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/dlna/DLNAProfiles;->getContentFormat()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/seamless/util/MimeType;->valueOf(Ljava/lang/String;)Lorg/seamless/util/MimeType;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/fourthline/cling/support/model/ProtocolInfo;-><init>(Lorg/seamless/util/MimeType;)V

    .line 34
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/fourthline/cling/support/model/dlna/DLNAProtocolInfo;->attributes:Ljava/util/Map;

    .line 53
    iget-object v0, p0, Lorg/fourthline/cling/support/model/dlna/DLNAProtocolInfo;->attributes:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 54
    iget-object v0, p0, Lorg/fourthline/cling/support/model/dlna/DLNAProtocolInfo;->attributes:Ljava/util/Map;

    sget-object v1, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;->DLNA_ORG_PN:Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

    new-instance v2, Lorg/fourthline/cling/support/model/dlna/DLNAProfileAttribute;

    invoke-direct {v2, p1}, Lorg/fourthline/cling/support/model/dlna/DLNAProfileAttribute;-><init>(Lorg/fourthline/cling/support/model/dlna/DLNAProfiles;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/dlna/DLNAProtocolInfo;->getAttributesString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/support/model/dlna/DLNAProtocolInfo;->additionalInfo:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public constructor <init>(Lorg/seamless/util/MimeType;)V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lorg/fourthline/cling/support/model/ProtocolInfo;-><init>(Lorg/seamless/util/MimeType;)V

    .line 34
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/fourthline/cling/support/model/dlna/DLNAProtocolInfo;->attributes:Ljava/util/Map;

    .line 43
    return-void
.end method


# virtual methods
.method public contains(Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;)Z
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/fourthline/cling/support/model/dlna/DLNAProtocolInfo;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getAttribute(Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;)Lorg/fourthline/cling/support/model/dlna/DLNAAttribute;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/fourthline/cling/support/model/dlna/DLNAProtocolInfo;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute;

    return-object v0
.end method

.method public getAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;",
            "Lorg/fourthline/cling/support/model/dlna/DLNAAttribute;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lorg/fourthline/cling/support/model/dlna/DLNAProtocolInfo;->attributes:Ljava/util/Map;

    return-object v0
.end method

.method protected getAttributesString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 90
    const-string v1, ""

    .line 91
    invoke-static {}, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;->values()[Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

    move-result-object v4

    array-length v5, v4

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-lt v3, v5, :cond_0

    .line 96
    return-object v1

    .line 91
    :cond_0
    aget-object v6, v4, v3

    .line 92
    iget-object v0, p0, Lorg/fourthline/cling/support/model/dlna/DLNAProtocolInfo;->attributes:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/fourthline/cling/support/model/dlna/DLNAProtocolInfo;->attributes:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute;->getString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 93
    :goto_1
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    .line 94
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

    .line 91
    :goto_3
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move-object v1, v0

    goto :goto_0

    .line 92
    :cond_1
    const/4 v0, 0x0

    move-object v2, v0

    goto :goto_1

    .line 94
    :cond_2
    const-string v0, ";"

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_3
.end method

.method protected parseAdditionalInfo()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 100
    iget-object v0, p0, Lorg/fourthline/cling/support/model/dlna/DLNAProtocolInfo;->additionalInfo:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lorg/fourthline/cling/support/model/dlna/DLNAProtocolInfo;->additionalInfo:Ljava/lang/String;

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 102
    array-length v3, v2

    move v0, v1

    :goto_0
    if-lt v0, v3, :cond_1

    .line 115
    :cond_0
    return-void

    .line 102
    :cond_1
    aget-object v4, v2, v0

    .line 103
    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 104
    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 106
    aget-object v5, v4, v1

    invoke-static {v5}, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;->valueOfAttributeName(Ljava/lang/String;)Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

    move-result-object v5

    .line 107
    if-eqz v5, :cond_2

    .line 109
    const/4 v6, 0x1

    aget-object v4, v4, v6

    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/dlna/DLNAProtocolInfo;->getContentFormat()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v4, v6}, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute;->newInstance(Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;Ljava/lang/String;Ljava/lang/String;)Lorg/fourthline/cling/support/model/dlna/DLNAAttribute;

    move-result-object v4

    .line 110
    iget-object v6, p0, Lorg/fourthline/cling/support/model/dlna/DLNAProtocolInfo;->attributes:Ljava/util/Map;

    invoke-interface {v6, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
