.class public Lcom/b/a/b/f;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# static fields
.field public static final a:Ljava/lang/String;

.field private static volatile e:Lcom/b/a/b/f;


# instance fields
.field private b:Lcom/b/a/b/h;

.field private c:Lcom/b/a/b/l;

.field private d:Lcom/b/a/b/f/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/b/a/b/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/b/a/b/f;->a:Ljava/lang/String;

    .line 67
    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Lcom/b/a/b/f/c;

    invoke-direct {v0}, Lcom/b/a/b/f/c;-><init>()V

    iput-object v0, p0, Lcom/b/a/b/f;->d:Lcom/b/a/b/f/a;

    .line 82
    return-void
.end method

.method private static a(Lcom/b/a/b/d;)Landroid/os/Handler;
    .locals 3

    .prologue
    .line 785
    invoke-virtual {p0}, Lcom/b/a/b/d;->r()Landroid/os/Handler;

    move-result-object v0

    .line 786
    invoke-virtual {p0}, Lcom/b/a/b/d;->s()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 787
    const/4 v0, 0x0

    .line 791
    :cond_0
    :goto_0
    return-object v0

    .line 788
    :cond_1
    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 789
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    goto :goto_0
.end method

.method public static a()Lcom/b/a/b/f;
    .locals 2

    .prologue
    .line 71
    sget-object v0, Lcom/b/a/b/f;->e:Lcom/b/a/b/f;

    if-nez v0, :cond_1

    .line 72
    const-class v1, Lcom/b/a/b/f;

    monitor-enter v1

    .line 73
    :try_start_0
    sget-object v0, Lcom/b/a/b/f;->e:Lcom/b/a/b/f;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/b/a/b/f;

    invoke-direct {v0}, Lcom/b/a/b/f;-><init>()V

    sput-object v0, Lcom/b/a/b/f;->e:Lcom/b/a/b/f;

    .line 72
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :cond_1
    sget-object v0, Lcom/b/a/b/f;->e:Lcom/b/a/b/f;

    return-object v0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Ljava/lang/String;Lcom/b/a/b/e/a;Lcom/b/a/b/d;Lcom/b/a/b/f/a;)V
    .locals 6

    .prologue
    .line 209
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/b/a/b/f;->a(Ljava/lang/String;Lcom/b/a/b/e/a;Lcom/b/a/b/d;Lcom/b/a/b/a/f;Lcom/b/a/b/f/a;)V

    .line 210
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 612
    iget-object v0, p0, Lcom/b/a/b/f;->b:Lcom/b/a/b/h;

    if-nez v0, :cond_0

    .line 613
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ImageLoader must be init with configuration before using"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 615
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/b/a/b/a/f;Lcom/b/a/b/d;)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 596
    if-nez p3, :cond_0

    .line 597
    iget-object v0, p0, Lcom/b/a/b/f;->b:Lcom/b/a/b/h;

    iget-object p3, v0, Lcom/b/a/b/h;->r:Lcom/b/a/b/d;

    .line 599
    :cond_0
    new-instance v0, Lcom/b/a/b/e;

    invoke-direct {v0}, Lcom/b/a/b/e;-><init>()V

    invoke-virtual {v0, p3}, Lcom/b/a/b/e;->a(Lcom/b/a/b/d;)Lcom/b/a/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/b/e;->c()Lcom/b/a/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/b/e;->d()Lcom/b/a/b/d;

    move-result-object v0

    .line 601
    new-instance v1, Lcom/b/a/b/g;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/b/a/b/g;-><init>(B)V

    .line 602
    invoke-direct {p0}, Lcom/b/a/b/f;->d()V

    if-nez p2, :cond_1

    iget-object v2, p0, Lcom/b/a/b/f;->b:Lcom/b/a/b/h;

    invoke-virtual {v2}, Lcom/b/a/b/h;->a()Lcom/b/a/b/a/f;

    move-result-object p2

    :cond_1
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/b/a/b/f;->b:Lcom/b/a/b/h;

    iget-object v0, v0, Lcom/b/a/b/h;->r:Lcom/b/a/b/d;

    :cond_2
    new-instance v2, Lcom/b/a/b/e/c;

    sget-object v3, Lcom/b/a/b/a/i;->b:Lcom/b/a/b/a/i;

    invoke-direct {v2, p1, p2, v3}, Lcom/b/a/b/e/c;-><init>(Ljava/lang/String;Lcom/b/a/b/a/f;Lcom/b/a/b/a/i;)V

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/b/a/b/f;->a(Ljava/lang/String;Lcom/b/a/b/e/a;Lcom/b/a/b/d;Lcom/b/a/b/f/a;)V

    .line 603
    invoke-virtual {v1}, Lcom/b/a/b/g;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Lcom/b/a/b/d;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 559
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/b/a/b/f;->a(Ljava/lang/String;Lcom/b/a/b/a/f;Lcom/b/a/b/d;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized a(Lcom/b/a/b/h;)V
    .locals 2

    .prologue
    .line 93
    monitor-enter p0

    if-nez p1, :cond_0

    .line 94
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ImageLoader configuration can not be initialized with null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 96
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/b/a/b/f;->b:Lcom/b/a/b/h;

    if-nez v0, :cond_1

    .line 97
    const-string v0, "Initialize ImageLoader with configuration"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/b/a/c/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    new-instance v0, Lcom/b/a/b/l;

    invoke-direct {v0, p1}, Lcom/b/a/b/l;-><init>(Lcom/b/a/b/h;)V

    iput-object v0, p0, Lcom/b/a/b/f;->c:Lcom/b/a/b/l;

    .line 99
    iput-object p1, p0, Lcom/b/a/b/f;->b:Lcom/b/a/b/h;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    :goto_0
    monitor-exit p0

    return-void

    .line 101
    :cond_1
    :try_start_2
    const-string v0, "Try to initialize ImageLoader which had already been initialized before. To re-init ImageLoader with new configuration call ImageLoader.destroy() at first."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/b/a/c/e;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/b/a/b/d;)V
    .locals 2

    .prologue
    .line 348
    new-instance v0, Lcom/b/a/b/e/b;

    invoke-direct {v0, p2}, Lcom/b/a/b/e/b;-><init>(Landroid/widget/ImageView;)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p3, v1}, Lcom/b/a/b/f;->a(Ljava/lang/String;Lcom/b/a/b/e/a;Lcom/b/a/b/d;Lcom/b/a/b/f/a;)V

    .line 349
    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/b/a/b/d;Lcom/b/a/b/f/a;)V
    .locals 1

    .prologue
    .line 385
    new-instance v0, Lcom/b/a/b/e/b;

    invoke-direct {v0, p2}, Lcom/b/a/b/e/b;-><init>(Landroid/widget/ImageView;)V

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/b/a/b/f;->a(Ljava/lang/String;Lcom/b/a/b/e/a;Lcom/b/a/b/d;Lcom/b/a/b/f/a;)V

    .line 386
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/b/a/b/e/a;Lcom/b/a/b/d;Lcom/b/a/b/a/f;Lcom/b/a/b/f/a;)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 236
    invoke-direct {p0}, Lcom/b/a/b/f;->d()V

    .line 237
    if-nez p2, :cond_0

    .line 238
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong arguments were passed to displayImage() method (ImageView reference must not be null)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_0
    if-nez p5, :cond_b

    .line 241
    iget-object v6, p0, Lcom/b/a/b/f;->d:Lcom/b/a/b/f/a;

    .line 243
    :goto_0
    if-nez p3, :cond_a

    .line 244
    iget-object v0, p0, Lcom/b/a/b/f;->b:Lcom/b/a/b/h;

    iget-object v5, v0, Lcom/b/a/b/h;->r:Lcom/b/a/b/d;

    .line 247
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 248
    iget-object v0, p0, Lcom/b/a/b/f;->c:Lcom/b/a/b/l;

    invoke-virtual {v0, p2}, Lcom/b/a/b/l;->b(Lcom/b/a/b/e/a;)V

    .line 249
    invoke-interface {p2}, Lcom/b/a/b/e/a;->d()Landroid/view/View;

    .line 250
    invoke-virtual {v5}, Lcom/b/a/b/d;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    iget-object v0, p0, Lcom/b/a/b/f;->b:Lcom/b/a/b/h;

    iget-object v0, v0, Lcom/b/a/b/h;->a:Landroid/content/res/Resources;

    invoke-virtual {v5, v0}, Lcom/b/a/b/d;->b(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/b/a/b/e/a;->a(Landroid/graphics/drawable/Drawable;)Z

    .line 255
    :goto_2
    invoke-interface {p2}, Lcom/b/a/b/e/a;->d()Landroid/view/View;

    move-result-object v0

    invoke-interface {v6, p1, v0, v2}, Lcom/b/a/b/f/a;->a(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V

    .line 302
    :goto_3
    return-void

    .line 253
    :cond_1
    invoke-interface {p2, v2}, Lcom/b/a/b/e/a;->a(Landroid/graphics/drawable/Drawable;)Z

    goto :goto_2

    .line 259
    :cond_2
    if-nez p4, :cond_9

    .line 260
    iget-object v0, p0, Lcom/b/a/b/f;->b:Lcom/b/a/b/h;

    invoke-virtual {v0}, Lcom/b/a/b/h;->a()Lcom/b/a/b/a/f;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/b/a/c/b;->a(Lcom/b/a/b/e/a;Lcom/b/a/b/a/f;)Lcom/b/a/b/a/f;

    move-result-object v3

    .line 262
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Lcom/b/a/b/a/f;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Lcom/b/a/b/a/f;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 263
    iget-object v0, p0, Lcom/b/a/b/f;->c:Lcom/b/a/b/l;

    invoke-virtual {v0, p2, v4}, Lcom/b/a/b/l;->a(Lcom/b/a/b/e/a;Ljava/lang/String;)V

    .line 265
    invoke-interface {p2}, Lcom/b/a/b/e/a;->d()Landroid/view/View;

    .line 267
    iget-object v0, p0, Lcom/b/a/b/f;->b:Lcom/b/a/b/h;

    iget-object v0, v0, Lcom/b/a/b/h;->n:Lcom/b/a/a/b/c;

    invoke-interface {v0, v4}, Lcom/b/a/a/b/c;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 268
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_5

    .line 269
    const-string v0, "Load image from memory cache [%s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Lcom/b/a/c/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 271
    invoke-virtual {v5}, Lcom/b/a/b/d;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 272
    new-instance v0, Lcom/b/a/b/n;

    .line 273
    iget-object v1, p0, Lcom/b/a/b/f;->c:Lcom/b/a/b/l;

    invoke-virtual {v1, p1}, Lcom/b/a/b/l;->a(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v7

    move-object v1, p1

    move-object v2, p2

    .line 272
    invoke-direct/range {v0 .. v7}, Lcom/b/a/b/n;-><init>(Ljava/lang/String;Lcom/b/a/b/e/a;Lcom/b/a/b/a/f;Ljava/lang/String;Lcom/b/a/b/d;Lcom/b/a/b/f/a;Ljava/util/concurrent/locks/ReentrantLock;)V

    .line 274
    new-instance v1, Lcom/b/a/b/t;

    iget-object v2, p0, Lcom/b/a/b/f;->c:Lcom/b/a/b/l;

    .line 275
    invoke-static {v5}, Lcom/b/a/b/f;->a(Lcom/b/a/b/d;)Landroid/os/Handler;

    move-result-object v3

    .line 274
    invoke-direct {v1, v2, v8, v0, v3}, Lcom/b/a/b/t;-><init>(Lcom/b/a/b/l;Landroid/graphics/Bitmap;Lcom/b/a/b/n;Landroid/os/Handler;)V

    .line 276
    invoke-virtual {v5}, Lcom/b/a/b/d;->s()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 277
    invoke-virtual {v1}, Lcom/b/a/b/t;->run()V

    goto :goto_3

    .line 279
    :cond_3
    iget-object v0, p0, Lcom/b/a/b/f;->c:Lcom/b/a/b/l;

    invoke-virtual {v0, v1}, Lcom/b/a/b/l;->a(Lcom/b/a/b/t;)V

    goto/16 :goto_3

    .line 282
    :cond_4
    invoke-virtual {v5}, Lcom/b/a/b/d;->q()Lcom/b/a/b/c/a;

    move-result-object v0

    sget-object v1, Lcom/b/a/b/a/g;->c:Lcom/b/a/b/a/g;

    invoke-interface {v0, v8, p2, v1}, Lcom/b/a/b/c/a;->a(Landroid/graphics/Bitmap;Lcom/b/a/b/e/a;Lcom/b/a/b/a/g;)V

    .line 283
    invoke-interface {p2}, Lcom/b/a/b/e/a;->d()Landroid/view/View;

    move-result-object v0

    invoke-interface {v6, p1, v0, v8}, Lcom/b/a/b/f/a;->a(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V

    goto/16 :goto_3

    .line 286
    :cond_5
    invoke-virtual {v5}, Lcom/b/a/b/d;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 287
    iget-object v0, p0, Lcom/b/a/b/f;->b:Lcom/b/a/b/h;

    iget-object v0, v0, Lcom/b/a/b/h;->a:Landroid/content/res/Resources;

    invoke-virtual {v5, v0}, Lcom/b/a/b/d;->a(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/b/a/b/e/a;->a(Landroid/graphics/drawable/Drawable;)Z

    .line 292
    :cond_6
    :goto_5
    new-instance v0, Lcom/b/a/b/n;

    .line 293
    iget-object v1, p0, Lcom/b/a/b/f;->c:Lcom/b/a/b/l;

    invoke-virtual {v1, p1}, Lcom/b/a/b/l;->a(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v7

    move-object v1, p1

    move-object v2, p2

    .line 292
    invoke-direct/range {v0 .. v7}, Lcom/b/a/b/n;-><init>(Ljava/lang/String;Lcom/b/a/b/e/a;Lcom/b/a/b/a/f;Ljava/lang/String;Lcom/b/a/b/d;Lcom/b/a/b/f/a;Ljava/util/concurrent/locks/ReentrantLock;)V

    .line 294
    new-instance v1, Lcom/b/a/b/o;

    iget-object v2, p0, Lcom/b/a/b/f;->c:Lcom/b/a/b/l;

    .line 295
    invoke-static {v5}, Lcom/b/a/b/f;->a(Lcom/b/a/b/d;)Landroid/os/Handler;

    move-result-object v3

    .line 294
    invoke-direct {v1, v2, v0, v3}, Lcom/b/a/b/o;-><init>(Lcom/b/a/b/l;Lcom/b/a/b/n;Landroid/os/Handler;)V

    .line 296
    invoke-virtual {v5}, Lcom/b/a/b/d;->s()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 297
    invoke-virtual {v1}, Lcom/b/a/b/o;->run()V

    goto/16 :goto_3

    .line 288
    :cond_7
    invoke-virtual {v5}, Lcom/b/a/b/d;->g()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 289
    invoke-interface {p2, v2}, Lcom/b/a/b/e/a;->a(Landroid/graphics/drawable/Drawable;)Z

    goto :goto_5

    .line 299
    :cond_8
    iget-object v0, p0, Lcom/b/a/b/f;->c:Lcom/b/a/b/l;

    invoke-virtual {v0, v1}, Lcom/b/a/b/l;->a(Lcom/b/a/b/o;)V

    goto/16 :goto_3

    :cond_9
    move-object v3, p4

    goto/16 :goto_4

    :cond_a
    move-object v5, p3

    goto/16 :goto_1

    :cond_b
    move-object v6, p5

    goto/16 :goto_0
.end method

.method public final b()Lcom/b/a/a/b/c;
    .locals 1

    .prologue
    .line 628
    invoke-direct {p0}, Lcom/b/a/b/f;->d()V

    .line 629
    iget-object v0, p0, Lcom/b/a/b/f;->b:Lcom/b/a/b/h;

    iget-object v0, v0, Lcom/b/a/b/h;->n:Lcom/b/a/a/b/c;

    return-object v0
.end method

.method public final c()Lcom/b/a/a/a/a;
    .locals 1

    .prologue
    .line 659
    invoke-direct {p0}, Lcom/b/a/b/f;->d()V

    .line 660
    iget-object v0, p0, Lcom/b/a/b/f;->b:Lcom/b/a/b/h;

    iget-object v0, v0, Lcom/b/a/b/h;->o:Lcom/b/a/a/a/a;

    return-object v0
.end method
