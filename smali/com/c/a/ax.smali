.class public final Lcom/c/a/ax;
.super Ljava/lang/Object;
.source "Request.java"


# instance fields
.field private a:Landroid/net/Uri;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:F

.field private j:F

.field private k:F

.field private l:Z

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/c/a/bg;",
            ">;"
        }
    .end annotation
.end field

.field private n:Landroid/graphics/Bitmap$Config;

.field private o:Lcom/c/a/aq;


# direct methods
.method constructor <init>(Landroid/net/Uri;Landroid/graphics/Bitmap$Config;)V
    .locals 1

    .prologue
    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    iput-object p1, p0, Lcom/c/a/ax;->a:Landroid/net/Uri;

    .line 220
    const/4 v0, 0x0

    iput v0, p0, Lcom/c/a/ax;->b:I

    .line 221
    iput-object p2, p0, Lcom/c/a/ax;->n:Landroid/graphics/Bitmap$Config;

    .line 222
    return-void
.end method


# virtual methods
.method public final a(II)Lcom/c/a/ax;
    .locals 2

    .prologue
    .line 298
    if-gez p1, :cond_0

    .line 299
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Width must be positive number or 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 301
    :cond_0
    if-gez p2, :cond_1

    .line 302
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Height must be positive number or 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :cond_1
    if-nez p2, :cond_2

    if-nez p1, :cond_2

    .line 305
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "At least one dimension has to be positive number."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 307
    :cond_2
    iput p1, p0, Lcom/c/a/ax;->d:I

    .line 308
    iput p2, p0, Lcom/c/a/ax;->e:I

    .line 309
    return-object p0
.end method

.method final a()Z
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/c/a/ax;->a:Landroid/net/Uri;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/c/a/ax;->b:I

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final b()Z
    .locals 1

    .prologue
    .line 249
    iget v0, p0, Lcom/c/a/ax;->d:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/c/a/ax;->e:I

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Lcom/c/a/aw;
    .locals 18

    .prologue
    .line 454
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/c/a/ax;->g:Z

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/c/a/ax;->f:Z

    if-eqz v1, :cond_0

    .line 455
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Center crop and center inside can not be used together."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 457
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/c/a/ax;->f:Z

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/c/a/ax;->d:I

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/c/a/ax;->e:I

    if-nez v1, :cond_1

    .line 458
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Center crop requires calling resize with positive width and height."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 461
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/c/a/ax;->g:Z

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/c/a/ax;->d:I

    if-nez v1, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/c/a/ax;->e:I

    if-nez v1, :cond_2

    .line 462
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Center inside requires calling resize with positive width and height."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 465
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/c/a/ax;->o:Lcom/c/a/aq;

    if-nez v1, :cond_3

    .line 466
    sget-object v1, Lcom/c/a/aq;->b:Lcom/c/a/aq;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/c/a/ax;->o:Lcom/c/a/aq;

    .line 468
    :cond_3
    new-instance v1, Lcom/c/a/aw;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/c/a/ax;->a:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/c/a/ax;->b:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/c/a/ax;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/c/a/ax;->m:Ljava/util/List;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/c/a/ax;->d:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/c/a/ax;->e:I

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/c/a/ax;->f:Z

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/c/a/ax;->g:Z

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/c/a/ax;->h:Z

    move-object/from16 v0, p0

    iget v11, v0, Lcom/c/a/ax;->i:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/c/a/ax;->j:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/c/a/ax;->k:F

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/c/a/ax;->l:Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/c/a/ax;->n:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/c/a/ax;->o:Lcom/c/a/aq;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-direct/range {v1 .. v17}, Lcom/c/a/aw;-><init>(Landroid/net/Uri;ILjava/lang/String;Ljava/util/List;IIZZZFFFZLandroid/graphics/Bitmap$Config;Lcom/c/a/aq;B)V

    return-object v1
.end method
