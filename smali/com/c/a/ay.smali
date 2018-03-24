.class public final Lcom/c/a/ay;
.super Ljava/lang/Object;
.source "RequestCreator.java"


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final b:Lcom/c/a/aj;

.field private final c:Lcom/c/a/ax;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:Landroid/graphics/drawable/Drawable;

.field private l:Landroid/graphics/drawable/Drawable;

.field private m:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/c/a/ay;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/c/a/ay;->f:Z

    .line 79
    iput-object v1, p0, Lcom/c/a/ay;->b:Lcom/c/a/aj;

    .line 80
    new-instance v0, Lcom/c/a/ax;

    invoke-direct {v0, v1, v1}, Lcom/c/a/ax;-><init>(Landroid/net/Uri;Landroid/graphics/Bitmap$Config;)V

    iput-object v0, p0, Lcom/c/a/ay;->c:Lcom/c/a/ax;

    .line 81
    return-void
.end method

.method constructor <init>(Lcom/c/a/aj;Landroid/net/Uri;)V
    .locals 2

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/c/a/ay;->f:Z

    .line 70
    iget-boolean v0, p1, Lcom/c/a/aj;->m:Z

    if-eqz v0, :cond_0

    .line 71
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Picasso instance already shut down. Cannot submit new requests."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_0
    iput-object p1, p0, Lcom/c/a/ay;->b:Lcom/c/a/aj;

    .line 75
    new-instance v0, Lcom/c/a/ax;

    iget-object v1, p1, Lcom/c/a/aj;->j:Landroid/graphics/Bitmap$Config;

    invoke-direct {v0, p2, v1}, Lcom/c/a/ax;-><init>(Landroid/net/Uri;Landroid/graphics/Bitmap$Config;)V

    iput-object v0, p0, Lcom/c/a/ay;->c:Lcom/c/a/ax;

    .line 76
    return-void
.end method

.method private d()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 675
    iget v0, p0, Lcom/c/a/ay;->g:I

    if-eqz v0, :cond_0

    .line 676
    iget-object v0, p0, Lcom/c/a/ay;->b:Lcom/c/a/aj;

    iget-object v0, v0, Lcom/c/a/aj;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/c/a/ay;->g:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 678
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/c/a/ay;->k:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/c/a/ay;
    .locals 2

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/c/a/ay;->f:Z

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already explicitly declared as no placeholder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/c/a/ay;->k:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 114
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Placeholder image already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_1
    const v0, 0x7f0205df

    iput v0, p0, Lcom/c/a/ay;->g:I

    .line 117
    return-object p0
.end method

.method public final a(II)Lcom/c/a/ay;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/c/a/ay;->c:Lcom/c/a/ax;

    invoke-virtual {v0, p1, p2}, Lcom/c/a/ax;->a(II)Lcom/c/a/ax;

    .line 220
    return-object p0
.end method

.method public final a(Landroid/widget/ImageView;)V
    .locals 1

    .prologue
    .line 601
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/c/a/ay;->a(Landroid/widget/ImageView;Lcom/c/a/m;)V

    .line 602
    return-void
.end method

.method public final a(Landroid/widget/ImageView;Lcom/c/a/m;)V
    .locals 12

    .prologue
    .line 614
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 615
    invoke-static {}, Lcom/c/a/bj;->a()V

    .line 617
    if-nez p1, :cond_0

    .line 618
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Target must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 621
    :cond_0
    iget-object v2, p0, Lcom/c/a/ay;->c:Lcom/c/a/ax;

    invoke-virtual {v2}, Lcom/c/a/ax;->a()Z

    move-result v2

    if-nez v2, :cond_2

    .line 622
    iget-object v0, p0, Lcom/c/a/ay;->b:Lcom/c/a/aj;

    invoke-virtual {v0, p1}, Lcom/c/a/aj;->a(Landroid/widget/ImageView;)V

    .line 623
    iget-boolean v0, p0, Lcom/c/a/ay;->f:Z

    if-eqz v0, :cond_1

    .line 624
    invoke-direct {p0}, Lcom/c/a/ay;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/c/a/at;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 672
    :cond_1
    :goto_0
    return-void

    .line 629
    :cond_2
    iget-boolean v2, p0, Lcom/c/a/ay;->e:Z

    if-eqz v2, :cond_7

    .line 630
    iget-object v2, p0, Lcom/c/a/ay;->c:Lcom/c/a/ax;

    invoke-virtual {v2}, Lcom/c/a/ax;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 631
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fit cannot be used with resize."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 633
    :cond_3
    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    .line 634
    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    .line 635
    if-eqz v2, :cond_4

    if-nez v3, :cond_6

    .line 636
    :cond_4
    iget-boolean v0, p0, Lcom/c/a/ay;->f:Z

    if-eqz v0, :cond_5

    .line 637
    invoke-direct {p0}, Lcom/c/a/ay;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/c/a/at;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 639
    :cond_5
    iget-object v0, p0, Lcom/c/a/ay;->b:Lcom/c/a/aj;

    new-instance v1, Lcom/c/a/p;

    invoke-direct {v1, p0, p1, p2}, Lcom/c/a/p;-><init>(Lcom/c/a/ay;Landroid/widget/ImageView;Lcom/c/a/m;)V

    invoke-virtual {v0, p1, v1}, Lcom/c/a/aj;->a(Landroid/widget/ImageView;Lcom/c/a/p;)V

    goto :goto_0

    .line 642
    :cond_6
    iget-object v4, p0, Lcom/c/a/ay;->c:Lcom/c/a/ax;

    invoke-virtual {v4, v2, v3}, Lcom/c/a/ax;->a(II)Lcom/c/a/ax;

    .line 645
    :cond_7
    sget-object v2, Lcom/c/a/ay;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    iget-object v3, p0, Lcom/c/a/ay;->c:Lcom/c/a/ax;

    invoke-virtual {v3}, Lcom/c/a/ax;->c()Lcom/c/a/aw;

    move-result-object v3

    iput v2, v3, Lcom/c/a/aw;->a:I

    iput-wide v0, v3, Lcom/c/a/aw;->b:J

    iget-object v4, p0, Lcom/c/a/ay;->b:Lcom/c/a/aj;

    iget-boolean v4, v4, Lcom/c/a/aj;->l:Z

    if-eqz v4, :cond_8

    const-string v5, "Main"

    const-string v6, "created"

    invoke-virtual {v3}, Lcom/c/a/aw;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/c/a/aw;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v6, v7, v8}, Lcom/c/a/bj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    iget-object v5, p0, Lcom/c/a/ay;->b:Lcom/c/a/aj;

    invoke-virtual {v5, v3}, Lcom/c/a/aj;->a(Lcom/c/a/aw;)Lcom/c/a/aw;

    move-result-object v10

    if-eq v10, v3, :cond_9

    iput v2, v10, Lcom/c/a/aw;->a:I

    iput-wide v0, v10, Lcom/c/a/aw;->b:J

    if-eqz v4, :cond_9

    const-string v0, "Main"

    const-string v1, "changed"

    invoke-virtual {v10}, Lcom/c/a/aw;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "into "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/c/a/bj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    :cond_9
    invoke-static {v10}, Lcom/c/a/bj;->a(Lcom/c/a/aw;)Ljava/lang/String;

    move-result-object v8

    .line 648
    iget v0, p0, Lcom/c/a/ay;->i:I

    invoke-static {v0}, Lcom/c/a/ae;->a(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 649
    iget-object v0, p0, Lcom/c/a/ay;->b:Lcom/c/a/aj;

    invoke-virtual {v0, v8}, Lcom/c/a/aj;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 650
    if-eqz v2, :cond_a

    .line 651
    iget-object v0, p0, Lcom/c/a/ay;->b:Lcom/c/a/aj;

    invoke-virtual {v0, p1}, Lcom/c/a/aj;->a(Landroid/widget/ImageView;)V

    .line 652
    iget-object v0, p0, Lcom/c/a/ay;->b:Lcom/c/a/aj;

    iget-object v1, v0, Lcom/c/a/aj;->c:Landroid/content/Context;

    sget-object v3, Lcom/c/a/ap;->a:Lcom/c/a/ap;

    iget-boolean v4, p0, Lcom/c/a/ay;->d:Z

    iget-object v0, p0, Lcom/c/a/ay;->b:Lcom/c/a/aj;

    iget-boolean v5, v0, Lcom/c/a/aj;->k:Z

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/c/a/at;->a(Landroid/widget/ImageView;Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/c/a/ap;ZZ)V

    .line 653
    iget-object v0, p0, Lcom/c/a/ay;->b:Lcom/c/a/aj;

    iget-boolean v0, v0, Lcom/c/a/aj;->l:Z

    if-eqz v0, :cond_1

    .line 654
    const-string v0, "Main"

    const-string v1, "completed"

    invoke-virtual {v10}, Lcom/c/a/aw;->b()Ljava/lang/String;

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

    goto/16 :goto_0

    .line 663
    :cond_a
    iget-boolean v0, p0, Lcom/c/a/ay;->f:Z

    if-eqz v0, :cond_b

    .line 664
    invoke-direct {p0}, Lcom/c/a/ay;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/c/a/at;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 667
    :cond_b
    new-instance v0, Lcom/c/a/z;

    iget-object v1, p0, Lcom/c/a/ay;->b:Lcom/c/a/aj;

    iget v4, p0, Lcom/c/a/ay;->i:I

    iget v5, p0, Lcom/c/a/ay;->j:I

    iget v6, p0, Lcom/c/a/ay;->h:I

    iget-object v7, p0, Lcom/c/a/ay;->l:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Lcom/c/a/ay;->m:Ljava/lang/Object;

    iget-boolean v11, p0, Lcom/c/a/ay;->d:Z

    move-object v2, p1

    move-object v3, v10

    move-object v10, p2

    invoke-direct/range {v0 .. v11}, Lcom/c/a/z;-><init>(Lcom/c/a/aj;Landroid/widget/ImageView;Lcom/c/a/aw;IIILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;Lcom/c/a/m;Z)V

    .line 671
    iget-object v1, p0, Lcom/c/a/ay;->b:Lcom/c/a/aj;

    invoke-virtual {v1, v0}, Lcom/c/a/aj;->a(Lcom/c/a/a;)V

    goto/16 :goto_0
.end method

.method public final b()Lcom/c/a/ay;
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/c/a/ay;->l:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 145
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Error image already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_0
    const v0, 0x7f0205e0

    iput v0, p0, Lcom/c/a/ay;->h:I

    .line 148
    return-object p0
.end method

.method final c()Lcom/c/a/ay;
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/c/a/ay;->e:Z

    .line 206
    return-object p0
.end method
