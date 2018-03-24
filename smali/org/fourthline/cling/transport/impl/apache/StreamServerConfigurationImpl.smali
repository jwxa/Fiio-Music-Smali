.class public Lorg/fourthline/cling/transport/impl/apache/StreamServerConfigurationImpl;
.super Ljava/lang/Object;
.source "StreamServerConfigurationImpl.java"

# interfaces
.implements Lorg/fourthline/cling/transport/spi/StreamServerConfiguration;


# instance fields
.field private bufferSizeKilobytes:I

.field private dataWaitTimeoutSeconds:I

.field private listenPort:I

.field private staleConnectionCheck:Z

.field private tcpConnectionBacklog:I

.field private tcpNoDelay:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput v1, p0, Lorg/fourthline/cling/transport/impl/apache/StreamServerConfigurationImpl;->listenPort:I

    .line 28
    const/4 v0, 0x5

    iput v0, p0, Lorg/fourthline/cling/transport/impl/apache/StreamServerConfigurationImpl;->dataWaitTimeoutSeconds:I

    .line 29
    const/16 v0, 0x8

    iput v0, p0, Lorg/fourthline/cling/transport/impl/apache/StreamServerConfigurationImpl;->bufferSizeKilobytes:I

    .line 31
    iput-boolean v2, p0, Lorg/fourthline/cling/transport/impl/apache/StreamServerConfigurationImpl;->staleConnectionCheck:Z

    .line 32
    iput-boolean v2, p0, Lorg/fourthline/cling/transport/impl/apache/StreamServerConfigurationImpl;->tcpNoDelay:Z

    .line 33
    iput v1, p0, Lorg/fourthline/cling/transport/impl/apache/StreamServerConfigurationImpl;->tcpConnectionBacklog:I

    .line 39
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput v1, p0, Lorg/fourthline/cling/transport/impl/apache/StreamServerConfigurationImpl;->listenPort:I

    .line 28
    const/4 v0, 0x5

    iput v0, p0, Lorg/fourthline/cling/transport/impl/apache/StreamServerConfigurationImpl;->dataWaitTimeoutSeconds:I

    .line 29
    const/16 v0, 0x8

    iput v0, p0, Lorg/fourthline/cling/transport/impl/apache/StreamServerConfigurationImpl;->bufferSizeKilobytes:I

    .line 31
    iput-boolean v2, p0, Lorg/fourthline/cling/transport/impl/apache/StreamServerConfigurationImpl;->staleConnectionCheck:Z

    .line 32
    iput-boolean v2, p0, Lorg/fourthline/cling/transport/impl/apache/StreamServerConfigurationImpl;->tcpNoDelay:Z

    .line 33
    iput v1, p0, Lorg/fourthline/cling/transport/impl/apache/StreamServerConfigurationImpl;->tcpConnectionBacklog:I

    .line 42
    iput p1, p0, Lorg/fourthline/cling/transport/impl/apache/StreamServerConfigurationImpl;->listenPort:I

    .line 43
    return-void
.end method


# virtual methods
.method public getBufferSizeKilobytes()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lorg/fourthline/cling/transport/impl/apache/StreamServerConfigurationImpl;->bufferSizeKilobytes:I

    return v0
.end method

.method public getDataWaitTimeoutSeconds()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lorg/fourthline/cling/transport/impl/apache/StreamServerConfigurationImpl;->dataWaitTimeoutSeconds:I

    return v0
.end method

.method public getListenPort()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lorg/fourthline/cling/transport/impl/apache/StreamServerConfigurationImpl;->listenPort:I

    return v0
.end method

.method public getTcpConnectionBacklog()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lorg/fourthline/cling/transport/impl/apache/StreamServerConfigurationImpl;->tcpConnectionBacklog:I

    return v0
.end method

.method public isStaleConnectionCheck()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lorg/fourthline/cling/transport/impl/apache/StreamServerConfigurationImpl;->staleConnectionCheck:Z

    return v0
.end method

.method public isTcpNoDelay()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lorg/fourthline/cling/transport/impl/apache/StreamServerConfigurationImpl;->tcpNoDelay:Z

    return v0
.end method

.method public setBufferSizeKilobytes(I)V
    .locals 0

    .prologue
    .line 74
    iput p1, p0, Lorg/fourthline/cling/transport/impl/apache/StreamServerConfigurationImpl;->bufferSizeKilobytes:I

    .line 75
    return-void
.end method

.method public setDataWaitTimeoutSeconds(I)V
    .locals 0

    .prologue
    .line 62
    iput p1, p0, Lorg/fourthline/cling/transport/impl/apache/StreamServerConfigurationImpl;->dataWaitTimeoutSeconds:I

    .line 63
    return-void
.end method

.method public setListenPort(I)V
    .locals 0

    .prologue
    .line 50
    iput p1, p0, Lorg/fourthline/cling/transport/impl/apache/StreamServerConfigurationImpl;->listenPort:I

    .line 51
    return-void
.end method

.method public setStaleConnectionCheck(Z)V
    .locals 0

    .prologue
    .line 88
    iput-boolean p1, p0, Lorg/fourthline/cling/transport/impl/apache/StreamServerConfigurationImpl;->staleConnectionCheck:Z

    .line 89
    return-void
.end method

.method public setTcpConnectionBacklog(I)V
    .locals 0

    .prologue
    .line 112
    iput p1, p0, Lorg/fourthline/cling/transport/impl/apache/StreamServerConfigurationImpl;->tcpConnectionBacklog:I

    .line 113
    return-void
.end method

.method public setTcpNoDelay(Z)V
    .locals 0

    .prologue
    .line 99
    iput-boolean p1, p0, Lorg/fourthline/cling/transport/impl/apache/StreamServerConfigurationImpl;->tcpNoDelay:Z

    .line 100
    return-void
.end method
