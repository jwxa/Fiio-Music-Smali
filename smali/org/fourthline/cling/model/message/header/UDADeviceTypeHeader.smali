.class public Lorg/fourthline/cling/model/message/header/UDADeviceTypeHeader;
.super Lorg/fourthline/cling/model/message/header/DeviceTypeHeader;
.source "UDADeviceTypeHeader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/fourthline/cling/model/message/header/DeviceTypeHeader;-><init>()V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lorg/fourthline/cling/model/message/header/DeviceTypeHeader;-><init>(Ljava/net/URI;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/types/DeviceType;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lorg/fourthline/cling/model/message/header/DeviceTypeHeader;-><init>(Lorg/fourthline/cling/model/types/DeviceType;)V

    .line 37
    return-void
.end method


# virtual methods
.method public setString(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 42
    :try_start_0
    invoke-static {p1}, Lorg/fourthline/cling/model/types/UDADeviceType;->valueOf(Ljava/lang/String;)Lorg/fourthline/cling/model/types/UDADeviceType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/model/message/header/UDADeviceTypeHeader;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    return-void

    :catch_0
    move-exception v0

    .line 44
    new-instance v1, Lorg/fourthline/cling/model/message/header/InvalidHeaderException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid UDA device type header value, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/fourthline/cling/model/message/header/InvalidHeaderException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
