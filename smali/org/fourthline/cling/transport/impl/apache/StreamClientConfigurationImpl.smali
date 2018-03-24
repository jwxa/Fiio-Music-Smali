.class public Lorg/fourthline/cling/transport/impl/apache/StreamClientConfigurationImpl;
.super Lorg/fourthline/cling/transport/spi/AbstractStreamClientConfiguration;
.source "StreamClientConfigurationImpl.java"


# instance fields
.field protected contentCharset:Ljava/lang/String;

.field protected maxTotalConnections:I

.field protected maxTotalPerRoute:I


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lorg/fourthline/cling/transport/spi/AbstractStreamClientConfiguration;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 29
    const/16 v0, 0x400

    iput v0, p0, Lorg/fourthline/cling/transport/impl/apache/StreamClientConfigurationImpl;->maxTotalConnections:I

    .line 30
    const/16 v0, 0x64

    iput v0, p0, Lorg/fourthline/cling/transport/impl/apache/StreamClientConfigurationImpl;->maxTotalPerRoute:I

    .line 31
    const-string v0, "UTF-8"

    iput-object v0, p0, Lorg/fourthline/cling/transport/impl/apache/StreamClientConfigurationImpl;->contentCharset:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;I)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lorg/fourthline/cling/transport/spi/AbstractStreamClientConfiguration;-><init>(Ljava/util/concurrent/ExecutorService;I)V

    .line 29
    const/16 v0, 0x400

    iput v0, p0, Lorg/fourthline/cling/transport/impl/apache/StreamClientConfigurationImpl;->maxTotalConnections:I

    .line 30
    const/16 v0, 0x64

    iput v0, p0, Lorg/fourthline/cling/transport/impl/apache/StreamClientConfigurationImpl;->maxTotalPerRoute:I

    .line 31
    const-string v0, "UTF-8"

    iput-object v0, p0, Lorg/fourthline/cling/transport/impl/apache/StreamClientConfigurationImpl;->contentCharset:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public getContentCharset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/apache/StreamClientConfigurationImpl;->contentCharset:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxTotalConnections()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lorg/fourthline/cling/transport/impl/apache/StreamClientConfigurationImpl;->maxTotalConnections:I

    return v0
.end method

.method public getMaxTotalPerRoute()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lorg/fourthline/cling/transport/impl/apache/StreamClientConfigurationImpl;->maxTotalPerRoute:I

    return v0
.end method

.method public getRequestRetryCount()I
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public getSocketBufferSize()I
    .locals 1

    .prologue
    .line 82
    const/4 v0, -0x1

    return v0
.end method

.method public getStaleCheckingEnabled()Z
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public setContentCharset(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lorg/fourthline/cling/transport/impl/apache/StreamClientConfigurationImpl;->contentCharset:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setMaxTotalConnections(I)V
    .locals 0

    .prologue
    .line 49
    iput p1, p0, Lorg/fourthline/cling/transport/impl/apache/StreamClientConfigurationImpl;->maxTotalConnections:I

    .line 50
    return-void
.end method

.method public setMaxTotalPerRoute(I)V
    .locals 0

    .prologue
    .line 60
    iput p1, p0, Lorg/fourthline/cling/transport/impl/apache/StreamClientConfigurationImpl;->maxTotalPerRoute:I

    .line 61
    return-void
.end method
