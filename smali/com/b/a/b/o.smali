.class final Lcom/b/a/b/o;
.super Ljava/lang/Object;
.source "LoadAndDisplayImageTask.java"

# interfaces
.implements Lcom/b/a/c/d;
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Ljava/lang/String;

.field final b:Lcom/b/a/b/e/a;

.field final c:Lcom/b/a/b/d;

.field final d:Lcom/b/a/b/f/a;

.field final e:Lcom/b/a/b/f/b;

.field private final f:Lcom/b/a/b/l;

.field private final g:Lcom/b/a/b/n;

.field private final h:Landroid/os/Handler;

.field private final i:Lcom/b/a/b/h;

.field private final j:Lcom/b/a/b/d/b;

.field private final k:Lcom/b/a/b/d/b;

.field private final l:Lcom/b/a/b/d/b;

.field private final m:Lcom/b/a/b/b/d;

.field private final n:Ljava/lang/String;

.field private final o:Lcom/b/a/b/a/f;

.field private final p:Z

.field private q:Lcom/b/a/b/a/g;


# direct methods
.method public constructor <init>(Lcom/b/a/b/l;Lcom/b/a/b/n;Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    sget-object v0, Lcom/b/a/b/a/g;->a:Lcom/b/a/b/a/g;

    iput-object v0, p0, Lcom/b/a/b/o;->q:Lcom/b/a/b/a/g;

    .line 99
    iput-object p1, p0, Lcom/b/a/b/o;->f:Lcom/b/a/b/l;

    .line 100
    iput-object p2, p0, Lcom/b/a/b/o;->g:Lcom/b/a/b/n;

    .line 101
    iput-object p3, p0, Lcom/b/a/b/o;->h:Landroid/os/Handler;

    .line 103
    iget-object v0, p1, Lcom/b/a/b/l;->a:Lcom/b/a/b/h;

    iput-object v0, p0, Lcom/b/a/b/o;->i:Lcom/b/a/b/h;

    .line 104
    iget-object v0, p0, Lcom/b/a/b/o;->i:Lcom/b/a/b/h;

    iget-object v0, v0, Lcom/b/a/b/h;->p:Lcom/b/a/b/d/b;

    iput-object v0, p0, Lcom/b/a/b/o;->j:Lcom/b/a/b/d/b;

    .line 105
    iget-object v0, p0, Lcom/b/a/b/o;->i:Lcom/b/a/b/h;

    iget-object v0, v0, Lcom/b/a/b/h;->s:Lcom/b/a/b/d/b;

    iput-object v0, p0, Lcom/b/a/b/o;->k:Lcom/b/a/b/d/b;

    .line 106
    iget-object v0, p0, Lcom/b/a/b/o;->i:Lcom/b/a/b/h;

    iget-object v0, v0, Lcom/b/a/b/h;->t:Lcom/b/a/b/d/b;

    iput-object v0, p0, Lcom/b/a/b/o;->l:Lcom/b/a/b/d/b;

    .line 107
    iget-object v0, p0, Lcom/b/a/b/o;->i:Lcom/b/a/b/h;

    iget-object v0, v0, Lcom/b/a/b/h;->q:Lcom/b/a/b/b/d;

    iput-object v0, p0, Lcom/b/a/b/o;->m:Lcom/b/a/b/b/d;

    .line 108
    iget-object v0, p2, Lcom/b/a/b/n;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/b/a/b/o;->a:Ljava/lang/String;

    .line 109
    iget-object v0, p2, Lcom/b/a/b/n;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/b/a/b/o;->n:Ljava/lang/String;

    .line 110
    iget-object v0, p2, Lcom/b/a/b/n;->c:Lcom/b/a/b/e/a;

    iput-object v0, p0, Lcom/b/a/b/o;->b:Lcom/b/a/b/e/a;

    .line 111
    iget-object v0, p2, Lcom/b/a/b/n;->d:Lcom/b/a/b/a/f;

    iput-object v0, p0, Lcom/b/a/b/o;->o:Lcom/b/a/b/a/f;

    .line 112
    iget-object v0, p2, Lcom/b/a/b/n;->e:Lcom/b/a/b/d;

    iput-object v0, p0, Lcom/b/a/b/o;->c:Lcom/b/a/b/d;

    .line 113
    iget-object v0, p2, Lcom/b/a/b/n;->f:Lcom/b/a/b/f/a;

    iput-object v0, p0, Lcom/b/a/b/o;->d:Lcom/b/a/b/f/a;

    .line 114
    iget-object v0, p2, Lcom/b/a/b/n;->g:Lcom/b/a/b/f/b;

    iput-object v0, p0, Lcom/b/a/b/o;->e:Lcom/b/a/b/f/b;

    .line 115
    iget-object v0, p0, Lcom/b/a/b/o;->c:Lcom/b/a/b/d;

    invoke-virtual {v0}, Lcom/b/a/b/d;->s()Z

    move-result v0

    iput-boolean v0, p0, Lcom/b/a/b/o;->p:Z

    .line 116
    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    .line 263
    iget-object v0, p0, Lcom/b/a/b/o;->b:Lcom/b/a/b/e/a;

    invoke-interface {v0}, Lcom/b/a/b/e/a;->c()Lcom/b/a/b/a/i;

    move-result-object v5

    .line 264
    new-instance v0, Lcom/b/a/b/b/e;

    iget-object v1, p0, Lcom/b/a/b/o;->n:Ljava/lang/String;

    iget-object v3, p0, Lcom/b/a/b/o;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/b/a/b/o;->o:Lcom/b/a/b/a/f;

    .line 265
    invoke-direct {p0}, Lcom/b/a/b/o;->f()Lcom/b/a/b/d/b;

    move-result-object v6

    iget-object v7, p0, Lcom/b/a/b/o;->c:Lcom/b/a/b/d;

    move-object v2, p1

    .line 264
    invoke-direct/range {v0 .. v7}, Lcom/b/a/b/b/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/b/a/b/a/f;Lcom/b/a/b/a/i;Lcom/b/a/b/d/b;Lcom/b/a/b/d;)V

    .line 266
    iget-object v1, p0, Lcom/b/a/b/o;->m:Lcom/b/a/b/b/d;

    invoke-interface {v1, v0}, Lcom/b/a/b/b/d;->a(Lcom/b/a/b/b/e;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/b/a/b/o;)Lcom/b/a/b/h;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/b/a/b/o;->i:Lcom/b/a/b/h;

    return-object v0
.end method

.method private a(Lcom/b/a/b/a/c;Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 354
    iget-boolean v0, p0, Lcom/b/a/b/o;->p:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/b/a/b/o;->l()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/b/a/b/o;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 355
    :cond_1
    new-instance v0, Lcom/b/a/b/q;

    invoke-direct {v0, p0, p1, p2}, Lcom/b/a/b/q;-><init>(Lcom/b/a/b/o;Lcom/b/a/b/a/c;Ljava/lang/Throwable;)V

    .line 364
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/b/a/b/o;->h:Landroid/os/Handler;

    iget-object v3, p0, Lcom/b/a/b/o;->f:Lcom/b/a/b/l;

    invoke-static {v0, v1, v2, v3}, Lcom/b/a/b/o;->a(Ljava/lang/Runnable;ZLandroid/os/Handler;Lcom/b/a/b/l;)V

    goto :goto_0
.end method

.method static a(Ljava/lang/Runnable;ZLandroid/os/Handler;Lcom/b/a/b/l;)V
    .locals 0

    .prologue
    .line 465
    if-eqz p1, :cond_0

    .line 466
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 472
    :goto_0
    return-void

    .line 467
    :cond_0
    if-nez p2, :cond_1

    .line 468
    invoke-virtual {p3, p0}, Lcom/b/a/b/l;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 470
    :cond_1
    invoke-virtual {p2, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private a()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 182
    iget-object v1, p0, Lcom/b/a/b/o;->f:Lcom/b/a/b/l;

    invoke-virtual {v1}, Lcom/b/a/b/l;->a()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    .line 183
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 184
    iget-object v2, p0, Lcom/b/a/b/o;->f:Lcom/b/a/b/l;

    invoke-virtual {v2}, Lcom/b/a/b/l;->b()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 185
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    const-string v1, "ImageLoader is paused. Waiting...  [%s]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/b/a/b/o;->n:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Lcom/b/a/c/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    :try_start_1
    iget-object v1, p0, Lcom/b/a/b/o;->f:Lcom/b/a/b/l;

    invoke-virtual {v1}, Lcom/b/a/b/l;->b()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 193
    :try_start_2
    const-string v0, ".. Resume loading [%s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/b/a/b/o;->n:Ljava/lang/String;

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Lcom/b/a/c/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    :cond_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 197
    :cond_1
    invoke-direct {p0}, Lcom/b/a/b/o;->h()Z

    move-result v0

    :goto_0
    return v0

    .line 190
    :catch_0
    move-exception v1

    :try_start_3
    const-string v1, "Task was interrupted [%s]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/b/a/b/o;->n:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Lcom/b/a/c/e;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 184
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private b()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 202
    iget-object v2, p0, Lcom/b/a/b/o;->c:Lcom/b/a/b/d;

    invoke-virtual {v2}, Lcom/b/a/b/d;->f()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 203
    const-string v2, "Delay %d ms before loading...  [%s]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/b/a/b/o;->c:Lcom/b/a/b/d;

    invoke-virtual {v4}, Lcom/b/a/b/d;->l()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    iget-object v4, p0, Lcom/b/a/b/o;->n:Ljava/lang/String;

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Lcom/b/a/c/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 205
    :try_start_0
    iget-object v2, p0, Lcom/b/a/b/o;->c:Lcom/b/a/b/d;

    invoke-virtual {v2}, Lcom/b/a/b/d;->l()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    invoke-direct {p0}, Lcom/b/a/b/o;->h()Z

    move-result v0

    .line 212
    :goto_0
    return v0

    .line 207
    :catch_0
    move-exception v2

    const-string v2, "Task was interrupted [%s]"

    new-array v3, v0, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/b/a/b/o;->n:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/b/a/c/e;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    move v0, v1

    .line 212
    goto :goto_0
.end method

.method private c()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 216
    .line 218
    :try_start_0
    iget-object v0, p0, Lcom/b/a/b/o;->i:Lcom/b/a/b/h;

    iget-object v0, v0, Lcom/b/a/b/h;->o:Lcom/b/a/a/a/a;

    iget-object v2, p0, Lcom/b/a/b/o;->a:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/b/a/a/a/a;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 219
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    .line 220
    const-string v2, "Load image from disk cache [%s]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/b/a/b/o;->n:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/b/a/c/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    sget-object v2, Lcom/b/a/b/a/g;->b:Lcom/b/a/b/a/g;

    iput-object v2, p0, Lcom/b/a/b/o;->q:Lcom/b/a/b/a/g;

    .line 223
    invoke-direct {p0}, Lcom/b/a/b/o;->g()V

    .line 224
    sget-object v2, Lcom/b/a/b/d/c;->c:Lcom/b/a/b/d/c;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/b/a/b/d/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/b/a/b/o;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/b/a/b/s; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v0

    .line 226
    :goto_0
    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-gtz v2, :cond_3

    .line 227
    :cond_0
    const-string v2, "Load image from network [%s]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/b/a/b/o;->n:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/b/a/c/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    sget-object v2, Lcom/b/a/b/a/g;->a:Lcom/b/a/b/a/g;

    iput-object v2, p0, Lcom/b/a/b/o;->q:Lcom/b/a/b/a/g;

    .line 230
    iget-object v2, p0, Lcom/b/a/b/o;->a:Ljava/lang/String;

    .line 231
    iget-object v3, p0, Lcom/b/a/b/o;->c:Lcom/b/a/b/d;

    invoke-virtual {v3}, Lcom/b/a/b/d;->i()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/b/a/b/o;->d()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 232
    iget-object v3, p0, Lcom/b/a/b/o;->i:Lcom/b/a/b/h;

    iget-object v3, v3, Lcom/b/a/b/h;->o:Lcom/b/a/a/a/a;

    iget-object v4, p0, Lcom/b/a/b/o;->a:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/b/a/a/a/a;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 233
    if-eqz v3, :cond_1

    .line 234
    sget-object v2, Lcom/b/a/b/d/c;->c:Lcom/b/a/b/d/c;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/b/a/b/d/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 238
    :cond_1
    invoke-direct {p0}, Lcom/b/a/b/o;->g()V

    .line 239
    invoke-direct {p0, v2}, Lcom/b/a/b/o;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 241
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-gtz v2, :cond_3

    .line 242
    :cond_2
    sget-object v2, Lcom/b/a/b/a/c;->b:Lcom/b/a/b/a/c;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/b/a/b/o;->a(Lcom/b/a/b/a/c;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Lcom/b/a/b/s; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5

    .line 259
    :cond_3
    :goto_1
    return-object v0

    .line 245
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 246
    :goto_2
    sget-object v2, Lcom/b/a/b/a/c;->c:Lcom/b/a/b/a/c;

    invoke-direct {p0, v2, v1}, Lcom/b/a/b/o;->a(Lcom/b/a/b/a/c;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 247
    :catch_1
    move-exception v0

    throw v0

    .line 249
    :catch_2
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    .line 250
    :goto_3
    invoke-static {v1}, Lcom/b/a/c/e;->a(Ljava/lang/Throwable;)V

    .line 251
    sget-object v2, Lcom/b/a/b/a/c;->a:Lcom/b/a/b/a/c;

    invoke-direct {p0, v2, v1}, Lcom/b/a/b/o;->a(Lcom/b/a/b/a/c;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 252
    :catch_3
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    .line 253
    :goto_4
    invoke-static {v1}, Lcom/b/a/c/e;->a(Ljava/lang/Throwable;)V

    .line 254
    sget-object v2, Lcom/b/a/b/a/c;->d:Lcom/b/a/b/a/c;

    invoke-direct {p0, v2, v1}, Lcom/b/a/b/o;->a(Lcom/b/a/b/a/c;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 255
    :catch_4
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    .line 256
    :goto_5
    invoke-static {v1}, Lcom/b/a/c/e;->a(Ljava/lang/Throwable;)V

    .line 257
    sget-object v2, Lcom/b/a/b/a/c;->e:Lcom/b/a/b/a/c;

    invoke-direct {p0, v2, v1}, Lcom/b/a/b/o;->a(Lcom/b/a/b/a/c;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 255
    :catch_5
    move-exception v1

    goto :goto_5

    .line 252
    :catch_6
    move-exception v1

    goto :goto_4

    .line 249
    :catch_7
    move-exception v1

    goto :goto_3

    .line 245
    :catch_8
    move-exception v2

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto/16 :goto_0
.end method

.method private d()Z
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v9, 0x0

    .line 271
    const-string v0, "Cache image on disk [%s]"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/b/a/b/o;->n:Ljava/lang/String;

    aput-object v2, v1, v9

    invoke-static {v0, v1}, Lcom/b/a/c/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 275
    :try_start_0
    invoke-direct {p0}, Lcom/b/a/b/o;->e()Z

    move-result v8

    .line 276
    if-eqz v8, :cond_3

    .line 277
    iget-object v0, p0, Lcom/b/a/b/o;->i:Lcom/b/a/b/h;

    iget v0, v0, Lcom/b/a/b/h;->d:I

    .line 278
    iget-object v1, p0, Lcom/b/a/b/o;->i:Lcom/b/a/b/h;

    iget v1, v1, Lcom/b/a/b/h;->e:I

    .line 279
    if-gtz v0, :cond_0

    if-lez v1, :cond_3

    .line 280
    :cond_0
    const-string v2, "Resize image in disk cache [%s]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/b/a/b/o;->n:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/b/a/c/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 281
    iget-object v2, p0, Lcom/b/a/b/o;->i:Lcom/b/a/b/h;

    iget-object v2, v2, Lcom/b/a/b/h;->o:Lcom/b/a/a/a/a;

    iget-object v3, p0, Lcom/b/a/b/o;->a:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/b/a/a/a/a;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v4, Lcom/b/a/b/a/f;

    invoke-direct {v4, v0, v1}, Lcom/b/a/b/a/f;-><init>(II)V

    new-instance v0, Lcom/b/a/b/e;

    invoke-direct {v0}, Lcom/b/a/b/e;-><init>()V

    iget-object v1, p0, Lcom/b/a/b/o;->c:Lcom/b/a/b/d;

    invoke-virtual {v0, v1}, Lcom/b/a/b/e;->a(Lcom/b/a/b/d;)Lcom/b/a/b/e;

    move-result-object v0

    sget-object v1, Lcom/b/a/b/a/e;->d:Lcom/b/a/b/a/e;

    invoke-virtual {v0, v1}, Lcom/b/a/b/e;->a(Lcom/b/a/b/a/e;)Lcom/b/a/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/b/e;->d()Lcom/b/a/b/d;

    move-result-object v7

    new-instance v0, Lcom/b/a/b/b/e;

    iget-object v1, p0, Lcom/b/a/b/o;->n:Ljava/lang/String;

    sget-object v3, Lcom/b/a/b/d/c;->c:Lcom/b/a/b/d/c;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/b/a/b/d/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/b/a/b/o;->a:Ljava/lang/String;

    sget-object v5, Lcom/b/a/b/a/i;->a:Lcom/b/a/b/a/i;

    invoke-direct {p0}, Lcom/b/a/b/o;->f()Lcom/b/a/b/d/b;

    move-result-object v6

    invoke-direct/range {v0 .. v7}, Lcom/b/a/b/b/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/b/a/b/a/f;Lcom/b/a/b/a/i;Lcom/b/a/b/d/b;Lcom/b/a/b/d;)V

    iget-object v1, p0, Lcom/b/a/b/o;->m:Lcom/b/a/b/b/d;

    invoke-interface {v1, v0}, Lcom/b/a/b/b/d;->a(Lcom/b/a/b/b/e;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/b/a/b/o;->i:Lcom/b/a/b/h;

    iget-object v1, v1, Lcom/b/a/b/h;->f:Lcom/b/a/b/g/a;

    if-eqz v1, :cond_1

    const-string v0, "Process image before cache on disk [%s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/b/a/b/o;->n:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/b/a/c/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/b/a/b/o;->i:Lcom/b/a/b/h;

    iget-object v0, v0, Lcom/b/a/b/h;->f:Lcom/b/a/b/g/a;

    invoke-interface {v0}, Lcom/b/a/b/g/a;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v1, "Bitmap processor for disk cache returned null [%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/b/a/b/o;->n:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/b/a/c/e;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/b/a/b/o;->i:Lcom/b/a/b/h;

    iget-object v1, v1, Lcom/b/a/b/h;->o:Lcom/b/a/a/a/a;

    iget-object v2, p0, Lcom/b/a/b/o;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/b/a/a/a/a;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move v0, v8

    .line 288
    :goto_0
    return v0

    .line 285
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/b/a/c/e;->a(Ljava/lang/Throwable;)V

    move v0, v9

    .line 286
    goto :goto_0

    :cond_3
    move v0, v8

    goto :goto_0
.end method

.method private e()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 292
    invoke-direct {p0}, Lcom/b/a/b/o;->f()Lcom/b/a/b/d/b;

    move-result-object v1

    iget-object v2, p0, Lcom/b/a/b/o;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/b/a/b/o;->c:Lcom/b/a/b/d;

    invoke-virtual {v3}, Lcom/b/a/b/d;->n()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/b/a/b/d/b;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v1

    .line 293
    if-nez v1, :cond_0

    .line 294
    const-string v1, "No stream for image [%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/b/a/b/o;->n:Ljava/lang/String;

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Lcom/b/a/c/e;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 298
    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/b/a/b/o;->i:Lcom/b/a/b/h;

    iget-object v0, v0, Lcom/b/a/b/h;->o:Lcom/b/a/a/a/a;

    iget-object v2, p0, Lcom/b/a/b/o;->a:Ljava/lang/String;

    invoke-interface {v0, v2, v1, p0}, Lcom/b/a/a/a/a;->a(Ljava/lang/String;Ljava/io/InputStream;Lcom/b/a/c/d;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 300
    invoke-static {v1}, Lcom/b/a/c/c;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 299
    :catchall_0
    move-exception v0

    .line 300
    invoke-static {v1}, Lcom/b/a/c/c;->a(Ljava/io/Closeable;)V

    .line 301
    throw v0
.end method

.method private f()Lcom/b/a/b/d/b;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/b/a/b/o;->f:Lcom/b/a/b/l;

    invoke-virtual {v0}, Lcom/b/a/b/l;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/b/a/b/o;->k:Lcom/b/a/b/d/b;

    .line 387
    :goto_0
    return-object v0

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/b/a/b/o;->f:Lcom/b/a/b/l;

    invoke-virtual {v0}, Lcom/b/a/b/l;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 383
    iget-object v0, p0, Lcom/b/a/b/o;->l:Lcom/b/a/b/d/b;

    goto :goto_0

    .line 385
    :cond_1
    iget-object v0, p0, Lcom/b/a/b/o;->j:Lcom/b/a/b/d/b;

    goto :goto_0
.end method

.method private g()V
    .locals 1

    .prologue
    .line 396
    invoke-direct {p0}, Lcom/b/a/b/o;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/b/a/b/s;

    invoke-direct {v0, p0}, Lcom/b/a/b/s;-><init>(Lcom/b/a/b/o;)V

    throw v0

    .line 397
    :cond_0
    invoke-direct {p0}, Lcom/b/a/b/o;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/b/a/b/s;

    invoke-direct {v0, p0}, Lcom/b/a/b/s;-><init>(Lcom/b/a/b/o;)V

    throw v0

    .line 398
    :cond_1
    return-void
.end method

.method private h()Z
    .locals 1

    .prologue
    .line 405
    invoke-direct {p0}, Lcom/b/a/b/o;->i()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/b/a/b/o;->j()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private i()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 417
    iget-object v2, p0, Lcom/b/a/b/o;->b:Lcom/b/a/b/e/a;

    invoke-interface {v2}, Lcom/b/a/b/e/a;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 418
    const-string v2, "ImageAware was collected by GC. Task is cancelled. [%s]"

    new-array v3, v0, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/b/a/b/o;->n:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/b/a/c/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 421
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private j()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 433
    iget-object v2, p0, Lcom/b/a/b/o;->f:Lcom/b/a/b/l;

    iget-object v3, p0, Lcom/b/a/b/o;->b:Lcom/b/a/b/e/a;

    invoke-virtual {v2, v3}, Lcom/b/a/b/l;->a(Lcom/b/a/b/e/a;)Ljava/lang/String;

    move-result-object v2

    .line 436
    iget-object v3, p0, Lcom/b/a/b/o;->n:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    .line 437
    :goto_0
    if-eqz v2, :cond_1

    .line 438
    const-string v2, "ImageAware is reused for another image. Task is cancelled. [%s]"

    new-array v3, v0, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/b/a/b/o;->n:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/b/a/c/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 441
    :goto_1
    return v0

    :cond_0
    move v2, v0

    .line 436
    goto :goto_0

    :cond_1
    move v0, v1

    .line 441
    goto :goto_1
.end method

.method private k()V
    .locals 1

    .prologue
    .line 446
    invoke-direct {p0}, Lcom/b/a/b/o;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    new-instance v0, Lcom/b/a/b/s;

    invoke-direct {v0, p0}, Lcom/b/a/b/s;-><init>(Lcom/b/a/b/o;)V

    throw v0

    .line 449
    :cond_0
    return-void
.end method

.method private l()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 453
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 454
    const-string v2, "Task was interrupted [%s]"

    new-array v3, v0, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/b/a/b/o;->n:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/b/a/c/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 457
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a(II)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 335
    iget-boolean v2, p0, Lcom/b/a/b/o;->p:Z

    if-nez v2, :cond_3

    invoke-direct {p0}, Lcom/b/a/b/o;->l()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/b/a/b/o;->h()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v2, v0

    :goto_0
    if-nez v2, :cond_3

    :goto_1
    return v0

    :cond_1
    iget-object v2, p0, Lcom/b/a/b/o;->e:Lcom/b/a/b/f/b;

    if-eqz v2, :cond_2

    new-instance v2, Lcom/b/a/b/p;

    invoke-direct {v2, p0, p1, p2}, Lcom/b/a/b/p;-><init>(Lcom/b/a/b/o;II)V

    iget-object v3, p0, Lcom/b/a/b/o;->h:Landroid/os/Handler;

    iget-object v4, p0, Lcom/b/a/b/o;->f:Lcom/b/a/b/l;

    invoke-static {v2, v0, v3, v4}, Lcom/b/a/b/o;->a(Ljava/lang/Runnable;ZLandroid/os/Handler;Lcom/b/a/b/l;)V

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public final run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 120
    invoke-direct {p0}, Lcom/b/a/b/o;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    invoke-direct {p0}, Lcom/b/a/b/o;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/b/a/b/o;->g:Lcom/b/a/b/n;

    iget-object v1, v0, Lcom/b/a/b/n;->h:Ljava/util/concurrent/locks/ReentrantLock;

    .line 124
    const-string v0, "Start display image task [%s]"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/b/a/b/o;->n:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcom/b/a/c/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 126
    const-string v0, "Image already is loading. Waiting... [%s]"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/b/a/b/o;->n:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcom/b/a/c/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    :cond_2
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 132
    :try_start_0
    invoke-direct {p0}, Lcom/b/a/b/o;->g()V

    .line 134
    iget-object v0, p0, Lcom/b/a/b/o;->i:Lcom/b/a/b/h;

    iget-object v0, v0, Lcom/b/a/b/h;->n:Lcom/b/a/a/b/c;

    iget-object v2, p0, Lcom/b/a/b/o;->n:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/b/a/a/b/c;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 135
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 137
    :cond_3
    invoke-direct {p0}, Lcom/b/a/b/o;->c()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Lcom/b/a/b/s; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 138
    if-nez v0, :cond_4

    .line 173
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 140
    :cond_4
    :try_start_1
    invoke-direct {p0}, Lcom/b/a/b/o;->g()V

    .line 141
    invoke-direct {p0}, Lcom/b/a/b/o;->k()V

    .line 143
    iget-object v2, p0, Lcom/b/a/b/o;->c:Lcom/b/a/b/d;

    invoke-virtual {v2}, Lcom/b/a/b/d;->d()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 144
    const-string v0, "PreProcess image before caching in memory [%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/b/a/b/o;->n:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/b/a/c/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    iget-object v0, p0, Lcom/b/a/b/o;->c:Lcom/b/a/b/d;

    invoke-virtual {v0}, Lcom/b/a/b/d;->o()Lcom/b/a/b/g/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/b/a/b/g/a;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 146
    if-nez v0, :cond_5

    .line 147
    const-string v2, "Pre-processor returned null [%s]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/b/a/b/o;->n:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/b/a/c/e;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    :cond_5
    if-eqz v0, :cond_6

    iget-object v2, p0, Lcom/b/a/b/o;->c:Lcom/b/a/b/d;

    invoke-virtual {v2}, Lcom/b/a/b/d;->h()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 152
    const-string v2, "Cache image in memory [%s]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/b/a/b/o;->n:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/b/a/c/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    iget-object v2, p0, Lcom/b/a/b/o;->i:Lcom/b/a/b/h;

    iget-object v2, v2, Lcom/b/a/b/h;->n:Lcom/b/a/a/b/c;

    iget-object v3, p0, Lcom/b/a/b/o;->n:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Lcom/b/a/a/b/c;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    .line 160
    :cond_6
    :goto_1
    if-eqz v0, :cond_7

    iget-object v2, p0, Lcom/b/a/b/o;->c:Lcom/b/a/b/d;

    invoke-virtual {v2}, Lcom/b/a/b/d;->e()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 161
    const-string v0, "PostProcess image before displaying [%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/b/a/b/o;->n:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/b/a/c/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    iget-object v0, p0, Lcom/b/a/b/o;->c:Lcom/b/a/b/d;

    invoke-virtual {v0}, Lcom/b/a/b/d;->p()Lcom/b/a/b/g/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/b/a/b/g/a;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 163
    if-nez v0, :cond_7

    .line 164
    const-string v2, "Post-processor returned null [%s]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/b/a/b/o;->n:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/b/a/c/e;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    :cond_7
    invoke-direct {p0}, Lcom/b/a/b/o;->g()V

    .line 168
    invoke-direct {p0}, Lcom/b/a/b/o;->k()V
    :try_end_1
    .catch Lcom/b/a/b/s; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 176
    new-instance v1, Lcom/b/a/b/c;

    iget-object v2, p0, Lcom/b/a/b/o;->g:Lcom/b/a/b/n;

    iget-object v3, p0, Lcom/b/a/b/o;->f:Lcom/b/a/b/l;

    iget-object v4, p0, Lcom/b/a/b/o;->q:Lcom/b/a/b/a/g;

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/b/a/b/c;-><init>(Landroid/graphics/Bitmap;Lcom/b/a/b/n;Lcom/b/a/b/l;Lcom/b/a/b/a/g;)V

    .line 177
    iget-boolean v0, p0, Lcom/b/a/b/o;->p:Z

    iget-object v2, p0, Lcom/b/a/b/o;->h:Landroid/os/Handler;

    iget-object v3, p0, Lcom/b/a/b/o;->f:Lcom/b/a/b/l;

    invoke-static {v1, v0, v2, v3}, Lcom/b/a/b/o;->a(Ljava/lang/Runnable;ZLandroid/os/Handler;Lcom/b/a/b/l;)V

    goto/16 :goto_0

    .line 156
    :cond_8
    :try_start_2
    sget-object v2, Lcom/b/a/b/a/g;->c:Lcom/b/a/b/a/g;

    iput-object v2, p0, Lcom/b/a/b/o;->q:Lcom/b/a/b/a/g;

    .line 157
    const-string v2, "...Get cached bitmap from memory after waiting. [%s]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/b/a/b/o;->n:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/b/a/c/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/b/a/b/s; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 170
    :catch_0
    move-exception v0

    :try_start_3
    iget-boolean v0, p0, Lcom/b/a/b/o;->p:Z

    if-nez v0, :cond_9

    invoke-direct {p0}, Lcom/b/a/b/o;->l()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    if-eqz v0, :cond_a

    .line 173
    :cond_9
    :goto_2
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .line 170
    :cond_a
    :try_start_4
    new-instance v0, Lcom/b/a/b/r;

    invoke-direct {v0, p0}, Lcom/b/a/b/r;-><init>(Lcom/b/a/b/o;)V

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/b/a/b/o;->h:Landroid/os/Handler;

    iget-object v4, p0, Lcom/b/a/b/o;->f:Lcom/b/a/b/l;

    invoke-static {v0, v2, v3, v4}, Lcom/b/a/b/o;->a(Ljava/lang/Runnable;ZLandroid/os/Handler;Lcom/b/a/b/l;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 172
    :catchall_0
    move-exception v0

    .line 173
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 174
    throw v0
.end method
