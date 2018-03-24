.class public Lorg/fourthline/cling/model/message/header/UDAServiceTypeHeader;
.super Lorg/fourthline/cling/model/message/header/ServiceTypeHeader;
.source "UDAServiceTypeHeader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lorg/fourthline/cling/model/message/header/ServiceTypeHeader;-><init>()V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lorg/fourthline/cling/model/message/header/ServiceTypeHeader;-><init>(Ljava/net/URI;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/types/UDAServiceType;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lorg/fourthline/cling/model/message/header/ServiceTypeHeader;-><init>(Lorg/fourthline/cling/model/types/ServiceType;)V

    .line 36
    return-void
.end method


# virtual methods
.method public setString(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 41
    :try_start_0
    invoke-static {p1}, Lorg/fourthline/cling/model/types/UDAServiceType;->valueOf(Ljava/lang/String;)Lorg/fourthline/cling/model/types/UDAServiceType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/model/message/header/UDAServiceTypeHeader;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    return-void

    :catch_0
    move-exception v0

    .line 43
    new-instance v1, Lorg/fourthline/cling/model/message/header/InvalidHeaderException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid UDA service type header value, "

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
