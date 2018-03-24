.class final Lorg/eclipse/jetty/servlet/e;
.super Ljava/lang/Object;
.source "ServletHandler.java"

# interfaces
.implements Lc/c/f;


# instance fields
.field a:Lorg/eclipse/jetty/servlet/FilterHolder;

.field b:Lorg/eclipse/jetty/servlet/e;

.field c:Lorg/eclipse/jetty/servlet/ServletHolder;

.field final synthetic d:Lorg/eclipse/jetty/servlet/ServletHandler;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/servlet/ServletHandler;Ljava/lang/Object;Lorg/eclipse/jetty/servlet/ServletHolder;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1395
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/e;->d:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1396
    invoke-static {p2}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_0

    .line 1398
    invoke-static {p2, v1}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/servlet/FilterHolder;

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/e;->a:Lorg/eclipse/jetty/servlet/FilterHolder;

    .line 1399
    invoke-static {p2, v1}, Lorg/eclipse/jetty/util/LazyList;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    .line 1400
    new-instance v1, Lorg/eclipse/jetty/servlet/e;

    invoke-direct {v1, p1, v0, p3}, Lorg/eclipse/jetty/servlet/e;-><init>(Lorg/eclipse/jetty/servlet/ServletHandler;Ljava/lang/Object;Lorg/eclipse/jetty/servlet/ServletHolder;)V

    iput-object v1, p0, Lorg/eclipse/jetty/servlet/e;->b:Lorg/eclipse/jetty/servlet/e;

    .line 1404
    :goto_0
    return-void

    .line 1403
    :cond_0
    iput-object p3, p0, Lorg/eclipse/jetty/servlet/e;->c:Lorg/eclipse/jetty/servlet/ServletHolder;

    goto :goto_0
.end method


# virtual methods
.method public final a(Lc/c/ac;Lc/c/ai;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1410
    instance-of v0, p1, Lorg/eclipse/jetty/server/Request;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lorg/eclipse/jetty/server/Request;

    move-object v1, v0

    .line 1413
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/e;->a:Lorg/eclipse/jetty/servlet/FilterHolder;

    if-eqz v0, :cond_4

    .line 1415
    invoke-static {}, Lorg/eclipse/jetty/servlet/ServletHandler;->access$000()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1416
    invoke-static {}, Lorg/eclipse/jetty/servlet/ServletHandler;->access$000()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "call filter "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/eclipse/jetty/servlet/e;->a:Lorg/eclipse/jetty/servlet/FilterHolder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1417
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/e;->a:Lorg/eclipse/jetty/servlet/FilterHolder;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/FilterHolder;->getFilter()Lc/c/e;

    move-result-object v0

    .line 1418
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/e;->a:Lorg/eclipse/jetty/servlet/FilterHolder;

    invoke-virtual {v2}, Lorg/eclipse/jetty/servlet/FilterHolder;->isAsyncSupported()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1419
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/e;->b:Lorg/eclipse/jetty/servlet/e;

    invoke-interface {v0, p1, p2, v1}, Lc/c/e;->doFilter(Lc/c/ac;Lc/c/ai;Lc/c/f;)V

    .line 1456
    :goto_1
    return-void

    .line 1410
    :cond_1
    invoke-static {}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getCurrentConnection()Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 1422
    :cond_2
    invoke-virtual {v1}, Lorg/eclipse/jetty/server/Request;->isAsyncSupported()Z

    move-result v2

    .line 1423
    if-eqz v2, :cond_3

    .line 1427
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/server/Request;->setAsyncSupported(Z)V

    .line 1428
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/e;->b:Lorg/eclipse/jetty/servlet/e;

    invoke-interface {v0, p1, p2, v2}, Lc/c/e;->doFilter(Lc/c/ac;Lc/c/ai;Lc/c/f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1432
    invoke-virtual {v1, v5}, Lorg/eclipse/jetty/server/Request;->setAsyncSupported(Z)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v1, v5}, Lorg/eclipse/jetty/server/Request;->setAsyncSupported(Z)V

    throw v0

    .line 1436
    :cond_3
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/e;->b:Lorg/eclipse/jetty/servlet/e;

    invoke-interface {v0, p1, p2, v1}, Lc/c/e;->doFilter(Lc/c/ac;Lc/c/ai;Lc/c/f;)V

    goto :goto_1

    :cond_4
    move-object v0, p1

    .line 1443
    check-cast v0, Lc/c/c/c;

    .line 1444
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/e;->c:Lorg/eclipse/jetty/servlet/ServletHolder;

    if-eqz v2, :cond_6

    .line 1446
    invoke-static {}, Lorg/eclipse/jetty/servlet/ServletHandler;->access$000()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1447
    invoke-static {}, Lorg/eclipse/jetty/servlet/ServletHandler;->access$000()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "call servlet "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/eclipse/jetty/servlet/e;->c:Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1448
    :cond_5
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/e;->c:Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-virtual {v0, v1, p1, p2}, Lorg/eclipse/jetty/servlet/ServletHolder;->handle(Lorg/eclipse/jetty/server/Request;Lc/c/ac;Lc/c/ai;)V

    goto :goto_1

    .line 1450
    :cond_6
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/e;->d:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {v2}, Lorg/eclipse/jetty/servlet/ServletHandler;->getHandler()Lorg/eclipse/jetty/server/Handler;

    move-result-object v2

    if-nez v2, :cond_7

    .line 1451
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/e;->d:Lorg/eclipse/jetty/servlet/ServletHandler;

    check-cast p2, Lc/c/c/e;

    invoke-virtual {v1, v0, p2}, Lorg/eclipse/jetty/servlet/ServletHandler;->notFound(Lc/c/c/c;Lc/c/c/e;)V

    goto :goto_1

    .line 1453
    :cond_7
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/e;->d:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-interface {v0}, Lc/c/c/c;->getServletPath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lc/c/c/c;->getPathInfo()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    check-cast p2, Lc/c/c/e;

    invoke-virtual {v2, v3, v1, v0, p2}, Lorg/eclipse/jetty/servlet/ServletHandler;->nextHandle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Lc/c/c/c;Lc/c/c/e;)V

    goto :goto_1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1460
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/e;->a:Lorg/eclipse/jetty/servlet/FilterHolder;

    if-eqz v0, :cond_0

    .line 1461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jetty/servlet/e;->a:Lorg/eclipse/jetty/servlet/FilterHolder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/servlet/e;->b:Lorg/eclipse/jetty/servlet/e;

    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/e;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1464
    :goto_0
    return-object v0

    .line 1462
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/e;->c:Lorg/eclipse/jetty/servlet/ServletHolder;

    if-eqz v0, :cond_1

    .line 1463
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/e;->c:Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletHolder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1464
    :cond_1
    const-string v0, "null"

    goto :goto_0
.end method
