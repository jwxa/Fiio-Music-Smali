.class final Lorg/fourthline/cling/transport/impl/a;
.super Lc/c/c/b;
.source "AsyncServletStreamServerImpl.java"


# instance fields
.field final synthetic a:Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;

.field private final synthetic b:Lorg/fourthline/cling/transport/Router;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;Lorg/fourthline/cling/transport/Router;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/fourthline/cling/transport/impl/a;->a:Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;

    iput-object p2, p0, Lorg/fourthline/cling/transport/impl/a;->b:Lorg/fourthline/cling/transport/Router;

    .line 89
    invoke-direct {p0}, Lc/c/c/b;-><init>()V

    return-void
.end method

.method static synthetic a(Lorg/fourthline/cling/transport/impl/a;)Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/a;->a:Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;

    return-object v0
.end method


# virtual methods
.method protected final service(Lc/c/c/c;Lc/c/c/e;)V
    .locals 4

    .prologue
    .line 92
    invoke-static {}, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;->access$1()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-static {}, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;->access$1()Ljava/util/logging/Logger;

    move-result-object v0

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Handling Servlet request asynchronously: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 93
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 97
    :cond_0
    invoke-interface {p1}, Lc/c/c/c;->startAsync()Lc/c/a;

    move-result-object v0

    .line 98
    iget-object v1, p0, Lorg/fourthline/cling/transport/impl/a;->a:Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;

    invoke-virtual {v1}, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;->getConfiguration()Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;->getAsyncTimeoutSeconds()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    invoke-interface {v0, v2, v3}, Lc/c/a;->setTimeout(J)V

    .line 101
    new-instance v1, Lorg/fourthline/cling/transport/impl/b;

    iget-object v2, p0, Lorg/fourthline/cling/transport/impl/a;->b:Lorg/fourthline/cling/transport/Router;

    invoke-interface {v2}, Lorg/fourthline/cling/transport/Router;->getProtocolFactory()Lorg/fourthline/cling/protocol/ProtocolFactory;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0, p1}, Lorg/fourthline/cling/transport/impl/b;-><init>(Lorg/fourthline/cling/transport/impl/a;Lorg/fourthline/cling/protocol/ProtocolFactory;Lc/c/a;Lc/c/c/c;)V

    .line 108
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/a;->b:Lorg/fourthline/cling/transport/Router;

    invoke-interface {v0, v1}, Lorg/fourthline/cling/transport/Router;->received(Lorg/fourthline/cling/transport/spi/UpnpStream;)V

    .line 109
    return-void
.end method
