.class public Lorg/fourthline/cling/support/model/PortMapping;
.super Ljava/lang/Object;
.source "PortMapping.java"


# instance fields
.field private description:Ljava/lang/String;

.field private enabled:Z

.field private externalPort:Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytes;

.field private internalClient:Ljava/lang/String;

.field private internalPort:Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytes;

.field private leaseDurationSeconds:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

.field private protocol:Lorg/fourthline/cling/support/model/PortMapping$Protocol;

.field private remoteHost:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lorg/fourthline/cling/support/model/PortMapping$Protocol;)V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 62
    .line 63
    const/4 v1, 0x1

    .line 64
    new-instance v2, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    const-wide/16 v4, 0x0

    invoke-direct {v2, v4, v5}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    .line 66
    new-instance v4, Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytes;

    int-to-long v6, p1

    invoke-direct {v4, v6, v7}, Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytes;-><init>(J)V

    .line 67
    new-instance v5, Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytes;

    int-to-long v6, p1

    invoke-direct {v5, v6, v7}, Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytes;-><init>(J)V

    move-object v0, p0

    move-object v6, p2

    move-object v7, p3

    move-object v8, v3

    .line 70
    invoke-direct/range {v0 .. v8}, Lorg/fourthline/cling/support/model/PortMapping;-><init>(ZLorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytes;Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytes;Ljava/lang/String;Lorg/fourthline/cling/support/model/PortMapping$Protocol;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lorg/fourthline/cling/support/model/PortMapping$Protocol;Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 75
    .line 76
    const/4 v1, 0x1

    .line 77
    new-instance v2, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    const-wide/16 v4, 0x0

    invoke-direct {v2, v4, v5}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    .line 78
    const/4 v3, 0x0

    .line 79
    new-instance v4, Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytes;

    int-to-long v6, p1

    invoke-direct {v4, v6, v7}, Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytes;-><init>(J)V

    .line 80
    new-instance v5, Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytes;

    int-to-long v6, p1

    invoke-direct {v5, v6, v7}, Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytes;-><init>(J)V

    move-object v0, p0

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    .line 83
    invoke-direct/range {v0 .. v8}, Lorg/fourthline/cling/support/model/PortMapping;-><init>(ZLorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytes;Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytes;Ljava/lang/String;Lorg/fourthline/cling/support/model/PortMapping$Protocol;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytes;Lorg/fourthline/cling/support/model/PortMapping$Protocol;)V
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 88
    .line 89
    const/4 v1, 0x1

    .line 90
    new-instance v2, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    const-wide/16 v6, 0x0

    invoke-direct {v2, v6, v7}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, v5

    move-object v7, p3

    move-object v8, v5

    .line 96
    invoke-direct/range {v0 .. v8}, Lorg/fourthline/cling/support/model/PortMapping;-><init>(ZLorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytes;Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytes;Ljava/lang/String;Lorg/fourthline/cling/support/model/PortMapping$Protocol;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/fourthline/cling/model/action/ActionArgumentValue",
            "<",
            "Lorg/fourthline/cling/model/meta/Service;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 49
    .line 50
    const-string v0, "NewEnabled"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/action/ActionArgumentValue;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 51
    const-string v0, "NewLeaseDuration"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/action/ActionArgumentValue;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    .line 52
    const-string v0, "NewRemoteHost"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/action/ActionArgumentValue;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 53
    const-string v0, "NewExternalPort"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/action/ActionArgumentValue;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytes;

    .line 54
    const-string v0, "NewInternalPort"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/action/ActionArgumentValue;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytes;

    .line 55
    const-string v0, "NewInternalClient"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/action/ActionArgumentValue;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 56
    const-string v0, "NewProtocol"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/action/ActionArgumentValue;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/action/ActionArgumentValue;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/fourthline/cling/support/model/PortMapping$Protocol;->valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/PortMapping$Protocol;

    move-result-object v7

    .line 57
    const-string v0, "NewPortMappingDescription"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/action/ActionArgumentValue;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/fourthline/cling/support/model/PortMapping;-><init>(ZLorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytes;Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytes;Ljava/lang/String;Lorg/fourthline/cling/support/model/PortMapping$Protocol;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public constructor <init>(ZLorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytes;Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytes;Ljava/lang/String;Lorg/fourthline/cling/support/model/PortMapping$Protocol;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-boolean p1, p0, Lorg/fourthline/cling/support/model/PortMapping;->enabled:Z

    .line 103
    iput-object p2, p0, Lorg/fourthline/cling/support/model/PortMapping;->leaseDurationSeconds:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    .line 104
    iput-object p3, p0, Lorg/fourthline/cling/support/model/PortMapping;->remoteHost:Ljava/lang/String;

    .line 105
    iput-object p4, p0, Lorg/fourthline/cling/support/model/PortMapping;->externalPort:Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytes;

    .line 106
    iput-object p5, p0, Lorg/fourthline/cling/support/model/PortMapping;->internalPort:Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytes;

    .line 107
    iput-object p6, p0, Lorg/fourthline/cling/support/model/PortMapping;->internalClient:Ljava/lang/String;

    .line 108
    iput-object p7, p0, Lorg/fourthline/cling/support/model/PortMapping;->protocol:Lorg/fourthline/cling/support/model/PortMapping$Protocol;

    .line 109
    iput-object p8, p0, Lorg/fourthline/cling/support/model/PortMapping;->description:Ljava/lang/String;

    .line 110
    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lorg/fourthline/cling/support/model/PortMapping;->description:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "-"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/fourthline/cling/support/model/PortMapping;->description:Ljava/lang/String;

    goto :goto_0
.end method

.method public getExternalPort()Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytes;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lorg/fourthline/cling/support/model/PortMapping;->externalPort:Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytes;

    return-object v0
.end method

.method public getInternalClient()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lorg/fourthline/cling/support/model/PortMapping;->internalClient:Ljava/lang/String;

    return-object v0
.end method

.method public getInternalPort()Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytes;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lorg/fourthline/cling/support/model/PortMapping;->internalPort:Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytes;

    return-object v0
.end method

.method public getLeaseDurationSeconds()Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lorg/fourthline/cling/support/model/PortMapping;->leaseDurationSeconds:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    return-object v0
.end method

.method public getProtocol()Lorg/fourthline/cling/support/model/PortMapping$Protocol;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lorg/fourthline/cling/support/model/PortMapping;->protocol:Lorg/fourthline/cling/support/model/PortMapping$Protocol;

    return-object v0
.end method

.method public getRemoteHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lorg/fourthline/cling/support/model/PortMapping;->remoteHost:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "-"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/fourthline/cling/support/model/PortMapping;->remoteHost:Ljava/lang/String;

    goto :goto_0
.end method

.method public hasDescription()Z
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lorg/fourthline/cling/support/model/PortMapping;->description:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRemoteHost()Z
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lorg/fourthline/cling/support/model/PortMapping;->remoteHost:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/fourthline/cling/support/model/PortMapping;->remoteHost:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lorg/fourthline/cling/support/model/PortMapping;->enabled:Z

    return v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 181
    if-eqz p1, :cond_0

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    :cond_1
    iput-object p1, p0, Lorg/fourthline/cling/support/model/PortMapping;->description:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .prologue
    .line 117
    iput-boolean p1, p0, Lorg/fourthline/cling/support/model/PortMapping;->enabled:Z

    .line 118
    return-void
.end method

.method public setExternalPort(Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytes;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lorg/fourthline/cling/support/model/PortMapping;->externalPort:Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytes;

    .line 146
    return-void
.end method

.method public setInternalClient(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lorg/fourthline/cling/support/model/PortMapping;->internalClient:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public setInternalPort(Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytes;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lorg/fourthline/cling/support/model/PortMapping;->internalPort:Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytes;

    .line 154
    return-void
.end method

.method public setLeaseDurationSeconds(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lorg/fourthline/cling/support/model/PortMapping;->leaseDurationSeconds:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    .line 126
    return-void
.end method

.method public setProtocol(Lorg/fourthline/cling/support/model/PortMapping$Protocol;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lorg/fourthline/cling/support/model/PortMapping;->protocol:Lorg/fourthline/cling/support/model/PortMapping$Protocol;

    .line 170
    return-void
.end method

.method public setRemoteHost(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 137
    if-eqz p1, :cond_0

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    :cond_1
    iput-object p1, p0, Lorg/fourthline/cling/support/model/PortMapping;->remoteHost:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") Protocol: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/PortMapping;->getProtocol()Lorg/fourthline/cling/support/model/PortMapping$Protocol;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/PortMapping;->getExternalPort()Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytes;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/PortMapping;->getInternalClient()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
