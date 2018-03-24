.class public Lorg/eclipse/jetty/server/session/jmx/AbstractSessionManagerMBean;
.super Lorg/eclipse/jetty/server/handler/jmx/AbstractHandlerMBean;
.source "AbstractSessionManagerMBean.java"


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/server/handler/jmx/AbstractHandlerMBean;-><init>(Ljava/lang/Object;)V

    .line 32
    return-void
.end method


# virtual methods
.method public getObjectContextBasis()Ljava/lang/String;
    .locals 4

    .prologue
    .line 37
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/jmx/AbstractSessionManagerMBean;->_managed:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/session/jmx/AbstractSessionManagerMBean;->_managed:Ljava/lang/Object;

    instance-of v0, v0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/jmx/AbstractSessionManagerMBean;->_managed:Ljava/lang/Object;

    check-cast v0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;

    .line 41
    const/4 v1, 0x0

    .line 42
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->getSessionHandler()Lorg/eclipse/jetty/server/session/SessionHandler;

    move-result-object v0

    .line 43
    if-eqz v0, :cond_1

    .line 45
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/session/SessionHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v2

    const-class v3, Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v2, v3, v0}, Lorg/eclipse/jetty/server/handler/AbstractHandlerContainer;->findContainerOf(Lorg/eclipse/jetty/server/HandlerContainer;Ljava/lang/Class;Lorg/eclipse/jetty/server/Handler;)Lorg/eclipse/jetty/server/HandlerContainer;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/server/handler/ContextHandler;

    .line 49
    if-eqz v0, :cond_1

    .line 50
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/session/jmx/AbstractSessionManagerMBean;->getContextName(Lorg/eclipse/jetty/server/handler/ContextHandler;)Ljava/lang/String;

    move-result-object v0

    .line 53
    :goto_0
    if-eqz v0, :cond_0

    .line 56
    :goto_1
    return-object v0

    :cond_0
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/jmx/AbstractHandlerMBean;->getObjectContextBasis()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method
