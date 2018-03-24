.class public Lorg/fourthline/cling/model/types/HostPort;
.super Ljava/lang/Object;
.source "HostPort.java"


# instance fields
.field private host:Ljava/lang/String;

.field private port:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/fourthline/cling/model/types/HostPort;->host:Ljava/lang/String;

    .line 33
    iput p2, p0, Lorg/fourthline/cling/model/types/HostPort;->port:I

    .line 34
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 54
    if-ne p0, p1, :cond_1

    .line 62
    :cond_0
    :goto_0
    return v0

    .line 55
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 57
    :cond_3
    check-cast p1, Lorg/fourthline/cling/model/types/HostPort;

    .line 59
    iget v2, p0, Lorg/fourthline/cling/model/types/HostPort;->port:I

    iget v3, p1, Lorg/fourthline/cling/model/types/HostPort;->port:I

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    .line 60
    :cond_4
    iget-object v2, p0, Lorg/fourthline/cling/model/types/HostPort;->host:Ljava/lang/String;

    iget-object v3, p1, Lorg/fourthline/cling/model/types/HostPort;->host:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lorg/fourthline/cling/model/types/HostPort;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lorg/fourthline/cling/model/types/HostPort;->port:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lorg/fourthline/cling/model/types/HostPort;->host:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 68
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/fourthline/cling/model/types/HostPort;->port:I

    add-int/2addr v0, v1

    .line 69
    return v0
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lorg/fourthline/cling/model/types/HostPort;->host:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setPort(I)V
    .locals 0

    .prologue
    .line 49
    iput p1, p0, Lorg/fourthline/cling/model/types/HostPort;->port:I

    .line 50
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/fourthline/cling/model/types/HostPort;->host:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/fourthline/cling/model/types/HostPort;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
