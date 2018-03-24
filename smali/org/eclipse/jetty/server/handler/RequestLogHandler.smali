.class public Lorg/eclipse/jetty/server/handler/RequestLogHandler;
.super Lorg/eclipse/jetty/server/handler/HandlerWrapper;
.source "RequestLogHandler.java"


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private _requestLog:Lorg/eclipse/jetty/server/RequestLog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lorg/eclipse/jetty/server/handler/RequestLogHandler;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/handler/RequestLogHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method protected doStart()V
    .locals 1

    .prologue
    .line 142
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->doStart()V

    .line 143
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/RequestLogHandler;->_requestLog:Lorg/eclipse/jetty/server/RequestLog;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/RequestLogHandler;->_requestLog:Lorg/eclipse/jetty/server/RequestLog;

    invoke-interface {v0}, Lorg/eclipse/jetty/server/RequestLog;->start()V

    .line 145
    :cond_0
    return-void
.end method

.method protected doStop()V
    .locals 1

    .prologue
    .line 154
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->doStop()V

    .line 155
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/RequestLogHandler;->_requestLog:Lorg/eclipse/jetty/server/RequestLog;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/RequestLogHandler;->_requestLog:Lorg/eclipse/jetty/server/RequestLog;

    invoke-interface {v0}, Lorg/eclipse/jetty/server/RequestLog;->stop()V

    .line 157
    :cond_0
    return-void
.end method

.method public getRequestLog()Lorg/eclipse/jetty/server/RequestLog;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/RequestLogHandler;->_requestLog:Lorg/eclipse/jetty/server/RequestLog;

    return-object v0
.end method

.method public handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Lc/c/c/c;Lc/c/c/e;)V
    .locals 3

    .prologue
    .line 59
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getAsyncContinuation()Lorg/eclipse/jetty/server/AsyncContinuation;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation;->isInitial()Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lorg/eclipse/jetty/server/Request;->setDispatchTime(J)V

    .line 67
    :cond_0
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Lc/c/c/c;Lc/c/c/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/RequestLogHandler;->_requestLog:Lorg/eclipse/jetty/server/RequestLog;

    if-eqz v0, :cond_1

    sget-object v0, Lc/c/d;->c:Lc/c/d;

    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getDispatcherType()Lc/c/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/c/d;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/RequestLogHandler;->_requestLog:Lorg/eclipse/jetty/server/RequestLog;

    check-cast p4, Lorg/eclipse/jetty/server/Response;

    invoke-interface {v0, p2, p4}, Lorg/eclipse/jetty/server/RequestLog;->log(Lorg/eclipse/jetty/server/Request;Lorg/eclipse/jetty/server/Response;)V

    .line 77
    :cond_1
    return-void

    .line 71
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/RequestLogHandler;->_requestLog:Lorg/eclipse/jetty/server/RequestLog;

    if-eqz v1, :cond_2

    sget-object v1, Lc/c/d;->c:Lc/c/d;

    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getDispatcherType()Lc/c/d;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc/c/d;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 73
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/RequestLogHandler;->_requestLog:Lorg/eclipse/jetty/server/RequestLog;

    check-cast p4, Lorg/eclipse/jetty/server/Response;

    invoke-interface {v1, p2, p4}, Lorg/eclipse/jetty/server/RequestLog;->log(Lorg/eclipse/jetty/server/Request;Lorg/eclipse/jetty/server/Response;)V

    :cond_2
    throw v0
.end method

.method public setRequestLog(Lorg/eclipse/jetty/server/RequestLog;)V
    .locals 6

    .prologue
    .line 85
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/RequestLogHandler;->_requestLog:Lorg/eclipse/jetty/server/RequestLog;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/RequestLogHandler;->_requestLog:Lorg/eclipse/jetty/server/RequestLog;

    invoke-interface {v0}, Lorg/eclipse/jetty/server/RequestLog;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/RequestLogHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 94
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/RequestLogHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/RequestLogHandler;->_requestLog:Lorg/eclipse/jetty/server/RequestLog;

    const-string v4, "logimpl"

    const/4 v5, 0x1

    move-object v1, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 96
    :cond_1
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/RequestLogHandler;->_requestLog:Lorg/eclipse/jetty/server/RequestLog;

    .line 101
    :try_start_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/RequestLogHandler;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/RequestLogHandler;->_requestLog:Lorg/eclipse/jetty/server/RequestLog;

    if-eqz v0, :cond_2

    .line 102
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/RequestLogHandler;->_requestLog:Lorg/eclipse/jetty/server/RequestLog;

    invoke-interface {v0}, Lorg/eclipse/jetty/server/RequestLog;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 107
    :cond_2
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 90
    sget-object v1, Lorg/eclipse/jetty/server/handler/RequestLogHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 104
    :catch_1
    move-exception v0

    .line 106
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setServer(Lorg/eclipse/jetty/server/Server;)V
    .locals 12

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 117
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/RequestLogHandler;->_requestLog:Lorg/eclipse/jetty/server/RequestLog;

    if-eqz v0, :cond_2

    .line 119
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/RequestLogHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/RequestLogHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 120
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/RequestLogHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/RequestLogHandler;->_requestLog:Lorg/eclipse/jetty/server/RequestLog;

    const-string v4, "logimpl"

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 121
    :cond_0
    invoke-super {p0, p1}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->setServer(Lorg/eclipse/jetty/server/Server;)V

    .line 122
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/RequestLogHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 123
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v6

    iget-object v9, p0, Lorg/eclipse/jetty/server/handler/RequestLogHandler;->_requestLog:Lorg/eclipse/jetty/server/RequestLog;

    const-string v10, "logimpl"

    move-object v7, p0

    move-object v8, v3

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 127
    :cond_1
    :goto_0
    return-void

    .line 126
    :cond_2
    invoke-super {p0, p1}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->setServer(Lorg/eclipse/jetty/server/Server;)V

    goto :goto_0
.end method
