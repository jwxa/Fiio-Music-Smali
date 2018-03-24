.class final Lorg/eclipse/jetty/server/j;
.super Ljava/lang/Object;
.source "Dispatcher.java"

# interfaces
.implements Lorg/eclipse/jetty/util/Attributes;


# instance fields
.field final a:Lorg/eclipse/jetty/util/Attributes;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field final synthetic g:Lorg/eclipse/jetty/server/Dispatcher;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/server/Dispatcher;Lorg/eclipse/jetty/util/Attributes;)V
    .locals 0

    .prologue
    .line 339
    iput-object p1, p0, Lorg/eclipse/jetty/server/j;->g:Lorg/eclipse/jetty/server/Dispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    iput-object p2, p0, Lorg/eclipse/jetty/server/j;->a:Lorg/eclipse/jetty/util/Attributes;

    .line 341
    return-void
.end method


# virtual methods
.method public final clearAttributes()V
    .locals 1

    .prologue
    .line 434
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lorg/eclipse/jetty/server/j;->g:Lorg/eclipse/jetty/server/Dispatcher;

    invoke-static {v0}, Lorg/eclipse/jetty/server/Dispatcher;->access$000(Lorg/eclipse/jetty/server/Dispatcher;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 348
    const-string v0, "javax.servlet.forward.path_info"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lorg/eclipse/jetty/server/j;->e:Ljava/lang/String;

    .line 363
    :goto_0
    return-object v0

    .line 350
    :cond_0
    const-string v0, "javax.servlet.forward.request_uri"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 351
    iget-object v0, p0, Lorg/eclipse/jetty/server/j;->b:Ljava/lang/String;

    goto :goto_0

    .line 352
    :cond_1
    const-string v0, "javax.servlet.forward.servlet_path"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 353
    iget-object v0, p0, Lorg/eclipse/jetty/server/j;->d:Ljava/lang/String;

    goto :goto_0

    .line 354
    :cond_2
    const-string v0, "javax.servlet.forward.context_path"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 355
    iget-object v0, p0, Lorg/eclipse/jetty/server/j;->c:Ljava/lang/String;

    goto :goto_0

    .line 356
    :cond_3
    const-string v0, "javax.servlet.forward.query_string"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 357
    iget-object v0, p0, Lorg/eclipse/jetty/server/j;->f:Ljava/lang/String;

    goto :goto_0

    .line 360
    :cond_4
    const-string v0, "javax.servlet.include."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 361
    const/4 v0, 0x0

    goto :goto_0

    .line 363
    :cond_5
    iget-object v0, p0, Lorg/eclipse/jetty/server/j;->a:Lorg/eclipse/jetty/util/Attributes;

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/util/Attributes;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final getAttributeNames()Ljava/util/Enumeration;
    .locals 4

    .prologue
    .line 369
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 370
    iget-object v0, p0, Lorg/eclipse/jetty/server/j;->a:Lorg/eclipse/jetty/util/Attributes;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/Attributes;->getAttributeNames()Ljava/util/Enumeration;

    move-result-object v2

    .line 371
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 373
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 374
    const-string v3, "javax.servlet.include."

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "javax.servlet.forward."

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 376
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 379
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/j;->g:Lorg/eclipse/jetty/server/Dispatcher;

    invoke-static {v0}, Lorg/eclipse/jetty/server/Dispatcher;->access$000(Lorg/eclipse/jetty/server/Dispatcher;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 381
    iget-object v0, p0, Lorg/eclipse/jetty/server/j;->e:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 382
    const-string v0, "javax.servlet.forward.path_info"

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 385
    :goto_1
    const-string v0, "javax.servlet.forward.request_uri"

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 386
    const-string v0, "javax.servlet.forward.servlet_path"

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 387
    const-string v0, "javax.servlet.forward.context_path"

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 388
    iget-object v0, p0, Lorg/eclipse/jetty/server/j;->f:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 389
    const-string v0, "javax.servlet.forward.query_string"

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 394
    :cond_2
    :goto_2
    invoke-static {v1}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0

    .line 384
    :cond_3
    const-string v0, "javax.servlet.forward.path_info"

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 391
    :cond_4
    const-string v0, "javax.servlet.forward.query_string"

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public final removeAttribute(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 440
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jetty/server/j;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 441
    return-void
.end method

.method public final setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lorg/eclipse/jetty/server/j;->g:Lorg/eclipse/jetty/server/Dispatcher;

    invoke-static {v0}, Lorg/eclipse/jetty/server/Dispatcher;->access$000(Lorg/eclipse/jetty/server/Dispatcher;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    const-string v0, "javax.servlet."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 402
    const-string v0, "javax.servlet.forward.path_info"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lorg/eclipse/jetty/server/j;->e:Ljava/lang/String;

    .line 422
    :goto_0
    return-void

    .line 404
    :cond_0
    const-string v0, "javax.servlet.forward.request_uri"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 405
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lorg/eclipse/jetty/server/j;->b:Ljava/lang/String;

    goto :goto_0

    .line 406
    :cond_1
    const-string v0, "javax.servlet.forward.servlet_path"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 407
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lorg/eclipse/jetty/server/j;->d:Ljava/lang/String;

    goto :goto_0

    .line 408
    :cond_2
    const-string v0, "javax.servlet.forward.context_path"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 409
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lorg/eclipse/jetty/server/j;->c:Ljava/lang/String;

    goto :goto_0

    .line 410
    :cond_3
    const-string v0, "javax.servlet.forward.query_string"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 411
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lorg/eclipse/jetty/server/j;->f:Ljava/lang/String;

    goto :goto_0

    .line 413
    :cond_4
    if-nez p2, :cond_5

    .line 414
    iget-object v0, p0, Lorg/eclipse/jetty/server/j;->a:Lorg/eclipse/jetty/util/Attributes;

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/util/Attributes;->removeAttribute(Ljava/lang/String;)V

    goto :goto_0

    .line 416
    :cond_5
    iget-object v0, p0, Lorg/eclipse/jetty/server/j;->a:Lorg/eclipse/jetty/util/Attributes;

    invoke-interface {v0, p1, p2}, Lorg/eclipse/jetty/util/Attributes;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 418
    :cond_6
    if-nez p2, :cond_7

    .line 419
    iget-object v0, p0, Lorg/eclipse/jetty/server/j;->a:Lorg/eclipse/jetty/util/Attributes;

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/util/Attributes;->removeAttribute(Ljava/lang/String;)V

    goto :goto_0

    .line 421
    :cond_7
    iget-object v0, p0, Lorg/eclipse/jetty/server/j;->a:Lorg/eclipse/jetty/util/Attributes;

    invoke-interface {v0, p1, p2}, Lorg/eclipse/jetty/util/Attributes;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FORWARD+"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jetty/server/j;->a:Lorg/eclipse/jetty/util/Attributes;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
