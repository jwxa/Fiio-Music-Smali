.class public Lorg/eclipse/jetty/server/handler/jmx/AbstractHandlerMBean;
.super Lorg/eclipse/jetty/jmx/ObjectMBean;
.source "AbstractHandlerMBean.java"


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lorg/eclipse/jetty/server/handler/jmx/AbstractHandlerMBean;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/handler/jmx/AbstractHandlerMBean;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/jmx/ObjectMBean;-><init>(Ljava/lang/Object;)V

    .line 39
    return-void
.end method


# virtual methods
.method protected getContextName(Lorg/eclipse/jetty/server/handler/ContextHandler;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 95
    const/4 v0, 0x0

    .line 97
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 99
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 100
    if-gez v0, :cond_3

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v0

    .line 101
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 102
    :cond_0
    const-string v0, "ROOT"

    .line 105
    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getBaseResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 109
    :try_start_0
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getBaseResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 110
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getBaseResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 119
    :cond_2
    :goto_1
    return-object v0

    .line 100
    :cond_3
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 112
    :catch_0
    move-exception v0

    .line 114
    sget-object v1, Lorg/eclipse/jetty/server/handler/jmx/AbstractHandlerMBean;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    .line 115
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getBaseResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/resource/Resource;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public getObjectContextBasis()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 45
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/jmx/AbstractHandlerMBean;->_managed:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 48
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/jmx/AbstractHandlerMBean;->_managed:Ljava/lang/Object;

    instance-of v0, v0, Lorg/eclipse/jetty/server/handler/ContextHandler;

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 69
    :cond_0
    :goto_0
    return-object v0

    .line 52
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/jmx/AbstractHandlerMBean;->_managed:Ljava/lang/Object;

    instance-of v0, v0, Lorg/eclipse/jetty/server/handler/AbstractHandler;

    if-eqz v0, :cond_3

    .line 54
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/jmx/AbstractHandlerMBean;->_managed:Ljava/lang/Object;

    check-cast v0, Lorg/eclipse/jetty/server/handler/AbstractHandler;

    .line 55
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/AbstractHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v2

    .line 56
    if-eqz v2, :cond_3

    .line 58
    const-class v3, Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v2, v3, v0}, Lorg/eclipse/jetty/server/handler/AbstractHandlerContainer;->findContainerOf(Lorg/eclipse/jetty/server/HandlerContainer;Ljava/lang/Class;Lorg/eclipse/jetty/server/Handler;)Lorg/eclipse/jetty/server/HandlerContainer;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/server/handler/ContextHandler;

    .line 62
    if-eqz v0, :cond_3

    .line 63
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/handler/jmx/AbstractHandlerMBean;->getContextName(Lorg/eclipse/jetty/server/handler/ContextHandler;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 66
    :goto_1
    if-nez v0, :cond_0

    .line 69
    :cond_2
    invoke-super {p0}, Lorg/eclipse/jetty/jmx/ObjectMBean;->getObjectContextBasis()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public getObjectNameBasis()Ljava/lang/String;
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/jmx/AbstractHandlerMBean;->_managed:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 78
    const/4 v0, 0x0

    .line 79
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/jmx/AbstractHandlerMBean;->_managed:Ljava/lang/Object;

    instance-of v1, v1, Lorg/eclipse/jetty/server/handler/ContextHandler;

    if-eqz v1, :cond_0

    .line 81
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/jmx/AbstractHandlerMBean;->_managed:Ljava/lang/Object;

    check-cast v0, Lorg/eclipse/jetty/server/handler/ContextHandler;

    .line 82
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/handler/jmx/AbstractHandlerMBean;->getContextName(Lorg/eclipse/jetty/server/handler/ContextHandler;)Ljava/lang/String;

    move-result-object v0

    .line 85
    :cond_0
    if-eqz v0, :cond_1

    .line 89
    :goto_0
    return-object v0

    :cond_1
    invoke-super {p0}, Lorg/eclipse/jetty/jmx/ObjectMBean;->getObjectNameBasis()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
