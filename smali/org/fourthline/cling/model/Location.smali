.class public Lorg/fourthline/cling/model/Location;
.super Ljava/lang/Object;
.source "Location.java"


# instance fields
.field protected networkAddress:Lorg/fourthline/cling/model/NetworkAddress;

.field protected path:Ljava/net/URI;


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/model/NetworkAddress;Ljava/net/URI;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/fourthline/cling/model/Location;->networkAddress:Lorg/fourthline/cling/model/NetworkAddress;

    .line 42
    iput-object p2, p0, Lorg/fourthline/cling/model/Location;->path:Ljava/net/URI;

    .line 43
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 55
    if-ne p0, p1, :cond_1

    .line 63
    :cond_0
    :goto_0
    return v0

    .line 56
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

    .line 58
    :cond_3
    check-cast p1, Lorg/fourthline/cling/model/Location;

    .line 60
    iget-object v2, p0, Lorg/fourthline/cling/model/Location;->networkAddress:Lorg/fourthline/cling/model/NetworkAddress;

    iget-object v3, p1, Lorg/fourthline/cling/model/Location;->networkAddress:Lorg/fourthline/cling/model/NetworkAddress;

    invoke-virtual {v2, v3}, Lorg/fourthline/cling/model/NetworkAddress;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    .line 61
    :cond_4
    iget-object v2, p0, Lorg/fourthline/cling/model/Location;->path:Ljava/net/URI;

    iget-object v3, p1, Lorg/fourthline/cling/model/Location;->path:Ljava/net/URI;

    invoke-virtual {v2, v3}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getNetworkAddress()Lorg/fourthline/cling/model/NetworkAddress;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lorg/fourthline/cling/model/Location;->networkAddress:Lorg/fourthline/cling/model/NetworkAddress;

    return-object v0
.end method

.method public getPath()Ljava/net/URI;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lorg/fourthline/cling/model/Location;->path:Ljava/net/URI;

    return-object v0
.end method

.method public getURL()Ljava/net/URL;
    .locals 3

    .prologue
    .line 77
    iget-object v0, p0, Lorg/fourthline/cling/model/Location;->networkAddress:Lorg/fourthline/cling/model/NetworkAddress;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/NetworkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    iget-object v1, p0, Lorg/fourthline/cling/model/Location;->networkAddress:Lorg/fourthline/cling/model/NetworkAddress;

    invoke-virtual {v1}, Lorg/fourthline/cling/model/NetworkAddress;->getPort()I

    move-result v1

    iget-object v2, p0, Lorg/fourthline/cling/model/Location;->path:Ljava/net/URI;

    invoke-static {v0, v1, v2}, Lorg/seamless/util/URIUtil;->createAbsoluteURL(Ljava/net/InetAddress;ILjava/net/URI;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lorg/fourthline/cling/model/Location;->networkAddress:Lorg/fourthline/cling/model/NetworkAddress;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/NetworkAddress;->hashCode()I

    move-result v0

    .line 69
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fourthline/cling/model/Location;->path:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 70
    return v0
.end method
