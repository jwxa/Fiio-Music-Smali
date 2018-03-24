.class public Lorg/eclipse/jetty/server/BlockingHttpConnection;
.super Lorg/eclipse/jetty/server/AbstractHttpConnection;
.source "BlockingHttpConnection.java"


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lorg/eclipse/jetty/server/BlockingHttpConnection;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/server/Connector;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/server/Server;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jetty/server/AbstractHttpConnection;-><init>(Lorg/eclipse/jetty/server/Connector;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/server/Server;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/server/Connector;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/server/Server;Lorg/eclipse/jetty/http/Parser;Lorg/eclipse/jetty/http/Generator;Lorg/eclipse/jetty/server/Request;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct/range {p0 .. p6}, Lorg/eclipse/jetty/server/AbstractHttpConnection;-><init>(Lorg/eclipse/jetty/server/Connector;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/server/Server;Lorg/eclipse/jetty/http/Parser;Lorg/eclipse/jetty/http/Generator;Lorg/eclipse/jetty/server/Request;)V

    .line 48
    return-void
.end method


# virtual methods
.method public handle()Lorg/eclipse/jetty/io/Connection;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x65

    .line 58
    .line 62
    :try_start_0
    invoke-static {p0}, Lorg/eclipse/jetty/server/BlockingHttpConnection;->setCurrentConnection(Lorg/eclipse/jetty/server/AbstractHttpConnection;)V

    move-object v1, p0

    .line 66
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->isOpen()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-eqz v0, :cond_a

    if-ne v1, p0, :cond_a

    .line 71
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Parser;->isComplete()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Parser;->parseAvailable()Z

    .line 78
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Generator;->isCommitted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Generator;->isComplete()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->isOutputShutdown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 79
    iget-object v0, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Generator;->flushBuffer()I

    .line 82
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->flush()V
    :try_end_1
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    :try_start_2
    iget-object v0, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Parser;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Generator;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 102
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/BlockingHttpConnection;->reset()V

    .line 105
    iget-object v0, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Response;->getStatus()I

    move-result v0

    if-ne v0, v6, :cond_2

    .line 107
    iget-object v0, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    const-string v2, "org.eclipse.jetty.io.Connection"

    invoke-virtual {v0, v2}, Lorg/eclipse/jetty/server/Request;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/io/Connection;

    .line 108
    if-eqz v0, :cond_2

    move-object v1, v0

    .line 113
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Generator;->isPersistent()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->isOutputShutdown()Z

    move-result v0

    if-nez v0, :cond_3

    .line 115
    sget-object v0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v2, "Safety net oshut!!! Please open a bugzilla"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    iget-object v0, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->shutdownOutput()V

    :cond_3
    move-object v0, v1

    .line 121
    iget-object v1, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/EndPoint;->isInputShutdown()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v1}, Lorg/eclipse/jetty/http/Generator;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/Request;->getAsyncContinuation()Lorg/eclipse/jetty/server/AsyncContinuation;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/AsyncContinuation;->isSuspended()Z

    move-result v1

    if-nez v1, :cond_9

    .line 124
    iget-object v1, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/EndPoint;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v1, v0

    goto/16 :goto_0

    .line 84
    :catch_0
    move-exception v0

    .line 86
    :try_start_3
    sget-object v2, Lorg/eclipse/jetty/server/BlockingHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 88
    sget-object v2, Lorg/eclipse/jetty/server/BlockingHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "uri="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    sget-object v2, Lorg/eclipse/jetty/server/BlockingHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "fields="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_requestFields:Lorg/eclipse/jetty/http/HttpFields;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    sget-object v2, Lorg/eclipse/jetty/server/BlockingHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 92
    :cond_4
    iget-object v2, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpException;->getStatus()I

    move-result v3

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpException;->getReason()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-interface {v2, v3, v0, v4, v5}, Lorg/eclipse/jetty/http/Generator;->sendError(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 93
    iget-object v0, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Parser;->reset()V

    .line 94
    iget-object v0, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->shutdownOutput()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 99
    :try_start_4
    iget-object v0, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Parser;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Generator;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 102
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/BlockingHttpConnection;->reset()V

    .line 105
    iget-object v0, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Response;->getStatus()I

    move-result v0

    if-ne v0, v6, :cond_b

    .line 107
    iget-object v0, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    const-string v2, "org.eclipse.jetty.io.Connection"

    invoke-virtual {v0, v2}, Lorg/eclipse/jetty/server/Request;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/io/Connection;

    .line 108
    if-eqz v0, :cond_b

    .line 113
    :goto_1
    iget-object v1, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v1}, Lorg/eclipse/jetty/http/Generator;->isPersistent()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/EndPoint;->isOutputShutdown()Z

    move-result v1

    if-nez v1, :cond_5

    .line 115
    sget-object v1, Lorg/eclipse/jetty/server/BlockingHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v2, "Safety net oshut!!! Please open a bugzilla"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    iget-object v1, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/EndPoint;->shutdownOutput()V

    .line 121
    :cond_5
    :goto_2
    iget-object v1, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/EndPoint;->isInputShutdown()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v1}, Lorg/eclipse/jetty/http/Generator;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/Request;->getAsyncContinuation()Lorg/eclipse/jetty/server/AsyncContinuation;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/AsyncContinuation;->isSuspended()Z

    move-result v1

    if-nez v1, :cond_9

    .line 124
    iget-object v1, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/EndPoint;->close()V

    move-object v1, v0

    goto/16 :goto_0

    .line 99
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    invoke-interface {v1}, Lorg/eclipse/jetty/http/Parser;->isComplete()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v1}, Lorg/eclipse/jetty/http/Generator;->isComplete()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 102
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/BlockingHttpConnection;->reset()V

    .line 105
    iget-object v1, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/Response;->getStatus()I

    move-result v1

    if-ne v1, v6, :cond_6

    .line 107
    iget-object v1, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    const-string v2, "org.eclipse.jetty.io.Connection"

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/server/Request;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    .line 108
    :cond_6
    iget-object v1, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v1}, Lorg/eclipse/jetty/http/Generator;->isPersistent()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/EndPoint;->isOutputShutdown()Z

    move-result v1

    if-nez v1, :cond_7

    .line 115
    sget-object v1, Lorg/eclipse/jetty/server/BlockingHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v2, "Safety net oshut!!! Please open a bugzilla"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    iget-object v1, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/EndPoint;->shutdownOutput()V

    .line 121
    :cond_7
    iget-object v1, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/EndPoint;->isInputShutdown()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v1}, Lorg/eclipse/jetty/http/Generator;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/Request;->getAsyncContinuation()Lorg/eclipse/jetty/server/AsyncContinuation;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/AsyncContinuation;->isSuspended()Z

    move-result v1

    if-nez v1, :cond_8

    .line 124
    iget-object v1, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/EndPoint;->close()V

    :cond_8
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 133
    :catchall_1
    move-exception v0

    invoke-static {v7}, Lorg/eclipse/jetty/server/BlockingHttpConnection;->setCurrentConnection(Lorg/eclipse/jetty/server/AbstractHttpConnection;)V

    .line 134
    iget-object v1, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    invoke-interface {v1}, Lorg/eclipse/jetty/http/Parser;->returnBuffers()V

    .line 135
    iget-object v1, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v1}, Lorg/eclipse/jetty/http/Generator;->returnBuffers()V

    throw v0

    :cond_9
    move-object v1, v0

    .line 124
    goto/16 :goto_0

    .line 133
    :cond_a
    invoke-static {v7}, Lorg/eclipse/jetty/server/BlockingHttpConnection;->setCurrentConnection(Lorg/eclipse/jetty/server/AbstractHttpConnection;)V

    .line 134
    iget-object v0, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Parser;->returnBuffers()V

    .line 135
    iget-object v0, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Generator;->returnBuffers()V

    return-object v1

    :cond_b
    move-object v0, v1

    goto/16 :goto_1

    :cond_c
    move-object v0, v1

    goto/16 :goto_2
.end method

.method protected handleRequest()V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->handleRequest()V

    .line 54
    return-void
.end method
