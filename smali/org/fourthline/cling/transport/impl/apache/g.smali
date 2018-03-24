.class final Lorg/fourthline/cling/transport/impl/apache/g;
.super Lorg/fourthline/cling/transport/impl/apache/HttpServerConnectionUpnpStream;
.source "StreamServerImpl.java"


# instance fields
.field final synthetic a:Lorg/fourthline/cling/transport/impl/apache/StreamServerImpl;

.field private final synthetic b:Ljava/net/Socket;

.field private final synthetic c:Lorg/apache/http/impl/DefaultHttpServerConnection;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/transport/impl/apache/StreamServerImpl;Lorg/fourthline/cling/protocol/ProtocolFactory;Lorg/apache/http/HttpServerConnection;Lorg/apache/http/params/HttpParams;Ljava/net/Socket;Lorg/apache/http/impl/DefaultHttpServerConnection;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/fourthline/cling/transport/impl/apache/g;->a:Lorg/fourthline/cling/transport/impl/apache/StreamServerImpl;

    iput-object p5, p0, Lorg/fourthline/cling/transport/impl/apache/g;->b:Ljava/net/Socket;

    iput-object p6, p0, Lorg/fourthline/cling/transport/impl/apache/g;->c:Lorg/apache/http/impl/DefaultHttpServerConnection;

    .line 129
    invoke-direct {p0, p2, p3, p4}, Lorg/fourthline/cling/transport/impl/apache/HttpServerConnectionUpnpStream;-><init>(Lorg/fourthline/cling/protocol/ProtocolFactory;Lorg/apache/http/HttpServerConnection;Lorg/apache/http/params/HttpParams;)V

    return-void
.end method


# virtual methods
.method protected final createConnection()Lorg/fourthline/cling/model/message/Connection;
    .locals 4

    .prologue
    .line 136
    new-instance v0, Lorg/fourthline/cling/transport/impl/apache/StreamServerImpl$ApacheServerConnection;

    iget-object v1, p0, Lorg/fourthline/cling/transport/impl/apache/g;->a:Lorg/fourthline/cling/transport/impl/apache/StreamServerImpl;

    .line 137
    iget-object v2, p0, Lorg/fourthline/cling/transport/impl/apache/g;->b:Ljava/net/Socket;

    iget-object v3, p0, Lorg/fourthline/cling/transport/impl/apache/g;->c:Lorg/apache/http/impl/DefaultHttpServerConnection;

    .line 136
    invoke-direct {v0, v1, v2, v3}, Lorg/fourthline/cling/transport/impl/apache/StreamServerImpl$ApacheServerConnection;-><init>(Lorg/fourthline/cling/transport/impl/apache/StreamServerImpl;Ljava/net/Socket;Lorg/apache/http/impl/DefaultHttpServerConnection;)V

    return-object v0
.end method
