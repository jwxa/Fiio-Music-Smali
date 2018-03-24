.class public Lorg/fourthline/cling/transport/impl/StreamClientConfigurationImpl;
.super Lorg/fourthline/cling/transport/spi/AbstractStreamClientConfiguration;
.source "StreamClientConfigurationImpl.java"


# instance fields
.field private usePersistentConnections:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lorg/fourthline/cling/transport/spi/AbstractStreamClientConfiguration;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/fourthline/cling/transport/impl/StreamClientConfigurationImpl;->usePersistentConnections:Z

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;I)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lorg/fourthline/cling/transport/spi/AbstractStreamClientConfiguration;-><init>(Ljava/util/concurrent/ExecutorService;I)V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/fourthline/cling/transport/impl/StreamClientConfigurationImpl;->usePersistentConnections:Z

    .line 37
    return-void
.end method


# virtual methods
.method public isUsePersistentConnections()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lorg/fourthline/cling/transport/impl/StreamClientConfigurationImpl;->usePersistentConnections:Z

    return v0
.end method

.method public setUsePersistentConnections(Z)V
    .locals 0

    .prologue
    .line 47
    iput-boolean p1, p0, Lorg/fourthline/cling/transport/impl/StreamClientConfigurationImpl;->usePersistentConnections:Z

    .line 48
    return-void
.end method
