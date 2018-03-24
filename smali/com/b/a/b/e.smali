.class public final Lcom/b/a/b/e;
.super Ljava/lang/Object;
.source "DisplayImageOptions.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Lcom/b/a/b/a/e;

.field private k:Landroid/graphics/BitmapFactory$Options;

.field private l:I

.field private m:Z

.field private n:Ljava/lang/Object;

.field private o:Lcom/b/a/b/g/a;

.field private p:Lcom/b/a/b/g/a;

.field private q:Lcom/b/a/b/c/a;

.field private r:Landroid/os/Handler;

.field private s:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iput v1, p0, Lcom/b/a/b/e;->a:I

    .line 204
    iput v1, p0, Lcom/b/a/b/e;->b:I

    .line 205
    iput v1, p0, Lcom/b/a/b/e;->c:I

    .line 206
    iput-object v2, p0, Lcom/b/a/b/e;->d:Landroid/graphics/drawable/Drawable;

    .line 207
    iput-object v2, p0, Lcom/b/a/b/e;->e:Landroid/graphics/drawable/Drawable;

    .line 208
    iput-object v2, p0, Lcom/b/a/b/e;->f:Landroid/graphics/drawable/Drawable;

    .line 209
    iput-boolean v1, p0, Lcom/b/a/b/e;->g:Z

    .line 210
    iput-boolean v1, p0, Lcom/b/a/b/e;->h:Z

    .line 211
    iput-boolean v1, p0, Lcom/b/a/b/e;->i:Z

    .line 212
    sget-object v0, Lcom/b/a/b/a/e;->c:Lcom/b/a/b/a/e;

    iput-object v0, p0, Lcom/b/a/b/e;->j:Lcom/b/a/b/a/e;

    .line 213
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/b/a/b/e;->k:Landroid/graphics/BitmapFactory$Options;

    .line 214
    iput v1, p0, Lcom/b/a/b/e;->l:I

    .line 215
    iput-boolean v1, p0, Lcom/b/a/b/e;->m:Z

    .line 216
    iput-object v2, p0, Lcom/b/a/b/e;->n:Ljava/lang/Object;

    .line 217
    iput-object v2, p0, Lcom/b/a/b/e;->o:Lcom/b/a/b/g/a;

    .line 218
    iput-object v2, p0, Lcom/b/a/b/e;->p:Lcom/b/a/b/g/a;

    .line 219
    new-instance v0, Lcom/b/a/b/c/c;

    invoke-direct {v0}, Lcom/b/a/b/c/c;-><init>()V

    iput-object v0, p0, Lcom/b/a/b/e;->q:Lcom/b/a/b/c/a;

    .line 220
    iput-object v2, p0, Lcom/b/a/b/e;->r:Landroid/os/Handler;

    .line 221
    iput-boolean v1, p0, Lcom/b/a/b/e;->s:Z

    .line 202
    return-void
.end method

.method static synthetic a(Lcom/b/a/b/e;)I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lcom/b/a/b/e;->a:I

    return v0
.end method

.method static synthetic b(Lcom/b/a/b/e;)I
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lcom/b/a/b/e;->b:I

    return v0
.end method

.method static synthetic c(Lcom/b/a/b/e;)I
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lcom/b/a/b/e;->c:I

    return v0
.end method

.method static synthetic d(Lcom/b/a/b/e;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/b/a/b/e;->d:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic e(Lcom/b/a/b/e;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/b/a/b/e;->e:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic f(Lcom/b/a/b/e;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/b/a/b/e;->f:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic g(Lcom/b/a/b/e;)Z
    .locals 1

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/b/a/b/e;->g:Z

    return v0
.end method

.method static synthetic h(Lcom/b/a/b/e;)Z
    .locals 1

    .prologue
    .line 210
    iget-boolean v0, p0, Lcom/b/a/b/e;->h:Z

    return v0
.end method

.method static synthetic i(Lcom/b/a/b/e;)Z
    .locals 1

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/b/a/b/e;->i:Z

    return v0
.end method

.method static synthetic j(Lcom/b/a/b/e;)Lcom/b/a/b/a/e;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/b/a/b/e;->j:Lcom/b/a/b/a/e;

    return-object v0
.end method

.method static synthetic k(Lcom/b/a/b/e;)Landroid/graphics/BitmapFactory$Options;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/b/a/b/e;->k:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method static synthetic l(Lcom/b/a/b/e;)I
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lcom/b/a/b/e;->l:I

    return v0
.end method

.method static synthetic m(Lcom/b/a/b/e;)Z
    .locals 1

    .prologue
    .line 215
    iget-boolean v0, p0, Lcom/b/a/b/e;->m:Z

    return v0
.end method

.method static synthetic n(Lcom/b/a/b/e;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/b/a/b/e;->n:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic o(Lcom/b/a/b/e;)Lcom/b/a/b/g/a;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/b/a/b/e;->o:Lcom/b/a/b/g/a;

    return-object v0
.end method

.method static synthetic p(Lcom/b/a/b/e;)Lcom/b/a/b/g/a;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/b/a/b/e;->p:Lcom/b/a/b/g/a;

    return-object v0
.end method

.method static synthetic q(Lcom/b/a/b/e;)Lcom/b/a/b/c/a;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/b/a/b/e;->q:Lcom/b/a/b/c/a;

    return-object v0
.end method

.method static synthetic r(Lcom/b/a/b/e;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/b/a/b/e;->r:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic s(Lcom/b/a/b/e;)Z
    .locals 1

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/b/a/b/e;->s:Z

    return v0
.end method


# virtual methods
.method public final a()Lcom/b/a/b/e;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 232
    const v0, 0x7f0203d7

    iput v0, p0, Lcom/b/a/b/e;->a:I

    .line 233
    return-object p0
.end method

.method public final a(I)Lcom/b/a/b/e;
    .locals 0

    .prologue
    .line 243
    iput p1, p0, Lcom/b/a/b/e;->a:I

    .line 244
    return-object p0
.end method

.method public final a(Landroid/graphics/Bitmap$Config;)Lcom/b/a/b/e;
    .locals 2

    .prologue
    .line 377
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bitmapConfig can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/b/a/b/e;->k:Landroid/graphics/BitmapFactory$Options;

    iput-object p1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 379
    return-object p0
.end method

.method public final a(Lcom/b/a/b/a/e;)Lcom/b/a/b/e;
    .locals 0

    .prologue
    .line 371
    iput-object p1, p0, Lcom/b/a/b/e;->j:Lcom/b/a/b/a/e;

    .line 372
    return-object p0
.end method

.method public final a(Lcom/b/a/b/c/a;)Lcom/b/a/b/e;
    .locals 2

    .prologue
    .line 439
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayer can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 440
    :cond_0
    iput-object p1, p0, Lcom/b/a/b/e;->q:Lcom/b/a/b/c/a;

    .line 441
    return-object p0
.end method

.method public final a(Lcom/b/a/b/d;)Lcom/b/a/b/e;
    .locals 1

    .prologue
    .line 460
    invoke-static {p1}, Lcom/b/a/b/d;->a(Lcom/b/a/b/d;)I

    move-result v0

    iput v0, p0, Lcom/b/a/b/e;->a:I

    .line 461
    invoke-static {p1}, Lcom/b/a/b/d;->b(Lcom/b/a/b/d;)I

    move-result v0

    iput v0, p0, Lcom/b/a/b/e;->b:I

    .line 462
    invoke-static {p1}, Lcom/b/a/b/d;->c(Lcom/b/a/b/d;)I

    move-result v0

    iput v0, p0, Lcom/b/a/b/e;->c:I

    .line 463
    invoke-static {p1}, Lcom/b/a/b/d;->d(Lcom/b/a/b/d;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/b/e;->d:Landroid/graphics/drawable/Drawable;

    .line 464
    invoke-static {p1}, Lcom/b/a/b/d;->e(Lcom/b/a/b/d;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/b/e;->e:Landroid/graphics/drawable/Drawable;

    .line 465
    invoke-static {p1}, Lcom/b/a/b/d;->f(Lcom/b/a/b/d;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/b/e;->f:Landroid/graphics/drawable/Drawable;

    .line 466
    invoke-static {p1}, Lcom/b/a/b/d;->g(Lcom/b/a/b/d;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/b/a/b/e;->g:Z

    .line 467
    invoke-static {p1}, Lcom/b/a/b/d;->h(Lcom/b/a/b/d;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/b/a/b/e;->h:Z

    .line 468
    invoke-static {p1}, Lcom/b/a/b/d;->i(Lcom/b/a/b/d;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/b/a/b/e;->i:Z

    .line 469
    invoke-static {p1}, Lcom/b/a/b/d;->j(Lcom/b/a/b/d;)Lcom/b/a/b/a/e;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/b/e;->j:Lcom/b/a/b/a/e;

    .line 470
    invoke-static {p1}, Lcom/b/a/b/d;->k(Lcom/b/a/b/d;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/b/e;->k:Landroid/graphics/BitmapFactory$Options;

    .line 471
    invoke-static {p1}, Lcom/b/a/b/d;->l(Lcom/b/a/b/d;)I

    move-result v0

    iput v0, p0, Lcom/b/a/b/e;->l:I

    .line 472
    invoke-static {p1}, Lcom/b/a/b/d;->m(Lcom/b/a/b/d;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/b/a/b/e;->m:Z

    .line 473
    invoke-static {p1}, Lcom/b/a/b/d;->n(Lcom/b/a/b/d;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/b/e;->n:Ljava/lang/Object;

    .line 474
    invoke-static {p1}, Lcom/b/a/b/d;->o(Lcom/b/a/b/d;)Lcom/b/a/b/g/a;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/b/e;->o:Lcom/b/a/b/g/a;

    .line 475
    invoke-static {p1}, Lcom/b/a/b/d;->p(Lcom/b/a/b/d;)Lcom/b/a/b/g/a;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/b/e;->p:Lcom/b/a/b/g/a;

    .line 476
    invoke-static {p1}, Lcom/b/a/b/d;->q(Lcom/b/a/b/d;)Lcom/b/a/b/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/b/e;->q:Lcom/b/a/b/c/a;

    .line 477
    invoke-static {p1}, Lcom/b/a/b/d;->r(Lcom/b/a/b/d;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/b/e;->r:Landroid/os/Handler;

    .line 478
    invoke-static {p1}, Lcom/b/a/b/d;->s(Lcom/b/a/b/d;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/b/a/b/e;->s:Z

    .line 479
    return-object p0
.end method

.method public final a(Z)Lcom/b/a/b/e;
    .locals 0

    .prologue
    .line 336
    iput-boolean p1, p0, Lcom/b/a/b/e;->h:Z

    .line 337
    return-object p0
.end method

.method public final b()Lcom/b/a/b/e;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 330
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/b/e;->h:Z

    .line 331
    return-object p0
.end method

.method public final b(I)Lcom/b/a/b/e;
    .locals 0

    .prologue
    .line 265
    iput p1, p0, Lcom/b/a/b/e;->b:I

    .line 266
    return-object p0
.end method

.method public final b(Z)Lcom/b/a/b/e;
    .locals 0

    .prologue
    .line 362
    iput-boolean p1, p0, Lcom/b/a/b/e;->i:Z

    .line 363
    return-object p0
.end method

.method final c()Lcom/b/a/b/e;
    .locals 1

    .prologue
    .line 445
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/b/e;->s:Z

    .line 446
    return-object p0
.end method

.method public final c(I)Lcom/b/a/b/e;
    .locals 0

    .prologue
    .line 288
    iput p1, p0, Lcom/b/a/b/e;->c:I

    .line 289
    return-object p0
.end method

.method public final d()Lcom/b/a/b/d;
    .locals 2

    .prologue
    .line 484
    new-instance v0, Lcom/b/a/b/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/b/a/b/d;-><init>(Lcom/b/a/b/e;B)V

    return-object v0
.end method
