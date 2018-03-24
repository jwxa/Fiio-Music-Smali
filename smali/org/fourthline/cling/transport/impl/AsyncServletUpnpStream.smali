.class public abstract Lorg/fourthline/cling/transport/impl/AsyncServletUpnpStream;
.super Lorg/fourthline/cling/transport/spi/UpnpStream;
.source "AsyncServletUpnpStream.java"

# interfaces
.implements Lc/c/c;


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field protected final asyncContext:Lc/c/a;

.field protected final request:Lc/c/c/c;

.field protected responseMessage:Lorg/fourthline/cling/model/message/StreamResponseMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Lorg/fourthline/cling/transport/spi/UpnpStream;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/transport/impl/AsyncServletUpnpStream;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/protocol/ProtocolFactory;Lc/c/a;Lc/c/c/c;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lorg/fourthline/cling/transport/spi/UpnpStream;-><init>(Lorg/fourthline/cling/protocol/ProtocolFactory;)V

    .line 67
    iput-object p2, p0, Lorg/fourthline/cling/transport/impl/AsyncServletUpnpStream;->asyncContext:Lc/c/a;

    .line 68
    iput-object p3, p0, Lorg/fourthline/cling/transport/impl/AsyncServletUpnpStream;->request:Lc/c/c/c;

    .line 69
    invoke-interface {p2, p0}, Lc/c/a;->addListener(Lc/c/c;)V

    .line 70
    return-void
.end method


# virtual methods
.method protected complete()V
    .locals 4

    .prologue
    .line 88
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/AsyncServletUpnpStream;->asyncContext:Lc/c/a;

    invoke-interface {v0}, Lc/c/a;->complete()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 92
    sget-object v1, Lorg/fourthline/cling/transport/impl/AsyncServletUpnpStream;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error calling servlet container\'s AsyncContext#complete() method: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected abstract createConnection()Lorg/fourthline/cling/model/message/Connection;
.end method

.method protected getRequest()Lc/c/c/c;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/AsyncServletUpnpStream;->request:Lc/c/c/c;

    return-object v0
.end method

.method protected getResponse()Lc/c/c/e;
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/AsyncServletUpnpStream;->asyncContext:Lc/c/a;

    invoke-interface {v0}, Lc/c/a;->getResponse()Lc/c/ai;

    move-result-object v0

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 80
    const-string v1, "Couldn\'t get response from asynchronous context, already timed out"

    .line 79
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_0
    check-cast v0, Lc/c/c/e;

    return-object v0
.end method

.method public onComplete(Lc/c/b;)V
    .locals 3

    .prologue
    .line 141
    sget-object v0, Lorg/fourthline/cling/transport/impl/AsyncServletUpnpStream;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    sget-object v0, Lorg/fourthline/cling/transport/impl/AsyncServletUpnpStream;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Completed asynchronous processing of HTTP request: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lc/c/b;->getSuppliedRequest()Lc/c/ac;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 143
    :cond_0
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/AsyncServletUpnpStream;->responseMessage:Lorg/fourthline/cling/model/message/StreamResponseMessage;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/transport/impl/AsyncServletUpnpStream;->responseSent(Lorg/fourthline/cling/model/message/StreamResponseMessage;)V

    .line 144
    return-void
.end method

.method public onError(Lc/c/b;)V
    .locals 3

    .prologue
    .line 155
    sget-object v0, Lorg/fourthline/cling/transport/impl/AsyncServletUpnpStream;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    sget-object v0, Lorg/fourthline/cling/transport/impl/AsyncServletUpnpStream;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Asynchronous processing of HTTP request error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lc/c/b;->getThrowable()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 157
    :cond_0
    invoke-virtual {p1}, Lc/c/b;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/transport/impl/AsyncServletUpnpStream;->responseException(Ljava/lang/Throwable;)V

    .line 158
    return-void
.end method

.method public onStartAsync(Lc/c/b;)V
    .locals 0

    .prologue
    .line 137
    return-void
.end method

.method public onTimeout(Lc/c/b;)V
    .locals 3

    .prologue
    .line 148
    sget-object v0, Lorg/fourthline/cling/transport/impl/AsyncServletUpnpStream;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    sget-object v0, Lorg/fourthline/cling/transport/impl/AsyncServletUpnpStream;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Asynchronous processing of HTTP request timed out: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lc/c/b;->getSuppliedRequest()Lc/c/ac;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 150
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Asynchronous request timed out"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/transport/impl/AsyncServletUpnpStream;->responseException(Ljava/lang/Throwable;)V

    .line 151
    return-void
.end method

.method protected readRequestMessage()Lorg/fourthline/cling/model/message/StreamRequestMessage;
    .locals 6

    .prologue
    .line 162
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/AsyncServletUpnpStream;->getRequest()Lc/c/c/c;

    move-result-object v0

    invoke-interface {v0}, Lc/c/c/c;->getMethod()Ljava/lang/String;

    move-result-object v1

    .line 163
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/AsyncServletUpnpStream;->getRequest()Lc/c/c/c;

    move-result-object v0

    invoke-interface {v0}, Lc/c/c/c;->getRequestURI()Ljava/lang/String;

    move-result-object v2

    .line 165
    sget-object v0, Lorg/fourthline/cling/transport/impl/AsyncServletUpnpStream;->log:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    sget-object v0, Lorg/fourthline/cling/transport/impl/AsyncServletUpnpStream;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Processing HTTP request: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 171
    :cond_0
    :try_start_0
    new-instance v3, Lorg/fourthline/cling/model/message/StreamRequestMessage;

    .line 172
    invoke-static {v1}, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->getByHttpName(Ljava/lang/String;)Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    move-result-object v0

    .line 173
    invoke-static {v2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v4

    .line 171
    invoke-direct {v3, v0, v4}, Lorg/fourthline/cling/model/message/StreamRequestMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpRequest$Method;Ljava/net/URI;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    invoke-virtual {v3}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->getOperation()Lorg/fourthline/cling/model/message/UpnpOperation;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/UpnpRequest;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/UpnpRequest;->getMethod()Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    move-result-object v0

    sget-object v2, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->UNKNOWN:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    invoke-virtual {v0, v2}, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Method not supported: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :catch_0
    move-exception v0

    .line 176
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid request URI: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 184
    :cond_1
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/AsyncServletUpnpStream;->createConnection()Lorg/fourthline/cling/model/message/Connection;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->setConnection(Lorg/fourthline/cling/model/message/Connection;)V

    .line 187
    new-instance v2, Lorg/fourthline/cling/model/message/UpnpHeaders;

    invoke-direct {v2}, Lorg/fourthline/cling/model/message/UpnpHeaders;-><init>()V

    .line 188
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/AsyncServletUpnpStream;->getRequest()Lc/c/c/c;

    move-result-object v0

    invoke-interface {v0}, Lc/c/c/c;->getHeaderNames()Ljava/util/Enumeration;

    move-result-object v4

    .line 189
    :cond_2
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_7

    .line 197
    invoke-virtual {v3, v2}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->setHeaders(Lorg/fourthline/cling/model/message/UpnpHeaders;)V

    .line 201
    const/4 v1, 0x0

    .line 203
    :try_start_1
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/AsyncServletUpnpStream;->getRequest()Lc/c/c/c;

    move-result-object v0

    invoke-interface {v0}, Lc/c/c/c;->getInputStream()Lc/c/y;

    move-result-object v1

    .line 204
    invoke-static {v1}, Lorg/seamless/util/io/IO;->readBytes(Ljava/io/InputStream;)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 206
    if-eqz v1, :cond_3

    .line 207
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 209
    :cond_3
    sget-object v1, Lorg/fourthline/cling/transport/impl/AsyncServletUpnpStream;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 210
    sget-object v1, Lorg/fourthline/cling/transport/impl/AsyncServletUpnpStream;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Reading request body bytes: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v4, v0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 212
    :cond_4
    array-length v1, v0

    if-lez v1, :cond_9

    invoke-virtual {v3}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->isContentTypeMissingOrText()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 214
    sget-object v1, Lorg/fourthline/cling/transport/impl/AsyncServletUpnpStream;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 215
    sget-object v1, Lorg/fourthline/cling/transport/impl/AsyncServletUpnpStream;->log:Ljava/util/logging/Logger;

    const-string v2, "Request contains textual entity body, converting then setting string on message"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 216
    :cond_5
    invoke-virtual {v3, v0}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->setBodyCharacters([B)V

    .line 229
    :cond_6
    :goto_0
    return-object v3

    .line 190
    :cond_7
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 191
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/AsyncServletUpnpStream;->getRequest()Lc/c/c/c;

    move-result-object v1

    invoke-interface {v1, v0}, Lc/c/c/c;->getHeaders(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v5

    .line 192
    :goto_1
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 193
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 194
    invoke-virtual {v2, v0, v1}, Lorg/fourthline/cling/model/message/UpnpHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 205
    :catchall_0
    move-exception v0

    .line 206
    if-eqz v1, :cond_8

    .line 207
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 208
    :cond_8
    throw v0

    .line 218
    :cond_9
    array-length v1, v0

    if-lez v1, :cond_b

    .line 220
    sget-object v1, Lorg/fourthline/cling/transport/impl/AsyncServletUpnpStream;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 221
    sget-object v1, Lorg/fourthline/cling/transport/impl/AsyncServletUpnpStream;->log:Ljava/util/logging/Logger;

    const-string v2, "Request contains binary entity body, setting bytes on message"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 222
    :cond_a
    sget-object v1, Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;->BYTES:Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;

    invoke-virtual {v3, v1, v0}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->setBody(Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;Ljava/lang/Object;)V

    goto :goto_0

    .line 225
    :cond_b
    sget-object v0, Lorg/fourthline/cling/transport/impl/AsyncServletUpnpStream;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 226
    sget-object v0, Lorg/fourthline/cling/transport/impl/AsyncServletUpnpStream;->log:Ljava/util/logging/Logger;

    const-string v1, "Request did not contain entity body"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 99
    :try_start_0
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/AsyncServletUpnpStream;->readRequestMessage()Lorg/fourthline/cling/model/message/StreamRequestMessage;

    move-result-object v0

    .line 100
    sget-object v1, Lorg/fourthline/cling/transport/impl/AsyncServletUpnpStream;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    sget-object v1, Lorg/fourthline/cling/transport/impl/AsyncServletUpnpStream;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Processing new request message: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 103
    :cond_0
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/transport/impl/AsyncServletUpnpStream;->process(Lorg/fourthline/cling/model/message/StreamRequestMessage;)Lorg/fourthline/cling/model/message/StreamResponseMessage;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/transport/impl/AsyncServletUpnpStream;->responseMessage:Lorg/fourthline/cling/model/message/StreamResponseMessage;

    .line 105
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/AsyncServletUpnpStream;->responseMessage:Lorg/fourthline/cling/model/message/StreamResponseMessage;

    if-eqz v0, :cond_2

    .line 106
    sget-object v0, Lorg/fourthline/cling/transport/impl/AsyncServletUpnpStream;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    sget-object v0, Lorg/fourthline/cling/transport/impl/AsyncServletUpnpStream;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Preparing HTTP response message: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/fourthline/cling/transport/impl/AsyncServletUpnpStream;->responseMessage:Lorg/fourthline/cling/model/message/StreamResponseMessage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 108
    :cond_1
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/AsyncServletUpnpStream;->responseMessage:Lorg/fourthline/cling/model/message/StreamResponseMessage;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/transport/impl/AsyncServletUpnpStream;->writeResponseMessage(Lorg/fourthline/cling/model/message/StreamResponseMessage;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    :goto_0
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/AsyncServletUpnpStream;->complete()V

    .line 131
    :goto_1
    return-void

    .line 111
    :cond_2
    :try_start_1
    sget-object v0, Lorg/fourthline/cling/transport/impl/AsyncServletUpnpStream;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 112
    sget-object v0, Lorg/fourthline/cling/transport/impl/AsyncServletUpnpStream;->log:Ljava/util/logging/Logger;

    const-string v1, "Sending HTTP response status: 404"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 113
    :cond_3
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/AsyncServletUpnpStream;->getResponse()Lc/c/c/e;

    move-result-object v0

    const/16 v1, 0x194

    invoke-interface {v0, v1}, Lc/c/c/e;->setStatus(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    :try_start_2
    sget-object v1, Lorg/fourthline/cling/transport/impl/AsyncServletUpnpStream;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception occurred during UPnP stream processing: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 118
    sget-object v1, Lorg/fourthline/cling/transport/impl/AsyncServletUpnpStream;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 119
    sget-object v1, Lorg/fourthline/cling/transport/impl/AsyncServletUpnpStream;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

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

    .line 121
    :cond_4
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/AsyncServletUpnpStream;->getResponse()Lc/c/c/e;

    move-result-object v1

    invoke-interface {v1}, Lc/c/c/e;->isCommitted()Z

    move-result v1

    if-nez v1, :cond_5

    .line 122
    sget-object v1, Lorg/fourthline/cling/transport/impl/AsyncServletUpnpStream;->log:Ljava/util/logging/Logger;

    const-string v2, "Response hasn\'t been committed, returning INTERNAL SERVER ERROR to client"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/AsyncServletUpnpStream;->getResponse()Lc/c/c/e;

    move-result-object v1

    const/16 v2, 0x1f4

    invoke-interface {v1, v2}, Lc/c/c/e;->setStatus(I)V

    .line 127
    :goto_2
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/transport/impl/AsyncServletUpnpStream;->responseException(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 129
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/AsyncServletUpnpStream;->complete()V

    goto :goto_1

    .line 125
    :cond_5
    :try_start_3
    sget-object v1, Lorg/fourthline/cling/transport/impl/AsyncServletUpnpStream;->log:Ljava/util/logging/Logger;

    const-string v2, "Could not return INTERNAL SERVER ERROR to client, response was already committed"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 128
    :catchall_0
    move-exception v0

    .line 129
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/AsyncServletUpnpStream;->complete()V

    .line 130
    throw v0
.end method

.method protected writeResponseMessage(Lorg/fourthline/cling/model/message/StreamResponseMessage;)V
    .locals 6

    .prologue
    .line 233
    sget-object v0, Lorg/fourthline/cling/transport/impl/AsyncServletUpnpStream;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    sget-object v1, Lorg/fourthline/cling/transport/impl/AsyncServletUpnpStream;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "Sending HTTP response status: "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/StreamResponseMessage;->getOperation()Lorg/fourthline/cling/model/message/UpnpOperation;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/UpnpResponse;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/UpnpResponse;->getStatusCode()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 236
    :cond_0
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/AsyncServletUpnpStream;->getResponse()Lc/c/c/e;

    move-result-object v1

    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/StreamResponseMessage;->getOperation()Lorg/fourthline/cling/model/message/UpnpOperation;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/UpnpResponse;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/UpnpResponse;->getStatusCode()I

    move-result v0

    invoke-interface {v1, v0}, Lc/c/c/e;->setStatus(I)V

    .line 239
    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/StreamResponseMessage;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/UpnpHeaders;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 245
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/AsyncServletUpnpStream;->getResponse()Lc/c/c/e;

    move-result-object v0

    const-string v1, "Date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lc/c/c/e;->setDateHeader(Ljava/lang/String;J)V

    .line 248
    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/StreamResponseMessage;->hasBody()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/StreamResponseMessage;->getBodyBytes()[B

    move-result-object v0

    move-object v1, v0

    .line 249
    :goto_0
    if-eqz v1, :cond_5

    array-length v0, v1

    .line 251
    :goto_1
    if-lez v0, :cond_2

    .line 252
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/AsyncServletUpnpStream;->getResponse()Lc/c/c/e;

    move-result-object v2

    invoke-interface {v2, v0}, Lc/c/c/e;->setContentLength(I)V

    .line 253
    sget-object v0, Lorg/fourthline/cling/transport/impl/AsyncServletUpnpStream;->log:Ljava/util/logging/Logger;

    const-string v2, "Response message has body, writing bytes to stream..."

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/AsyncServletUpnpStream;->getResponse()Lc/c/c/e;

    move-result-object v0

    invoke-interface {v0}, Lc/c/c/e;->getOutputStream()Lc/c/z;

    move-result-object v0

    invoke-static {v0, v1}, Lorg/seamless/util/io/IO;->writeBytes(Ljava/io/OutputStream;[B)V

    .line 256
    :cond_2
    return-void

    .line 239
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 240
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 241
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/AsyncServletUpnpStream;->getResponse()Lc/c/c/e;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v5, v2, v1}, Lc/c/c/e;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 248
    :cond_4
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_0

    .line 249
    :cond_5
    const/4 v0, -0x1

    goto :goto_1
.end method
