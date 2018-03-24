.class public Lorg/fourthline/cling/transport/impl/StreamServerImpl$HttpServerConnection;
.super Ljava/lang/Object;
.source "StreamServerImpl.java"

# interfaces
.implements Lorg/fourthline/cling/model/message/Connection;


# instance fields
.field protected exchange:Lcom/d/a/a/j;

.field final synthetic this$0:Lorg/fourthline/cling/transport/impl/StreamServerImpl;


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/transport/impl/StreamServerImpl;Lcom/d/a/a/j;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lorg/fourthline/cling/transport/impl/StreamServerImpl$HttpServerConnection;->this$0:Lorg/fourthline/cling/transport/impl/StreamServerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p2, p0, Lorg/fourthline/cling/transport/impl/StreamServerImpl$HttpServerConnection;->exchange:Lcom/d/a/a/j;

    .line 133
    return-void
.end method


# virtual methods
.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/StreamServerImpl$HttpServerConnection;->exchange:Lcom/d/a/a/j;

    invoke-virtual {v0}, Lcom/d/a/a/j;->h()Ljava/net/InetSocketAddress;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/StreamServerImpl$HttpServerConnection;->exchange:Lcom/d/a/a/j;

    invoke-virtual {v0}, Lcom/d/a/a/j;->h()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    :goto_0
    return-object v0

    .line 151
    :cond_0
    const/4 v0, 0x0

    .line 149
    goto :goto_0
.end method

.method public getRemoteAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/StreamServerImpl$HttpServerConnection;->exchange:Lcom/d/a/a/j;

    invoke-virtual {v0}, Lcom/d/a/a/j;->g()Ljava/net/InetSocketAddress;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/StreamServerImpl$HttpServerConnection;->exchange:Lcom/d/a/a/j;

    invoke-virtual {v0}, Lcom/d/a/a/j;->g()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    :goto_0
    return-object v0

    .line 144
    :cond_0
    const/4 v0, 0x0

    .line 142
    goto :goto_0
.end method

.method public isOpen()Z
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/StreamServerImpl$HttpServerConnection;->this$0:Lorg/fourthline/cling/transport/impl/StreamServerImpl;

    iget-object v1, p0, Lorg/fourthline/cling/transport/impl/StreamServerImpl$HttpServerConnection;->exchange:Lcom/d/a/a/j;

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/transport/impl/StreamServerImpl;->isConnectionOpen(Lcom/d/a/a/j;)Z

    move-result v0

    return v0
.end method
