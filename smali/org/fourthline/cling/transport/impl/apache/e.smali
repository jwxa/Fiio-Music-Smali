.class final Lorg/fourthline/cling/transport/impl/apache/e;
.super Ljava/lang/Object;
.source "StreamClientImpl.java"

# interfaces
.implements Lorg/apache/http/client/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/http/client/ResponseHandler",
        "<",
        "Lorg/fourthline/cling/model/message/StreamResponseMessage;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lorg/fourthline/cling/transport/impl/apache/StreamClientImpl;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/transport/impl/apache/StreamClientImpl;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/fourthline/cling/transport/impl/apache/e;->a:Lorg/fourthline/cling/transport/impl/apache/StreamClientImpl;

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 1
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-static {}, Lorg/fourthline/cling/transport/impl/apache/StreamClientImpl;->access$5()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lorg/fourthline/cling/transport/impl/apache/StreamClientImpl;->access$5()Ljava/util/logging/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Received HTTP response: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_0
    new-instance v1, Lorg/fourthline/cling/model/message/UpnpResponse;

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/fourthline/cling/model/message/UpnpResponse;-><init>(ILjava/lang/String;)V

    new-instance v0, Lorg/fourthline/cling/model/message/StreamResponseMessage;

    invoke-direct {v0, v1}, Lorg/fourthline/cling/model/message/StreamResponseMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpResponse;)V

    new-instance v1, Lorg/fourthline/cling/model/message/UpnpHeaders;

    invoke-static {p1}, Lorg/fourthline/cling/transport/impl/apache/HeaderUtil;->get(Lorg/apache/http/HttpMessage;)Lorg/seamless/http/Headers;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/fourthline/cling/model/message/UpnpHeaders;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/model/message/StreamResponseMessage;->setHeaders(Lorg/fourthline/cling/model/message/UpnpHeaders;)V

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/StreamResponseMessage;->isContentTypeMissingOrText()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lorg/fourthline/cling/transport/impl/apache/StreamClientImpl;->access$5()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lorg/fourthline/cling/transport/impl/apache/StreamClientImpl;->access$5()Ljava/util/logging/Logger;

    move-result-object v2

    const-string v3, "HTTP response message contains text entity"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_3
    sget-object v2, Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;->STRING:Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;

    invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/fourthline/cling/model/message/StreamResponseMessage;->setBody(Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lorg/fourthline/cling/transport/impl/apache/StreamClientImpl;->access$5()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lorg/fourthline/cling/transport/impl/apache/StreamClientImpl;->access$5()Ljava/util/logging/Logger;

    move-result-object v2

    const-string v3, "HTTP response message contains binary entity"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_5
    sget-object v2, Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;->BYTES:Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;

    invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/fourthline/cling/model/message/StreamResponseMessage;->setBody(Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;Ljava/lang/Object;)V

    goto :goto_0
.end method
