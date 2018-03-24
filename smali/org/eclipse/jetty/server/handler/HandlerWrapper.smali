.class public Lorg/eclipse/jetty/server/handler/HandlerWrapper;
.super Lorg/eclipse/jetty/server/handler/AbstractHandlerContainer;
.source "HandlerWrapper.java"


# instance fields
.field protected _handler:Lorg/eclipse/jetty/server/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/AbstractHandlerContainer;-><init>()V

    .line 47
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 171
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->isStopped()Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "!STOPPED"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->getHandler()Lorg/eclipse/jetty/server/Handler;

    move-result-object v0

    .line 174
    if-eqz v0, :cond_1

    .line 176
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->setHandler(Lorg/eclipse/jetty/server/Handler;)V

    .line 177
    invoke-interface {v0}, Lorg/eclipse/jetty/server/Handler;->destroy()V

    .line 179
    :cond_1
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/AbstractHandlerContainer;->destroy()V

    .line 180
    return-void
.end method

.method protected doStart()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->_handler:Lorg/eclipse/jetty/server/Handler;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->_handler:Lorg/eclipse/jetty/server/Handler;

    invoke-interface {v0}, Lorg/eclipse/jetty/server/Handler;->start()V

    .line 96
    :cond_0
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/AbstractHandlerContainer;->doStart()V

    .line 97
    return-void
.end method

.method protected doStop()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->_handler:Lorg/eclipse/jetty/server/Handler;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->_handler:Lorg/eclipse/jetty/server/Handler;

    invoke-interface {v0}, Lorg/eclipse/jetty/server/Handler;->stop()V

    .line 108
    :cond_0
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/AbstractHandlerContainer;->doStop()V

    .line 109
    return-void
.end method

.method protected expandChildren(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->_handler:Lorg/eclipse/jetty/server/Handler;

    invoke-virtual {p0, v0, p1, p2}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->expandHandler(Lorg/eclipse/jetty/server/Handler;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getHandler()Lorg/eclipse/jetty/server/Handler;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->_handler:Lorg/eclipse/jetty/server/Handler;

    return-object v0
.end method

.method public getHandlers()[Lorg/eclipse/jetty/server/Handler;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 64
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->_handler:Lorg/eclipse/jetty/server/Handler;

    if-nez v0, :cond_0

    .line 65
    new-array v0, v2, [Lorg/eclipse/jetty/server/Handler;

    .line 66
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/eclipse/jetty/server/Handler;

    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->_handler:Lorg/eclipse/jetty/server/Handler;

    aput-object v1, v0, v2

    goto :goto_0
.end method

.method public getNestedHandlerByClass(Ljava/lang/Class;)Lorg/eclipse/jetty/server/Handler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<H::",
            "Lorg/eclipse/jetty/server/Handler;",
            ">(",
            "Ljava/lang/Class",
            "<TH;>;)TH;"
        }
    .end annotation

    .prologue
    .line 153
    move-object v0, p0

    .line 154
    :goto_0
    if-eqz v0, :cond_1

    .line 156
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    :goto_1
    return-object v0

    .line 158
    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->getHandler()Lorg/eclipse/jetty/server/Handler;

    move-result-object v0

    .line 159
    instance-of v1, v0, Lorg/eclipse/jetty/server/handler/HandlerWrapper;

    if-eqz v1, :cond_1

    .line 160
    check-cast v0, Lorg/eclipse/jetty/server/handler/HandlerWrapper;

    goto :goto_0

    .line 163
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Lc/c/c/c;Lc/c/c/e;)V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->_handler:Lorg/eclipse/jetty/server/Handler;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->_handler:Lorg/eclipse/jetty/server/Handler;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/Handler;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Lc/c/c/c;Lc/c/c/e;)V

    .line 118
    :cond_0
    return-void
.end method

.method public setHandler(Lorg/eclipse/jetty/server/Handler;)V
    .locals 3

    .prologue
    .line 75
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "STARTED"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->_handler:Lorg/eclipse/jetty/server/Handler;

    .line 79
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->_handler:Lorg/eclipse/jetty/server/Handler;

    .line 80
    if-eqz p1, :cond_1

    .line 81
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/eclipse/jetty/server/Handler;->setServer(Lorg/eclipse/jetty/server/Server;)V

    .line 83
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 84
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v1

    const-string v2, "handler"

    invoke-virtual {v1, p0, v0, p1, v2}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    :cond_2
    return-void
.end method

.method public setServer(Lorg/eclipse/jetty/server/Server;)V
    .locals 4

    .prologue
    .line 125
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    .line 126
    if-ne p1, v0, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 130
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "STARTED"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_2
    invoke-super {p0, p1}, Lorg/eclipse/jetty/server/handler/AbstractHandlerContainer;->setServer(Lorg/eclipse/jetty/server/Server;)V

    .line 134
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->getHandler()Lorg/eclipse/jetty/server/Handler;

    move-result-object v1

    .line 135
    if-eqz v1, :cond_3

    .line 136
    invoke-interface {v1, p1}, Lorg/eclipse/jetty/server/Handler;->setServer(Lorg/eclipse/jetty/server/Server;)V

    .line 138
    :cond_3
    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    .line 139
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->_handler:Lorg/eclipse/jetty/server/Handler;

    const-string v3, "handler"

    invoke-virtual {v0, p0, v1, v2, v3}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method
