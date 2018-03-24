.class public abstract Lorg/fourthline/cling/transport/impl/apache/HttpServerConnectionUpnpStream;
.super Lorg/fourthline/cling/transport/spi/UpnpStream;
.source "HttpServerConnectionUpnpStream.java"


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field protected final connection:Lorg/apache/http/HttpServerConnection;

.field protected final httpProcessor:Lorg/apache/http/protocol/BasicHttpProcessor;

.field protected final httpService:Lorg/apache/http/protocol/HttpService;

.field protected final params:Lorg/apache/http/params/HttpParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const-class v0, Lorg/fourthline/cling/transport/spi/UpnpStream;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method protected constructor <init>(Lorg/fourthline/cling/protocol/ProtocolFactory;Lorg/apache/http/HttpServerConnection;Lorg/apache/http/params/HttpParams;)V
    .locals 4

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lorg/fourthline/cling/transport/spi/UpnpStream;-><init>(Lorg/fourthline/cling/protocol/ProtocolFactory;)V

    .line 75
    new-instance v0, Lorg/apache/http/protocol/BasicHttpProcessor;

    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpProcessor;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->httpProcessor:Lorg/apache/http/protocol/BasicHttpProcessor;

    .line 83
    iput-object p2, p0, Lorg/fourthline/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->connection:Lorg/apache/http/HttpServerConnection;

    .line 84
    iput-object p3, p0, Lorg/fourthline/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->params:Lorg/apache/http/params/HttpParams;

    .line 87
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->httpProcessor:Lorg/apache/http/protocol/BasicHttpProcessor;

    new-instance v1, Lorg/apache/http/protocol/ResponseDate;

    invoke-direct {v1}, Lorg/apache/http/protocol/ResponseDate;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 92
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->httpProcessor:Lorg/apache/http/protocol/BasicHttpProcessor;

    new-instance v1, Lorg/apache/http/protocol/ResponseContent;

    invoke-direct {v1}, Lorg/apache/http/protocol/ResponseContent;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 93
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->httpProcessor:Lorg/apache/http/protocol/BasicHttpProcessor;

    new-instance v1, Lorg/apache/http/protocol/ResponseConnControl;

    invoke-direct {v1}, Lorg/apache/http/protocol/ResponseConnControl;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 96
    new-instance v0, Lorg/fourthline/cling/transport/impl/apache/HttpServerConnectionUpnpStream$UpnpHttpService;

    .line 97
    iget-object v1, p0, Lorg/fourthline/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->httpProcessor:Lorg/apache/http/protocol/BasicHttpProcessor;

    .line 98
    new-instance v2, Lorg/apache/http/impl/DefaultConnectionReuseStrategy;

    invoke-direct {v2}, Lorg/apache/http/impl/DefaultConnectionReuseStrategy;-><init>()V

    .line 99
    new-instance v3, Lorg/apache/http/impl/DefaultHttpResponseFactory;

    invoke-direct {v3}, Lorg/apache/http/impl/DefaultHttpResponseFactory;-><init>()V

    .line 96
    invoke-direct {v0, p0, v1, v2, v3}, Lorg/fourthline/cling/transport/impl/apache/HttpServerConnectionUpnpStream$UpnpHttpService;-><init>(Lorg/fourthline/cling/transport/impl/apache/HttpServerConnectionUpnpStream;Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/ConnectionReuseStrategy;Lorg/apache/http/HttpResponseFactory;)V

    .line 95
    iput-object v0, p0, Lorg/fourthline/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->httpService:Lorg/apache/http/protocol/HttpService;

    .line 101
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->httpService:Lorg/apache/http/protocol/HttpService;

    invoke-virtual {v0, p3}, Lorg/apache/http/protocol/HttpService;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 102
    return-void
.end method

.method static synthetic access$0()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lorg/fourthline/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->log:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$1(Lorg/fourthline/cling/transport/impl/apache/HttpServerConnectionUpnpStream;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->responseException(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$2(Lorg/fourthline/cling/transport/impl/apache/HttpServerConnectionUpnpStream;Lorg/fourthline/cling/model/message/StreamResponseMessage;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->responseSent(Lorg/fourthline/cling/model/message/StreamResponseMessage;)V

    return-void
.end method


# virtual methods
.method protected abstract createConnection()Lorg/fourthline/cling/model/message/Connection;
.end method

.method public getConnection()Lorg/apache/http/HttpServerConnection;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->connection:Lorg/apache/http/HttpServerConnection;

    return-object v0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 111
    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->connection:Lorg/apache/http/HttpServerConnection;

    invoke-interface {v0}, Lorg/apache/http/HttpServerConnection;->isOpen()Z
    :try_end_0
    .catch Lorg/apache/http/ConnectionClosedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/apache/http/HttpException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 128
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->connection:Lorg/apache/http/HttpServerConnection;

    invoke-interface {v0}, Lorg/apache/http/HttpServerConnection;->shutdown()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8

    .line 133
    :goto_1
    return-void

    .line 112
    :cond_1
    :try_start_2
    sget-object v0, Lorg/fourthline/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->log:Ljava/util/logging/Logger;

    const-string v1, "Handling request on open connection..."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 113
    new-instance v0, Lorg/apache/http/protocol/BasicHttpContext;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/http/protocol/BasicHttpContext;-><init>(Lorg/apache/http/protocol/HttpContext;)V

    .line 114
    iget-object v1, p0, Lorg/fourthline/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->httpService:Lorg/apache/http/protocol/HttpService;

    iget-object v2, p0, Lorg/fourthline/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->connection:Lorg/apache/http/HttpServerConnection;

    invoke-virtual {v1, v2, v0}, Lorg/apache/http/protocol/HttpService;->handleRequest(Lorg/apache/http/HttpServerConnection;Lorg/apache/http/protocol/HttpContext;)V
    :try_end_2
    .catch Lorg/apache/http/ConnectionClosedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lorg/apache/http/HttpException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    :try_start_3
    sget-object v1, Lorg/fourthline/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->log:Ljava/util/logging/Logger;

    const-string v2, "Client closed connection"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->responseException(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 128
    :try_start_4
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->connection:Lorg/apache/http/HttpServerConnection;

    invoke-interface {v0}, Lorg/apache/http/HttpServerConnection;->shutdown()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 129
    :catch_1
    move-exception v0

    .line 130
    sget-object v1, Lorg/fourthline/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error closing connection: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_1

    .line 119
    :catch_2
    move-exception v0

    .line 120
    :try_start_5
    sget-object v1, Lorg/fourthline/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Server-side closed socket (this is \'normal\' behavior of Apache HTTP Core!): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 128
    :try_start_6
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->connection:Lorg/apache/http/HttpServerConnection;

    invoke-interface {v0}, Lorg/apache/http/HttpServerConnection;->shutdown()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 129
    :catch_3
    move-exception v0

    .line 130
    sget-object v1, Lorg/fourthline/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error closing connection: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_1

    .line 121
    :catch_4
    move-exception v0

    .line 122
    :try_start_7
    sget-object v1, Lorg/fourthline/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "I/O exception during HTTP request processing: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->responseException(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 128
    :try_start_8
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->connection:Lorg/apache/http/HttpServerConnection;

    invoke-interface {v0}, Lorg/apache/http/HttpServerConnection;->shutdown()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_1

    .line 129
    :catch_5
    move-exception v0

    .line 130
    sget-object v1, Lorg/fourthline/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error closing connection: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 124
    :catch_6
    move-exception v0

    .line 125
    :try_start_9
    new-instance v1, Lorg/fourthline/cling/model/UnsupportedDataException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Request malformed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/http/HttpException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/fourthline/cling/model/UnsupportedDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 126
    :catchall_0
    move-exception v0

    .line 128
    :try_start_a
    iget-object v1, p0, Lorg/fourthline/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->connection:Lorg/apache/http/HttpServerConnection;

    invoke-interface {v1}, Lorg/apache/http/HttpServerConnection;->shutdown()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 132
    :goto_2
    throw v0

    .line 129
    :catch_7
    move-exception v1

    .line 130
    sget-object v2, Lorg/fourthline/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error closing connection: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_2

    .line 129
    :catch_8
    move-exception v0

    .line 130
    sget-object v1, Lorg/fourthline/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error closing connection: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto/16 :goto_1
.end method
