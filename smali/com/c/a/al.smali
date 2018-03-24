.class public final Lcom/c/a/al;
.super Ljava/lang/Object;
.source "Picasso.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/c/a/v;

.field private c:Ljava/util/concurrent/ExecutorService;

.field private d:Lcom/c/a/k;

.field private e:Lcom/c/a/ao;

.field private f:Lcom/c/a/ar;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/c/a/az;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/graphics/Bitmap$Config;

.field private i:Z

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 699
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 700
    if-nez p1, :cond_0

    .line 701
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 703
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/c/a/al;->a:Landroid/content/Context;

    .line 704
    return-void
.end method


# virtual methods
.method public final a()Lcom/c/a/aj;
    .locals 19

    .prologue
    .line 829
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/c/a/al;->a:Landroid/content/Context;

    .line 831
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/c/a/al;->b:Lcom/c/a/v;

    if-nez v1, :cond_0

    .line 832
    invoke-static {v2}, Lcom/c/a/bj;->a(Landroid/content/Context;)Lcom/c/a/v;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/c/a/al;->b:Lcom/c/a/v;

    .line 834
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/c/a/al;->d:Lcom/c/a/k;

    if-nez v1, :cond_1

    .line 835
    new-instance v1, Lcom/c/a/aa;

    invoke-direct {v1, v2}, Lcom/c/a/aa;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/c/a/al;->d:Lcom/c/a/k;

    .line 837
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/c/a/al;->c:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_2

    .line 838
    new-instance v1, Lcom/c/a/au;

    invoke-direct {v1}, Lcom/c/a/au;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/c/a/al;->c:Ljava/util/concurrent/ExecutorService;

    .line 840
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/c/a/al;->f:Lcom/c/a/ar;

    if-nez v1, :cond_3

    .line 841
    sget-object v1, Lcom/c/a/ar;->a:Lcom/c/a/ar;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/c/a/al;->f:Lcom/c/a/ar;

    .line 844
    :cond_3
    new-instance v7, Lcom/c/a/bc;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/c/a/al;->d:Lcom/c/a/k;

    invoke-direct {v7, v1}, Lcom/c/a/bc;-><init>(Lcom/c/a/k;)V

    .line 846
    new-instance v1, Lcom/c/a/q;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/c/a/al;->c:Ljava/util/concurrent/ExecutorService;

    sget-object v4, Lcom/c/a/aj;->a:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/c/a/al;->b:Lcom/c/a/v;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/c/a/al;->d:Lcom/c/a/k;

    invoke-direct/range {v1 .. v7}, Lcom/c/a/q;-><init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Landroid/os/Handler;Lcom/c/a/v;Lcom/c/a/k;Lcom/c/a/bc;)V

    .line 848
    new-instance v8, Lcom/c/a/aj;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/c/a/al;->d:Lcom/c/a/k;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/c/a/al;->e:Lcom/c/a/ao;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/c/a/al;->f:Lcom/c/a/ar;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/c/a/al;->g:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/c/a/al;->h:Landroid/graphics/Bitmap$Config;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/c/a/al;->i:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/c/a/al;->j:Z

    move/from16 v18, v0

    move-object v9, v2

    move-object v10, v1

    move-object v15, v7

    invoke-direct/range {v8 .. v18}, Lcom/c/a/aj;-><init>(Landroid/content/Context;Lcom/c/a/q;Lcom/c/a/k;Lcom/c/a/ao;Lcom/c/a/ar;Ljava/util/List;Lcom/c/a/bc;Landroid/graphics/Bitmap$Config;ZZ)V

    return-object v8
.end method
