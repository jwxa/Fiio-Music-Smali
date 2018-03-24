.class final Lcom/c/a/q;
.super Ljava/lang/Object;
.source "Dispatcher.java"


# instance fields
.field final a:Lcom/c/a/t;

.field final b:Landroid/content/Context;

.field final c:Ljava/util/concurrent/ExecutorService;

.field final d:Lcom/c/a/v;

.field final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/c/a/d;",
            ">;"
        }
    .end annotation
.end field

.field final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lcom/c/a/a;",
            ">;"
        }
    .end annotation
.end field

.field final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lcom/c/a/a;",
            ">;"
        }
    .end annotation
.end field

.field final h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final i:Landroid/os/Handler;

.field final j:Landroid/os/Handler;

.field final k:Lcom/c/a/k;

.field final l:Lcom/c/a/bc;

.field final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/c/a/d;",
            ">;"
        }
    .end annotation
.end field

.field final n:Lcom/c/a/u;

.field final o:Z

.field p:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Landroid/os/Handler;Lcom/c/a/v;Lcom/c/a/k;Lcom/c/a/bc;)V
    .locals 2

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Lcom/c/a/t;

    invoke-direct {v0}, Lcom/c/a/t;-><init>()V

    iput-object v0, p0, Lcom/c/a/q;->a:Lcom/c/a/t;

    .line 102
    iget-object v0, p0, Lcom/c/a/q;->a:Lcom/c/a/t;

    invoke-virtual {v0}, Lcom/c/a/t;->start()V

    .line 103
    iget-object v0, p0, Lcom/c/a/q;->a:Lcom/c/a/t;

    invoke-virtual {v0}, Lcom/c/a/t;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lcom/c/a/bj;->a(Landroid/os/Looper;)V

    .line 104
    iput-object p1, p0, Lcom/c/a/q;->b:Landroid/content/Context;

    .line 105
    iput-object p2, p0, Lcom/c/a/q;->c:Ljava/util/concurrent/ExecutorService;

    .line 106
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/c/a/q;->e:Ljava/util/Map;

    .line 107
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/c/a/q;->f:Ljava/util/Map;

    .line 108
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/c/a/q;->g:Ljava/util/Map;

    .line 109
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/c/a/q;->h:Ljava/util/Set;

    .line 110
    new-instance v0, Lcom/c/a/r;

    iget-object v1, p0, Lcom/c/a/q;->a:Lcom/c/a/t;

    invoke-virtual {v1}, Lcom/c/a/t;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/c/a/r;-><init>(Landroid/os/Looper;Lcom/c/a/q;)V

    iput-object v0, p0, Lcom/c/a/q;->i:Landroid/os/Handler;

    .line 111
    iput-object p4, p0, Lcom/c/a/q;->d:Lcom/c/a/v;

    .line 112
    iput-object p3, p0, Lcom/c/a/q;->j:Landroid/os/Handler;

    .line 113
    iput-object p5, p0, Lcom/c/a/q;->k:Lcom/c/a/k;

    .line 114
    iput-object p6, p0, Lcom/c/a/q;->l:Lcom/c/a/bc;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/c/a/q;->m:Ljava/util/List;

    .line 116
    iget-object v0, p0, Lcom/c/a/q;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/c/a/bj;->d(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/c/a/q;->p:Z

    .line 117
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p1, v0}, Lcom/c/a/bj;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/c/a/q;->o:Z

    .line 118
    new-instance v0, Lcom/c/a/u;

    invoke-direct {v0, p0}, Lcom/c/a/u;-><init>(Lcom/c/a/q;)V

    iput-object v0, p0, Lcom/c/a/q;->n:Lcom/c/a/u;

    .line 119
    iget-object v0, p0, Lcom/c/a/q;->n:Lcom/c/a/u;

    invoke-virtual {v0}, Lcom/c/a/u;->a()V

    .line 120
    return-void
.end method

.method private a(Lcom/c/a/a;)V
    .locals 2

    .prologue
    .line 439
    invoke-virtual {p1}, Lcom/c/a/a;->c()Ljava/lang/Object;

    move-result-object v0

    .line 440
    if-eqz v0, :cond_0

    .line 441
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/c/a/a;->k:Z

    .line 442
    iget-object v1, p0, Lcom/c/a/q;->f:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    :cond_0
    return-void
.end method

.method private static a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/c/a/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 457
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 468
    :cond_0
    :goto_0
    return-void

    .line 458
    :cond_1
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/d;

    .line 459
    invoke-virtual {v0}, Lcom/c/a/d;->i()Lcom/c/a/aj;

    move-result-object v0

    .line 460
    iget-boolean v0, v0, Lcom/c/a/aj;->l:Z

    if-eqz v0, :cond_0

    .line 461
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 462
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/d;

    .line 463
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_2

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    :cond_2
    invoke-static {v0}, Lcom/c/a/bj;->a(Lcom/c/a/d;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 466
    :cond_3
    const-string v0, "Dispatcher"

    const-string v2, "delivered"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/c/a/bj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private e(Lcom/c/a/d;)V
    .locals 4

    .prologue
    .line 424
    invoke-virtual {p1}, Lcom/c/a/d;->h()Lcom/c/a/a;

    move-result-object v0

    .line 425
    if-eqz v0, :cond_0

    .line 426
    invoke-direct {p0, v0}, Lcom/c/a/q;->a(Lcom/c/a/a;)V

    .line 428
    :cond_0
    invoke-virtual {p1}, Lcom/c/a/d;->j()Ljava/util/List;

    move-result-object v2

    .line 429
    if-eqz v2, :cond_1

    .line 431
    const/4 v0, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 432
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/a;

    .line 433
    invoke-direct {p0, v0}, Lcom/c/a/q;->a(Lcom/c/a/a;)V

    .line 431
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 436
    :cond_1
    return-void
.end method

.method private f(Lcom/c/a/d;)V
    .locals 4

    .prologue
    const/4 v1, 0x7

    .line 447
    invoke-virtual {p1}, Lcom/c/a/d;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 450
    :cond_1
    iget-object v0, p0, Lcom/c/a/q;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 451
    iget-object v0, p0, Lcom/c/a/q;->i:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/c/a/q;->i:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method


# virtual methods
.method final a()V
    .locals 4

    .prologue
    .line 380
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/c/a/q;->m:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 381
    iget-object v1, p0, Lcom/c/a/q;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 382
    iget-object v1, p0, Lcom/c/a/q;->j:Landroid/os/Handler;

    iget-object v2, p0, Lcom/c/a/q;->j:Landroid/os/Handler;

    const/16 v3, 0x8

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 383
    invoke-static {v0}, Lcom/c/a/q;->a(Ljava/util/List;)V

    .line 384
    return-void
.end method

.method final a(Landroid/net/NetworkInfo;)V
    .locals 5

    .prologue
    .line 400
    iget-object v0, p0, Lcom/c/a/q;->c:Ljava/util/concurrent/ExecutorService;

    instance-of v0, v0, Lcom/c/a/au;

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/c/a/q;->c:Ljava/util/concurrent/ExecutorService;

    check-cast v0, Lcom/c/a/au;

    invoke-virtual {v0, p1}, Lcom/c/a/au;->a(Landroid/net/NetworkInfo;)V

    .line 404
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 405
    iget-object v0, p0, Lcom/c/a/q;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/c/a/q;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/a;

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    iget-object v2, v0, Lcom/c/a/a;->a:Lcom/c/a/aj;

    iget-boolean v2, v2, Lcom/c/a/aj;->l:Z

    if-eqz v2, :cond_1

    const-string v2, "Dispatcher"

    const-string v3, "replaying"

    iget-object v4, v0, Lcom/c/a/a;->b:Lcom/c/a/aw;

    invoke-virtual {v4}, Lcom/c/a/aw;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/c/a/bj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/c/a/q;->a(Lcom/c/a/a;Z)V

    goto :goto_0

    .line 407
    :cond_2
    return-void
.end method

.method final a(Lcom/c/a/a;Z)V
    .locals 5

    .prologue
    .line 179
    iget-object v0, p0, Lcom/c/a/q;->h:Ljava/util/Set;

    iget-object v1, p1, Lcom/c/a/a;->j:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/c/a/q;->g:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/c/a/a;->c()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    iget-object v0, p1, Lcom/c/a/a;->a:Lcom/c/a/aj;

    iget-boolean v0, v0, Lcom/c/a/aj;->l:Z

    if-eqz v0, :cond_0

    .line 182
    const-string v0, "Dispatcher"

    const-string v1, "paused"

    iget-object v2, p1, Lcom/c/a/a;->b:Lcom/c/a/aw;

    invoke-virtual {v2}, Lcom/c/a/aw;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "because tag \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 183
    iget-object v4, p1, Lcom/c/a/a;->j:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' is paused"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 182
    invoke-static {v0, v1, v2, v3}, Lcom/c/a/bj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/c/a/q;->e:Ljava/util/Map;

    iget-object v1, p1, Lcom/c/a/a;->i:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/d;

    .line 189
    if-eqz v0, :cond_2

    .line 190
    invoke-virtual {v0, p1}, Lcom/c/a/d;->a(Lcom/c/a/a;)V

    goto :goto_0

    .line 194
    :cond_2
    iget-object v0, p0, Lcom/c/a/q;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 195
    iget-object v0, p1, Lcom/c/a/a;->a:Lcom/c/a/aj;

    iget-boolean v0, v0, Lcom/c/a/aj;->l:Z

    if-eqz v0, :cond_0

    .line 196
    const-string v0, "Dispatcher"

    const-string v1, "ignored"

    iget-object v2, p1, Lcom/c/a/a;->b:Lcom/c/a/aw;

    invoke-virtual {v2}, Lcom/c/a/aw;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "because shut down"

    invoke-static {v0, v1, v2, v3}, Lcom/c/a/bj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 201
    :cond_3
    iget-object v0, p1, Lcom/c/a/a;->a:Lcom/c/a/aj;

    iget-object v1, p0, Lcom/c/a/q;->k:Lcom/c/a/k;

    iget-object v2, p0, Lcom/c/a/q;->l:Lcom/c/a/bc;

    invoke-static {v0, p0, v1, v2, p1}, Lcom/c/a/d;->a(Lcom/c/a/aj;Lcom/c/a/q;Lcom/c/a/k;Lcom/c/a/bc;Lcom/c/a/a;)Lcom/c/a/d;

    move-result-object v0

    .line 202
    iget-object v1, p0, Lcom/c/a/q;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    iput-object v1, v0, Lcom/c/a/d;->n:Ljava/util/concurrent/Future;

    .line 203
    iget-object v1, p0, Lcom/c/a/q;->e:Ljava/util/Map;

    iget-object v2, p1, Lcom/c/a/a;->i:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    if-eqz p2, :cond_4

    .line 205
    iget-object v0, p0, Lcom/c/a/q;->f:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/c/a/a;->c()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    :cond_4
    iget-object v0, p1, Lcom/c/a/a;->a:Lcom/c/a/aj;

    iget-boolean v0, v0, Lcom/c/a/aj;->l:Z

    if-eqz v0, :cond_0

    .line 209
    const-string v0, "Dispatcher"

    const-string v1, "enqueued"

    iget-object v2, p1, Lcom/c/a/a;->b:Lcom/c/a/aw;

    invoke-virtual {v2}, Lcom/c/a/aw;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/c/a/bj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method final a(Lcom/c/a/d;)V
    .locals 4

    .prologue
    .line 158
    iget-object v0, p0, Lcom/c/a/q;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/c/a/q;->i:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 159
    return-void
.end method

.method final a(Lcom/c/a/d;Z)V
    .locals 5

    .prologue
    .line 387
    invoke-virtual {p1}, Lcom/c/a/d;->i()Lcom/c/a/aj;

    move-result-object v0

    iget-boolean v0, v0, Lcom/c/a/aj;->l:Z

    if-eqz v0, :cond_0

    .line 388
    const-string v1, "Dispatcher"

    const-string v2, "batched"

    invoke-static {p1}, Lcom/c/a/bj;->a(Lcom/c/a/d;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v0, "for error"

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    const-string v0, " (will replay)"

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lcom/c/a/bj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/c/a/q;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/c/a/d;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    invoke-direct {p0, p1}, Lcom/c/a/q;->f(Lcom/c/a/d;)V

    .line 393
    return-void

    .line 388
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method final a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 299
    iget-object v0, p0, Lcom/c/a/q;->h:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    const/4 v1, 0x0

    .line 304
    iget-object v0, p0, Lcom/c/a/q;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 305
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/a;

    .line 306
    iget-object v3, v0, Lcom/c/a/a;->j:Ljava/lang/Object;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 307
    if-nez v1, :cond_3

    .line 308
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 310
    :cond_3
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 315
    :cond_4
    if-eqz v1, :cond_0

    .line 316
    iget-object v0, p0, Lcom/c/a/q;->j:Landroid/os/Handler;

    iget-object v2, p0, Lcom/c/a/q;->j:Landroid/os/Handler;

    const/16 v3, 0xd

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method final b(Lcom/c/a/d;)V
    .locals 3

    .prologue
    .line 162
    iget-object v0, p0, Lcom/c/a/q;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/c/a/q;->i:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 163
    return-void
.end method

.method final c(Lcom/c/a/d;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 321
    invoke-virtual {p1}, Lcom/c/a/d;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 323
    :cond_1
    iget-object v0, p0, Lcom/c/a/q;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 324
    invoke-virtual {p0, p1, v2}, Lcom/c/a/q;->a(Lcom/c/a/d;Z)V

    goto :goto_0

    .line 328
    :cond_2
    const/4 v0, 0x0

    .line 329
    iget-boolean v3, p0, Lcom/c/a/q;->o:Z

    if-eqz v3, :cond_a

    .line 330
    iget-object v0, p0, Lcom/c/a/q;->b:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-static {v0, v3}, Lcom/c/a/bj;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 331
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    move-object v3, v0

    .line 334
    :goto_1
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 335
    :goto_2
    iget-boolean v4, p0, Lcom/c/a/q;->p:Z

    invoke-virtual {p1, v3}, Lcom/c/a/d;->a(Landroid/net/NetworkInfo;)Z

    move-result v3

    .line 336
    invoke-virtual {p1}, Lcom/c/a/d;->c()Z

    move-result v4

    .line 338
    if-nez v3, :cond_5

    .line 340
    iget-boolean v0, p0, Lcom/c/a/q;->o:Z

    if-eqz v0, :cond_4

    if-eqz v4, :cond_4

    .line 341
    :goto_3
    invoke-virtual {p0, p1, v1}, Lcom/c/a/q;->a(Lcom/c/a/d;Z)V

    .line 342
    if-eqz v1, :cond_0

    .line 343
    invoke-direct {p0, p1}, Lcom/c/a/q;->e(Lcom/c/a/d;)V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 334
    goto :goto_2

    :cond_4
    move v1, v2

    .line 340
    goto :goto_3

    .line 349
    :cond_5
    iget-boolean v1, p0, Lcom/c/a/q;->o:Z

    if-eqz v1, :cond_6

    if-eqz v0, :cond_9

    .line 350
    :cond_6
    invoke-virtual {p1}, Lcom/c/a/d;->i()Lcom/c/a/aj;

    move-result-object v0

    iget-boolean v0, v0, Lcom/c/a/aj;->l:Z

    if-eqz v0, :cond_7

    .line 351
    const-string v0, "Dispatcher"

    const-string v1, "retrying"

    invoke-static {p1}, Lcom/c/a/bj;->a(Lcom/c/a/d;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/c/a/bj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    :cond_7
    invoke-virtual {p1}, Lcom/c/a/d;->k()Ljava/lang/Exception;

    move-result-object v0

    instance-of v0, v0, Lcom/c/a/ah;

    if-eqz v0, :cond_8

    .line 355
    iget v0, p1, Lcom/c/a/d;->i:I

    sget-object v1, Lcom/c/a/af;->a:Lcom/c/a/af;

    iget v1, v1, Lcom/c/a/af;->d:I

    or-int/2addr v0, v1

    iput v0, p1, Lcom/c/a/d;->i:I

    .line 357
    :cond_8
    iget-object v0, p0, Lcom/c/a/q;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p1, Lcom/c/a/d;->n:Ljava/util/concurrent/Future;

    goto :goto_0

    .line 361
    :cond_9
    invoke-virtual {p0, p1, v4}, Lcom/c/a/q;->a(Lcom/c/a/d;Z)V

    .line 363
    if-eqz v4, :cond_0

    .line 364
    invoke-direct {p0, p1}, Lcom/c/a/q;->e(Lcom/c/a/d;)V

    goto/16 :goto_0

    :cond_a
    move-object v3, v0

    goto :goto_1
.end method

.method final d(Lcom/c/a/d;)V
    .locals 4

    .prologue
    .line 369
    invoke-virtual {p1}, Lcom/c/a/d;->f()I

    move-result v0

    invoke-static {v0}, Lcom/c/a/ae;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/c/a/q;->k:Lcom/c/a/k;

    invoke-virtual {p1}, Lcom/c/a/d;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/c/a/d;->d()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/c/a/k;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/c/a/q;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/c/a/d;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    invoke-direct {p0, p1}, Lcom/c/a/q;->f(Lcom/c/a/d;)V

    .line 374
    invoke-virtual {p1}, Lcom/c/a/d;->i()Lcom/c/a/aj;

    move-result-object v0

    iget-boolean v0, v0, Lcom/c/a/aj;->l:Z

    if-eqz v0, :cond_1

    .line 375
    const-string v0, "Dispatcher"

    const-string v1, "batched"

    invoke-static {p1}, Lcom/c/a/bj;->a(Lcom/c/a/d;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "for completion"

    invoke-static {v0, v1, v2, v3}, Lcom/c/a/bj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    :cond_1
    return-void
.end method
