.class public Lorg/eclipse/jetty/client/AsyncHttpConnection;
.super Lorg/eclipse/jetty/client/AbstractHttpConnection;
.source "AsyncHttpConnection.java"

# interfaces
.implements Lorg/eclipse/jetty/io/nio/AsyncConnection;


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private final _asyncEndp:Lorg/eclipse/jetty/io/AsyncEndPoint;

.field private _requestComplete:Z

.field private _requestContentChunk:Lorg/eclipse/jetty/io/Buffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lorg/eclipse/jetty/client/AsyncHttpConnection;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method constructor <init>(Lorg/eclipse/jetty/io/Buffers;Lorg/eclipse/jetty/io/Buffers;Lorg/eclipse/jetty/io/EndPoint;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jetty/client/AbstractHttpConnection;-><init>(Lorg/eclipse/jetty/io/Buffers;Lorg/eclipse/jetty/io/Buffers;Lorg/eclipse/jetty/io/EndPoint;)V

    .line 50
    check-cast p3, Lorg/eclipse/jetty/io/AsyncEndPoint;

    iput-object p3, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_asyncEndp:Lorg/eclipse/jetty/io/AsyncEndPoint;

    .line 51
    return-void
.end method


# virtual methods
.method public handle()Lorg/eclipse/jetty/io/Connection;
    .locals 13

    .prologue
    const/4 v10, 0x4

    const/4 v11, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 61
    move v4, v3

    move v1, v2

    move-object v5, p0

    .line 69
    :cond_0
    :goto_0
    if-eqz v1, :cond_2c

    if-ne v5, p0, :cond_2c

    .line 71
    :try_start_0
    sget-object v0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v6, "while open={} more={} progress={}"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v9}, Lorg/eclipse/jetty/io/EndPoint;->isOpen()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v9}, Lorg/eclipse/jetty/http/HttpParser;->isMoreInBuffer()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v7, v8

    invoke-interface {v0, v6, v7}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    iget-object v6, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    .line 76
    sget-object v0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "exchange {} on {}"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v6, v7, v8

    const/4 v8, 0x1

    aput-object p0, v7, v8

    invoke-interface {v0, v1, v7}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 81
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpGenerator;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_2e

    if-eqz v6, :cond_2e

    invoke-virtual {v6}, Lorg/eclipse/jetty/client/HttpExchange;->getStatus()I

    move-result v0

    if-ne v0, v11, :cond_2e

    .line 83
    sget-object v0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "commit {}"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v6, v7, v8

    invoke-interface {v0, v1, v7}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    .line 85
    :try_start_2
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/AsyncHttpConnection;->commitRequest()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    move v1, v2

    .line 89
    :goto_1
    :try_start_3
    iget-object v0, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpGenerator;->isCommitted()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpGenerator;->isComplete()Z

    move-result v0

    if-nez v0, :cond_3

    .line 91
    iget-object v0, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpGenerator;->flushBuffer()I

    move-result v0

    if-lez v0, :cond_1

    .line 93
    sget-object v0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v7, "flushed"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v0, v7, v8}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    .line 98
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Lorg/eclipse/jetty/http/HttpGenerator;->isState(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 101
    iget-object v0, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_requestContentChunk:Lorg/eclipse/jetty/io/Buffer;

    if-nez v0, :cond_2

    .line 102
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lorg/eclipse/jetty/client/HttpExchange;->getRequestContentChunk(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_requestContentChunk:Lorg/eclipse/jetty/io/Buffer;

    .line 104
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_requestContentChunk:Lorg/eclipse/jetty/io/Buffer;

    if-nez v0, :cond_f

    .line 106
    sget-object v0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v7, "complete {}"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    invoke-interface {v0, v7, v8}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    .line 108
    :try_start_4
    iget-object v0, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpGenerator;->complete()V

    .line 109
    invoke-virtual {v6}, Lorg/eclipse/jetty/client/HttpExchange;->getStatus()I

    move-result v0

    if-ge v0, v10, :cond_10

    .line 110
    const/4 v0, 0x4

    invoke-virtual {v6, v0}, Lorg/eclipse/jetty/client/HttpExchange;->setStatus(I)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    move v1, v2

    .line 126
    :cond_3
    :goto_2
    :try_start_5
    iget-object v0, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpGenerator;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_requestComplete:Z

    if-nez v0, :cond_4

    .line 128
    sget-object v0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v7, "requestComplete {}"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    invoke-interface {v0, v7, v8}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    .line 130
    const/4 v0, 0x1

    :try_start_6
    iput-boolean v0, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_requestComplete:Z

    .line 131
    invoke-virtual {v6}, Lorg/eclipse/jetty/client/HttpExchange;->getEventListener()Lorg/eclipse/jetty/client/HttpEventListener;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/client/HttpEventListener;->onRequestComplete()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    move v1, v2

    .line 135
    :cond_4
    :try_start_7
    iget-object v0, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpParser;->isComplete()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpParser;->parseAvailable()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 137
    sget-object v0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v7, "parsed {}"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    invoke-interface {v0, v7, v8}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    .line 142
    :cond_5
    iget-object v0, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->flush()V

    .line 145
    iget-object v0, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_asyncEndp:Lorg/eclipse/jetty/io/AsyncEndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/AsyncEndPoint;->hasProgressed()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 147
    sget-object v0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v7, "hasProgressed {}"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    invoke-interface {v0, v7, v8}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_8

    move v1, v2

    .line 185
    :cond_6
    :try_start_8
    sget-object v0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v7, "finally {} on {} progress={} {}"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    const/4 v6, 0x1

    aput-object p0, v8, v6

    const/4 v6, 0x2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v6

    const/4 v6, 0x3

    iget-object v9, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    aput-object v9, v8, v6

    invoke-interface {v0, v7, v8}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    if-nez v4, :cond_7

    iget-object v0, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpGenerator;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpParser;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_7
    move v0, v2

    .line 189
    :goto_3
    if-eqz v0, :cond_0

    .line 191
    if-nez v4, :cond_13

    iget-object v0, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpParser;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpGenerator;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_13

    move v0, v2

    .line 192
    :goto_4
    iget-object v6, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v6, v0}, Lorg/eclipse/jetty/http/HttpGenerator;->setPersistent(Z)V

    .line 193
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/AsyncHttpConnection;->reset()V

    .line 194
    if-eqz v0, :cond_8

    .line 195
    iget-object v6, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    iget-object v7, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-virtual {v7}, Lorg/eclipse/jetty/client/HttpDestination;->getHttpClient()Lorg/eclipse/jetty/client/HttpClient;

    move-result-object v7

    invoke-virtual {v7}, Lorg/eclipse/jetty/client/HttpClient;->getIdleTimeout()J

    move-result-wide v8

    long-to-int v7, v8

    invoke-interface {v6, v7}, Lorg/eclipse/jetty/io/EndPoint;->setMaxIdleTime(I)V

    .line 197
    :cond_8
    monitor-enter p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 199
    :try_start_9
    iget-object v6, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    .line 200
    const/4 v7, 0x0

    iput-object v7, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    .line 203
    if-eqz v6, :cond_9

    .line 205
    iget-object v7, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-virtual {v7}, Lorg/eclipse/jetty/client/HttpDestination;->getHttpClient()Lorg/eclipse/jetty/client/HttpClient;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/eclipse/jetty/client/HttpExchange;->cancelTimeout(Lorg/eclipse/jetty/client/HttpClient;)V

    .line 211
    :cond_9
    iget v7, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_status:I

    const/16 v8, 0x65

    if-ne v7, v8, :cond_b

    .line 213
    iget-object v7, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-virtual {v6, v7}, Lorg/eclipse/jetty/client/HttpExchange;->onSwitchProtocol(Lorg/eclipse/jetty/io/EndPoint;)Lorg/eclipse/jetty/io/Connection;

    move-result-object v6

    .line 214
    if-eqz v6, :cond_b

    .line 217
    iget-object v5, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    if-eqz v5, :cond_a

    .line 219
    iget-object v5, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    iget-object v7, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v5, v7}, Lorg/eclipse/jetty/client/HttpDestination;->send(Lorg/eclipse/jetty/client/HttpExchange;)V

    .line 221
    :cond_a
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    move-object v5, v6

    .line 228
    :cond_b
    iget-object v6, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    if-eqz v6, :cond_d

    .line 230
    if-eqz v0, :cond_c

    if-eq v5, p0, :cond_14

    .line 231
    :cond_c
    iget-object v6, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    iget-object v7, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v6, v7}, Lorg/eclipse/jetty/client/HttpDestination;->send(Lorg/eclipse/jetty/client/HttpExchange;)V

    .line 234
    :goto_5
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    .line 237
    :cond_d
    iget-object v6, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    if-nez v6, :cond_e

    invoke-virtual {p0}, Lorg/eclipse/jetty/client/AsyncHttpConnection;->isReserved()Z

    move-result v6

    if-nez v6, :cond_e

    .line 238
    iget-object v6, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    if-nez v0, :cond_15

    move v0, v2

    :goto_6
    invoke-virtual {v6, p0, v0}, Lorg/eclipse/jetty/client/HttpDestination;->returnConnection(Lorg/eclipse/jetty/client/AbstractHttpConnection;Z)V

    .line 239
    :cond_e
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :try_start_a
    monitor-exit p0

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 247
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v1}, Lorg/eclipse/jetty/http/HttpParser;->returnBuffers()V

    .line 248
    iget-object v1, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v1}, Lorg/eclipse/jetty/http/HttpGenerator;->returnBuffers()V

    .line 249
    sget-object v1, Lorg/eclipse/jetty/client/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v4, "unhandle {} on {}"

    new-array v5, v11, [Ljava/lang/Object;

    iget-object v6, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    aput-object v6, v5, v3

    iget-object v3, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    aput-object v3, v5, v2

    invoke-interface {v1, v4, v5}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 112
    :cond_f
    :try_start_b
    iget-object v0, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpGenerator;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 114
    sget-object v0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v7, "addChunk"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v0, v7, v8}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    .line 116
    :try_start_c
    iget-object v1, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_requestContentChunk:Lorg/eclipse/jetty/io/Buffer;

    .line 117
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lorg/eclipse/jetty/client/HttpExchange;->getRequestContentChunk(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_requestContentChunk:Lorg/eclipse/jetty/io/Buffer;

    .line 118
    iget-object v7, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    iget-object v0, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_requestContentChunk:Lorg/eclipse/jetty/io/Buffer;

    if-nez v0, :cond_11

    move v0, v2

    :goto_7
    invoke-virtual {v7, v1, v0}, Lorg/eclipse/jetty/http/HttpGenerator;->addContent(Lorg/eclipse/jetty/io/Buffer;Z)V

    .line 119
    iget-object v0, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_requestContentChunk:Lorg/eclipse/jetty/io/Buffer;

    if-nez v0, :cond_10

    .line 120
    const/4 v0, 0x4

    invoke-virtual {v6, v0}, Lorg/eclipse/jetty/client/HttpExchange;->setStatus(I)Z
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    :cond_10
    move v1, v2

    goto/16 :goto_2

    :cond_11
    move v0, v3

    .line 118
    goto :goto_7

    :cond_12
    move v0, v3

    .line 187
    goto/16 :goto_3

    :cond_13
    move v0, v3

    .line 191
    goto/16 :goto_4

    .line 233
    :cond_14
    :try_start_d
    iget-object v6, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    iput-object v6, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_5

    :cond_15
    move v0, v3

    .line 238
    goto :goto_6

    .line 151
    :catch_0
    move-exception v0

    move v1, v3

    .line 153
    :goto_8
    :try_start_e
    sget-object v7, Lorg/eclipse/jetty/client/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Failure on "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    .line 157
    :try_start_f
    monitor-enter p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 159
    if-eqz v6, :cond_1c

    .line 163
    :try_start_10
    invoke-virtual {v6}, Lorg/eclipse/jetty/client/HttpExchange;->getStatus()I

    move-result v4

    const/16 v7, 0xa

    if-eq v4, v7, :cond_16

    invoke-virtual {v6}, Lorg/eclipse/jetty/client/HttpExchange;->getStatus()I

    move-result v4

    const/16 v7, 0xb

    if-eq v4, v7, :cond_16

    invoke-virtual {v6}, Lorg/eclipse/jetty/client/HttpExchange;->isDone()Z

    move-result v4

    if-nez v4, :cond_16

    .line 167
    const/16 v4, 0x9

    invoke-virtual {v6, v4}, Lorg/eclipse/jetty/client/HttpExchange;->setStatus(I)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 168
    invoke-virtual {v6}, Lorg/eclipse/jetty/client/HttpExchange;->getEventListener()Lorg/eclipse/jetty/client/HttpEventListener;

    move-result-object v4

    invoke-interface {v4, v0}, Lorg/eclipse/jetty/client/HttpEventListener;->onException(Ljava/lang/Throwable;)V

    .line 181
    :cond_16
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 185
    :try_start_11
    sget-object v0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v4, "finally {} on {} progress={} {}"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v6, v7, v8

    const/4 v6, 0x1

    aput-object p0, v7, v6

    const/4 v6, 0x2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v6

    const/4 v6, 0x3

    iget-object v8, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    aput-object v8, v7, v6

    invoke-interface {v0, v4, v7}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    iget-object v0, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lorg/eclipse/jetty/http/HttpGenerator;->setPersistent(Z)V

    .line 193
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/AsyncHttpConnection;->reset()V

    .line 194
    monitor-enter p0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 199
    :try_start_12
    iget-object v0, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    .line 200
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    .line 203
    if-eqz v0, :cond_17

    .line 205
    iget-object v4, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-virtual {v4}, Lorg/eclipse/jetty/client/HttpDestination;->getHttpClient()Lorg/eclipse/jetty/client/HttpClient;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/eclipse/jetty/client/HttpExchange;->cancelTimeout(Lorg/eclipse/jetty/client/HttpClient;)V

    .line 211
    :cond_17
    iget v4, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_status:I

    const/16 v6, 0x65

    if-ne v4, v6, :cond_19

    .line 213
    iget-object v4, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-virtual {v0, v4}, Lorg/eclipse/jetty/client/HttpExchange;->onSwitchProtocol(Lorg/eclipse/jetty/io/EndPoint;)Lorg/eclipse/jetty/io/Connection;

    move-result-object v0

    .line 214
    if-eqz v0, :cond_19

    .line 217
    iget-object v4, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    if-eqz v4, :cond_18

    .line 219
    iget-object v4, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    iget-object v5, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v4, v5}, Lorg/eclipse/jetty/client/HttpDestination;->send(Lorg/eclipse/jetty/client/HttpExchange;)V

    .line 221
    :cond_18
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    move-object v5, v0

    .line 228
    :cond_19
    iget-object v0, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    if-eqz v0, :cond_1a

    .line 230
    iget-object v0, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    iget-object v4, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v0, v4}, Lorg/eclipse/jetty/client/HttpDestination;->send(Lorg/eclipse/jetty/client/HttpExchange;)V

    .line 233
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    .line 237
    :cond_1a
    iget-object v0, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    if-nez v0, :cond_1b

    invoke-virtual {p0}, Lorg/eclipse/jetty/client/AsyncHttpConnection;->isReserved()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 238
    iget-object v0, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    const/4 v4, 0x1

    invoke-virtual {v0, p0, v4}, Lorg/eclipse/jetty/client/HttpDestination;->returnConnection(Lorg/eclipse/jetty/client/AbstractHttpConnection;Z)V

    .line 239
    :cond_1b
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    move v4, v2

    goto/16 :goto_0

    .line 173
    :cond_1c
    :try_start_13
    instance-of v4, v0, Ljava/io/IOException;

    if-eqz v4, :cond_25

    .line 174
    check-cast v0, Ljava/io/IOException;

    throw v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    .line 181
    :catchall_2
    move-exception v0

    :try_start_14
    monitor-exit p0

    throw v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    .line 242
    :catchall_3
    move-exception v0

    move v4, v1

    move v1, v2

    :goto_9
    :try_start_15
    sget-object v7, Lorg/eclipse/jetty/client/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v8, "finally {} on {} progress={} {}"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    const/4 v6, 0x1

    aput-object p0, v9, v6

    const/4 v6, 0x2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v9, v6

    const/4 v4, 0x3

    iget-object v6, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    aput-object v6, v9, v4

    invoke-interface {v7, v8, v9}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    if-nez v1, :cond_1d

    iget-object v4, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v4}, Lorg/eclipse/jetty/http/HttpGenerator;->isComplete()Z

    move-result v4

    if-eqz v4, :cond_28

    iget-object v4, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v4}, Lorg/eclipse/jetty/http/HttpParser;->isComplete()Z

    move-result v4

    if-eqz v4, :cond_28

    :cond_1d
    move v4, v2

    .line 189
    :goto_a
    if-eqz v4, :cond_24

    .line 191
    if-nez v1, :cond_29

    iget-object v1, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v1}, Lorg/eclipse/jetty/http/HttpParser;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_29

    iget-object v1, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v1}, Lorg/eclipse/jetty/http/HttpGenerator;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_29

    move v4, v2

    .line 192
    :goto_b
    iget-object v1, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v1, v4}, Lorg/eclipse/jetty/http/HttpGenerator;->setPersistent(Z)V

    .line 193
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/AsyncHttpConnection;->reset()V

    .line 194
    if-eqz v4, :cond_1e

    .line 195
    iget-object v1, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    iget-object v6, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-virtual {v6}, Lorg/eclipse/jetty/client/HttpDestination;->getHttpClient()Lorg/eclipse/jetty/client/HttpClient;

    move-result-object v6

    invoke-virtual {v6}, Lorg/eclipse/jetty/client/HttpClient;->getIdleTimeout()J

    move-result-wide v6

    long-to-int v6, v6

    invoke-interface {v1, v6}, Lorg/eclipse/jetty/io/EndPoint;->setMaxIdleTime(I)V

    .line 197
    :cond_1e
    monitor-enter p0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    .line 199
    :try_start_16
    iget-object v1, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    .line 200
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    .line 203
    if-eqz v1, :cond_1f

    .line 205
    iget-object v6, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-virtual {v6}, Lorg/eclipse/jetty/client/HttpDestination;->getHttpClient()Lorg/eclipse/jetty/client/HttpClient;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/eclipse/jetty/client/HttpExchange;->cancelTimeout(Lorg/eclipse/jetty/client/HttpClient;)V

    .line 211
    :cond_1f
    iget v6, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_status:I

    const/16 v7, 0x65

    if-ne v6, v7, :cond_2d

    .line 213
    iget-object v6, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-virtual {v1, v6}, Lorg/eclipse/jetty/client/HttpExchange;->onSwitchProtocol(Lorg/eclipse/jetty/io/EndPoint;)Lorg/eclipse/jetty/io/Connection;

    move-result-object v1

    .line 214
    if-eqz v1, :cond_2d

    .line 217
    iget-object v5, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    if-eqz v5, :cond_20

    .line 219
    iget-object v5, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    iget-object v6, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v5, v6}, Lorg/eclipse/jetty/client/HttpDestination;->send(Lorg/eclipse/jetty/client/HttpExchange;)V

    .line 221
    :cond_20
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    .line 228
    :goto_c
    iget-object v5, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    if-eqz v5, :cond_22

    .line 230
    if-eqz v4, :cond_21

    if-eq v1, p0, :cond_2a

    .line 231
    :cond_21
    iget-object v1, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    iget-object v5, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v1, v5}, Lorg/eclipse/jetty/client/HttpDestination;->send(Lorg/eclipse/jetty/client/HttpExchange;)V

    .line 234
    :goto_d
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    .line 237
    :cond_22
    iget-object v1, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    if-nez v1, :cond_23

    invoke-virtual {p0}, Lorg/eclipse/jetty/client/AsyncHttpConnection;->isReserved()Z

    move-result v1

    if-nez v1, :cond_23

    .line 238
    iget-object v5, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    if-nez v4, :cond_2b

    move v1, v2

    :goto_e
    invoke-virtual {v5, p0, v1}, Lorg/eclipse/jetty/client/HttpDestination;->returnConnection(Lorg/eclipse/jetty/client/AbstractHttpConnection;Z)V

    .line 239
    :cond_23
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    .line 242
    :cond_24
    :try_start_17
    throw v0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    .line 175
    :cond_25
    :try_start_18
    instance-of v4, v0, Ljava/lang/Error;

    if-eqz v4, :cond_26

    .line 176
    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 177
    :cond_26
    instance-of v4, v0, Ljava/lang/RuntimeException;

    if-eqz v4, :cond_27

    .line 178
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 179
    :cond_27
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    .line 239
    :catchall_4
    move-exception v0

    :try_start_19
    monitor-exit p0

    throw v0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    :cond_28
    move v4, v3

    .line 187
    goto/16 :goto_a

    :cond_29
    move v4, v3

    .line 191
    goto/16 :goto_b

    .line 233
    :cond_2a
    :try_start_1a
    iget-object v1, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    iput-object v1, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_5

    goto :goto_d

    .line 239
    :catchall_5
    move-exception v0

    :try_start_1b
    monitor-exit p0

    throw v0
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    :cond_2b
    move v1, v3

    .line 238
    goto :goto_e

    .line 243
    :cond_2c
    iget-object v0, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpParser;->returnBuffers()V

    .line 248
    iget-object v0, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpGenerator;->returnBuffers()V

    .line 249
    sget-object v0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "unhandle {} on {}"

    new-array v4, v11, [Ljava/lang/Object;

    iget-object v6, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    aput-object v6, v4, v3

    iget-object v3, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    aput-object v3, v4, v2

    invoke-interface {v0, v1, v4}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 252
    return-object v5

    .line 242
    :catchall_6
    move-exception v0

    move v1, v4

    move v4, v3

    goto/16 :goto_9

    :catchall_7
    move-exception v0

    move v1, v4

    move v4, v2

    goto/16 :goto_9

    :catchall_8
    move-exception v0

    move v12, v4

    move v4, v1

    move v1, v12

    goto/16 :goto_9

    .line 151
    :catch_1
    move-exception v0

    move v1, v2

    goto/16 :goto_8

    :catch_2
    move-exception v0

    goto/16 :goto_8

    :cond_2d
    move-object v1, v5

    goto/16 :goto_c

    :cond_2e
    move v1, v3

    goto/16 :goto_1
.end method

.method public onInputShutdown()V
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpGenerator;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->shutdownOutput()V

    .line 259
    :cond_0
    return-void
.end method

.method protected reset()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_requestComplete:Z

    .line 56
    invoke-super {p0}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->reset()V

    .line 57
    return-void
.end method

.method public send(Lorg/eclipse/jetty/client/HttpExchange;)Z
    .locals 2

    .prologue
    .line 264
    invoke-super {p0, p1}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->send(Lorg/eclipse/jetty/client/HttpExchange;)Z

    move-result v0

    .line 265
    if-eqz v0, :cond_0

    .line 266
    iget-object v1, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_asyncEndp:Lorg/eclipse/jetty/io/AsyncEndPoint;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/AsyncEndPoint;->asyncDispatch()V

    .line 267
    :cond_0
    return v0
.end method
