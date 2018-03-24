.class public Lorg/apache/http/conn/HttpInetSocketAddress;
.super Ljava/net/InetSocketAddress;
.source "HttpInetSocketAddress.java"


# static fields
.field private static final serialVersionUID:J = -0x5c4c0a13728d6ef5L


# instance fields
.field private final httphost:Lorg/apache/http/HttpHost;


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpHost;Ljava/net/InetAddress;I)V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 48
    if-nez p1, :cond_0

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP host may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    iput-object p1, p0, Lorg/apache/http/conn/HttpInetSocketAddress;->httphost:Lorg/apache/http/HttpHost;

    .line 52
    return-void
.end method


# virtual methods
.method public getHttpHost()Lorg/apache/http/HttpHost;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lorg/apache/http/conn/HttpInetSocketAddress;->httphost:Lorg/apache/http/HttpHost;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/http/conn/HttpInetSocketAddress;->httphost:Lorg/apache/http/HttpHost;

    invoke-virtual {v1}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/http/conn/HttpInetSocketAddress;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
