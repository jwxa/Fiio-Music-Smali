.class final Lorg/fourthline/cling/transport/impl/apache/d;
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
.field final synthetic a:Lorg/fourthline/cling/transport/impl/apache/StreamClientImpl;

.field private final synthetic b:Lorg/fourthline/cling/model/message/StreamRequestMessage;

.field private final synthetic c:Lorg/apache/http/client/methods/HttpUriRequest;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/transport/impl/apache/StreamClientImpl;Lorg/fourthline/cling/model/message/StreamRequestMessage;Lorg/apache/http/client/methods/HttpUriRequest;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/fourthline/cling/transport/impl/apache/d;->a:Lorg/fourthline/cling/transport/impl/apache/StreamClientImpl;

    iput-object p2, p0, Lorg/fourthline/cling/transport/impl/apache/d;->b:Lorg/fourthline/cling/model/message/StreamRequestMessage;

    iput-object p3, p0, Lorg/fourthline/cling/transport/impl/apache/d;->c:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1
    invoke-static {}, Lorg/fourthline/cling/transport/impl/apache/StreamClientImpl;->access$5()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/fourthline/cling/transport/impl/apache/StreamClientImpl;->access$5()Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sending HTTP request: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/fourthline/cling/transport/impl/apache/d;->b:Lorg/fourthline/cling/model/message/StreamRequestMessage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/apache/d;->a:Lorg/fourthline/cling/transport/impl/apache/StreamClientImpl;

    iget-object v0, v0, Lorg/fourthline/cling/transport/impl/apache/StreamClientImpl;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v1, p0, Lorg/fourthline/cling/transport/impl/apache/d;->c:Lorg/apache/http/client/methods/HttpUriRequest;

    iget-object v2, p0, Lorg/fourthline/cling/transport/impl/apache/d;->a:Lorg/fourthline/cling/transport/impl/apache/StreamClientImpl;

    invoke-virtual {v2}, Lorg/fourthline/cling/transport/impl/apache/StreamClientImpl;->createResponseHandler()Lorg/apache/http/client/ResponseHandler;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/StreamResponseMessage;

    return-object v0
.end method
