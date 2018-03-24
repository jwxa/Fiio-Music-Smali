.class public Lorg/fourthline/cling/model/NetworkAddress;
.super Ljava/lang/Object;
.source "NetworkAddress.java"


# instance fields
.field protected address:Ljava/net/InetAddress;

.field protected hardwareAddress:[B

.field protected port:I


# direct methods
.method public constructor <init>(Ljava/net/InetAddress;I)V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/fourthline/cling/model/NetworkAddress;-><init>(Ljava/net/InetAddress;I[B)V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;I[B)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/fourthline/cling/model/NetworkAddress;->address:Ljava/net/InetAddress;

    .line 38
    iput p2, p0, Lorg/fourthline/cling/model/NetworkAddress;->port:I

    .line 39
    iput-object p3, p0, Lorg/fourthline/cling/model/NetworkAddress;->hardwareAddress:[B

    .line 40
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 56
    if-ne p0, p1, :cond_1

    .line 65
    :cond_0
    :goto_0
    return v0

    .line 57
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

    .line 59
    :cond_3
    check-cast p1, Lorg/fourthline/cling/model/NetworkAddress;

    .line 61
    iget v2, p0, Lorg/fourthline/cling/model/NetworkAddress;->port:I

    iget v3, p1, Lorg/fourthline/cling/model/NetworkAddress;->port:I

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    .line 62
    :cond_4
    iget-object v2, p0, Lorg/fourthline/cling/model/NetworkAddress;->address:Ljava/net/InetAddress;

    iget-object v3, p1, Lorg/fourthline/cling/model/NetworkAddress;->address:Ljava/net/InetAddress;

    invoke-virtual {v2, v3}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_0

    .line 63
    :cond_5
    iget-object v2, p0, Lorg/fourthline/cling/model/NetworkAddress;->hardwareAddress:[B

    iget-object v3, p1, Lorg/fourthline/cling/model/NetworkAddress;->hardwareAddress:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/fourthline/cling/model/NetworkAddress;->address:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getHardwareAddress()[B
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/fourthline/cling/model/NetworkAddress;->hardwareAddress:[B

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lorg/fourthline/cling/model/NetworkAddress;->port:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lorg/fourthline/cling/model/NetworkAddress;->address:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->hashCode()I

    move-result v0

    .line 71
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/fourthline/cling/model/NetworkAddress;->port:I

    add-int/2addr v0, v1

    .line 72
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lorg/fourthline/cling/model/NetworkAddress;->hardwareAddress:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/fourthline/cling/model/NetworkAddress;->hardwareAddress:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    :goto_0
    add-int/2addr v0, v1

    .line 73
    return v0

    .line 72
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
