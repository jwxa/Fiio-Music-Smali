.class final Lorg/eclipse/jetty/server/handler/h;
.super Lorg/eclipse/jetty/server/handler/AbstractHandler;
.source "MovedContextHandler.java"


# instance fields
.field final synthetic a:Lorg/eclipse/jetty/server/handler/MovedContextHandler;


# direct methods
.method private constructor <init>(Lorg/eclipse/jetty/server/handler/MovedContextHandler;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/h;->a:Lorg/eclipse/jetty/server/handler/MovedContextHandler;

    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/AbstractHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/eclipse/jetty/server/handler/MovedContextHandler;B)V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/server/handler/h;-><init>(Lorg/eclipse/jetty/server/handler/MovedContextHandler;)V

    return-void
.end method


# virtual methods
.method public final handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Lc/c/c/c;Lc/c/c/e;)V
    .locals 4

    .prologue
    .line 106
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/h;->a:Lorg/eclipse/jetty/server/handler/MovedContextHandler;

    iget-object v0, v0, Lorg/eclipse/jetty/server/handler/MovedContextHandler;->_newContextURL:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 132
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/h;->a:Lorg/eclipse/jetty/server/handler/MovedContextHandler;

    iget-object v0, v0, Lorg/eclipse/jetty/server/handler/MovedContextHandler;->_newContextURL:Ljava/lang/String;

    .line 110
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/h;->a:Lorg/eclipse/jetty/server/handler/MovedContextHandler;

    iget-boolean v1, v1, Lorg/eclipse/jetty/server/handler/MovedContextHandler;->_discardPathInfo:Z

    if-nez v1, :cond_1

    invoke-interface {p3}, Lc/c/c/c;->getPathInfo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 111
    invoke-interface {p3}, Lc/c/c/c;->getPathInfo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    :cond_1
    invoke-static {v0}, Lorg/eclipse/jetty/util/URIUtil;->hasScheme(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/h;->a:Lorg/eclipse/jetty/server/handler/MovedContextHandler;

    iget-boolean v0, v0, Lorg/eclipse/jetty/server/handler/MovedContextHandler;->_discardQuery:Z

    if-nez v0, :cond_2

    invoke-interface {p3}, Lc/c/c/c;->getQueryString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 118
    const/16 v0, 0x3f

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 119
    invoke-interface {p3}, Lc/c/c/c;->getQueryString()Ljava/lang/String;

    move-result-object v0

    .line 120
    const-string v2, "\r\n?&="

    const-string v3, "!"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    :cond_2
    const-string v0, "Location"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v0, v1}, Lc/c/c/e;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/h;->a:Lorg/eclipse/jetty/server/handler/MovedContextHandler;

    iget-object v0, v0, Lorg/eclipse/jetty/server/handler/MovedContextHandler;->_expires:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 127
    const-string v0, "Expires"

    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/h;->a:Lorg/eclipse/jetty/server/handler/MovedContextHandler;

    iget-object v1, v1, Lorg/eclipse/jetty/server/handler/MovedContextHandler;->_expires:Ljava/lang/String;

    invoke-interface {p4, v0, v1}, Lc/c/c/e;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :cond_3
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/h;->a:Lorg/eclipse/jetty/server/handler/MovedContextHandler;

    iget-boolean v0, v0, Lorg/eclipse/jetty/server/handler/MovedContextHandler;->_permanent:Z

    if-eqz v0, :cond_5

    const/16 v0, 0x12d

    :goto_2
    invoke-interface {p4, v0}, Lc/c/c/e;->setStatus(I)V

    .line 130
    const/4 v0, 0x0

    invoke-interface {p4, v0}, Lc/c/c/e;->setContentLength(I)V

    .line 131
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    goto :goto_0

    .line 113
    :cond_4
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getRootURL()Ljava/lang/StringBuilder;

    move-result-object v1

    goto :goto_1

    .line 129
    :cond_5
    const/16 v0, 0x12e

    goto :goto_2
.end method
