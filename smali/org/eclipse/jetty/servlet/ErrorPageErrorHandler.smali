.class public Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;
.super Lorg/eclipse/jetty/server/handler/ErrorHandler;
.source "ErrorPageErrorHandler.java"


# static fields
.field public static final ERROR_PAGE:Ljava/lang/String; = "org.eclipse.jetty.server.error_page"

.field public static final GLOBAL_ERROR_PAGE:Ljava/lang/String; = "org.eclipse.jetty.server.error_page.global"

.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private final _errorPageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/servlet/a;",
            ">;"
        }
    .end annotation
.end field

.field private final _errorPages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected _servletContext:Lc/c/s;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/ErrorHandler;-><init>()V

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;->_errorPages:Ljava/util/Map;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;->_errorPageList:Ljava/util/List;

    .line 61
    return-void
.end method


# virtual methods
.method public addErrorPage(IILjava/lang/String;)V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;->_errorPageList:Ljava/util/List;

    new-instance v1, Lorg/eclipse/jetty/servlet/a;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/eclipse/jetty/servlet/a;-><init>(Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;IILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    return-void
.end method

.method public addErrorPage(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;->_errorPages:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    return-void
.end method

.method public addErrorPage(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 192
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;->_errorPages:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    return-void
.end method

.method public addErrorPage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;->_errorPages:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    return-void
.end method

.method protected doStart()V
    .locals 1

    .prologue
    .line 236
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/ErrorHandler;->doStart()V

    .line 237
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getCurrentContext()Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;->_servletContext:Lc/c/s;

    .line 238
    return-void
.end method

.method protected doStop()V
    .locals 0

    .prologue
    .line 245
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/ErrorHandler;->doStop()V

    .line 246
    return-void
.end method

.method public getErrorPages()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;->_errorPages:Ljava/util/Map;

    return-object v0
.end method

.method public handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Lc/c/c/c;Lc/c/c/e;)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 70
    invoke-interface {p3}, Lc/c/c/c;->getMethod()Ljava/lang/String;

    move-result-object v0

    .line 71
    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "HEAD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    invoke-static {}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getCurrentConnection()Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    .line 161
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;->_errorPages:Ljava/util/Map;

    if-eqz v0, :cond_6

    .line 78
    const/4 v1, 0x0

    .line 79
    const-string v0, "javax.servlet.error.exception_type"

    invoke-interface {p3, v0}, Lc/c/c/c;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 81
    const-class v2, Lc/c/x;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 83
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;->_errorPages:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 84
    if-nez v1, :cond_9

    .line 86
    const-string v2, "javax.servlet.error.exception"

    invoke-interface {p3, v2}, Lc/c/c/c;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    .line 87
    :goto_1
    instance-of v4, v2, Lc/c/x;

    if-eqz v4, :cond_1

    .line 88
    check-cast v2, Lc/c/x;

    invoke-virtual {v2}, Lc/c/x;->a()Ljava/lang/Throwable;

    move-result-object v2

    goto :goto_1

    .line 89
    :cond_1
    if-eqz v2, :cond_9

    .line 90
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    move-object v2, v0

    .line 94
    :goto_2
    if-nez v1, :cond_2

    if-eqz v2, :cond_2

    .line 96
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;->_errorPages:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 97
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    move-object v2, v1

    move-object v1, v0

    goto :goto_2

    .line 100
    :cond_2
    if-nez v1, :cond_8

    .line 103
    const-string v0, "javax.servlet.error.status_code"

    invoke-interface {p3, v0}, Lc/c/c/c;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 104
    if-eqz v0, :cond_8

    .line 106
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;->_errorPages:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 109
    if-nez v1, :cond_8

    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;->_errorPageList:Ljava/util/List;

    if-eqz v2, :cond_8

    .line 112
    :goto_3
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;->_errorPageList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_8

    .line 114
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;->_errorPageList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jetty/servlet/a;

    .line 115
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/eclipse/jetty/servlet/a;->a(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 117
    invoke-virtual {v2}, Lorg/eclipse/jetty/servlet/a;->a()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 126
    :goto_4
    if-nez v0, :cond_7

    .line 128
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;->_errorPages:Ljava/util/Map;

    const-string v1, "org.eclipse.jetty.server.error_page.global"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 131
    :goto_5
    if-eqz v1, :cond_6

    .line 133
    const-string v0, "org.eclipse.jetty.server.error_page"

    invoke-interface {p3, v0}, Lc/c/c/c;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 134
    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 136
    :cond_3
    const-string v0, "org.eclipse.jetty.server.error_page"

    invoke-interface {p3, v0, v1}, Lc/c/c/c;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 138
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;->_servletContext:Lc/c/s;

    invoke-interface {v0, v1}, Lc/c/s;->getRequestDispatcher(Ljava/lang/String;)Lc/c/p;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/server/Dispatcher;

    .line 141
    if-eqz v0, :cond_5

    .line 143
    :try_start_0
    invoke-virtual {v0, p3, p4}, Lorg/eclipse/jetty/server/Dispatcher;->error(Lc/c/ac;Lc/c/ai;)V
    :try_end_0
    .catch Lc/c/x; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 151
    :catch_0
    move-exception v0

    .line 153
    sget-object v1, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v2, "EXCEPTION "

    invoke-interface {v1, v2, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 112
    :cond_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_3

    .line 148
    :cond_5
    :try_start_1
    sget-object v0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No error page "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Lc/c/x; {:try_start_1 .. :try_end_1} :catch_0

    .line 160
    :cond_6
    invoke-super {p0, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/handler/ErrorHandler;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Lc/c/c/c;Lc/c/c/e;)V

    goto/16 :goto_0

    :cond_7
    move-object v1, v0

    goto :goto_5

    :cond_8
    move-object v0, v1

    goto :goto_4

    :cond_9
    move-object v2, v0

    goto/16 :goto_2
.end method

.method public setErrorPages(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;->_errorPages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 179
    if-eqz p1, :cond_0

    .line 180
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;->_errorPages:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 181
    :cond_0
    return-void
.end method
