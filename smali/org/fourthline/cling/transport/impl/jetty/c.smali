.class final Lorg/fourthline/cling/transport/impl/jetty/c;
.super Ljava/lang/Object;
.source "StreamClientImpl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lorg/fourthline/cling/model/message/StreamResponseMessage;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl;

.field private final synthetic b:Lorg/fourthline/cling/model/message/StreamRequestMessage;

.field private final synthetic c:Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl$HttpContentExchange;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl;Lorg/fourthline/cling/model/message/StreamRequestMessage;Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl$HttpContentExchange;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/fourthline/cling/transport/impl/jetty/c;->a:Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl;

    iput-object p2, p0, Lorg/fourthline/cling/transport/impl/jetty/c;->b:Lorg/fourthline/cling/model/message/StreamRequestMessage;

    iput-object p3, p0, Lorg/fourthline/cling/transport/impl/jetty/c;->c:Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl$HttpContentExchange;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Lorg/fourthline/cling/model/message/StreamResponseMessage;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 111
    invoke-static {}, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl;->access$4()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    invoke-static {}, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl;->access$4()Ljava/util/logging/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Sending HTTP request: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/fourthline/cling/transport/impl/jetty/c;->b:Lorg/fourthline/cling/model/message/StreamRequestMessage;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 114
    :cond_0
    iget-object v1, p0, Lorg/fourthline/cling/transport/impl/jetty/c;->a:Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl;

    iget-object v1, v1, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl;->client:Lorg/eclipse/jetty/client/HttpClient;

    iget-object v2, p0, Lorg/fourthline/cling/transport/impl/jetty/c;->c:Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl$HttpContentExchange;

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/client/HttpClient;->send(Lorg/eclipse/jetty/client/HttpExchange;)V

    .line 115
    iget-object v1, p0, Lorg/fourthline/cling/transport/impl/jetty/c;->c:Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl$HttpContentExchange;

    invoke-virtual {v1}, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl$HttpContentExchange;->waitForDone()I

    move-result v1

    .line 117
    const/4 v2, 0x7

    if-ne v1, v2, :cond_2

    .line 119
    :try_start_0
    iget-object v1, p0, Lorg/fourthline/cling/transport/impl/jetty/c;->c:Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl$HttpContentExchange;

    invoke-virtual {v1}, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl$HttpContentExchange;->createResponse()Lorg/fourthline/cling/model/message/StreamResponseMessage;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 132
    :cond_1
    :goto_0
    return-object v0

    .line 120
    :catch_0
    move-exception v1

    .line 121
    invoke-static {}, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl;->access$4()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error reading response: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lorg/fourthline/cling/transport/impl/jetty/c;->b:Lorg/fourthline/cling/model/message/StreamRequestMessage;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Lorg/seamless/util/Exceptions;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 124
    :cond_2
    const/16 v2, 0xb

    if-eq v1, v2, :cond_1

    .line 127
    const/16 v2, 0x9

    if-eq v1, v2, :cond_1

    .line 131
    invoke-static {}, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl;->access$4()Ljava/util/logging/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unhandled HTTP exchange status: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Lorg/fourthline/cling/transport/impl/jetty/c;->a()Lorg/fourthline/cling/model/message/StreamResponseMessage;

    move-result-object v0

    return-object v0
.end method
