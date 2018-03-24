.class public Lorg/fourthline/cling/model/meta/DeviceIdentity;
.super Ljava/lang/Object;
.source "DeviceIdentity.java"


# instance fields
.field private final maxAgeSeconds:Ljava/lang/Integer;

.field private final udn:Lorg/fourthline/cling/model/types/UDN;


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/model/types/UDN;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/fourthline/cling/model/meta/DeviceIdentity;->udn:Lorg/fourthline/cling/model/types/UDN;

    .line 38
    const/16 v0, 0x708

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/model/meta/DeviceIdentity;->maxAgeSeconds:Ljava/lang/Integer;

    .line 39
    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/types/UDN;Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/fourthline/cling/model/meta/DeviceIdentity;->udn:Lorg/fourthline/cling/model/types/UDN;

    .line 43
    iput-object p2, p0, Lorg/fourthline/cling/model/meta/DeviceIdentity;->maxAgeSeconds:Ljava/lang/Integer;

    .line 44
    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/types/UDN;Lorg/fourthline/cling/model/meta/DeviceIdentity;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/fourthline/cling/model/meta/DeviceIdentity;->udn:Lorg/fourthline/cling/model/types/UDN;

    .line 33
    invoke-virtual {p2}, Lorg/fourthline/cling/model/meta/DeviceIdentity;->getMaxAgeSeconds()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/model/meta/DeviceIdentity;->maxAgeSeconds:Ljava/lang/Integer;

    .line 34
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

    .line 63
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
    check-cast p1, Lorg/fourthline/cling/model/meta/DeviceIdentity;

    .line 61
    iget-object v2, p0, Lorg/fourthline/cling/model/meta/DeviceIdentity;->udn:Lorg/fourthline/cling/model/types/UDN;

    iget-object v3, p1, Lorg/fourthline/cling/model/meta/DeviceIdentity;->udn:Lorg/fourthline/cling/model/types/UDN;

    invoke-virtual {v2, v3}, Lorg/fourthline/cling/model/types/UDN;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getMaxAgeSeconds()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/DeviceIdentity;->maxAgeSeconds:Ljava/lang/Integer;

    return-object v0
.end method

.method public getUdn()Lorg/fourthline/cling/model/types/UDN;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/DeviceIdentity;->udn:Lorg/fourthline/cling/model/types/UDN;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/DeviceIdentity;->udn:Lorg/fourthline/cling/model/types/UDN;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/types/UDN;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") UDN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/DeviceIdentity;->getUdn()Lorg/fourthline/cling/model/types/UDN;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
