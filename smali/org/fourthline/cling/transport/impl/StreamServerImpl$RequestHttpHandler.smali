.class public Lorg/fourthline/cling/transport/impl/StreamServerImpl$RequestHttpHandler;
.super Ljava/lang/Object;
.source "StreamServerImpl.java"

# interfaces
.implements Lcom/d/a/a/k;


# instance fields
.field private final router:Lorg/fourthline/cling/transport/Router;

.field final synthetic this$0:Lorg/fourthline/cling/transport/impl/StreamServerImpl;


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/transport/impl/StreamServerImpl;Lorg/fourthline/cling/transport/Router;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lorg/fourthline/cling/transport/impl/StreamServerImpl$RequestHttpHandler;->this$0:Lorg/fourthline/cling/transport/impl/StreamServerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p2, p0, Lorg/fourthline/cling/transport/impl/StreamServerImpl$RequestHttpHandler;->router:Lorg/fourthline/cling/transport/Router;

    .line 98
    return-void
.end method

.method static synthetic access$0(Lorg/fourthline/cling/transport/impl/StreamServerImpl$RequestHttpHandler;)Lorg/fourthline/cling/transport/impl/StreamServerImpl;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/StreamServerImpl$RequestHttpHandler;->this$0:Lorg/fourthline/cling/transport/impl/StreamServerImpl;

    return-object v0
.end method


# virtual methods
.method public handle(Lcom/d/a/a/j;)V
    .locals 3

    .prologue
    .line 104
    invoke-static {}, Lorg/fourthline/cling/transport/impl/StreamServerImpl;->access$1()Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received HTTP exchange: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/d/a/a/j;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/d/a/a/j;->c()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/StreamServerImpl$RequestHttpHandler;->router:Lorg/fourthline/cling/transport/Router;

    .line 106
    new-instance v1, Lorg/fourthline/cling/transport/impl/e;

    iget-object v2, p0, Lorg/fourthline/cling/transport/impl/StreamServerImpl$RequestHttpHandler;->router:Lorg/fourthline/cling/transport/Router;

    invoke-interface {v2}, Lorg/fourthline/cling/transport/Router;->getProtocolFactory()Lorg/fourthline/cling/protocol/ProtocolFactory;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1, p1}, Lorg/fourthline/cling/transport/impl/e;-><init>(Lorg/fourthline/cling/transport/impl/StreamServerImpl$RequestHttpHandler;Lorg/fourthline/cling/protocol/ProtocolFactory;Lcom/d/a/a/j;Lcom/d/a/a/j;)V

    .line 105
    invoke-interface {v0, v1}, Lorg/fourthline/cling/transport/Router;->received(Lorg/fourthline/cling/transport/spi/UpnpStream;)V

    .line 113
    return-void
.end method
