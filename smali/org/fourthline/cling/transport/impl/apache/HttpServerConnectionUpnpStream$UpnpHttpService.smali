.class public Lorg/fourthline/cling/transport/impl/apache/HttpServerConnectionUpnpStream$UpnpHttpService;
.super Lorg/apache/http/protocol/HttpService;
.source "HttpServerConnectionUpnpStream.java"


# instance fields
.field final synthetic this$0:Lorg/fourthline/cling/transport/impl/apache/HttpServerConnectionUpnpStream;


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/transport/impl/apache/HttpServerConnectionUpnpStream;Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/ConnectionReuseStrategy;Lorg/apache/http/HttpResponseFactory;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lorg/fourthline/cling/transport/impl/apache/HttpServerConnectionUpnpStream$UpnpHttpService;->this$0:Lorg/fourthline/cling/transport/impl/apache/HttpServerConnectionUpnpStream;

    .line 143
    invoke-direct {p0, p2, p3, p4}, Lorg/apache/http/protocol/HttpService;-><init>(Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/ConnectionReuseStrategy;Lorg/apache/http/HttpResponseFactory;)V

    .line 144
    return-void
.end method


# virtual methods
.method protected doService(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .locals 7

    .prologue
    .line 150
    invoke-static {}, Lorg/fourthline/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->access$0()Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Processing HTTP request: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 153
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v1

    .line 154
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v2

    .line 159
    :try_start_0
    new-instance v3, Lorg/fourthline/cling/model/message/StreamRequestMessage;

    .line 160
    invoke-static {v1}, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->getByHttpName(Ljava/lang/String;)Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    move-result-object v0

    .line 161
    invoke-static {v2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v4

    .line 159
    invoke-direct {v3, v0, v4}, Lorg/fourthline/cling/model/message/StreamRequestMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpRequest$Method;Ljava/net/URI;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    invoke-virtual {v3}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->getOperation()Lorg/fourthline/cling/model/message/UpnpOperation;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/UpnpRequest;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/UpnpRequest;->getMethod()Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    move-result-object v0

    sget-object v2, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->UNKNOWN:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    invoke-virtual {v0, v2}, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    invoke-static {}, Lorg/fourthline/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->access$0()Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Method not supported by UPnP stack: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 171
    new-instance v0, Lorg/apache/http/MethodNotSupportedException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Method not supported: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/MethodNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Invalid request URI: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 165
    invoke-static {}, Lorg/fourthline/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->access$0()Ljava/util/logging/Logger;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 166
    new-instance v2, Lorg/apache/http/HttpException;

    invoke-direct {v2, v1, v0}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 174
    :cond_0
    invoke-static {}, Lorg/fourthline/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->access$0()Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Created new request message: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 177
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/ProtocolVersion;->getMinor()I

    move-result v1

    .line 178
    invoke-virtual {v3}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->getOperation()Lorg/fourthline/cling/model/message/UpnpOperation;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/UpnpRequest;

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/model/message/UpnpRequest;->setHttpMinorVersion(I)V

    .line 181
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/apache/HttpServerConnectionUpnpStream$UpnpHttpService;->this$0:Lorg/fourthline/cling/transport/impl/apache/HttpServerConnectionUpnpStream;

    invoke-virtual {v0}, Lorg/fourthline/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->createConnection()Lorg/fourthline/cling/model/message/Connection;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->setConnection(Lorg/fourthline/cling/model/message/Connection;)V

    .line 184
    new-instance v0, Lorg/fourthline/cling/model/message/UpnpHeaders;

    invoke-static {p1}, Lorg/fourthline/cling/transport/impl/apache/HeaderUtil;->get(Lorg/apache/http/HttpMessage;)Lorg/seamless/http/Headers;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/fourthline/cling/model/message/UpnpHeaders;-><init>(Ljava/util/Map;)V

    invoke-virtual {v3, v0}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->setHeaders(Lorg/fourthline/cling/model/message/UpnpHeaders;)V

    .line 187
    instance-of v0, p1, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v0, :cond_3

    .line 188
    invoke-static {}, Lorg/fourthline/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->access$0()Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, "Request contains entity body, setting on UPnP message"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 190
    check-cast p1, Lorg/apache/http/HttpEntityEnclosingRequest;

    .line 192
    invoke-interface {p1}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 194
    invoke-virtual {v3}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->isContentTypeMissingOrText()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 195
    invoke-static {}, Lorg/fourthline/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->access$0()Ljava/util/logging/Logger;

    move-result-object v1

    const-string v2, "HTTP request message contains text entity"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 196
    sget-object v1, Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;->STRING:Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->setBody(Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;Ljava/lang/Object;)V

    .line 210
    :goto_0
    :try_start_1
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/apache/HttpServerConnectionUpnpStream$UpnpHttpService;->this$0:Lorg/fourthline/cling/transport/impl/apache/HttpServerConnectionUpnpStream;

    invoke-virtual {v0, v3}, Lorg/fourthline/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->process(Lorg/fourthline/cling/model/message/StreamRequestMessage;)Lorg/fourthline/cling/model/message/StreamResponseMessage;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 224
    if-eqz v1, :cond_6

    .line 225
    invoke-static {}, Lorg/fourthline/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->access$0()Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Sending HTTP response message: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 229
    new-instance v2, Lorg/apache/http/message/BasicStatusLine;

    .line 230
    new-instance v4, Lorg/apache/http/ProtocolVersion;

    const-string v5, "HTTP"

    const/4 v6, 0x1

    invoke-virtual {v1}, Lorg/fourthline/cling/model/message/StreamResponseMessage;->getOperation()Lorg/fourthline/cling/model/message/UpnpOperation;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/UpnpResponse;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/UpnpResponse;->getHttpMinorVersion()I

    move-result v0

    invoke-direct {v4, v5, v6, v0}, Lorg/apache/http/ProtocolVersion;-><init>(Ljava/lang/String;II)V

    .line 231
    invoke-virtual {v1}, Lorg/fourthline/cling/model/message/StreamResponseMessage;->getOperation()Lorg/fourthline/cling/model/message/UpnpOperation;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/UpnpResponse;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/UpnpResponse;->getStatusCode()I

    move-result v5

    .line 232
    invoke-virtual {v1}, Lorg/fourthline/cling/model/message/StreamResponseMessage;->getOperation()Lorg/fourthline/cling/model/message/UpnpOperation;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/UpnpResponse;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/UpnpResponse;->getStatusMessage()Ljava/lang/String;

    move-result-object v0

    .line 229
    invoke-direct {v2, v4, v5, v0}, Lorg/apache/http/message/BasicStatusLine;-><init>(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V

    .line 228
    invoke-interface {p2, v2}, Lorg/apache/http/HttpResponse;->setStatusLine(Lorg/apache/http/StatusLine;)V

    .line 236
    invoke-static {}, Lorg/fourthline/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->access$0()Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Response status line: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 239
    invoke-virtual {v3}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->getOperation()Lorg/fourthline/cling/model/message/UpnpOperation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/transport/impl/apache/HttpServerConnectionUpnpStream$UpnpHttpService;->getResponseParams(Lorg/fourthline/cling/model/message/UpnpOperation;)Lorg/apache/http/params/HttpParams;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/apache/http/HttpResponse;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 240
    invoke-virtual {v1}, Lorg/fourthline/cling/model/message/StreamResponseMessage;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/fourthline/cling/transport/impl/apache/HeaderUtil;->add(Lorg/apache/http/HttpMessage;Lorg/seamless/http/Headers;)V

    .line 243
    invoke-virtual {v1}, Lorg/fourthline/cling/model/message/StreamResponseMessage;->hasBody()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v1}, Lorg/fourthline/cling/model/message/StreamResponseMessage;->getBodyType()Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;

    move-result-object v0

    sget-object v2, Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;->BYTES:Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;

    invoke-virtual {v0, v2}, Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 244
    new-instance v0, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual {v1}, Lorg/fourthline/cling/model/message/StreamResponseMessage;->getBodyBytes()[B

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-interface {p2, v0}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 256
    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/apache/HttpServerConnectionUpnpStream$UpnpHttpService;->this$0:Lorg/fourthline/cling/transport/impl/apache/HttpServerConnectionUpnpStream;

    invoke-static {v0, v1}, Lorg/fourthline/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->access$2(Lorg/fourthline/cling/transport/impl/apache/HttpServerConnectionUpnpStream;Lorg/fourthline/cling/model/message/StreamResponseMessage;)V

    .line 257
    :goto_2
    return-void

    .line 198
    :cond_2
    invoke-static {}, Lorg/fourthline/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->access$0()Ljava/util/logging/Logger;

    move-result-object v1

    const-string v2, "HTTP request message contains binary entity"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 199
    sget-object v1, Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;->BYTES:Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->setBody(Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 204
    :cond_3
    invoke-static {}, Lorg/fourthline/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->access$0()Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, "Request did not contain entity body"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 211
    :catch_1
    move-exception v0

    .line 212
    invoke-static {}, Lorg/fourthline/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->access$0()Ljava/util/logging/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception occurred during UPnP stream processing: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 213
    invoke-static {}, Lorg/fourthline/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->access$0()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 214
    invoke-static {}, Lorg/fourthline/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->access$0()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cause: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/seamless/util/Exceptions;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lorg/seamless/util/Exceptions;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 217
    :cond_4
    invoke-static {}, Lorg/fourthline/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->access$0()Ljava/util/logging/Logger;

    move-result-object v1

    const-string v2, "Sending HTTP response: 500"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 218
    const/16 v1, 0x1f4

    invoke-interface {p2, v1}, Lorg/apache/http/HttpResponse;->setStatusCode(I)V

    .line 220
    iget-object v1, p0, Lorg/fourthline/cling/transport/impl/apache/HttpServerConnectionUpnpStream$UpnpHttpService;->this$0:Lorg/fourthline/cling/transport/impl/apache/HttpServerConnectionUpnpStream;

    invoke-static {v1, v0}, Lorg/fourthline/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->access$1(Lorg/fourthline/cling/transport/impl/apache/HttpServerConnectionUpnpStream;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 245
    :cond_5
    invoke-virtual {v1}, Lorg/fourthline/cling/model/message/StreamResponseMessage;->hasBody()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lorg/fourthline/cling/model/message/StreamResponseMessage;->getBodyType()Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;

    move-result-object v0

    sget-object v2, Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;->STRING:Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;

    invoke-virtual {v0, v2}, Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    new-instance v0, Lorg/apache/http/entity/StringEntity;

    invoke-virtual {v1}, Lorg/fourthline/cling/model/message/StreamResponseMessage;->getBodyString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v0, v2, v3}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-interface {p2, v0}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto/16 :goto_1

    .line 252
    :cond_6
    invoke-static {}, Lorg/fourthline/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->access$0()Ljava/util/logging/Logger;

    move-result-object v0

    const-string v2, "Sending HTTP response: 404"

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 253
    const/16 v0, 0x194

    invoke-interface {p2, v0}, Lorg/apache/http/HttpResponse;->setStatusCode(I)V

    goto/16 :goto_1
.end method

.method protected getResponseParams(Lorg/fourthline/cling/model/message/UpnpOperation;)Lorg/apache/http/params/HttpParams;
    .locals 3

    .prologue
    .line 260
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 261
    new-instance v1, Lorg/apache/http/params/DefaultedHttpParams;

    iget-object v2, p0, Lorg/fourthline/cling/transport/impl/apache/HttpServerConnectionUpnpStream$UpnpHttpService;->this$0:Lorg/fourthline/cling/transport/impl/apache/HttpServerConnectionUpnpStream;

    iget-object v2, v2, Lorg/fourthline/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->params:Lorg/apache/http/params/HttpParams;

    invoke-direct {v1, v0, v2}, Lorg/apache/http/params/DefaultedHttpParams;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/params/HttpParams;)V

    return-object v1
.end method
