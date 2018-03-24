.class final Lorg/fourthline/cling/transport/impl/b;
.super Lorg/fourthline/cling/transport/impl/AsyncServletUpnpStream;
.source "AsyncServletStreamServerImpl.java"


# instance fields
.field final synthetic a:Lorg/fourthline/cling/transport/impl/a;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/transport/impl/a;Lorg/fourthline/cling/protocol/ProtocolFactory;Lc/c/a;Lc/c/c/c;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/fourthline/cling/transport/impl/b;->a:Lorg/fourthline/cling/transport/impl/a;

    .line 101
    invoke-direct {p0, p2, p3, p4}, Lorg/fourthline/cling/transport/impl/AsyncServletUpnpStream;-><init>(Lorg/fourthline/cling/protocol/ProtocolFactory;Lc/c/a;Lc/c/c/c;)V

    return-void
.end method


# virtual methods
.method protected final createConnection()Lorg/fourthline/cling/model/message/Connection;
    .locals 3

    .prologue
    .line 104
    new-instance v0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl$AsyncServletConnection;

    iget-object v1, p0, Lorg/fourthline/cling/transport/impl/b;->a:Lorg/fourthline/cling/transport/impl/a;

    invoke-static {v1}, Lorg/fourthline/cling/transport/impl/a;->a(Lorg/fourthline/cling/transport/impl/a;)Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;

    move-result-object v1

    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/b;->getRequest()Lc/c/c/c;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl$AsyncServletConnection;-><init>(Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;Lc/c/c/c;)V

    return-object v0
.end method
