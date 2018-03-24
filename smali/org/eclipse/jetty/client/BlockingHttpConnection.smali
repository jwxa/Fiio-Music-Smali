.class public Lorg/eclipse/jetty/client/BlockingHttpConnection;
.super Lorg/eclipse/jetty/client/AbstractHttpConnection;
.source "BlockingHttpConnection.java"


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private _expired:Z

.field private _requestComplete:Z

.field private _requestContentChunk:Lorg/eclipse/jetty/io/Buffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lorg/eclipse/jetty/client/BlockingHttpConnection;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method constructor <init>(Lorg/eclipse/jetty/io/Buffers;Lorg/eclipse/jetty/io/Buffers;Lorg/eclipse/jetty/io/EndPoint;)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jetty/client/AbstractHttpConnection;-><init>(Lorg/eclipse/jetty/io/Buffers;Lorg/eclipse/jetty/io/Buffers;Lorg/eclipse/jetty/io/EndPoint;)V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_expired:Z

    .line 48
    return-void
.end method


# virtual methods
.method protected exchangeExpired(Lorg/eclipse/jetty/client/HttpExchange;)V
    .locals 1

    .prologue
    .line 61
    monitor-enter p0

    .line 63
    :try_start_0
    invoke-super {p0, p1}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->exchangeExpired(Lorg/eclipse/jetty/client/HttpExchange;)V

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_expired:Z

    .line 65
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 66
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public handle()Lorg/eclipse/jetty/io/Connection;
    .locals 11

    .prologue
    const/16 v10, 0x65

    const/4 v9, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 103
    move v1, v3

    move-object v4, p0

    .line 111
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_2d

    if-ne v4, p0, :cond_2d

    .line 113
    sget-object v0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v5, "open={} more={}"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v8}, Lorg/eclipse/jetty/io/EndPoint;->isOpen()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v8}, Lorg/eclipse/jetty/http/HttpParser;->isMoreInBuffer()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-interface {v0, v5, v6}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 118
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v5, v0

    .line 119
    :goto_1
    if-nez v5, :cond_2

    .line 123
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 124
    iget-object v0, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    .line 125
    iget-boolean v5, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_expired:Z

    if-eqz v5, :cond_1

    .line 127
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 134
    :catch_0
    move-exception v0

    :try_start_3
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 137
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 294
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v1}, Lorg/eclipse/jetty/http/HttpParser;->returnBuffers()V

    .line 295
    iget-object v1, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v1}, Lorg/eclipse/jetty/http/HttpGenerator;->returnBuffers()V

    throw v0

    :cond_1
    move-object v5, v0

    .line 135
    goto :goto_1

    .line 137
    :cond_2
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 138
    :try_start_6
    sget-object v0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v6, "exchange {}"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    invoke-interface {v0, v6, v7}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 143
    :try_start_7
    iget-object v0, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpGenerator;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lorg/eclipse/jetty/client/HttpExchange;->getStatus()I

    move-result v0

    if-ne v0, v9, :cond_3

    .line 145
    sget-object v0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v6, "commit"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v0, v6, v7}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/BlockingHttpConnection;->commitRequest()V

    .line 150
    :cond_3
    :goto_2
    iget-object v0, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpGenerator;->isCommitted()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpGenerator;->isComplete()Z

    move-result v0

    if-nez v0, :cond_16

    .line 152
    iget-object v0, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpGenerator;->flushBuffer()I

    move-result v0

    if-lez v0, :cond_4

    .line 154
    sget-object v0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v6, "flushed"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v0, v6, v7}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    :cond_4
    iget-object v0, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Lorg/eclipse/jetty/http/HttpGenerator;->isState(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 161
    iget-object v0, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_requestContentChunk:Lorg/eclipse/jetty/io/Buffer;

    if-nez v0, :cond_5

    .line 162
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Lorg/eclipse/jetty/client/HttpExchange;->getRequestContentChunk(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_requestContentChunk:Lorg/eclipse/jetty/io/Buffer;

    .line 164
    :cond_5
    iget-object v0, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_requestContentChunk:Lorg/eclipse/jetty/io/Buffer;

    if-nez v0, :cond_c

    .line 166
    sget-object v0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v6, "complete"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v0, v6, v7}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    iget-object v0, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpGenerator;->complete()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_2

    .line 198
    :catch_1
    move-exception v0

    .line 200
    :try_start_8
    sget-object v6, Lorg/eclipse/jetty/client/BlockingHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Failure on "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 204
    :try_start_9
    monitor-enter p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 206
    if-eqz v5, :cond_25

    .line 210
    :try_start_a
    invoke-virtual {v5}, Lorg/eclipse/jetty/client/HttpExchange;->getStatus()I

    move-result v1

    const/16 v6, 0xa

    if-eq v1, v6, :cond_6

    invoke-virtual {v5}, Lorg/eclipse/jetty/client/HttpExchange;->getStatus()I

    move-result v1

    const/16 v6, 0xb

    if-eq v1, v6, :cond_6

    invoke-virtual {v5}, Lorg/eclipse/jetty/client/HttpExchange;->isDone()Z

    move-result v1

    if-nez v1, :cond_6

    .line 214
    const/16 v1, 0x9

    invoke-virtual {v5, v1}, Lorg/eclipse/jetty/client/HttpExchange;->setStatus(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 215
    invoke-virtual {v5}, Lorg/eclipse/jetty/client/HttpExchange;->getEventListener()Lorg/eclipse/jetty/client/HttpEventListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/client/HttpEventListener;->onException(Ljava/lang/Throwable;)V

    .line 228
    :cond_6
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 232
    :try_start_b
    sget-object v0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "{} {}"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    aput-object v7, v5, v6

    invoke-interface {v0, v1, v5}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    sget-object v0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "{}"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    aput-object v7, v5, v6

    invoke-interface {v0, v1, v5}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 235
    iget-object v0, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/http/HttpGenerator;->setPersistent(Z)V

    .line 241
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/BlockingHttpConnection;->reset()V

    .line 242
    monitor-enter p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 247
    :try_start_c
    iget-object v0, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    .line 248
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    .line 251
    if-eqz v0, :cond_7

    .line 253
    iget-object v1, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-virtual {v1}, Lorg/eclipse/jetty/client/HttpDestination;->getHttpClient()Lorg/eclipse/jetty/client/HttpClient;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/client/HttpExchange;->cancelTimeout(Lorg/eclipse/jetty/client/HttpClient;)V

    .line 259
    :cond_7
    iget v1, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_status:I

    if-ne v1, v10, :cond_9

    .line 261
    iget-object v1, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/client/HttpExchange;->onSwitchProtocol(Lorg/eclipse/jetty/io/EndPoint;)Lorg/eclipse/jetty/io/Connection;

    move-result-object v4

    .line 262
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    .line 267
    iget-object v0, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    if-eqz v0, :cond_8

    .line 268
    iget-object v0, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    iget-object v1, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/client/HttpDestination;->send(Lorg/eclipse/jetty/client/HttpExchange;)V

    .line 269
    :cond_8
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    .line 271
    :cond_9
    iget-object v0, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    if-eqz v0, :cond_a

    .line 278
    iget-object v0, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    iget-object v1, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/client/HttpDestination;->send(Lorg/eclipse/jetty/client/HttpExchange;)V

    .line 281
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    .line 285
    :cond_a
    iget-object v0, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lorg/eclipse/jetty/client/BlockingHttpConnection;->isReserved()Z

    move-result v0

    if-nez v0, :cond_b

    .line 286
    iget-object v0, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lorg/eclipse/jetty/client/HttpDestination;->returnConnection(Lorg/eclipse/jetty/client/AbstractHttpConnection;Z)V

    .line 287
    :cond_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    move v1, v2

    goto/16 :goto_0

    .line 169
    :cond_c
    :try_start_d
    iget-object v0, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpGenerator;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 171
    sget-object v0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v6, "addChunk"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v0, v6, v7}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    iget-object v6, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_requestContentChunk:Lorg/eclipse/jetty/io/Buffer;

    .line 173
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Lorg/eclipse/jetty/client/HttpExchange;->getRequestContentChunk(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_requestContentChunk:Lorg/eclipse/jetty/io/Buffer;

    .line 174
    iget-object v7, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    iget-object v0, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_requestContentChunk:Lorg/eclipse/jetty/io/Buffer;

    if-nez v0, :cond_15

    move v0, v2

    :goto_3
    invoke-virtual {v7, v6, v0}, Lorg/eclipse/jetty/http/HttpGenerator;->addContent(Lorg/eclipse/jetty/io/Buffer;Z)V

    .line 175
    iget-object v0, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_requestContentChunk:Lorg/eclipse/jetty/io/Buffer;

    if-nez v0, :cond_3

    .line 176
    const/4 v0, 0x4

    invoke-virtual {v5, v0}, Lorg/eclipse/jetty/client/HttpExchange;->setStatus(I)Z
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto/16 :goto_2

    .line 289
    :catchall_2
    move-exception v0

    :goto_4
    :try_start_e
    sget-object v5, Lorg/eclipse/jetty/client/BlockingHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v6, "{} {}"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    aput-object v9, v7, v8

    invoke-interface {v5, v6, v7}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    sget-object v5, Lorg/eclipse/jetty/client/BlockingHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v6, "{}"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    aput-object v9, v7, v8

    invoke-interface {v5, v6, v7}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 235
    if-nez v1, :cond_d

    iget-object v5, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v5}, Lorg/eclipse/jetty/http/HttpGenerator;->isComplete()Z

    move-result v5

    if-eqz v5, :cond_29

    iget-object v5, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v5}, Lorg/eclipse/jetty/http/HttpParser;->isComplete()Z

    move-result v5

    if-eqz v5, :cond_29

    :cond_d
    move v5, v2

    .line 237
    :goto_5
    if-eqz v5, :cond_14

    .line 239
    if-nez v1, :cond_2a

    iget-object v1, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v1}, Lorg/eclipse/jetty/http/HttpParser;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v1}, Lorg/eclipse/jetty/http/HttpGenerator;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_2a

    move v5, v2

    .line 240
    :goto_6
    iget-object v1, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v1, v5}, Lorg/eclipse/jetty/http/HttpGenerator;->setPersistent(Z)V

    .line 241
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/BlockingHttpConnection;->reset()V

    .line 242
    if-eqz v5, :cond_e

    .line 243
    iget-object v1, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    iget-object v6, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-virtual {v6}, Lorg/eclipse/jetty/client/HttpDestination;->getHttpClient()Lorg/eclipse/jetty/client/HttpClient;

    move-result-object v6

    invoke-virtual {v6}, Lorg/eclipse/jetty/client/HttpClient;->getIdleTimeout()J

    move-result-wide v6

    long-to-int v6, v6

    invoke-interface {v1, v6}, Lorg/eclipse/jetty/io/EndPoint;->setMaxIdleTime(I)V

    .line 245
    :cond_e
    monitor-enter p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 247
    :try_start_f
    iget-object v1, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    .line 248
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    .line 251
    if-eqz v1, :cond_f

    .line 253
    iget-object v6, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-virtual {v6}, Lorg/eclipse/jetty/client/HttpDestination;->getHttpClient()Lorg/eclipse/jetty/client/HttpClient;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/eclipse/jetty/client/HttpExchange;->cancelTimeout(Lorg/eclipse/jetty/client/HttpClient;)V

    .line 259
    :cond_f
    iget v6, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_status:I

    if-ne v6, v10, :cond_2e

    .line 261
    iget-object v4, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-virtual {v1, v4}, Lorg/eclipse/jetty/client/HttpExchange;->onSwitchProtocol(Lorg/eclipse/jetty/io/EndPoint;)Lorg/eclipse/jetty/io/Connection;

    move-result-object v1

    .line 262
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    .line 267
    iget-object v4, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    if-eqz v4, :cond_10

    .line 268
    iget-object v4, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    iget-object v6, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v4, v6}, Lorg/eclipse/jetty/client/HttpDestination;->send(Lorg/eclipse/jetty/client/HttpExchange;)V

    .line 269
    :cond_10
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    .line 271
    :goto_7
    iget-object v4, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    if-eqz v4, :cond_12

    .line 278
    if-eqz v5, :cond_11

    if-eq v1, p0, :cond_2b

    .line 279
    :cond_11
    iget-object v1, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    iget-object v4, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v1, v4}, Lorg/eclipse/jetty/client/HttpDestination;->send(Lorg/eclipse/jetty/client/HttpExchange;)V

    .line 282
    :goto_8
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    .line 285
    :cond_12
    iget-object v1, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    if-nez v1, :cond_13

    invoke-virtual {p0}, Lorg/eclipse/jetty/client/BlockingHttpConnection;->isReserved()Z

    move-result v1

    if-nez v1, :cond_13

    .line 286
    iget-object v1, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    if-nez v5, :cond_2c

    :goto_9
    invoke-virtual {v1, p0, v2}, Lorg/eclipse/jetty/client/HttpDestination;->returnConnection(Lorg/eclipse/jetty/client/AbstractHttpConnection;Z)V

    .line 287
    :cond_13
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    .line 289
    :cond_14
    :try_start_10
    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    :cond_15
    move v0, v3

    .line 174
    goto/16 :goto_3

    .line 182
    :cond_16
    :try_start_11
    iget-object v0, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpGenerator;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_requestComplete:Z

    if-nez v0, :cond_17

    .line 184
    sget-object v0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v6, "requestComplete"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v0, v6, v7}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_requestComplete:Z

    .line 186
    invoke-virtual {v5}, Lorg/eclipse/jetty/client/HttpExchange;->getEventListener()Lorg/eclipse/jetty/client/HttpEventListener;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/client/HttpEventListener;->onRequestComplete()V

    .line 190
    :cond_17
    iget-object v0, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpParser;->isComplete()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpParser;->parseAvailable()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 192
    sget-object v0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v6, "parsed"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v0, v6, v7}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 196
    :cond_18
    iget-object v0, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->flush()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 232
    :try_start_12
    sget-object v0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v5, "{} {}"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    aput-object v8, v6, v7

    invoke-interface {v0, v5, v6}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    sget-object v0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v5, "{}"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    aput-object v8, v6, v7

    invoke-interface {v0, v5, v6}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 235
    if-nez v1, :cond_19

    iget-object v0, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpGenerator;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpParser;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_21

    :cond_19
    move v0, v2

    .line 237
    :goto_a
    if-eqz v0, :cond_0

    .line 239
    if-nez v1, :cond_22

    iget-object v0, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpParser;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpGenerator;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_22

    move v0, v2

    .line 240
    :goto_b
    iget-object v5, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v5, v0}, Lorg/eclipse/jetty/http/HttpGenerator;->setPersistent(Z)V

    .line 241
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/BlockingHttpConnection;->reset()V

    .line 242
    if-eqz v0, :cond_1a

    .line 243
    iget-object v5, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    iget-object v6, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-virtual {v6}, Lorg/eclipse/jetty/client/HttpDestination;->getHttpClient()Lorg/eclipse/jetty/client/HttpClient;

    move-result-object v6

    invoke-virtual {v6}, Lorg/eclipse/jetty/client/HttpClient;->getIdleTimeout()J

    move-result-wide v6

    long-to-int v6, v6

    invoke-interface {v5, v6}, Lorg/eclipse/jetty/io/EndPoint;->setMaxIdleTime(I)V

    .line 245
    :cond_1a
    monitor-enter p0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 247
    :try_start_13
    iget-object v5, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    .line 248
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    .line 251
    if-eqz v5, :cond_1b

    .line 253
    iget-object v6, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-virtual {v6}, Lorg/eclipse/jetty/client/HttpDestination;->getHttpClient()Lorg/eclipse/jetty/client/HttpClient;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/eclipse/jetty/client/HttpExchange;->cancelTimeout(Lorg/eclipse/jetty/client/HttpClient;)V

    .line 259
    :cond_1b
    iget v6, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_status:I

    if-ne v6, v10, :cond_1d

    .line 261
    iget-object v4, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-virtual {v5, v4}, Lorg/eclipse/jetty/client/HttpExchange;->onSwitchProtocol(Lorg/eclipse/jetty/io/EndPoint;)Lorg/eclipse/jetty/io/Connection;

    move-result-object v4

    .line 262
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    .line 267
    iget-object v5, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    if-eqz v5, :cond_1c

    .line 268
    iget-object v5, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    iget-object v6, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v5, v6}, Lorg/eclipse/jetty/client/HttpDestination;->send(Lorg/eclipse/jetty/client/HttpExchange;)V

    .line 269
    :cond_1c
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    .line 271
    :cond_1d
    iget-object v5, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    if-eqz v5, :cond_1f

    .line 278
    if-eqz v0, :cond_1e

    if-eq v4, p0, :cond_23

    .line 279
    :cond_1e
    iget-object v5, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    iget-object v6, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v5, v6}, Lorg/eclipse/jetty/client/HttpDestination;->send(Lorg/eclipse/jetty/client/HttpExchange;)V

    .line 282
    :goto_c
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    .line 285
    :cond_1f
    iget-object v5, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    if-nez v5, :cond_20

    invoke-virtual {p0}, Lorg/eclipse/jetty/client/BlockingHttpConnection;->isReserved()Z

    move-result v5

    if-nez v5, :cond_20

    .line 286
    iget-object v5, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    if-nez v0, :cond_24

    move v0, v2

    :goto_d
    invoke-virtual {v5, p0, v0}, Lorg/eclipse/jetty/client/HttpDestination;->returnConnection(Lorg/eclipse/jetty/client/AbstractHttpConnection;Z)V

    .line 287
    :cond_20
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    goto/16 :goto_0

    :catchall_3
    move-exception v0

    :try_start_14
    monitor-exit p0

    throw v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    :cond_21
    move v0, v3

    .line 235
    goto/16 :goto_a

    :cond_22
    move v0, v3

    .line 239
    goto :goto_b

    .line 281
    :cond_23
    :try_start_15
    iget-object v5, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    iput-object v5, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    goto :goto_c

    :cond_24
    move v0, v3

    .line 286
    goto :goto_d

    .line 220
    :cond_25
    :try_start_16
    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_26

    .line 221
    check-cast v0, Ljava/io/IOException;

    throw v0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    .line 228
    :catchall_4
    move-exception v0

    :try_start_17
    monitor-exit p0

    throw v0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    .line 289
    :catchall_5
    move-exception v0

    move v1, v2

    goto/16 :goto_4

    .line 222
    :cond_26
    :try_start_18
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_27

    .line 223
    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 224
    :cond_27
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_28

    .line 225
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 226
    :cond_28
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_4

    .line 287
    :catchall_6
    move-exception v0

    :try_start_19
    monitor-exit p0

    throw v0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    :cond_29
    move v5, v3

    .line 235
    goto/16 :goto_5

    :cond_2a
    move v5, v3

    .line 239
    goto/16 :goto_6

    .line 281
    :cond_2b
    :try_start_1a
    iget-object v1, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    iput-object v1, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_7

    goto/16 :goto_8

    .line 287
    :catchall_7
    move-exception v0

    :try_start_1b
    monitor-exit p0

    throw v0
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    :cond_2c
    move v2, v3

    .line 286
    goto/16 :goto_9

    .line 290
    :cond_2d
    iget-object v0, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpParser;->returnBuffers()V

    .line 295
    iget-object v0, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpGenerator;->returnBuffers()V

    .line 298
    return-object v4

    :cond_2e
    move-object v1, v4

    goto/16 :goto_7
.end method

.method public onIdleExpired(J)V
    .locals 5

    .prologue
    .line 76
    :try_start_0
    sget-object v0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "onIdleExpired {}ms {} {}"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_expired:Z

    .line 78
    iget-object v0, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    monitor-enter p0

    .line 96
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 97
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 82
    sget-object v1, Lorg/eclipse/jetty/client/BlockingHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    .line 86
    :try_start_2
    iget-object v0, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 88
    :catch_1
    move-exception v0

    .line 90
    sget-object v1, Lorg/eclipse/jetty/client/BlockingHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_requestComplete:Z

    .line 53
    iput-boolean v0, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_expired:Z

    .line 54
    invoke-super {p0}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->reset()V

    .line 55
    return-void
.end method

.method public send(Lorg/eclipse/jetty/client/HttpExchange;)Z
    .locals 1

    .prologue
    .line 304
    invoke-super {p0, p1}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->send(Lorg/eclipse/jetty/client/HttpExchange;)Z

    move-result v0

    .line 305
    if-eqz v0, :cond_0

    .line 307
    monitor-enter p0

    .line 309
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 310
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    :cond_0
    return v0

    .line 310
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
