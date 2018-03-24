.class public final Lcom/b/a/b/i;
.super Ljava/lang/Object;
.source "ImageLoaderConfiguration.java"


# static fields
.field public static final a:Lcom/b/a/b/a/h;


# instance fields
.field private b:Landroid/content/Context;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Lcom/b/a/b/g/a;

.field private h:Ljava/util/concurrent/Executor;

.field private i:Ljava/util/concurrent/Executor;

.field private j:Z

.field private k:Z

.field private l:I

.field private m:I

.field private n:Z

.field private o:Lcom/b/a/b/a/h;

.field private p:I

.field private q:J

.field private r:I

.field private s:Lcom/b/a/a/b/c;

.field private t:Lcom/b/a/a/a/a;

.field private u:Lcom/b/a/a/a/b/a;

.field private v:Lcom/b/a/b/d/b;

.field private w:Lcom/b/a/b/b/d;

.field private x:Lcom/b/a/b/d;

.field private y:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 162
    sget-object v0, Lcom/b/a/b/a/h;->a:Lcom/b/a/b/a/h;

    sput-object v0, Lcom/b/a/b/i;->a:Lcom/b/a/b/a/h;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v0, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput v2, p0, Lcom/b/a/b/i;->c:I

    .line 167
    iput v2, p0, Lcom/b/a/b/i;->d:I

    .line 168
    iput v2, p0, Lcom/b/a/b/i;->e:I

    .line 169
    iput v2, p0, Lcom/b/a/b/i;->f:I

    .line 170
    iput-object v3, p0, Lcom/b/a/b/i;->g:Lcom/b/a/b/g/a;

    .line 172
    iput-object v3, p0, Lcom/b/a/b/i;->h:Ljava/util/concurrent/Executor;

    .line 173
    iput-object v3, p0, Lcom/b/a/b/i;->i:Ljava/util/concurrent/Executor;

    .line 174
    iput-boolean v2, p0, Lcom/b/a/b/i;->j:Z

    .line 175
    iput-boolean v2, p0, Lcom/b/a/b/i;->k:Z

    .line 177
    iput v0, p0, Lcom/b/a/b/i;->l:I

    .line 178
    iput v0, p0, Lcom/b/a/b/i;->m:I

    .line 179
    iput-boolean v2, p0, Lcom/b/a/b/i;->n:Z

    .line 180
    sget-object v0, Lcom/b/a/b/i;->a:Lcom/b/a/b/a/h;

    iput-object v0, p0, Lcom/b/a/b/i;->o:Lcom/b/a/b/a/h;

    .line 182
    iput v2, p0, Lcom/b/a/b/i;->p:I

    .line 183
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/b/a/b/i;->q:J

    .line 184
    iput v2, p0, Lcom/b/a/b/i;->r:I

    .line 186
    iput-object v3, p0, Lcom/b/a/b/i;->s:Lcom/b/a/a/b/c;

    .line 187
    iput-object v3, p0, Lcom/b/a/b/i;->t:Lcom/b/a/a/a/a;

    .line 188
    iput-object v3, p0, Lcom/b/a/b/i;->u:Lcom/b/a/a/a/b/a;

    .line 189
    iput-object v3, p0, Lcom/b/a/b/i;->v:Lcom/b/a/b/d/b;

    .line 191
    iput-object v3, p0, Lcom/b/a/b/i;->x:Lcom/b/a/b/d;

    .line 193
    iput-boolean v2, p0, Lcom/b/a/b/i;->y:Z

    .line 196
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/b/i;->b:Landroid/content/Context;

    .line 197
    return-void
.end method

.method static synthetic a(Lcom/b/a/b/i;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/b/a/b/i;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/b/a/b/i;)I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/b/a/b/i;->c:I

    return v0
.end method

.method static synthetic c(Lcom/b/a/b/i;)I
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcom/b/a/b/i;->d:I

    return v0
.end method

.method static synthetic d(Lcom/b/a/b/i;)I
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/b/a/b/i;->e:I

    return v0
.end method

.method static synthetic e(Lcom/b/a/b/i;)I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/b/a/b/i;->f:I

    return v0
.end method

.method static synthetic f(Lcom/b/a/b/i;)Lcom/b/a/b/g/a;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/b/a/b/i;->g:Lcom/b/a/b/g/a;

    return-object v0
.end method

.method static synthetic g(Lcom/b/a/b/i;)Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/b/a/b/i;->h:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic h(Lcom/b/a/b/i;)Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/b/a/b/i;->i:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic i(Lcom/b/a/b/i;)I
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lcom/b/a/b/i;->l:I

    return v0
.end method

.method static synthetic j(Lcom/b/a/b/i;)I
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lcom/b/a/b/i;->m:I

    return v0
.end method

.method static synthetic k(Lcom/b/a/b/i;)Lcom/b/a/b/a/h;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/b/a/b/i;->o:Lcom/b/a/b/a/h;

    return-object v0
.end method

.method static synthetic l(Lcom/b/a/b/i;)Lcom/b/a/a/a/a;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/b/a/b/i;->t:Lcom/b/a/a/a/a;

    return-object v0
.end method

.method static synthetic m(Lcom/b/a/b/i;)Lcom/b/a/a/b/c;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/b/a/b/i;->s:Lcom/b/a/a/b/c;

    return-object v0
.end method

.method static synthetic n(Lcom/b/a/b/i;)Lcom/b/a/b/d;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/b/a/b/i;->x:Lcom/b/a/b/d;

    return-object v0
.end method

.method static synthetic o(Lcom/b/a/b/i;)Lcom/b/a/b/d/b;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/b/a/b/i;->v:Lcom/b/a/b/d/b;

    return-object v0
.end method

.method static synthetic p(Lcom/b/a/b/i;)Lcom/b/a/b/b/d;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/b/a/b/i;->w:Lcom/b/a/b/b/d;

    return-object v0
.end method

.method static synthetic q(Lcom/b/a/b/i;)Z
    .locals 1

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/b/a/b/i;->j:Z

    return v0
.end method

.method static synthetic r(Lcom/b/a/b/i;)Z
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/b/a/b/i;->k:Z

    return v0
.end method

.method static synthetic s(Lcom/b/a/b/i;)Z
    .locals 1

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/b/a/b/i;->y:Z

    return v0
.end method


# virtual methods
.method public final a()Lcom/b/a/b/i;
    .locals 1

    .prologue
    .line 208
    const/16 v0, 0x1e0

    iput v0, p0, Lcom/b/a/b/i;->c:I

    .line 209
    const/16 v0, 0x320

    iput v0, p0, Lcom/b/a/b/i;->d:I

    .line 210
    return-object p0
.end method

.method public final a(I)Lcom/b/a/b/i;
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/b/a/b/i;->h:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b/a/b/i;->i:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_1

    .line 295
    :cond_0
    const-string v0, "threadPoolSize(), threadPriority() and tasksProcessingOrder() calls can overlap taskExecutor() and taskExecutorForCachedImages() calls."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/b/a/c/e;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 298
    :cond_1
    iput p1, p0, Lcom/b/a/b/i;->l:I

    .line 299
    return-object p0
.end method

.method public final a(Lcom/b/a/a/a/a;)Lcom/b/a/b/i;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 503
    iget-wide v0, p0, Lcom/b/a/b/i;->q:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/b/a/b/i;->r:I

    if-lez v0, :cond_1

    .line 504
    :cond_0
    const-string v0, "diskCache(), diskCacheSize() and diskCacheFileCount calls overlap each other"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/b/a/c/e;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 506
    :cond_1
    iget-object v0, p0, Lcom/b/a/b/i;->u:Lcom/b/a/a/a/b/a;

    if-eqz v0, :cond_2

    .line 507
    const-string v0, "diskCache() and diskCacheFileNameGenerator() calls overlap each other"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/b/a/c/e;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 510
    :cond_2
    iput-object p1, p0, Lcom/b/a/b/i;->t:Lcom/b/a/a/a/a;

    .line 511
    return-object p0
.end method

.method public final a(Lcom/b/a/a/a/b/a;)Lcom/b/a/b/i;
    .locals 2

    .prologue
    .line 474
    iget-object v0, p0, Lcom/b/a/b/i;->t:Lcom/b/a/a/a/a;

    if-eqz v0, :cond_0

    .line 475
    const-string v0, "diskCache() and diskCacheFileNameGenerator() calls overlap each other"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/b/a/c/e;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 478
    :cond_0
    iput-object p1, p0, Lcom/b/a/b/i;->u:Lcom/b/a/a/a/b/a;

    .line 479
    return-object p0
.end method

.method public final a(Lcom/b/a/a/b/c;)Lcom/b/a/b/i;
    .locals 2

    .prologue
    .line 403
    iget v0, p0, Lcom/b/a/b/i;->p:I

    if-eqz v0, :cond_0

    .line 404
    const-string v0, "memoryCache() and memoryCacheSize() calls overlap each other"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/b/a/c/e;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 407
    :cond_0
    iput-object p1, p0, Lcom/b/a/b/i;->s:Lcom/b/a/a/b/c;

    .line 408
    return-object p0
.end method

.method public final a(Lcom/b/a/b/a/h;)Lcom/b/a/b/i;
    .locals 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/b/a/b/i;->h:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b/a/b/i;->i:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_1

    .line 343
    :cond_0
    const-string v0, "threadPoolSize(), threadPriority() and tasksProcessingOrder() calls can overlap taskExecutor() and taskExecutorForCachedImages() calls."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/b/a/c/e;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 346
    :cond_1
    iput-object p1, p0, Lcom/b/a/b/i;->o:Lcom/b/a/b/a/h;

    .line 347
    return-object p0
.end method

.method public final a(Lcom/b/a/b/d/b;)Lcom/b/a/b/i;
    .locals 0

    .prologue
    .line 521
    iput-object p1, p0, Lcom/b/a/b/i;->v:Lcom/b/a/b/d/b;

    .line 522
    return-object p0
.end method

.method public final b()Lcom/b/a/b/i;
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/b/a/b/i;->h:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b/a/b/i;->i:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_1

    .line 309
    :cond_0
    const-string v0, "threadPoolSize(), threadPriority() and tasksProcessingOrder() calls can overlap taskExecutor() and taskExecutorForCachedImages() calls."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/b/a/c/e;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 312
    :cond_1
    const/4 v0, 0x3

    iput v0, p0, Lcom/b/a/b/i;->m:I

    .line 321
    return-object p0
.end method

.method public final c()Lcom/b/a/b/i;
    .locals 1

    .prologue
    .line 333
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/b/i;->n:Z

    .line 334
    return-object p0
.end method

.method public final d()Lcom/b/a/b/i;
    .locals 2

    .prologue
    .line 359
    iget-object v0, p0, Lcom/b/a/b/i;->s:Lcom/b/a/a/b/c;

    if-eqz v0, :cond_0

    .line 362
    const-string v0, "memoryCache() and memoryCacheSize() calls overlap each other"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/b/a/c/e;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 365
    :cond_0
    const/high16 v0, 0x200000

    iput v0, p0, Lcom/b/a/b/i;->p:I

    .line 366
    return-object p0
.end method

.method public final e()Lcom/b/a/b/i;
    .locals 2

    .prologue
    .line 426
    iget-object v0, p0, Lcom/b/a/b/i;->t:Lcom/b/a/a/a/a;

    if-eqz v0, :cond_0

    .line 429
    const-string v0, "diskCache(), diskCacheSize() and diskCacheFileCount calls overlap each other"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/b/a/c/e;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 432
    :cond_0
    const-wide/32 v0, 0x3200000

    iput-wide v0, p0, Lcom/b/a/b/i;->q:J

    .line 433
    return-object p0
.end method

.method public final f()Lcom/b/a/b/h;
    .locals 8

    .prologue
    const/high16 v7, 0x100000

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 559
    iget-object v0, p0, Lcom/b/a/b/i;->h:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_8

    iget v0, p0, Lcom/b/a/b/i;->l:I

    iget v1, p0, Lcom/b/a/b/i;->m:I

    iget-object v4, p0, Lcom/b/a/b/i;->o:Lcom/b/a/b/a/h;

    invoke-static {v0, v1, v4}, Lcom/b/a/b/a;->a(IILcom/b/a/b/a/h;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/b/i;->h:Ljava/util/concurrent/Executor;

    :goto_0
    iget-object v0, p0, Lcom/b/a/b/i;->i:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_9

    iget v0, p0, Lcom/b/a/b/i;->l:I

    iget v1, p0, Lcom/b/a/b/i;->m:I

    iget-object v4, p0, Lcom/b/a/b/i;->o:Lcom/b/a/b/a/h;

    invoke-static {v0, v1, v4}, Lcom/b/a/b/a;->a(IILcom/b/a/b/a/h;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/b/i;->i:Ljava/util/concurrent/Executor;

    :goto_1
    iget-object v0, p0, Lcom/b/a/b/i;->t:Lcom/b/a/a/a/a;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/b/a/b/i;->u:Lcom/b/a/a/a/b/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/b/a/a/a/b/b;

    invoke-direct {v0}, Lcom/b/a/a/a/b/b;-><init>()V

    iput-object v0, p0, Lcom/b/a/b/i;->u:Lcom/b/a/a/a/b/a;

    :cond_0
    iget-object v0, p0, Lcom/b/a/b/i;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/b/a/b/i;->u:Lcom/b/a/a/a/b/a;

    iget-wide v4, p0, Lcom/b/a/b/i;->q:J

    iget v6, p0, Lcom/b/a/b/i;->r:I

    invoke-static {v0, v1, v4, v5, v6}, Lcom/b/a/b/a;->a(Landroid/content/Context;Lcom/b/a/a/a/b/a;JI)Lcom/b/a/a/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/b/i;->t:Lcom/b/a/a/a/a;

    :cond_1
    iget-object v0, p0, Lcom/b/a/b/i;->s:Lcom/b/a/a/b/c;

    if-nez v0, :cond_3

    iget-object v5, p0, Lcom/b/a/b/i;->b:Landroid/content/Context;

    iget v0, p0, Lcom/b/a/b/i;->p:I

    if-nez v0, :cond_2

    const-string v0, "activity"

    invoke-virtual {v5, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v1

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-lt v4, v6, :cond_a

    move v4, v2

    :goto_2
    if-eqz v4, :cond_c

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v4, v7

    if-eqz v4, :cond_b

    :goto_3
    if-eqz v2, :cond_c

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLargeMemoryClass()I

    move-result v0

    :goto_4
    mul-int/2addr v0, v7

    div-int/lit8 v0, v0, 0x8

    :cond_2
    new-instance v1, Lcom/b/a/a/b/a/b;

    invoke-direct {v1, v0}, Lcom/b/a/a/b/a/b;-><init>(I)V

    iput-object v1, p0, Lcom/b/a/b/i;->s:Lcom/b/a/a/b/c;

    :cond_3
    iget-boolean v0, p0, Lcom/b/a/b/i;->n:Z

    if-eqz v0, :cond_4

    new-instance v0, Lcom/b/a/a/b/a/a;

    iget-object v1, p0, Lcom/b/a/b/i;->s:Lcom/b/a/a/b/c;

    invoke-static {}, Lcom/b/a/c/f;->a()Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/b/a/a/b/a/a;-><init>(Lcom/b/a/a/b/c;Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/b/a/b/i;->s:Lcom/b/a/a/b/c;

    :cond_4
    iget-object v0, p0, Lcom/b/a/b/i;->v:Lcom/b/a/b/d/b;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/b/a/b/i;->b:Landroid/content/Context;

    new-instance v1, Lcom/b/a/b/d/a;

    invoke-direct {v1, v0}, Lcom/b/a/b/d/a;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/b/a/b/i;->v:Lcom/b/a/b/d/b;

    :cond_5
    iget-object v0, p0, Lcom/b/a/b/i;->w:Lcom/b/a/b/b/d;

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/b/a/b/i;->y:Z

    new-instance v1, Lcom/b/a/b/b/a;

    invoke-direct {v1, v0}, Lcom/b/a/b/b/a;-><init>(Z)V

    iput-object v1, p0, Lcom/b/a/b/i;->w:Lcom/b/a/b/b/d;

    :cond_6
    iget-object v0, p0, Lcom/b/a/b/i;->x:Lcom/b/a/b/d;

    if-nez v0, :cond_7

    new-instance v0, Lcom/b/a/b/e;

    invoke-direct {v0}, Lcom/b/a/b/e;-><init>()V

    invoke-virtual {v0}, Lcom/b/a/b/e;->d()Lcom/b/a/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/b/i;->x:Lcom/b/a/b/d;

    .line 560
    :cond_7
    new-instance v0, Lcom/b/a/b/h;

    invoke-direct {v0, p0, v3}, Lcom/b/a/b/h;-><init>(Lcom/b/a/b/i;B)V

    return-object v0

    .line 559
    :cond_8
    iput-boolean v2, p0, Lcom/b/a/b/i;->j:Z

    goto/16 :goto_0

    :cond_9
    iput-boolean v2, p0, Lcom/b/a/b/i;->k:Z

    goto/16 :goto_1

    :cond_a
    move v4, v3

    goto :goto_2

    :cond_b
    move v2, v3

    goto :goto_3

    :cond_c
    move v0, v1

    goto :goto_4
.end method
