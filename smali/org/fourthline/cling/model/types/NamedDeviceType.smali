.class public Lorg/fourthline/cling/model/types/NamedDeviceType;
.super Ljava/lang/Object;
.source "NamedDeviceType.java"


# instance fields
.field private deviceType:Lorg/fourthline/cling/model/types/DeviceType;

.field private udn:Lorg/fourthline/cling/model/types/UDN;


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/model/types/UDN;Lorg/fourthline/cling/model/types/DeviceType;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/fourthline/cling/model/types/NamedDeviceType;->udn:Lorg/fourthline/cling/model/types/UDN;

    .line 31
    iput-object p2, p0, Lorg/fourthline/cling/model/types/NamedDeviceType;->deviceType:Lorg/fourthline/cling/model/types/DeviceType;

    .line 32
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fourthline/cling/model/types/NamedDeviceType;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 43
    const-string v0, "::"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 44
    array-length v1, v0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 45
    new-instance v0, Lorg/fourthline/cling/model/types/InvalidValueException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t parse UDN::DeviceType from: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/fourthline/cling/model/types/InvalidValueException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    aget-object v1, v0, v1

    invoke-static {v1}, Lorg/fourthline/cling/model/types/UDN;->valueOf(Ljava/lang/String;)Lorg/fourthline/cling/model/types/UDN;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 55
    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {v0}, Lorg/fourthline/cling/model/types/DeviceType;->valueOf(Ljava/lang/String;)Lorg/fourthline/cling/model/types/DeviceType;

    move-result-object v0

    .line 56
    new-instance v2, Lorg/fourthline/cling/model/types/NamedDeviceType;

    invoke-direct {v2, v1, v0}, Lorg/fourthline/cling/model/types/NamedDeviceType;-><init>(Lorg/fourthline/cling/model/types/UDN;Lorg/fourthline/cling/model/types/DeviceType;)V

    return-object v2

    .line 52
    :catch_0
    move-exception v1

    new-instance v1, Lorg/fourthline/cling/model/types/InvalidValueException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t parse UDN: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v0, v0, v4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/fourthline/cling/model/types/InvalidValueException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 66
    if-ne p0, p1, :cond_1

    .line 74
    :cond_0
    :goto_0
    return v0

    .line 67
    :cond_1
    if-eqz p1, :cond_2

    instance-of v2, p1, Lorg/fourthline/cling/model/types/NamedDeviceType;

    if-nez v2, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 69
    :cond_3
    check-cast p1, Lorg/fourthline/cling/model/types/NamedDeviceType;

    .line 71
    iget-object v2, p0, Lorg/fourthline/cling/model/types/NamedDeviceType;->deviceType:Lorg/fourthline/cling/model/types/DeviceType;

    iget-object v3, p1, Lorg/fourthline/cling/model/types/NamedDeviceType;->deviceType:Lorg/fourthline/cling/model/types/DeviceType;

    invoke-virtual {v2, v3}, Lorg/fourthline/cling/model/types/DeviceType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    .line 72
    :cond_4
    iget-object v2, p0, Lorg/fourthline/cling/model/types/NamedDeviceType;->udn:Lorg/fourthline/cling/model/types/UDN;

    iget-object v3, p1, Lorg/fourthline/cling/model/types/NamedDeviceType;->udn:Lorg/fourthline/cling/model/types/UDN;

    invoke-virtual {v2, v3}, Lorg/fourthline/cling/model/types/UDN;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getDeviceType()Lorg/fourthline/cling/model/types/DeviceType;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lorg/fourthline/cling/model/types/NamedDeviceType;->deviceType:Lorg/fourthline/cling/model/types/DeviceType;

    return-object v0
.end method

.method public getUdn()Lorg/fourthline/cling/model/types/UDN;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lorg/fourthline/cling/model/types/NamedDeviceType;->udn:Lorg/fourthline/cling/model/types/UDN;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lorg/fourthline/cling/model/types/NamedDeviceType;->udn:Lorg/fourthline/cling/model/types/UDN;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/types/UDN;->hashCode()I

    move-result v0

    .line 80
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fourthline/cling/model/types/NamedDeviceType;->deviceType:Lorg/fourthline/cling/model/types/DeviceType;

    invoke-virtual {v1}, Lorg/fourthline/cling/model/types/DeviceType;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 81
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/model/types/NamedDeviceType;->getUdn()Lorg/fourthline/cling/model/types/UDN;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/model/types/UDN;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/fourthline/cling/model/types/NamedDeviceType;->getDeviceType()Lorg/fourthline/cling/model/types/DeviceType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/model/types/DeviceType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
