.class final Lorg/fourthline/cling/transport/impl/e;
.super Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;
.source "StreamServerImpl.java"


# instance fields
.field final synthetic a:Lorg/fourthline/cling/transport/impl/StreamServerImpl$RequestHttpHandler;

.field private final synthetic b:Lcom/d/a/a/j;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/transport/impl/StreamServerImpl$RequestHttpHandler;Lorg/fourthline/cling/protocol/ProtocolFactory;Lcom/d/a/a/j;Lcom/d/a/a/j;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/fourthline/cling/transport/impl/e;->a:Lorg/fourthline/cling/transport/impl/StreamServerImpl$RequestHttpHandler;

    iput-object p4, p0, Lorg/fourthline/cling/transport/impl/e;->b:Lcom/d/a/a/j;

    .line 106
    invoke-direct {p0, p2, p3}, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;-><init>(Lorg/fourthline/cling/protocol/ProtocolFactory;Lcom/d/a/a/j;)V

    return-void
.end method


# virtual methods
.method protected final createConnection()Lorg/fourthline/cling/model/message/Connection;
    .locals 3

    .prologue
    .line 109
    new-instance v0, Lorg/fourthline/cling/transport/impl/StreamServerImpl$HttpServerConnection;

    iget-object v1, p0, Lorg/fourthline/cling/transport/impl/e;->a:Lorg/fourthline/cling/transport/impl/StreamServerImpl$RequestHttpHandler;

    invoke-static {v1}, Lorg/fourthline/cling/transport/impl/StreamServerImpl$RequestHttpHandler;->access$0(Lorg/fourthline/cling/transport/impl/StreamServerImpl$RequestHttpHandler;)Lorg/fourthline/cling/transport/impl/StreamServerImpl;

    move-result-object v1

    iget-object v2, p0, Lorg/fourthline/cling/transport/impl/e;->b:Lcom/d/a/a/j;

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/transport/impl/StreamServerImpl$HttpServerConnection;-><init>(Lorg/fourthline/cling/transport/impl/StreamServerImpl;Lcom/d/a/a/j;)V

    return-object v0
.end method
