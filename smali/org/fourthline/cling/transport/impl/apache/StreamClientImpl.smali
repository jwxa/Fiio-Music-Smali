.class public Lorg/fourthline/cling/transport/impl/apache/StreamClientImpl;
.super Lorg/fourthline/cling/transport/spi/AbstractStreamClient;
.source "StreamClientImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/transport/spi/AbstractStreamClient",
        "<",
        "Lorg/fourthline/cling/transport/impl/apache/StreamClientConfigurationImpl;",
        "Lorg/apache/http/client/methods/HttpUriRequest;",
        ">;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$org$fourthline$cling$model$message$UpnpRequest$Method:[I

.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field protected final clientConnectionManager:Lorg/apache/http/impl/conn/PoolingClientConnectionManager;

.field protected final configuration:Lorg/fourthline/cling/transport/impl/apache/StreamClientConfigurationImpl;

.field protected final globalParams:Lorg/apache/http/params/HttpParams;

.field protected final httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;


# direct methods
.method static synthetic $SWITCH_TABLE$org$fourthline$cling$model$message$UpnpRequest$Method()[I
    .locals 3

    .prologue
    .line 67
    sget-object v0, Lorg/fourthline/cling/transport/impl/apache/StreamClientImpl;->$SWITCH_TABLE$org$fourthline$cling$model$message$UpnpRequest$Method:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->values()[Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->GET:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    invoke-virtual {v1}, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_1
    :try_start_1
    sget-object v1, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->MSEARCH:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    invoke-virtual {v1}, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_2
    :try_start_2
    sget-object v1, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->NOTIFY:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    invoke-virtual {v1}, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_3
    :try_start_3
    sget-object v1, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->POST:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    invoke-virtual {v1}, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_4
    :try_start_4
    sget-object v1, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->SUBSCRIBE:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    invoke-virtual {v1}, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_5
    :try_start_5
    sget-object v1, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->UNKNOWN:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    invoke-virtual {v1}, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_6
    :try_start_6
    sget-object v1, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->UNSUBSCRIBE:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    invoke-virtual {v1}, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_7
    sput-object v0, Lorg/fourthline/cling/transport/impl/apache/StreamClientImpl;->$SWITCH_TABLE$org$fourthline$cling$model$message$UpnpRequest$Method:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_7

    :catch_1
    move-exception v1

    goto :goto_6

    :catch_2
    move-exception v1

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_2

    :catch_6
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const-class v0, Lorg/fourthline/cling/transport/spi/StreamClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/transport/impl/apache/StreamClientImpl;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/transport/impl/apache/StreamClientConfigurationImpl;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 76
    invoke-direct {p0}, Lorg/fourthline/cling/transport/spi/AbstractStreamClient;-><init>()V

    .line 74
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/transport/impl/apache/StreamClientImpl;->globalParams:Lorg/apache/http/params/HttpParams;

    .line 77
    iput-object p1, p0, Lorg/fourthline/cling/transport/impl/apache/StreamClientImpl;->configuration:Lorg/fourthline/cling/transport/impl/apache/StreamClientConfigurationImpl;

    .line 79
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/apache/StreamClientImpl;->globalParams:Lorg/apache/http/params/HttpParams;

    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/apache/StreamClientImpl;->getConfiguration()Lorg/fourthline/cling/transport/impl/apache/StreamClientConfigurationImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/transport/impl/apache/StreamClientConfigurationImpl;->getContentCharset()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/apache/StreamClientImpl;->globalParams:Lorg/apache/http/params/HttpParams;

    invoke-static {v0, v6}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 84
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/apache/StreamClientImpl;->globalParams:Lorg/apache/http/params/HttpParams;

    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/apache/StreamClientImpl;->getConfiguration()Lorg/fourthline/cling/transport/impl/apache/StreamClientConfigurationImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/transport/impl/apache/StreamClientConfigurationImpl;->getTimeoutSeconds()I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    mul-int/lit16 v1, v1, 0x3e8

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 85
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/apache/StreamClientImpl;->globalParams:Lorg/apache/http/params/HttpParams;

    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/apache/StreamClientImpl;->getConfiguration()Lorg/fourthline/cling/transport/impl/apache/StreamClientConfigurationImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/transport/impl/apache/StreamClientConfigurationImpl;->getTimeoutSeconds()I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    mul-int/lit16 v1, v1, 0x3e8

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 87
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/apache/StreamClientImpl;->globalParams:Lorg/apache/http/params/HttpParams;

    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/apache/StreamClientImpl;->getConfiguration()Lorg/fourthline/cling/transport/impl/apache/StreamClientConfigurationImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/transport/impl/apache/StreamClientConfigurationImpl;->getStaleCheckingEnabled()Z

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    .line 88
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/apache/StreamClientImpl;->getConfiguration()Lorg/fourthline/cling/transport/impl/apache/StreamClientConfigurationImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/transport/impl/apache/StreamClientConfigurationImpl;->getSocketBufferSize()I

    move-result v0

    if-eq v0, v5, :cond_0

    .line 89
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/apache/StreamClientImpl;->globalParams:Lorg/apache/http/params/HttpParams;

    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/apache/StreamClientImpl;->getConfiguration()Lorg/fourthline/cling/transport/impl/apache/StreamClientConfigurationImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/transport/impl/apache/StreamClientConfigurationImpl;->getSocketBufferSize()I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 92
    :cond_0
    new-instance v0, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 93
    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    const-string v2, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v3

    const/16 v4, 0x50

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 95
    new-instance v1, Lorg/apache/http/impl/conn/PoolingClientConnectionManager;

    invoke-direct {v1, v0}, Lorg/apache/http/impl/conn/PoolingClientConnectionManager;-><init>(Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    iput-object v1, p0, Lorg/fourthline/cling/transport/impl/apache/StreamClientImpl;->clientConnectionManager:Lorg/apache/http/impl/conn/PoolingClientConnectionManager;

    .line 96
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/apache/StreamClientImpl;->clientConnectionManager:Lorg/apache/http/impl/conn/PoolingClientConnectionManager;

    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/apache/StreamClientImpl;->getConfiguration()Lorg/fourthline/cling/transport/impl/apache/StreamClientConfigurationImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/transport/impl/apache/StreamClientConfigurationImpl;->getMaxTotalConnections()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/conn/PoolingClientConnectionManager;->setMaxTotal(I)V

    .line 97
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/apache/StreamClientImpl;->clientConnectionManager:Lorg/apache/http/impl/conn/PoolingClientConnectionManager;

    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/apache/StreamClientImpl;->getConfiguration()Lorg/fourthline/cling/transport/impl/apache/StreamClientConfigurationImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/transport/impl/apache/StreamClientConfigurationImpl;->getMaxTotalPerRoute()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/conn/PoolingClientConnectionManager;->setDefaultMaxPerRoute(I)V

    .line 99
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v1, p0, Lorg/fourthline/cling/transport/impl/apache/StreamClientImpl;->clientConnectionManager:Lorg/apache/http/impl/conn/PoolingClientConnectionManager;

    iget-object v2, p0, Lorg/fourthline/cling/transport/impl/apache/StreamClientImpl;->globalParams:Lorg/apache/http/params/HttpParams;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    iput-object v0, p0, Lorg/fourthline/cling/transport/impl/apache/StreamClientImpl;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 100
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/apache/StreamClientImpl;->getConfiguration()Lorg/fourthline/cling/transport/impl/apache/StreamClientConfigurationImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/transport/impl/apache/StreamClientConfigurationImpl;->getRequestRetryCount()I

    move-result v0

    if-eq v0, v5, :cond_1

    .line 101
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/apache/StreamClientImpl;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 102
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;

    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/apache/StreamClientImpl;->getConfiguration()Lorg/fourthline/cling/transport/impl/apache/StreamClientConfigurationImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/fourthline/cling/transport/impl/apache/StreamClientConfigurationImpl;->getRequestRetryCount()I

    move-result v2

    invoke-direct {v1, v2, v6}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;-><init>(IZ)V

    .line 101
    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    .line 105
    :cond_1
    return-void
.end method

.method static synthetic access$5()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lorg/fourthline/cling/transport/impl/apache/StreamClientImpl;->log:Ljava/util/logging/Logger;

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic abort(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-virtual {p0, p1}, Lorg/fourthline/cling/transport/impl/apache/StreamClientImpl;->abort(Lorg/apache/http/client/methods/HttpUriRequest;)V

    return-void
.end method

.method protected abort(Lorg/apache/http/client/methods/HttpUriRequest;)V
    .locals 0

    .prologue
    .line 179
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    .line 180
    return-void
.end method

.method protected bridge synthetic createCallable(Lorg/fourthline/cling/model/message/StreamRequestMessage;Ljava/lang/Object;)Ljava/util/concurrent/Callable;
    .locals 1

    .prologue
    .line 1
    check-cast p2, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-virtual {p0, p1, p2}, Lorg/fourthline/cling/transport/impl/apache/StreamClientImpl;->createCallable(Lorg/fourthline/cling/model/message/StreamRequestMessage;Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/util/concurrent/Callable;

    move-result-object v0

    return-object v0
.end method

.method protected createCallable(Lorg/fourthline/cling/model/message/StreamRequestMessage;Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/util/concurrent/Callable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/message/StreamRequestMessage;",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            ")",
            "Ljava/util/concurrent/Callable",
            "<",
            "Lorg/fourthline/cling/model/message/StreamResponseMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    new-instance v0, Lorg/fourthline/cling/transport/impl/apache/d;

    invoke-direct {v0, p0, p1, p2}, Lorg/fourthline/cling/transport/impl/apache/d;-><init>(Lorg/fourthline/cling/transport/impl/apache/StreamClientImpl;Lorg/fourthline/cling/model/message/StreamRequestMessage;Lorg/apache/http/client/methods/HttpUriRequest;)V

    return-object v0
.end method

.method protected createHttpRequestEntity(Lorg/fourthline/cling/model/message/UpnpMessage;)Lorg/apache/http/HttpEntity;
    .locals 3

    .prologue
    .line 202
    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/UpnpMessage;->getBodyType()Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;

    move-result-object v0

    sget-object v1, Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;->BYTES:Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    sget-object v0, Lorg/fourthline/cling/transport/impl/apache/StreamClientImpl;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    sget-object v0, Lorg/fourthline/cling/transport/impl/apache/StreamClientImpl;->log:Ljava/util/logging/Logger;

    const-string v1, "Preparing HTTP request entity as byte[]"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 205
    :cond_0
    new-instance v0, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/UpnpMessage;->getBodyBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 211
    :goto_0
    return-object v0

    .line 207
    :cond_1
    sget-object v0, Lorg/fourthline/cling/transport/impl/apache/StreamClientImpl;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 208
    sget-object v0, Lorg/fourthline/cling/transport/impl/apache/StreamClientImpl;->log:Ljava/util/logging/Logger;

    const-string v1, "Preparing HTTP request entity as string"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 210
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/UpnpMessage;->getContentTypeCharset()Ljava/lang/String;

    move-result-object v1

    .line 211
    new-instance v0, Lorg/apache/http/entity/StringEntity;

    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/UpnpMessage;->getBodyString()Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_3

    :goto_1
    invoke-direct {v0, v2, v1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 212
    :catch_0
    move-exception v0

    .line 214
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 211
    :cond_3
    :try_start_1
    const-string v1, "UTF-8"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method protected bridge synthetic createRequest(Lorg/fourthline/cling/model/message/StreamRequestMessage;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/transport/impl/apache/StreamClientImpl;->createRequest(Lorg/fourthline/cling/model/message/StreamRequestMessage;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    return-object v0
.end method

.method protected createRequest(Lorg/fourthline/cling/model/message/StreamRequestMessage;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 4

    .prologue
    .line 115
    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->getOperation()Lorg/fourthline/cling/model/message/UpnpOperation;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/UpnpRequest;

    .line 117
    invoke-static {}, Lorg/fourthline/cling/transport/impl/apache/StreamClientImpl;->$SWITCH_TABLE$org$fourthline$cling$model$message$UpnpRequest$Method()[I

    move-result-object v1

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/UpnpRequest;->getMethod()Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    move-result-object v2

    invoke-virtual {v2}, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 153
    :pswitch_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown HTTP method: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/UpnpRequest;->getHttpMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 119
    :pswitch_1
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/UpnpRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    move-object v0, v1

    .line 157
    :goto_0
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/transport/impl/apache/StreamClientImpl;->getRequestParams(Lorg/fourthline/cling/model/message/StreamRequestMessage;)Lorg/apache/http/params/HttpParams;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 158
    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/fourthline/cling/transport/impl/apache/HeaderUtil;->add(Lorg/apache/http/HttpMessage;Lorg/seamless/http/Headers;)V

    .line 160
    return-object v0

    .line 122
    :pswitch_2
    new-instance v1, Lorg/fourthline/cling/transport/impl/apache/a;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/UpnpRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lorg/fourthline/cling/transport/impl/apache/a;-><init>(Lorg/fourthline/cling/transport/impl/apache/StreamClientImpl;Ljava/net/URI;)V

    move-object v0, v1

    .line 128
    goto :goto_0

    .line 130
    :pswitch_3
    new-instance v1, Lorg/fourthline/cling/transport/impl/apache/b;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/UpnpRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lorg/fourthline/cling/transport/impl/apache/b;-><init>(Lorg/fourthline/cling/transport/impl/apache/StreamClientImpl;Ljava/net/URI;)V

    move-object v0, v1

    .line 136
    goto :goto_0

    .line 138
    :pswitch_4
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/UpnpRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    .line 139
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/transport/impl/apache/StreamClientImpl;->createHttpRequestEntity(Lorg/fourthline/cling/model/message/UpnpMessage;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/apache/http/HttpEntityEnclosingRequest;->setEntity(Lorg/apache/http/HttpEntity;)V

    move-object v0, v1

    .line 140
    check-cast v0, Lorg/apache/http/client/methods/HttpUriRequest;

    goto :goto_0

    .line 143
    :pswitch_5
    new-instance v1, Lorg/fourthline/cling/transport/impl/apache/c;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/UpnpRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lorg/fourthline/cling/transport/impl/apache/c;-><init>(Lorg/fourthline/cling/transport/impl/apache/StreamClientImpl;Ljava/net/URI;)V

    .line 149
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/transport/impl/apache/StreamClientImpl;->createHttpRequestEntity(Lorg/fourthline/cling/model/message/UpnpMessage;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/apache/http/HttpEntityEnclosingRequest;->setEntity(Lorg/apache/http/HttpEntity;)V

    move-object v0, v1

    .line 150
    check-cast v0, Lorg/apache/http/client/methods/HttpUriRequest;

    goto :goto_0

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected createResponseHandler()Lorg/apache/http/client/ResponseHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/http/client/ResponseHandler",
            "<",
            "Lorg/fourthline/cling/model/message/StreamResponseMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 220
    new-instance v0, Lorg/fourthline/cling/transport/impl/apache/e;

    invoke-direct {v0, p0}, Lorg/fourthline/cling/transport/impl/apache/e;-><init>(Lorg/fourthline/cling/transport/impl/apache/StreamClientImpl;)V

    return-object v0
.end method

.method public getConfiguration()Lorg/fourthline/cling/transport/impl/apache/StreamClientConfigurationImpl;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/apache/StreamClientImpl;->configuration:Lorg/fourthline/cling/transport/impl/apache/StreamClientConfigurationImpl;

    return-object v0
.end method

.method public bridge synthetic getConfiguration()Lorg/fourthline/cling/transport/spi/StreamClientConfiguration;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/apache/StreamClientImpl;->getConfiguration()Lorg/fourthline/cling/transport/impl/apache/StreamClientConfigurationImpl;

    move-result-object v0

    return-object v0
.end method

.method protected getRequestParams(Lorg/fourthline/cling/model/message/StreamRequestMessage;)Lorg/apache/http/params/HttpParams;
    .locals 4

    .prologue
    .line 257
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 260
    const-string v2, "http.protocol.version"

    .line 261
    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->getOperation()Lorg/fourthline/cling/model/message/UpnpOperation;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/UpnpRequest;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/UpnpRequest;->getHttpMinorVersion()I

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/apache/http/HttpVersion;->HTTP_1_0:Lorg/apache/http/HttpVersion;

    .line 259
    :goto_0
    invoke-interface {v1, v2, v0}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 267
    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object v0

    sget-object v2, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->USER_AGENT:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    invoke-virtual {v0, v2}, Lorg/fourthline/cling/model/message/UpnpHeaders;->containsKey(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 270
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/apache/StreamClientImpl;->getConfiguration()Lorg/fourthline/cling/transport/impl/apache/StreamClientConfigurationImpl;

    move-result-object v0

    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->getUdaMajorVersion()I

    move-result v2

    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->getUdaMinorVersion()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/fourthline/cling/transport/impl/apache/StreamClientConfigurationImpl;->getUserAgentValue(II)Ljava/lang/String;

    move-result-object v0

    .line 268
    invoke-static {v1, v0}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 274
    :cond_0
    new-instance v0, Lorg/apache/http/params/DefaultedHttpParams;

    iget-object v2, p0, Lorg/fourthline/cling/transport/impl/apache/StreamClientImpl;->globalParams:Lorg/apache/http/params/HttpParams;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/params/DefaultedHttpParams;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/params/HttpParams;)V

    return-object v0

    .line 261
    :cond_1
    sget-object v0, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    goto :goto_0
.end method

.method protected logExecutionException(Ljava/lang/Throwable;)Z
    .locals 3

    .prologue
    .line 184
    instance-of v0, p1, Ljava/lang/IllegalStateException;

    if-eqz v0, :cond_1

    .line 187
    sget-object v0, Lorg/fourthline/cling/transport/impl/apache/StreamClientImpl;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    sget-object v0, Lorg/fourthline/cling/transport/impl/apache/StreamClientImpl;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 189
    :cond_0
    const/4 v0, 0x1

    .line 191
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 196
    sget-object v0, Lorg/fourthline/cling/transport/impl/apache/StreamClientImpl;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    sget-object v0, Lorg/fourthline/cling/transport/impl/apache/StreamClientImpl;->log:Ljava/util/logging/Logger;

    const-string v1, "Shutting down HTTP client connection manager/pool"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 198
    :cond_0
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/apache/StreamClientImpl;->clientConnectionManager:Lorg/apache/http/impl/conn/PoolingClientConnectionManager;

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/PoolingClientConnectionManager;->shutdown()V

    .line 199
    return-void
.end method
