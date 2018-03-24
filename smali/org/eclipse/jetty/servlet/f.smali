.class final Lorg/eclipse/jetty/servlet/f;
.super Ljava/lang/Object;
.source "ServletHandler.java"

# interfaces
.implements Lc/c/f;


# instance fields
.field final a:Lorg/eclipse/jetty/server/Request;

.field final b:Ljava/lang/Object;

.field final c:Lorg/eclipse/jetty/servlet/ServletHolder;

.field d:I

.field final synthetic e:Lorg/eclipse/jetty/servlet/ServletHandler;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/servlet/ServletHandler;Lorg/eclipse/jetty/server/Request;Ljava/lang/Object;Lorg/eclipse/jetty/servlet/ServletHolder;)V
    .locals 1

    .prologue
    .line 1479
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/f;->e:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1475
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jetty/servlet/f;->d:I

    .line 1480
    iput-object p2, p0, Lorg/eclipse/jetty/servlet/f;->a:Lorg/eclipse/jetty/server/Request;

    .line 1481
    iput-object p3, p0, Lorg/eclipse/jetty/servlet/f;->b:Ljava/lang/Object;

    .line 1482
    iput-object p4, p0, Lorg/eclipse/jetty/servlet/f;->c:Lorg/eclipse/jetty/servlet/ServletHolder;

    .line 1483
    return-void
.end method


# virtual methods
.method public final a(Lc/c/ac;Lc/c/ai;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1489
    invoke-static {}, Lorg/eclipse/jetty/servlet/ServletHandler;->access$000()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1490
    invoke-static {}, Lorg/eclipse/jetty/servlet/ServletHandler;->access$000()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "doFilter "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/eclipse/jetty/servlet/f;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1493
    :cond_0
    iget v0, p0, Lorg/eclipse/jetty/servlet/f;->d:I

    iget-object v1, p0, Lorg/eclipse/jetty/servlet/f;->b:Ljava/lang/Object;

    invoke-static {v1}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 1495
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/f;->b:Ljava/lang/Object;

    iget v1, p0, Lorg/eclipse/jetty/servlet/f;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jetty/servlet/f;->d:I

    invoke-static {v0, v1}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/servlet/FilterHolder;

    .line 1496
    invoke-static {}, Lorg/eclipse/jetty/servlet/ServletHandler;->access$000()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1497
    invoke-static {}, Lorg/eclipse/jetty/servlet/ServletHandler;->access$000()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "call filter "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1498
    :cond_1
    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/FilterHolder;->getFilter()Lc/c/e;

    move-result-object v1

    .line 1500
    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/FilterHolder;->isAsyncSupported()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/servlet/f;->a:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Request;->isAsyncSupported()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1502
    :cond_2
    invoke-interface {v1, p1, p2, p0}, Lc/c/e;->doFilter(Lc/c/ac;Lc/c/ai;Lc/c/f;)V

    .line 1536
    :goto_0
    return-void

    .line 1508
    :cond_3
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/f;->a:Lorg/eclipse/jetty/server/Request;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/eclipse/jetty/server/Request;->setAsyncSupported(Z)V

    .line 1509
    invoke-interface {v1, p1, p2, p0}, Lc/c/e;->doFilter(Lc/c/ac;Lc/c/ai;Lc/c/f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1513
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/f;->a:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {v0, v5}, Lorg/eclipse/jetty/server/Request;->setAsyncSupported(Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/eclipse/jetty/servlet/f;->a:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {v1, v5}, Lorg/eclipse/jetty/server/Request;->setAsyncSupported(Z)V

    throw v0

    :cond_4
    move-object v0, p1

    .line 1517
    check-cast v0, Lc/c/c/c;

    .line 1522
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/f;->c:Lorg/eclipse/jetty/servlet/ServletHolder;

    if-eqz v1, :cond_6

    .line 1524
    invoke-static {}, Lorg/eclipse/jetty/servlet/ServletHandler;->access$000()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1525
    invoke-static {}, Lorg/eclipse/jetty/servlet/ServletHandler;->access$000()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "call servlet "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/eclipse/jetty/servlet/f;->c:Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1526
    :cond_5
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/f;->c:Lorg/eclipse/jetty/servlet/ServletHolder;

    iget-object v1, p0, Lorg/eclipse/jetty/servlet/f;->a:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {v0, v1, p1, p2}, Lorg/eclipse/jetty/servlet/ServletHolder;->handle(Lorg/eclipse/jetty/server/Request;Lc/c/ac;Lc/c/ai;)V

    goto :goto_0

    .line 1528
    :cond_6
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/f;->e:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->getHandler()Lorg/eclipse/jetty/server/Handler;

    move-result-object v1

    if-nez v1, :cond_7

    .line 1529
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/f;->e:Lorg/eclipse/jetty/servlet/ServletHandler;

    check-cast p2, Lc/c/c/e;

    invoke-virtual {v1, v0, p2}, Lorg/eclipse/jetty/servlet/ServletHandler;->notFound(Lc/c/c/c;Lc/c/c/e;)V

    goto :goto_0

    .line 1532
    :cond_7
    instance-of v1, p1, Lorg/eclipse/jetty/server/Request;

    if-eqz v1, :cond_8

    check-cast p1, Lorg/eclipse/jetty/server/Request;

    .line 1533
    :goto_1
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/f;->e:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-interface {v0}, Lc/c/c/c;->getServletPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lc/c/c/c;->getPathInfo()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    check-cast p2, Lc/c/c/e;

    invoke-virtual {v1, v2, p1, v0, p2}, Lorg/eclipse/jetty/servlet/ServletHandler;->nextHandle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Lc/c/c/c;Lc/c/c/e;)V

    goto :goto_0

    .line 1532
    :cond_8
    invoke-static {}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getCurrentConnection()Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object p1

    goto :goto_1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1541
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1542
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/f;->b:Ljava/lang/Object;

    invoke-static {v2}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1544
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/f;->b:Ljava/lang/Object;

    invoke-static {v2, v0}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    .line 1545
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1546
    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1542
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1548
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/f;->c:Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1549
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
