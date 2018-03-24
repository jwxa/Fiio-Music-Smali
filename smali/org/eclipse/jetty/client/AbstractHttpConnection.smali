.class public abstract Lorg/eclipse/jetty/client/AbstractHttpConnection;
.super Lorg/eclipse/jetty/io/AbstractConnection;
.source "AbstractHttpConnection.java"

# interfaces
.implements Lorg/eclipse/jetty/util/component/Dumpable;


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field protected _connectionHeader:Lorg/eclipse/jetty/io/Buffer;

.field protected _destination:Lorg/eclipse/jetty/client/HttpDestination;

.field protected volatile _exchange:Lorg/eclipse/jetty/client/HttpExchange;

.field protected _generator:Lorg/eclipse/jetty/http/HttpGenerator;

.field protected _http11:Z

.field private _idle:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final _idleTimeout:Lorg/eclipse/jetty/util/thread/Timeout$Task;

.field protected _parser:Lorg/eclipse/jetty/http/HttpParser;

.field protected _pipeline:Lorg/eclipse/jetty/client/HttpExchange;

.field protected _reserved:Z

.field protected _status:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Lorg/eclipse/jetty/client/AbstractHttpConnection;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method constructor <init>(Lorg/eclipse/jetty/io/Buffers;Lorg/eclipse/jetty/io/Buffers;Lorg/eclipse/jetty/io/EndPoint;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 75
    invoke-direct {p0, p3}, Lorg/eclipse/jetty/io/AbstractConnection;-><init>(Lorg/eclipse/jetty/io/EndPoint;)V

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_http11:Z

    .line 69
    new-instance v0, Lorg/eclipse/jetty/client/a;

    invoke-direct {v0, p0, v2}, Lorg/eclipse/jetty/client/a;-><init>(Lorg/eclipse/jetty/client/AbstractHttpConnection;B)V

    iput-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_idleTimeout:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    .line 70
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_idle:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 77
    new-instance v0, Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-direct {v0, p1, p3}, Lorg/eclipse/jetty/http/HttpGenerator;-><init>(Lorg/eclipse/jetty/io/Buffers;Lorg/eclipse/jetty/io/EndPoint;)V

    iput-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    .line 78
    new-instance v0, Lorg/eclipse/jetty/http/HttpParser;

    new-instance v1, Lorg/eclipse/jetty/client/b;

    invoke-direct {v1, p0, v2}, Lorg/eclipse/jetty/client/b;-><init>(Lorg/eclipse/jetty/client/AbstractHttpConnection;B)V

    invoke-direct {v0, p2, p3, v1}, Lorg/eclipse/jetty/http/HttpParser;-><init>(Lorg/eclipse/jetty/io/Buffers;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/http/HttpParser$EventHandler;)V

    iput-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    .line 79
    return-void
.end method

.method static synthetic access$200()Lorg/eclipse/jetty/util/log/Logger;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-object v0
.end method

.method static synthetic access$300(Lorg/eclipse/jetty/client/AbstractHttpConnection;)Lorg/eclipse/jetty/io/EndPoint;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    return-object v0
.end method

.method static synthetic access$400(Lorg/eclipse/jetty/client/AbstractHttpConnection;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_idle:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private adjustIdleTimeout()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 140
    iget-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v0}, Lorg/eclipse/jetty/client/HttpExchange;->getTimeout()J

    move-result-wide v0

    .line 141
    cmp-long v2, v0, v4

    if-gtz v2, :cond_0

    .line 142
    iget-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-virtual {v0}, Lorg/eclipse/jetty/client/HttpDestination;->getHttpClient()Lorg/eclipse/jetty/client/HttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/client/HttpClient;->getTimeout()J

    move-result-wide v0

    .line 144
    :cond_0
    iget-object v2, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/EndPoint;->getMaxIdleTime()I

    move-result v2

    int-to-long v2, v2

    .line 146
    cmp-long v4, v0, v4

    if-lez v4, :cond_1

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 151
    iget-object v2, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-interface {v2, v0}, Lorg/eclipse/jetty/io/EndPoint;->setMaxIdleTime(I)V

    .line 153
    :cond_1
    return-void
.end method


# virtual methods
.method public cancelIdleTimeout()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 419
    monitor-enter p0

    .line 421
    :try_start_0
    iget-object v2, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_idle:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 423
    iget-object v1, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-virtual {v1}, Lorg/eclipse/jetty/client/HttpDestination;->getHttpClient()Lorg/eclipse/jetty/client/HttpClient;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_idleTimeout:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/client/HttpClient;->cancel(Lorg/eclipse/jetty/util/thread/Timeout$Task;)V

    .line 424
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 428
    :goto_0
    return v0

    .line 426
    :cond_0
    monitor-exit p0

    move v0, v1

    .line 428
    goto :goto_0

    .line 426
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public close()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 377
    iget-object v1, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    .line 378
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/eclipse/jetty/client/HttpExchange;->isDone()Z

    move-result v0

    if-nez v0, :cond_1

    .line 380
    invoke-virtual {v1}, Lorg/eclipse/jetty/client/HttpExchange;->getStatus()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 390
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lorg/eclipse/jetty/client/HttpExchange;->toString()Ljava/lang/String;

    move-result-object v2

    .line 393
    iget-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->isInputShutdown()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "half closed: "

    .line 394
    :goto_1
    const/16 v3, 0x9

    invoke-virtual {v1, v3}, Lorg/eclipse/jetty/client/HttpExchange;->setStatus(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 395
    invoke-virtual {v1}, Lorg/eclipse/jetty/client/HttpExchange;->getEventListener()Lorg/eclipse/jetty/client/HttpEventListener;

    move-result-object v1

    new-instance v3, Lorg/eclipse/jetty/io/EofException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/eclipse/jetty/io/EofException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Lorg/eclipse/jetty/client/HttpEventListener;->onException(Ljava/lang/Throwable;)V

    .line 399
    :cond_1
    :pswitch_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 401
    iget-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->close()V

    .line 402
    iget-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-virtual {v0, p0, v5}, Lorg/eclipse/jetty/client/HttpDestination;->returnConnection(Lorg/eclipse/jetty/client/AbstractHttpConnection;Z)V

    .line 404
    :cond_2
    return-void

    .line 389
    :pswitch_1
    iget-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->isInputShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v0, v5}, Lorg/eclipse/jetty/http/HttpParser;->isState(I)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 393
    :cond_3
    const-string v0, "local close: "

    goto :goto_1

    :cond_4
    const-string v0, "closed: "

    goto :goto_1

    .line 380
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected commitRequest()V
    .locals 7

    .prologue
    .line 180
    monitor-enter p0

    .line 182
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_status:I

    .line 183
    iget-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v0}, Lorg/eclipse/jetty/client/HttpExchange;->getStatus()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 184
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 186
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/client/HttpExchange;->setStatus(I)Z

    .line 187
    iget-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    iget-object v1, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v1}, Lorg/eclipse/jetty/client/HttpExchange;->getVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/http/HttpGenerator;->setVersion(I)V

    .line 189
    iget-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v0}, Lorg/eclipse/jetty/client/HttpExchange;->getMethod()Ljava/lang/String;

    move-result-object v2

    .line 190
    iget-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v0}, Lorg/eclipse/jetty/client/HttpExchange;->getRequestURI()Ljava/lang/String;

    move-result-object v0

    .line 191
    iget-object v1, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-virtual {v1}, Lorg/eclipse/jetty/client/HttpDestination;->isProxied()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 193
    const-string v1, "CONNECT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 195
    iget-object v1, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-virtual {v1}, Lorg/eclipse/jetty/client/HttpDestination;->isSecure()Z

    move-result v3

    .line 196
    iget-object v1, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-virtual {v1}, Lorg/eclipse/jetty/client/HttpDestination;->getAddress()Lorg/eclipse/jetty/client/Address;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jetty/client/Address;->getHost()Ljava/lang/String;

    move-result-object v4

    .line 197
    iget-object v1, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-virtual {v1}, Lorg/eclipse/jetty/client/HttpDestination;->getAddress()Lorg/eclipse/jetty/client/Address;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jetty/client/Address;->getPort()I

    move-result v5

    .line 198
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 199
    if-eqz v3, :cond_7

    const-string v1, "https"

    :goto_0
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    const-string v1, "://"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    if-eqz v3, :cond_1

    const/16 v1, 0x1bb

    if-eq v5, v1, :cond_3

    :cond_1
    if-nez v3, :cond_2

    const/16 v1, 0x50

    if-eq v5, v1, :cond_3

    .line 204
    :cond_2
    const-string v1, ":"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 205
    :cond_3
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 208
    :cond_4
    iget-object v1, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-virtual {v1}, Lorg/eclipse/jetty/client/HttpDestination;->getProxyAuthentication()Lorg/eclipse/jetty/client/security/Authentication;

    move-result-object v1

    .line 209
    if-eqz v1, :cond_5

    .line 210
    iget-object v3, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-interface {v1, v3}, Lorg/eclipse/jetty/client/security/Authentication;->setCredentials(Lorg/eclipse/jetty/client/HttpExchange;)V

    .line 213
    :cond_5
    iget-object v1, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v1, v2, v0}, Lorg/eclipse/jetty/http/HttpGenerator;->setRequest(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    const-string v1, "HEAD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/http/HttpParser;->setHeadResponse(Z)V

    .line 216
    iget-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v0}, Lorg/eclipse/jetty/client/HttpExchange;->getRequestFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    .line 217
    iget-object v1, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v1}, Lorg/eclipse/jetty/client/HttpExchange;->getVersion()I

    move-result v1

    const/16 v2, 0xb

    if-lt v1, v2, :cond_6

    .line 219
    sget-object v1, Lorg/eclipse/jetty/http/HttpHeaders;->HOST_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/http/HttpFields;->containsKey(Lorg/eclipse/jetty/io/Buffer;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 220
    sget-object v1, Lorg/eclipse/jetty/http/HttpHeaders;->HOST_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    iget-object v2, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-virtual {v2}, Lorg/eclipse/jetty/client/HttpDestination;->getHostHeader()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/http/HttpFields;->add(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 223
    :cond_6
    iget-object v1, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v1}, Lorg/eclipse/jetty/client/HttpExchange;->getRequestContent()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    .line 224
    if-eqz v1, :cond_8

    .line 226
    const-string v2, "Content-Length"

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v0, v2, v4, v5}, Lorg/eclipse/jetty/http/HttpFields;->putLongField(Ljava/lang/String;J)V

    .line 227
    iget-object v2, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lorg/eclipse/jetty/http/HttpGenerator;->completeHeader(Lorg/eclipse/jetty/http/HttpFields;Z)V

    .line 228
    iget-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    new-instance v2, Lorg/eclipse/jetty/io/View;

    invoke-direct {v2, v1}, Lorg/eclipse/jetty/io/View;-><init>(Lorg/eclipse/jetty/io/Buffer;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/jetty/http/HttpGenerator;->addContent(Lorg/eclipse/jetty/io/Buffer;Z)V

    .line 229
    iget-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/client/HttpExchange;->setStatus(I)Z

    .line 245
    :goto_1
    monitor-exit p0

    return-void

    .line 199
    :cond_7
    const-string v1, "http"

    goto/16 :goto_0

    .line 233
    :cond_8
    iget-object v1, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v1}, Lorg/eclipse/jetty/client/HttpExchange;->getRequestContentSource()Ljava/io/InputStream;

    move-result-object v1

    .line 234
    if-eqz v1, :cond_9

    .line 236
    iget-object v1, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jetty/http/HttpGenerator;->completeHeader(Lorg/eclipse/jetty/http/HttpFields;Z)V

    goto :goto_1

    .line 240
    :cond_9
    const-string v1, "Content-Length"

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/http/HttpFields;->remove(Ljava/lang/String;)V

    .line 241
    iget-object v1, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jetty/http/HttpGenerator;->completeHeader(Lorg/eclipse/jetty/http/HttpFields;Z)V

    .line 242
    iget-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/client/HttpExchange;->setStatus(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public dump()Ljava/lang/String;
    .locals 1

    .prologue
    .line 457
    invoke-static {p0}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->dump(Lorg/eclipse/jetty/util/component/Dumpable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dump(Ljava/lang/Appendable;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 466
    monitor-enter p0

    .line 468
    :try_start_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    const-string v1, "\n"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 469
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/Collection;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p1, p2, v0}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->dump(Ljava/lang/Appendable;Ljava/lang/String;[Ljava/util/Collection;)V

    .line 470
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected exchangeExpired(Lorg/eclipse/jetty/client/HttpExchange;)V
    .locals 2

    .prologue
    .line 433
    monitor-enter p0

    .line 437
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    .line 441
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lorg/eclipse/jetty/client/HttpDestination;->returnConnection(Lorg/eclipse/jetty/client/AbstractHttpConnection;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 448
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    return-void

    .line 443
    :catch_0
    move-exception v0

    .line 445
    sget-object v1, Lorg/eclipse/jetty/client/AbstractHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 448
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDestination()Lorg/eclipse/jetty/client/HttpDestination;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    return-object v0
.end method

.method public abstract handle()Lorg/eclipse/jetty/io/Connection;
.end method

.method public isIdle()Z
    .locals 1

    .prologue
    .line 160
    monitor-enter p0

    .line 162
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isReserved()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_reserved:Z

    return v0
.end method

.method public isSuspended()Z
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    return v0
.end method

.method public onClose()V
    .locals 0

    .prologue
    .line 173
    return-void
.end method

.method protected reset()V
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_connectionHeader:Lorg/eclipse/jetty/io/Buffer;

    .line 251
    iget-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpParser;->reset()V

    .line 252
    iget-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpGenerator;->reset()V

    .line 253
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_http11:Z

    .line 254
    return-void
.end method

.method public send(Lorg/eclipse/jetty/client/HttpExchange;)Z
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 103
    sget-object v2, Lorg/eclipse/jetty/client/AbstractHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v3, "Send {} on {}"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v1

    aput-object p0, v4, v0

    invoke-interface {v2, v3, v4}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    monitor-enter p0

    .line 106
    :try_start_0
    iget-object v2, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    if-eqz v2, :cond_1

    .line 108
    iget-object v1, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    if-eqz v1, :cond_0

    .line 109
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " PIPELINED!!!  _exchange="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 110
    :cond_0
    :try_start_1
    iput-object p1, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    .line 111
    monitor-exit p0

    .line 129
    :goto_0
    return v0

    .line 114
    :cond_1
    iput-object p1, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    .line 115
    iget-object v2, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v2, p0}, Lorg/eclipse/jetty/client/HttpExchange;->associate(Lorg/eclipse/jetty/client/AbstractHttpConnection;)V

    .line 118
    iget-object v2, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/EndPoint;->isOpen()Z

    move-result v2

    if-nez v2, :cond_2

    .line 120
    iget-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v0}, Lorg/eclipse/jetty/client/HttpExchange;->disassociate()Lorg/eclipse/jetty/client/AbstractHttpConnection;

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    .line 122
    monitor-exit p0

    move v0, v1

    goto :goto_0

    .line 125
    :cond_2
    iget-object v1, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/client/HttpExchange;->setStatus(I)Z

    .line 127
    invoke-direct {p0}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->adjustIdleTimeout()V

    .line 129
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setDestination(Lorg/eclipse/jetty/client/HttpDestination;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    .line 99
    return-void
.end method

.method public setIdleTimeout()V
    .locals 3

    .prologue
    .line 408
    monitor-enter p0

    .line 410
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_idle:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-virtual {v0}, Lorg/eclipse/jetty/client/HttpDestination;->getHttpClient()Lorg/eclipse/jetty/client/HttpClient;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_idleTimeout:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/client/HttpClient;->scheduleIdle(Lorg/eclipse/jetty/util/thread/Timeout$Task;)V

    .line 414
    monitor-exit p0

    return-void

    .line 413
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setReserved(Z)V
    .locals 0

    .prologue
    .line 83
    iput-boolean p1, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_reserved:Z

    .line 84
    return-void
.end method

.method public toDetailString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " idle for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_idleTimeout:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/thread/Timeout$Task;->getAge()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 360
    const-string v1, "%s %s g=%s p=%s"

    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-super {p0}, Lorg/eclipse/jetty/io/AbstractConnection;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x1

    iget-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    if-nez v0, :cond_0

    const-string v0, "?.?.?.?:??"

    :goto_0
    aput-object v0, v2, v3

    const/4 v0, 0x2

    iget-object v3, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    aput-object v3, v2, v0

    const/4 v0, 0x3

    iget-object v3, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-virtual {v0}, Lorg/eclipse/jetty/client/HttpDestination;->getAddress()Lorg/eclipse/jetty/client/Address;

    move-result-object v0

    goto :goto_0
.end method
