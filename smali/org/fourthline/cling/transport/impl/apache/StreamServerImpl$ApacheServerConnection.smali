.class public Lorg/fourthline/cling/transport/impl/apache/StreamServerImpl$ApacheServerConnection;
.super Ljava/lang/Object;
.source "StreamServerImpl.java"

# interfaces
.implements Lorg/fourthline/cling/model/message/Connection;


# instance fields
.field protected connection:Lorg/apache/http/impl/DefaultHttpServerConnection;

.field protected socket:Ljava/net/Socket;

.field final synthetic this$0:Lorg/fourthline/cling/transport/impl/apache/StreamServerImpl;


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/transport/impl/apache/StreamServerImpl;Ljava/net/Socket;Lorg/apache/http/impl/DefaultHttpServerConnection;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lorg/fourthline/cling/transport/impl/apache/StreamServerImpl$ApacheServerConnection;->this$0:Lorg/fourthline/cling/transport/impl/apache/StreamServerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    iput-object p2, p0, Lorg/fourthline/cling/transport/impl/apache/StreamServerImpl$ApacheServerConnection;->socket:Ljava/net/Socket;

    .line 207
    iput-object p3, p0, Lorg/fourthline/cling/transport/impl/apache/StreamServerImpl$ApacheServerConnection;->connection:Lorg/apache/http/impl/DefaultHttpServerConnection;

    .line 208
    return-void
.end method


# virtual methods
.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/apache/StreamServerImpl$ApacheServerConnection;->connection:Lorg/apache/http/impl/DefaultHttpServerConnection;

    invoke-virtual {v0}, Lorg/apache/http/impl/DefaultHttpServerConnection;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/apache/StreamServerImpl$ApacheServerConnection;->connection:Lorg/apache/http/impl/DefaultHttpServerConnection;

    invoke-virtual {v0}, Lorg/apache/http/impl/DefaultHttpServerConnection;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public isOpen()Z
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/apache/StreamServerImpl$ApacheServerConnection;->this$0:Lorg/fourthline/cling/transport/impl/apache/StreamServerImpl;

    iget-object v1, p0, Lorg/fourthline/cling/transport/impl/apache/StreamServerImpl$ApacheServerConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/transport/impl/apache/StreamServerImpl;->isConnectionOpen(Ljava/net/Socket;)Z

    move-result v0

    return v0
.end method
