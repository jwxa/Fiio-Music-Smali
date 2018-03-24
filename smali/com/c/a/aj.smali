.class public Lcom/c/a/aj;
.super Ljava/lang/Object;
.source "Picasso.java"


# static fields
.field static final a:Landroid/os/Handler;

.field static volatile b:Lcom/c/a/aj;


# instance fields
.field final c:Landroid/content/Context;

.field final d:Lcom/c/a/q;

.field final e:Lcom/c/a/k;

.field final f:Lcom/c/a/bc;

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

.field final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/widget/ImageView;",
            "Lcom/c/a/p;",
            ">;"
        }
    .end annotation
.end field

.field final i:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final j:Landroid/graphics/Bitmap$Config;

.field k:Z

.field volatile l:Z

.field m:Z

.field private final n:Lcom/c/a/ao;

.field private final o:Lcom/c/a/ar;

.field private final p:Lcom/c/a/am;

.field private final q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/c/a/az;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 109
    new-instance v0, Lcom/c/a/ak;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/c/a/ak;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/c/a/aj;->a:Landroid/os/Handler;

    .line 143
    const/4 v0, 0x0

    sput-object v0, Lcom/c/a/aj;->b:Lcom/c/a/aj;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/c/a/q;Lcom/c/a/k;Lcom/c/a/ao;Lcom/c/a/ar;Ljava/util/List;Lcom/c/a/bc;Landroid/graphics/Bitmap$Config;ZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/c/a/q;",
            "Lcom/c/a/k;",
            "Lcom/c/a/ao;",
            "Lcom/c/a/ar;",
            "Ljava/util/List",
            "<",
            "Lcom/c/a/az;",
            ">;",
            "Lcom/c/a/bc;",
            "Landroid/graphics/Bitmap$Config;",
            "ZZ)V"
        }
    .end annotation

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput-object p1, p0, Lcom/c/a/aj;->c:Landroid/content/Context;

    .line 168
    iput-object p2, p0, Lcom/c/a/aj;->d:Lcom/c/a/q;

    .line 169
    iput-object p3, p0, Lcom/c/a/aj;->e:Lcom/c/a/k;

    .line 170
    iput-object p4, p0, Lcom/c/a/aj;->n:Lcom/c/a/ao;

    .line 171
    iput-object p5, p0, Lcom/c/a/aj;->o:Lcom/c/a/ar;

    .line 172
    iput-object p8, p0, Lcom/c/a/aj;->j:Landroid/graphics/Bitmap$Config;

    .line 174
    if-eqz p6, :cond_1

    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result v0

    .line 176
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    add-int/lit8 v0, v0, 0x7

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 182
    new-instance v0, Lcom/c/a/bb;

    invoke-direct {v0, p1}, Lcom/c/a/bb;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    if-eqz p6, :cond_0

    .line 184
    invoke-interface {v1, p6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 186
    :cond_0
    new-instance v0, Lcom/c/a/n;

    invoke-direct {v0, p1}, Lcom/c/a/n;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    new-instance v0, Lcom/c/a/ac;

    invoke-direct {v0, p1}, Lcom/c/a/ac;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    new-instance v0, Lcom/c/a/o;

    invoke-direct {v0, p1}, Lcom/c/a/o;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    new-instance v0, Lcom/c/a/c;

    invoke-direct {v0, p1}, Lcom/c/a/c;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    new-instance v0, Lcom/c/a/y;

    invoke-direct {v0, p1}, Lcom/c/a/y;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    new-instance v0, Lcom/c/a/ag;

    iget-object v2, p2, Lcom/c/a/q;->d:Lcom/c/a/v;

    invoke-direct {v0, v2, p7}, Lcom/c/a/ag;-><init>(Lcom/c/a/v;Lcom/c/a/bc;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/c/a/aj;->q:Ljava/util/List;

    .line 194
    iput-object p7, p0, Lcom/c/a/aj;->f:Lcom/c/a/bc;

    .line 195
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/c/a/aj;->g:Ljava/util/Map;

    .line 196
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/c/a/aj;->h:Ljava/util/Map;

    .line 197
    iput-boolean p9, p0, Lcom/c/a/aj;->k:Z

    .line 198
    iput-boolean p10, p0, Lcom/c/a/aj;->l:Z

    .line 199
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/c/a/aj;->i:Ljava/lang/ref/ReferenceQueue;

    .line 200
    new-instance v0, Lcom/c/a/am;

    iget-object v1, p0, Lcom/c/a/aj;->i:Ljava/lang/ref/ReferenceQueue;

    sget-object v2, Lcom/c/a/aj;->a:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/c/a/am;-><init>(Ljava/lang/ref/ReferenceQueue;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/c/a/aj;->p:Lcom/c/a/am;

    .line 201
    iget-object v0, p0, Lcom/c/a/aj;->p:Lcom/c/a/am;

    invoke-virtual {v0}, Lcom/c/a/am;->start()V

    .line 202
    return-void

    .line 174
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Lcom/c/a/aj;
    .locals 2

    .prologue
    .line 659
    sget-object v0, Lcom/c/a/aj;->b:Lcom/c/a/aj;

    if-nez v0, :cond_1

    .line 660
    const-class v1, Lcom/c/a/aj;

    monitor-enter v1

    .line 661
    :try_start_0
    sget-object v0, Lcom/c/a/aj;->b:Lcom/c/a/aj;

    if-nez v0, :cond_0

    .line 662
    new-instance v0, Lcom/c/a/al;

    invoke-direct {v0, p0}, Lcom/c/a/al;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/c/a/al;->a()Lcom/c/a/aj;

    move-result-object v0

    sput-object v0, Lcom/c/a/aj;->b:Lcom/c/a/aj;

    .line 664
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 666
    :cond_1
    sget-object v0, Lcom/c/a/aj;->b:Lcom/c/a/aj;

    return-object v0

    .line 664
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Landroid/graphics/Bitmap;Lcom/c/a/ap;Lcom/c/a/a;)V
    .locals 5

    .prologue
    .line 548
    iget-boolean v0, p3, Lcom/c/a/a;->l:Z

    if-eqz v0, :cond_1

    .line 568
    :cond_0
    :goto_0
    return-void

    .line 551
    :cond_1
    iget-boolean v0, p3, Lcom/c/a/a;->k:Z

    if-nez v0, :cond_2

    .line 552
    iget-object v0, p0, Lcom/c/a/aj;->g:Ljava/util/Map;

    invoke-virtual {p3}, Lcom/c/a/a;->c()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    :cond_2
    if-eqz p1, :cond_4

    .line 555
    if-nez p2, :cond_3

    .line 556
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "LoadedFrom cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 558
    :cond_3
    invoke-virtual {p3, p1, p2}, Lcom/c/a/a;->a(Landroid/graphics/Bitmap;Lcom/c/a/ap;)V

    .line 559
    iget-boolean v0, p0, Lcom/c/a/aj;->l:Z

    if-eqz v0, :cond_0

    .line 560
    const-string v0, "Main"

    const-string v1, "completed"

    iget-object v2, p3, Lcom/c/a/a;->b:Lcom/c/a/aw;

    invoke-virtual {v2}, Lcom/c/a/aw;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "from "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/c/a/bj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 563
    :cond_4
    invoke-virtual {p3}, Lcom/c/a/a;->a()V

    .line 564
    iget-boolean v0, p0, Lcom/c/a/aj;->l:Z

    if-eqz v0, :cond_0

    .line 565
    const-string v0, "Main"

    const-string v1, "errored"

    iget-object v2, p3, Lcom/c/a/a;->b:Lcom/c/a/aw;

    invoke-virtual {v2}, Lcom/c/a/aw;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/c/a/bj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/c/a/aj;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/c/a/aj;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 571
    invoke-static {}, Lcom/c/a/bj;->a()V

    .line 572
    iget-object v0, p0, Lcom/c/a/aj;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/a;

    .line 573
    if-eqz v0, :cond_0

    .line 574
    invoke-virtual {v0}, Lcom/c/a/a;->b()V

    .line 575
    iget-object v1, p0, Lcom/c/a/aj;->d:Lcom/c/a/q;

    iget-object v2, v1, Lcom/c/a/q;->i:Landroid/os/Handler;

    iget-object v1, v1, Lcom/c/a/q;->i:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 577
    :cond_0
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 578
    check-cast p1, Landroid/widget/ImageView;

    .line 579
    iget-object v0, p0, Lcom/c/a/aj;->h:Ljava/util/Map;

    .line 580
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/p;

    .line 581
    if-eqz v0, :cond_1

    .line 582
    invoke-virtual {v0}, Lcom/c/a/p;->a()V

    .line 585
    :cond_1
    return-void
.end method


# virtual methods
.method final a(Lcom/c/a/aw;)Lcom/c/a/aw;
    .locals 3

    .prologue
    .line 455
    iget-object v0, p0, Lcom/c/a/aj;->o:Lcom/c/a/ar;

    invoke-interface {v0, p1}, Lcom/c/a/ar;->a(Lcom/c/a/aw;)Lcom/c/a/aw;

    move-result-object v0

    .line 456
    if-nez v0, :cond_0

    .line 457
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Request transformer "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/c/a/aj;->o:Lcom/c/a/ar;

    .line 458
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " returned null for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 462
    :cond_0
    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lcom/c/a/ay;
    .locals 2

    .prologue
    .line 293
    if-nez p1, :cond_0

    .line 294
    new-instance v0, Lcom/c/a/ay;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/c/a/ay;-><init>(Lcom/c/a/aj;Landroid/net/Uri;)V

    .line 299
    :goto_0
    return-object v0

    .line 296
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 297
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Path must not be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 299
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v0, Lcom/c/a/ay;

    invoke-direct {v0, p0, v1}, Lcom/c/a/ay;-><init>(Lcom/c/a/aj;Landroid/net/Uri;)V

    goto :goto_0
.end method

.method final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/c/a/az;",
            ">;"
        }
    .end annotation

    .prologue
    .line 451
    iget-object v0, p0, Lcom/c/a/aj;->q:Ljava/util/List;

    return-object v0
.end method

.method public final a(Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 206
    invoke-direct {p0, p1}, Lcom/c/a/aj;->a(Ljava/lang/Object;)V

    .line 207
    return-void
.end method

.method final a(Landroid/widget/ImageView;Lcom/c/a/p;)V
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/c/a/aj;->h:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    return-void
.end method

.method final a(Lcom/c/a/a;)V
    .locals 3

    .prologue
    .line 470
    invoke-virtual {p1}, Lcom/c/a/a;->c()Ljava/lang/Object;

    move-result-object v0

    .line 471
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/c/a/aj;->g:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_0

    .line 473
    invoke-direct {p0, v0}, Lcom/c/a/aj;->a(Ljava/lang/Object;)V

    .line 474
    iget-object v1, p0, Lcom/c/a/aj;->g:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/c/a/aj;->d:Lcom/c/a/q;

    iget-object v1, v0, Lcom/c/a/q;->i:Landroid/os/Handler;

    iget-object v0, v0, Lcom/c/a/q;->i:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 477
    return-void
.end method

.method final a(Lcom/c/a/d;)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 494
    invoke-virtual {p1}, Lcom/c/a/d;->h()Lcom/c/a/a;

    move-result-object v3

    .line 495
    invoke-virtual {p1}, Lcom/c/a/d;->j()Ljava/util/List;

    move-result-object v4

    .line 497
    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v1

    .line 498
    :goto_0
    if-nez v3, :cond_0

    if-eqz v2, :cond_3

    .line 500
    :cond_0
    :goto_1
    if-nez v1, :cond_4

    .line 524
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v2, v0

    .line 497
    goto :goto_0

    :cond_3
    move v1, v0

    .line 498
    goto :goto_1

    .line 504
    :cond_4
    invoke-virtual {p1}, Lcom/c/a/d;->g()Lcom/c/a/aw;

    move-result-object v1

    iget-object v1, v1, Lcom/c/a/aw;->d:Landroid/net/Uri;

    .line 505
    invoke-virtual {p1}, Lcom/c/a/d;->k()Ljava/lang/Exception;

    move-result-object v5

    .line 506
    invoke-virtual {p1}, Lcom/c/a/d;->d()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 507
    invoke-virtual {p1}, Lcom/c/a/d;->l()Lcom/c/a/ap;

    move-result-object v7

    .line 509
    if-eqz v3, :cond_5

    .line 510
    invoke-direct {p0, v6, v7, v3}, Lcom/c/a/aj;->a(Landroid/graphics/Bitmap;Lcom/c/a/ap;Lcom/c/a/a;)V

    .line 513
    :cond_5
    if-eqz v2, :cond_6

    .line 515
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_3
    if-ge v1, v2, :cond_6

    .line 516
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/a;

    .line 517
    invoke-direct {p0, v6, v7, v0}, Lcom/c/a/aj;->a(Landroid/graphics/Bitmap;Lcom/c/a/ap;Lcom/c/a/a;)V

    .line 515
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 521
    :cond_6
    iget-object v0, p0, Lcom/c/a/aj;->n:Lcom/c/a/ao;

    if-eqz v0, :cond_1

    if-eqz v5, :cond_1

    .line 522
    iget-object v0, p0, Lcom/c/a/aj;->n:Lcom/c/a/ao;

    goto :goto_2
.end method

.method final b(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 484
    iget-object v0, p0, Lcom/c/a/aj;->e:Lcom/c/a/k;

    invoke-interface {v0, p1}, Lcom/c/a/k;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 485
    if-eqz v0, :cond_0

    .line 486
    iget-object v1, p0, Lcom/c/a/aj;->f:Lcom/c/a/bc;

    invoke-virtual {v1}, Lcom/c/a/bc;->a()V

    .line 490
    :goto_0
    return-object v0

    .line 488
    :cond_0
    iget-object v1, p0, Lcom/c/a/aj;->f:Lcom/c/a/bc;

    iget-object v1, v1, Lcom/c/a/bc;->c:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method final b(Lcom/c/a/a;)V
    .locals 5

    .prologue
    .line 527
    const/4 v0, 0x0

    .line 528
    iget v1, p1, Lcom/c/a/a;->e:I

    invoke-static {v1}, Lcom/c/a/ae;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 529
    iget-object v0, p1, Lcom/c/a/a;->i:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/c/a/aj;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 532
    :cond_0
    if-eqz v0, :cond_2

    .line 534
    sget-object v1, Lcom/c/a/ap;->a:Lcom/c/a/ap;

    invoke-direct {p0, v0, v1, p1}, Lcom/c/a/aj;->a(Landroid/graphics/Bitmap;Lcom/c/a/ap;Lcom/c/a/a;)V

    .line 535
    iget-boolean v0, p0, Lcom/c/a/aj;->l:Z

    if-eqz v0, :cond_1

    .line 536
    const-string v0, "Main"

    const-string v1, "completed"

    iget-object v2, p1, Lcom/c/a/a;->b:Lcom/c/a/aw;

    invoke-virtual {v2}, Lcom/c/a/aw;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "from "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/c/a/ap;->a:Lcom/c/a/ap;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/c/a/bj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    :cond_1
    :goto_0
    return-void

    .line 540
    :cond_2
    invoke-virtual {p0, p1}, Lcom/c/a/aj;->a(Lcom/c/a/a;)V

    .line 541
    iget-boolean v0, p0, Lcom/c/a/aj;->l:Z

    if-eqz v0, :cond_1

    .line 542
    const-string v0, "Main"

    const-string v1, "resumed"

    iget-object v2, p1, Lcom/c/a/a;->b:Lcom/c/a/aw;

    invoke-virtual {v2}, Lcom/c/a/aw;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/c/a/bj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
