.class public abstract Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;
.super Lorg/fourthline/cling/transport/spi/UpnpStream;
.source "HttpExchangeUpnpStream.java"


# static fields
.field private static log:Ljava/util/logging/Logger;


# instance fields
.field private httpExchange:Lcom/d/a/a/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lorg/fourthline/cling/transport/spi/UpnpStream;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/protocol/ProtocolFactory;Lcom/d/a/a/j;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lorg/fourthline/cling/transport/spi/UpnpStream;-><init>(Lorg/fourthline/cling/protocol/ProtocolFactory;)V

    .line 54
    iput-object p2, p0, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->httpExchange:Lcom/d/a/a/j;

    .line 55
    return-void
.end method


# virtual methods
.method protected abstract createConnection()Lorg/fourthline/cling/model/message/Connection;
.end method

.method public getHttpExchange()Lcom/d/a/a/j;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->httpExchange:Lcom/d/a/a/j;

    return-object v0
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 64
    :try_start_0
    sget-object v0, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Processing HTTP request: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->getHttpExchange()Lcom/d/a/a/j;

    move-result-object v3

    invoke-virtual {v3}, Lcom/d/a/a/j;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->getHttpExchange()Lcom/d/a/a/j;

    move-result-object v3

    invoke-virtual {v3}, Lcom/d/a/a/j;->c()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 68
    new-instance v3, Lorg/fourthline/cling/model/message/StreamRequestMessage;

    .line 69
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->getHttpExchange()Lcom/d/a/a/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/d/a/a/j;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->getByHttpName(Ljava/lang/String;)Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    move-result-object v0

    .line 70
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->getHttpExchange()Lcom/d/a/a/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/d/a/a/j;->c()Ljava/net/URI;

    move-result-object v1

    .line 68
    invoke-direct {v3, v0, v1}, Lorg/fourthline/cling/model/message/StreamRequestMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpRequest$Method;Ljava/net/URI;)V

    .line 73
    invoke-virtual {v3}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->getOperation()Lorg/fourthline/cling/model/message/UpnpOperation;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/UpnpRequest;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/UpnpRequest;->getMethod()Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    move-result-object v0

    sget-object v1, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->UNKNOWN:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    sget-object v0, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Method not supported by UPnP stack: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->getHttpExchange()Lcom/d/a/a/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/d/a/a/j;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 75
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Method not supported: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->getHttpExchange()Lcom/d/a/a/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/d/a/a/j;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :catch_0
    move-exception v0

    .line 169
    sget-object v1, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception occured during UPnP stream processing: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 170
    sget-object v1, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    sget-object v1, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->log:Ljava/util/logging/Logger;

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

    .line 174
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->httpExchange:Lcom/d/a/a/j;

    const/16 v2, 0x1f4

    const-wide/16 v4, -0x1

    invoke-virtual {v1, v2, v4, v5}, Lcom/d/a/a/j;->a(IJ)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 179
    :goto_0
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->responseException(Ljava/lang/Throwable;)V

    .line 181
    :goto_1
    return-void

    .line 79
    :cond_1
    :try_start_2
    invoke-virtual {v3}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->getOperation()Lorg/fourthline/cling/model/message/UpnpOperation;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/UpnpRequest;

    .line 80
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->getHttpExchange()Lcom/d/a/a/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/d/a/a/j;->i()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "HTTP/1.1"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    .line 79
    :goto_2
    invoke-virtual {v0, v1}, Lorg/fourthline/cling/model/message/UpnpRequest;->setHttpMinorVersion(I)V

    .line 83
    sget-object v0, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Created new request message: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->createConnection()Lorg/fourthline/cling/model/message/Connection;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->setConnection(Lorg/fourthline/cling/model/message/Connection;)V

    .line 89
    new-instance v0, Lorg/fourthline/cling/model/message/UpnpHeaders;

    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->getHttpExchange()Lcom/d/a/a/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/d/a/a/j;->a()Lcom/d/a/a/h;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/fourthline/cling/model/message/UpnpHeaders;-><init>(Ljava/util/Map;)V

    invoke-virtual {v3, v0}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->setHeaders(Lorg/fourthline/cling/model/message/UpnpHeaders;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 95
    :try_start_3
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->getHttpExchange()Lcom/d/a/a/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/d/a/a/j;->e()Ljava/io/InputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v1

    .line 96
    :try_start_4
    invoke-static {v1}, Lorg/seamless/util/io/IO;->readBytes(Ljava/io/InputStream;)[B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v0

    .line 98
    if-eqz v1, :cond_2

    .line 99
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 102
    :cond_2
    sget-object v1, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Reading request body bytes: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 104
    array-length v1, v0

    if-lez v1, :cond_6

    invoke-virtual {v3}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->isContentTypeMissingOrText()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 106
    sget-object v1, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->log:Ljava/util/logging/Logger;

    const-string v4, "Request contains textual entity body, converting then setting string on message"

    invoke-virtual {v1, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v3, v0}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->setBodyCharacters([B)V

    .line 119
    :goto_3
    invoke-virtual {p0, v3}, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->process(Lorg/fourthline/cling/model/message/StreamRequestMessage;)Lorg/fourthline/cling/model/message/StreamResponseMessage;

    move-result-object v4

    .line 122
    if-eqz v4, :cond_b

    .line 123
    sget-object v0, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Preparing HTTP response message: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->getHttpExchange()Lcom/d/a/a/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/d/a/a/j;->b()Lcom/d/a/a/h;

    move-result-object v0

    .line 127
    invoke-virtual {v4}, Lorg/fourthline/cling/model/message/StreamResponseMessage;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object v1

    .line 126
    invoke-virtual {v0, v1}, Lcom/d/a/a/h;->putAll(Ljava/util/Map;)V

    .line 131
    invoke-virtual {v4}, Lorg/fourthline/cling/model/message/StreamResponseMessage;->hasBody()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v4}, Lorg/fourthline/cling/model/message/StreamResponseMessage;->getBodyBytes()[B

    move-result-object v0

    move-object v3, v0

    .line 132
    :goto_4
    if-eqz v3, :cond_9

    array-length v0, v3

    move v1, v0

    .line 134
    :goto_5
    sget-object v0, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->log:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Sending HTTP response message: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with content length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->getHttpExchange()Lcom/d/a/a/j;

    move-result-object v5

    invoke-virtual {v4}, Lorg/fourthline/cling/model/message/StreamResponseMessage;->getOperation()Lorg/fourthline/cling/model/message/UpnpOperation;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/UpnpResponse;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/UpnpResponse;->getStatusCode()I

    move-result v0

    int-to-long v6, v1

    invoke-virtual {v5, v0, v6, v7}, Lcom/d/a/a/j;->a(IJ)V

    .line 137
    if-lez v1, :cond_3

    .line 138
    sget-object v0, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->log:Ljava/util/logging/Logger;

    const-string v1, "Response message has body, writing bytes to stream..."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    .line 141
    :try_start_6
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->getHttpExchange()Lcom/d/a/a/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/d/a/a/j;->f()Ljava/io/OutputStream;

    move-result-object v2

    .line 142
    invoke-static {v2, v3}, Lorg/seamless/util/io/IO;->writeBytes(Ljava/io/OutputStream;[B)V

    .line 143
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 145
    if-eqz v2, :cond_3

    .line 146
    :try_start_7
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 156
    :cond_3
    :goto_6
    invoke-virtual {p0, v4}, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->responseSent(Lorg/fourthline/cling/model/message/StreamResponseMessage;)V

    goto/16 :goto_1

    .line 80
    :cond_4
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 97
    :catchall_0
    move-exception v0

    move-object v1, v2

    .line 98
    :goto_7
    if-eqz v1, :cond_5

    .line 99
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 100
    :cond_5
    throw v0

    .line 109
    :cond_6
    array-length v1, v0

    if-lez v1, :cond_7

    .line 111
    sget-object v1, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->log:Ljava/util/logging/Logger;

    const-string v4, "Request contains binary entity body, setting bytes on message"

    invoke-virtual {v1, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 112
    sget-object v1, Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;->BYTES:Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;

    invoke-virtual {v3, v1, v0}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->setBody(Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 115
    :cond_7
    sget-object v0, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->log:Ljava/util/logging/Logger;

    const-string v1, "Request did not contain entity body"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_8
    move-object v3, v2

    .line 131
    goto :goto_4

    .line 132
    :cond_9
    const/4 v0, -0x1

    move v1, v0

    goto :goto_5

    .line 144
    :catchall_1
    move-exception v0

    .line 145
    if-eqz v2, :cond_a

    .line 146
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 147
    :cond_a
    throw v0

    .line 152
    :cond_b
    sget-object v0, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->log:Ljava/util/logging/Logger;

    const-string v1, "Sending HTTP response status: 404"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->getHttpExchange()Lcom/d/a/a/j;

    move-result-object v0

    const/16 v1, 0x194

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/d/a/a/j;->a(IJ)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_6

    .line 175
    :catch_1
    move-exception v1

    .line 176
    sget-object v2, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Couldn\'t send error response: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 97
    :catchall_2
    move-exception v0

    goto :goto_7
.end method
