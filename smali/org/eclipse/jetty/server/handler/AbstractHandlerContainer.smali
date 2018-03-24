.class public abstract Lorg/eclipse/jetty/server/handler/AbstractHandlerContainer;
.super Lorg/eclipse/jetty/server/handler/AbstractHandler;
.source "AbstractHandlerContainer.java"

# interfaces
.implements Lorg/eclipse/jetty/server/HandlerContainer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/AbstractHandler;-><init>()V

    .line 40
    return-void
.end method

.method public static findContainerOf(Lorg/eclipse/jetty/server/HandlerContainer;Ljava/lang/Class;Lorg/eclipse/jetty/server/Handler;)Lorg/eclipse/jetty/server/HandlerContainer;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/eclipse/jetty/server/HandlerContainer;",
            ">(",
            "Lorg/eclipse/jetty/server/HandlerContainer;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lorg/eclipse/jetty/server/Handler;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 96
    if-eqz p0, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move-object v0, v1

    .line 114
    :cond_1
    :goto_0
    return-object v0

    .line 99
    :cond_2
    invoke-interface {p0, p1}, Lorg/eclipse/jetty/server/HandlerContainer;->getChildHandlersByClass(Ljava/lang/Class;)[Lorg/eclipse/jetty/server/Handler;

    move-result-object v5

    .line 100
    if-eqz v5, :cond_4

    .line 102
    array-length v6, v5

    move v4, v3

    :goto_1
    if-ge v4, v6, :cond_4

    aget-object v0, v5, v4

    .line 104
    check-cast v0, Lorg/eclipse/jetty/server/HandlerContainer;

    .line 105
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/eclipse/jetty/server/HandlerContainer;->getChildHandlersByClass(Ljava/lang/Class;)[Lorg/eclipse/jetty/server/Handler;

    move-result-object v7

    .line 106
    if-eqz v7, :cond_3

    .line 108
    array-length v8, v7

    move v2, v3

    :goto_2
    if-ge v2, v8, :cond_3

    aget-object v9, v7, v2

    .line 109
    if-eq v9, p2, :cond_1

    .line 108
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 102
    :cond_3
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_4
    move-object v0, v1

    .line 114
    goto :goto_0
.end method


# virtual methods
.method public dump(Ljava/lang/Appendable;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 120
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/handler/AbstractHandlerContainer;->dumpThis(Ljava/lang/Appendable;)V

    .line 121
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/Collection;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/AbstractHandlerContainer;->getBeans()Ljava/util/Collection;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/AbstractHandlerContainer;->getHandlers()[Lorg/eclipse/jetty/server/Handler;

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jetty/util/TypeUtil;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p1, p2, v0}, Lorg/eclipse/jetty/server/handler/AbstractHandlerContainer;->dump(Ljava/lang/Appendable;Ljava/lang/String;[Ljava/util/Collection;)V

    .line 122
    return-void
.end method

.method protected expandChildren(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 69
    return-object p1
.end method

.method protected expandHandler(Lorg/eclipse/jetty/server/Handler;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jetty/server/Handler;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<",
            "Lorg/eclipse/jetty/server/Handler;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 75
    if-nez p1, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-object p2

    .line 78
    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 79
    :cond_2
    invoke-static {p2, p1}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 81
    :cond_3
    instance-of v0, p1, Lorg/eclipse/jetty/server/handler/AbstractHandlerContainer;

    if-eqz v0, :cond_4

    .line 82
    check-cast p1, Lorg/eclipse/jetty/server/handler/AbstractHandlerContainer;

    invoke-virtual {p1, p2, p3}, Lorg/eclipse/jetty/server/handler/AbstractHandlerContainer;->expandChildren(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    .line 83
    :cond_4
    instance-of v0, p1, Lorg/eclipse/jetty/server/HandlerContainer;

    if-eqz v0, :cond_0

    .line 85
    check-cast p1, Lorg/eclipse/jetty/server/HandlerContainer;

    .line 86
    if-nez p3, :cond_5

    invoke-interface {p1}, Lorg/eclipse/jetty/server/HandlerContainer;->getChildHandlers()[Lorg/eclipse/jetty/server/Handler;

    move-result-object v0

    .line 87
    :goto_1
    invoke-static {p2, v0}, Lorg/eclipse/jetty/util/LazyList;->addArray(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    .line 86
    :cond_5
    invoke-interface {p1, p3}, Lorg/eclipse/jetty/server/HandlerContainer;->getChildHandlersByClass(Ljava/lang/Class;)[Lorg/eclipse/jetty/server/Handler;

    move-result-object v0

    goto :goto_1
.end method

.method public getChildHandlerByClass(Ljava/lang/Class;)Lorg/eclipse/jetty/server/Handler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/eclipse/jetty/server/Handler;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jetty/server/handler/AbstractHandlerContainer;->expandChildren(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 61
    if-nez v1, :cond_0

    .line 63
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v1, v0}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/server/Handler;

    goto :goto_0
.end method

.method public getChildHandlers()[Lorg/eclipse/jetty/server/Handler;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-virtual {p0, v0, v0}, Lorg/eclipse/jetty/server/handler/AbstractHandlerContainer;->expandChildren(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 46
    const-class v1, Lorg/eclipse/jetty/server/Handler;

    invoke-static {v0, v1}, Lorg/eclipse/jetty/util/LazyList;->toArray(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jetty/server/Handler;

    return-object v0
.end method

.method public getChildHandlersByClass(Ljava/lang/Class;)[Lorg/eclipse/jetty/server/Handler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Lorg/eclipse/jetty/server/Handler;"
        }
    .end annotation

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jetty/server/handler/AbstractHandlerContainer;->expandChildren(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 53
    invoke-static {v0, p1}, Lorg/eclipse/jetty/util/LazyList;->toArray(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jetty/server/Handler;

    return-object v0
.end method
