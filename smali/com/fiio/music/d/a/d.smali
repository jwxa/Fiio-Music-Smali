.class public final Lcom/fiio/music/d/a/d;
.super Ljava/lang/Object;
.source "DeviceItem.java"


# instance fields
.field private a:Lorg/fourthline/cling/model/types/UDN;

.field private b:Lorg/fourthline/cling/model/meta/Device;

.field private c:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method public varargs constructor <init>(Lorg/fourthline/cling/model/meta/Device;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/Device;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/DeviceIdentity;->getUdn()Lorg/fourthline/cling/model/types/UDN;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/d/a/d;->a:Lorg/fourthline/cling/model/types/UDN;

    .line 47
    iput-object p1, p0, Lcom/fiio/music/d/a/d;->b:Lorg/fourthline/cling/model/meta/Device;

    .line 48
    iput-object p2, p0, Lcom/fiio/music/d/a/d;->c:[Ljava/lang/String;

    .line 49
    return-void
.end method


# virtual methods
.method public final a()Lorg/fourthline/cling/model/meta/Device;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/fiio/music/d/a/d;->b:Lorg/fourthline/cling/model/meta/Device;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 80
    if-ne p0, p1, :cond_1

    .line 90
    :cond_0
    :goto_0
    return v0

    .line 82
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 83
    goto :goto_0

    .line 85
    :cond_3
    check-cast p1, Lcom/fiio/music/d/a/d;

    .line 87
    iget-object v2, p0, Lcom/fiio/music/d/a/d;->a:Lorg/fourthline/cling/model/types/UDN;

    iget-object v3, p1, Lcom/fiio/music/d/a/d;->a:Lorg/fourthline/cling/model/types/UDN;

    invoke-virtual {v2, v3}, Lorg/fourthline/cling/model/types/UDN;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 88
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/fiio/music/d/a/d;->a:Lorg/fourthline/cling/model/types/UDN;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/types/UDN;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/fiio/music/d/a/d;->b:Lorg/fourthline/cling/model/meta/Device;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/Device;->getDetails()Lorg/fourthline/cling/model/meta/DeviceDetails;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/DeviceDetails;->getFriendlyName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/fiio/music/d/a/d;->b:Lorg/fourthline/cling/model/meta/Device;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/Device;->getDetails()Lorg/fourthline/cling/model/meta/DeviceDetails;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/DeviceDetails;->getFriendlyName()Ljava/lang/String;

    move-result-object v0

    .line 109
    :goto_0
    iget-object v1, p0, Lcom/fiio/music/d/a/d;->b:Lorg/fourthline/cling/model/meta/Device;

    invoke-virtual {v1}, Lorg/fourthline/cling/model/meta/Device;->isFullyHydrated()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    return-object v0

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/d/a/d;->b:Lorg/fourthline/cling/model/meta/Device;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/Device;->getDisplayString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 109
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " *"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
