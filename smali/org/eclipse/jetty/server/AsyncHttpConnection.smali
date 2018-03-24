.class public Lorg/eclipse/jetty/server/AsyncHttpConnection;
.super Lorg/eclipse/jetty/server/AbstractHttpConnection;
.source "AsyncHttpConnection.java"

# interfaces
.implements Lorg/eclipse/jetty/io/nio/AsyncConnection;


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field private static final NO_PROGRESS_CLOSE:I

.field private static final NO_PROGRESS_INFO:I


# instance fields
.field private final _asyncEndp:Lorg/eclipse/jetty/io/AsyncEndPoint;

.field private _readInterested:Z

.field private _total_no_progress:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    const-string v0, "org.mortbay.jetty.NO_PROGRESS_INFO"

    const/16 v1, 0x64

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->NO_PROGRESS_INFO:I

    .line 41
    const-string v0, "org.mortbay.jetty.NO_PROGRESS_CLOSE"

    const/16 v1, 0xc8

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->NO_PROGRESS_CLOSE:I

    .line 43
    const-class v0, Lorg/eclipse/jetty/server/AsyncHttpConnection;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/server/Connector;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/server/Server;)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jetty/server/AbstractHttpConnection;-><init>(Lorg/eclipse/jetty/server/Connector;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/server/Server;)V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_readInterested:Z

    .line 51
    check-cast p2, Lorg/eclipse/jetty/io/AsyncEndPoint;

    iput-object p2, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_asyncEndp:Lorg/eclipse/jetty/io/AsyncEndPoint;

    .line 52
    return-void
.end method


# virtual methods
.method public handle()Lorg/eclipse/jetty/io/Connection;
    .locals 14

    .prologue
    const/4 v12, 0x0

    const/16 v11, 0x65

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 57
    .line 63
    :try_start_0
    invoke-static {p0}, Lorg/eclipse/jetty/server/AsyncHttpConnection;->setCurrentConnection(Lorg/eclipse/jetty/server/AbstractHttpConnection;)V

    .line 66
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_asyncEndp:Lorg/eclipse/jetty/io/AsyncEndPoint;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Lorg/eclipse/jetty/io/AsyncEndPoint;->setCheckForIdle(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move v0, v2

    move v5, v1

    move-object v4, p0

    .line 70
    :goto_0
    if-eqz v0, :cond_12

    if-ne v4, p0, :cond_12

    .line 76
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    iget-object v0, v0, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation;->isAsync()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 78
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    iget-object v0, v0, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation;->isDispatchable()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 79
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncHttpConnection;->handleRequest()V
    :try_end_1
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v3, v1

    .line 86
    :goto_1
    :try_start_2
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Generator;->isCommitted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Generator;->isComplete()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->isOutputShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Request;->getAsyncContinuation()Lorg/eclipse/jetty/server/AsyncContinuation;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation;->isAsyncStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Generator;->flushBuffer()I

    move-result v0

    if-lez v0, :cond_0

    move v3, v2

    .line 91
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->flush()V

    .line 94
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_asyncEndp:Lorg/eclipse/jetty/io/AsyncEndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/AsyncEndPoint;->hasProgressed()Z
    :try_end_2
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result v0

    if-eqz v0, :cond_1e

    move v0, v2

    .line 110
    :goto_2
    or-int v3, v5, v0

    .line 112
    :try_start_3
    iget-object v5, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    invoke-interface {v5}, Lorg/eclipse/jetty/http/Parser;->isComplete()Z

    move-result v6

    .line 113
    iget-object v5, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v5}, Lorg/eclipse/jetty/http/Generator;->isComplete()Z

    move-result v7

    .line 114
    if-eqz v6, :cond_5

    if-eqz v7, :cond_5

    move v5, v2

    .line 115
    :goto_3
    if-eqz v6, :cond_2

    .line 117
    if-eqz v7, :cond_6

    .line 123
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Response;->getStatus()I

    move-result v0

    if-ne v0, v11, :cond_1

    .line 125
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    const-string v6, "org.eclipse.jetty.io.Connection"

    invoke-virtual {v0, v6}, Lorg/eclipse/jetty/server/Request;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/io/Connection;

    .line 126
    if-eqz v0, :cond_1

    move-object v4, v0

    .line 130
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncHttpConnection;->reset()V

    .line 133
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Generator;->isPersistent()Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->isOutputShutdown()Z

    move-result v0

    if-nez v0, :cond_20

    .line 135
    sget-object v0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v6, "Safety net oshut!!!  IF YOU SEE THIS, PLEASE RAISE BUGZILLA"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v0, v6, v7}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->shutdownOutput()V

    move v0, v2

    .line 149
    :cond_2
    :goto_4
    if-nez v5, :cond_3

    iget-object v5, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/Request;->getAsyncContinuation()Lorg/eclipse/jetty/server/AsyncContinuation;

    move-result-object v5

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/AsyncContinuation;->isAsyncStarted()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 153
    sget-object v0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v5, "suspended {}"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-interface {v0, v5, v6}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v0, v1

    :cond_3
    move v5, v3

    .line 156
    goto/16 :goto_0

    .line 82
    :cond_4
    :try_start_4
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Parser;->isComplete()Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Parser;->parseAvailable()Z
    :try_end_4
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v0

    if-eqz v0, :cond_1f

    move v3, v2

    .line 83
    goto/16 :goto_1

    :cond_5
    move v5, v1

    .line 114
    goto :goto_3

    .line 144
    :cond_6
    const/4 v6, 0x0

    :try_start_5
    iput-boolean v6, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_readInterested:Z

    .line 145
    sget-object v6, Lorg/eclipse/jetty/server/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v7, "Disabled read interest while writing response {}"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    aput-object v10, v8, v9

    invoke-interface {v6, v7, v8}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    .line 161
    :catchall_0
    move-exception v0

    move-object v13, v0

    move v0, v3

    move-object v3, v13

    :goto_5
    invoke-static {v12}, Lorg/eclipse/jetty/server/AsyncHttpConnection;->setCurrentConnection(Lorg/eclipse/jetty/server/AbstractHttpConnection;)V

    .line 164
    iget-object v4, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {v4}, Lorg/eclipse/jetty/server/Request;->getAsyncContinuation()Lorg/eclipse/jetty/server/AsyncContinuation;

    move-result-object v4

    invoke-virtual {v4}, Lorg/eclipse/jetty/server/AsyncContinuation;->isAsyncStarted()Z

    move-result v4

    if-nez v4, :cond_7

    .line 167
    iget-object v4, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    invoke-interface {v4}, Lorg/eclipse/jetty/http/Parser;->returnBuffers()V

    .line 168
    iget-object v4, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v4}, Lorg/eclipse/jetty/http/Generator;->returnBuffers()V

    .line 171
    iget-object v4, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_asyncEndp:Lorg/eclipse/jetty/io/AsyncEndPoint;

    invoke-interface {v4, v2}, Lorg/eclipse/jetty/io/AsyncEndPoint;->setCheckForIdle(Z)V

    .line 175
    :cond_7
    if-eqz v0, :cond_18

    .line 176
    iput v1, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_total_no_progress:I

    .line 186
    :cond_8
    :goto_6
    throw v3

    .line 97
    :catch_0
    move-exception v0

    move v3, v1

    .line 99
    :goto_7
    :try_start_6
    sget-object v6, Lorg/eclipse/jetty/server/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v6}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 101
    sget-object v6, Lorg/eclipse/jetty/server/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "uri="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    sget-object v6, Lorg/eclipse/jetty/server/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "fields="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_requestFields:Lorg/eclipse/jetty/http/HttpFields;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    sget-object v6, Lorg/eclipse/jetty/server/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v6, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 106
    :cond_9
    :try_start_7
    iget-object v3, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpException;->getStatus()I

    move-result v6

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpException;->getReason()Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-interface {v3, v6, v0, v7, v8}, Lorg/eclipse/jetty/http/Generator;->sendError(ILjava/lang/String;Ljava/lang/String;Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 110
    or-int/lit8 v3, v5, 0x1

    .line 112
    :try_start_8
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Parser;->isComplete()Z

    move-result v0

    .line 113
    iget-object v5, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v5}, Lorg/eclipse/jetty/http/Generator;->isComplete()Z

    move-result v6

    .line 114
    if-eqz v0, :cond_b

    if-eqz v6, :cond_b

    move v5, v2

    .line 115
    :goto_8
    if-eqz v0, :cond_a

    .line 117
    if-eqz v6, :cond_c

    .line 123
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Response;->getStatus()I

    move-result v0

    if-ne v0, v11, :cond_1d

    .line 125
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    const-string v6, "org.eclipse.jetty.io.Connection"

    invoke-virtual {v0, v6}, Lorg/eclipse/jetty/server/Request;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/io/Connection;

    .line 126
    if-eqz v0, :cond_1d

    .line 130
    :goto_9
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncHttpConnection;->reset()V

    .line 133
    iget-object v4, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v4}, Lorg/eclipse/jetty/http/Generator;->isPersistent()Z

    move-result v4

    if-nez v4, :cond_1c

    iget-object v4, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v4}, Lorg/eclipse/jetty/io/EndPoint;->isOutputShutdown()Z

    move-result v4

    if-nez v4, :cond_1c

    .line 135
    sget-object v4, Lorg/eclipse/jetty/server/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v6, "Safety net oshut!!!  IF YOU SEE THIS, PLEASE RAISE BUGZILLA"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v4, v6, v7}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    iget-object v4, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v4}, Lorg/eclipse/jetty/io/EndPoint;->shutdownOutput()V

    move-object v4, v0

    .line 149
    :cond_a
    :goto_a
    if-nez v5, :cond_1b

    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Request;->getAsyncContinuation()Lorg/eclipse/jetty/server/AsyncContinuation;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation;->isAsyncStarted()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 153
    sget-object v0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v5, "suspended {}"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-interface {v0, v5, v6}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    :goto_b
    move v5, v3

    .line 156
    goto/16 :goto_0

    :cond_b
    move v5, v1

    .line 114
    goto :goto_8

    .line 144
    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_readInterested:Z

    .line 145
    sget-object v0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v6, "Disabled read interest while writing response {}"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    aput-object v9, v7, v8

    invoke-interface {v0, v6, v7}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_a

    .line 110
    :catchall_1
    move-exception v0

    move v3, v1

    :goto_c
    or-int/2addr v3, v5

    .line 112
    iget-object v4, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    invoke-interface {v4}, Lorg/eclipse/jetty/http/Parser;->isComplete()Z

    move-result v5

    .line 113
    iget-object v4, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v4}, Lorg/eclipse/jetty/http/Generator;->isComplete()Z

    move-result v6

    .line 114
    if-eqz v5, :cond_10

    if-eqz v6, :cond_10

    move v4, v2

    .line 115
    :goto_d
    if-eqz v5, :cond_e

    .line 117
    if-eqz v6, :cond_11

    .line 120
    iget-object v5, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/Response;->getStatus()I

    move-result v5

    if-ne v5, v11, :cond_d

    .line 125
    iget-object v5, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    const-string v6, "org.eclipse.jetty.io.Connection"

    invoke-virtual {v5, v6}, Lorg/eclipse/jetty/server/Request;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    .line 126
    :cond_d
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncHttpConnection;->reset()V

    .line 133
    iget-object v5, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v5}, Lorg/eclipse/jetty/http/Generator;->isPersistent()Z

    move-result v5

    if-nez v5, :cond_e

    iget-object v5, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v5}, Lorg/eclipse/jetty/io/EndPoint;->isOutputShutdown()Z

    move-result v5

    if-nez v5, :cond_e

    .line 135
    sget-object v5, Lorg/eclipse/jetty/server/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v6, "Safety net oshut!!!  IF YOU SEE THIS, PLEASE RAISE BUGZILLA"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    iget-object v5, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v5}, Lorg/eclipse/jetty/io/EndPoint;->shutdownOutput()V

    .line 149
    :cond_e
    :goto_e
    if-nez v4, :cond_f

    iget-object v4, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {v4}, Lorg/eclipse/jetty/server/Request;->getAsyncContinuation()Lorg/eclipse/jetty/server/AsyncContinuation;

    move-result-object v4

    invoke-virtual {v4}, Lorg/eclipse/jetty/server/AsyncContinuation;->isAsyncStarted()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 153
    sget-object v4, Lorg/eclipse/jetty/server/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v5, "suspended {}"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-interface {v4, v5, v6}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    :cond_f
    throw v0

    :cond_10
    move v4, v1

    .line 114
    goto :goto_d

    .line 144
    :cond_11
    const/4 v5, 0x0

    iput-boolean v5, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_readInterested:Z

    .line 145
    sget-object v5, Lorg/eclipse/jetty/server/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v6, "Disabled read interest while writing response {}"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    aput-object v9, v7, v8

    invoke-interface {v5, v6, v7}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_e

    .line 161
    :cond_12
    invoke-static {v12}, Lorg/eclipse/jetty/server/AsyncHttpConnection;->setCurrentConnection(Lorg/eclipse/jetty/server/AbstractHttpConnection;)V

    .line 164
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Request;->getAsyncContinuation()Lorg/eclipse/jetty/server/AsyncContinuation;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation;->isAsyncStarted()Z

    move-result v0

    if-nez v0, :cond_13

    .line 167
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Parser;->returnBuffers()V

    .line 168
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Generator;->returnBuffers()V

    .line 171
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_asyncEndp:Lorg/eclipse/jetty/io/AsyncEndPoint;

    invoke-interface {v0, v2}, Lorg/eclipse/jetty/io/AsyncEndPoint;->setCheckForIdle(Z)V

    .line 175
    :cond_13
    if-eqz v5, :cond_15

    .line 176
    iput v1, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_total_no_progress:I

    .line 190
    :cond_14
    :goto_f
    return-object v4

    .line 179
    :cond_15
    iget v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_total_no_progress:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_total_no_progress:I

    .line 180
    sget v0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->NO_PROGRESS_INFO:I

    if-lez v0, :cond_17

    iget v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_total_no_progress:I

    sget v2, Lorg/eclipse/jetty/server/AsyncHttpConnection;->NO_PROGRESS_INFO:I

    rem-int/2addr v0, v2

    if-nez v0, :cond_17

    sget v0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->NO_PROGRESS_CLOSE:I

    if-lez v0, :cond_16

    iget v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_total_no_progress:I

    sget v2, Lorg/eclipse/jetty/server/AsyncHttpConnection;->NO_PROGRESS_CLOSE:I

    if-ge v0, v2, :cond_17

    .line 181
    :cond_16
    sget-object v0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "EndPoint making no progress: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_total_no_progress:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    :cond_17
    sget v0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->NO_PROGRESS_CLOSE:I

    if-lez v0, :cond_14

    iget v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_total_no_progress:I

    sget v2, Lorg/eclipse/jetty/server/AsyncHttpConnection;->NO_PROGRESS_CLOSE:I

    if-ne v0, v2, :cond_14

    .line 184
    sget-object v0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Closing EndPoint making no progress: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_total_no_progress:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    instance-of v0, v0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    if-eqz v0, :cond_14

    .line 186
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    check-cast v0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->getChannel()Ljava/nio/channels/ByteChannel;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/channels/ByteChannel;->close()V

    goto/16 :goto_f

    .line 179
    :cond_18
    iget v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_total_no_progress:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_total_no_progress:I

    .line 180
    sget v0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->NO_PROGRESS_INFO:I

    if-lez v0, :cond_1a

    iget v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_total_no_progress:I

    sget v2, Lorg/eclipse/jetty/server/AsyncHttpConnection;->NO_PROGRESS_INFO:I

    rem-int/2addr v0, v2

    if-nez v0, :cond_1a

    sget v0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->NO_PROGRESS_CLOSE:I

    if-lez v0, :cond_19

    iget v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_total_no_progress:I

    sget v2, Lorg/eclipse/jetty/server/AsyncHttpConnection;->NO_PROGRESS_CLOSE:I

    if-ge v0, v2, :cond_1a

    .line 181
    :cond_19
    sget-object v0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "EndPoint making no progress: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_total_no_progress:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v4}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    :cond_1a
    sget v0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->NO_PROGRESS_CLOSE:I

    if-lez v0, :cond_8

    iget v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_total_no_progress:I

    sget v2, Lorg/eclipse/jetty/server/AsyncHttpConnection;->NO_PROGRESS_CLOSE:I

    if-ne v0, v2, :cond_8

    .line 184
    sget-object v0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Closing EndPoint making no progress: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_total_no_progress:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    instance-of v0, v0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    if-eqz v0, :cond_8

    .line 186
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    check-cast v0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->getChannel()Ljava/nio/channels/ByteChannel;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/channels/ByteChannel;->close()V

    goto/16 :goto_6

    .line 161
    :catchall_2
    move-exception v0

    move-object v3, v0

    move v0, v1

    goto/16 :goto_5

    .line 110
    :catchall_3
    move-exception v0

    goto/16 :goto_c

    :catchall_4
    move-exception v0

    move v3, v2

    goto/16 :goto_c

    .line 97
    :catch_1
    move-exception v0

    goto/16 :goto_7

    :cond_1b
    move v0, v2

    goto/16 :goto_b

    :cond_1c
    move-object v4, v0

    goto/16 :goto_a

    :cond_1d
    move-object v0, v4

    goto/16 :goto_9

    :cond_1e
    move v0, v3

    goto/16 :goto_2

    :cond_1f
    move v3, v1

    goto/16 :goto_1

    :cond_20
    move v0, v2

    goto/16 :goto_4
.end method

.method public isSuspended()Z
    .locals 1

    .prologue
    .line 218
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_readInterested:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->isSuspended()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInputShutdown()V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Generator;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Request;->getAsyncContinuation()Lorg/eclipse/jetty/server/AsyncContinuation;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation;->isSuspended()Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->close()V

    .line 203
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Parser;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/http/Parser;->setPersistent(Z)V

    .line 205
    :cond_1
    return-void
.end method

.method public reset()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 210
    iput-boolean v2, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_readInterested:Z

    .line 211
    sget-object v0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "Enabled read interest {}"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    invoke-super {p0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->reset()V

    .line 213
    return-void
.end method
