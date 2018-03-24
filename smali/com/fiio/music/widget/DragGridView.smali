.class public Lcom/fiio/music/widget/DragGridView;
.super Landroid/widget/GridView;
.source "DragGridView.java"


# instance fields
.field private a:J

.field private b:Z

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Z

.field private i:Z

.field private j:I

.field private k:Landroid/view/View;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/os/Vibrator;

.field private n:Landroid/view/WindowManager;

.field private o:Landroid/view/WindowManager$LayoutParams;

.field private p:Landroid/graphics/Bitmap;

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:Landroid/os/Handler;

.field private y:Ljava/lang/Runnable;

.field private z:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/fiio/music/widget/DragGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 128
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/fiio/music/widget/DragGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 135
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/fiio/music/widget/DragGridView;->a:J

    .line 39
    iput-boolean v2, p0, Lcom/fiio/music/widget/DragGridView;->b:Z

    .line 46
    const/4 v0, 0x2

    iput v0, p0, Lcom/fiio/music/widget/DragGridView;->g:I

    .line 51
    iput-boolean v2, p0, Lcom/fiio/music/widget/DragGridView;->h:Z

    .line 53
    iput-boolean v2, p0, Lcom/fiio/music/widget/DragGridView;->i:Z

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fiio/music/widget/DragGridView;->k:Landroid/view/View;

    .line 144
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/widget/DragGridView;->x:Landroid/os/Handler;

    .line 147
    new-instance v0, Lcom/fiio/music/widget/d;

    invoke-direct {v0, p0}, Lcom/fiio/music/widget/d;-><init>(Lcom/fiio/music/widget/DragGridView;)V

    iput-object v0, p0, Lcom/fiio/music/widget/DragGridView;->y:Ljava/lang/Runnable;

    .line 336
    new-instance v0, Lcom/fiio/music/widget/e;

    invoke-direct {v0, p0}, Lcom/fiio/music/widget/e;-><init>(Lcom/fiio/music/widget/DragGridView;)V

    iput-object v0, p0, Lcom/fiio/music/widget/DragGridView;->z:Ljava/lang/Runnable;

    .line 137
    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 136
    iput-object v0, p0, Lcom/fiio/music/widget/DragGridView;->m:Landroid/os/Vibrator;

    .line 139
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 138
    iput-object v0, p0, Lcom/fiio/music/widget/DragGridView;->n:Landroid/view/WindowManager;

    .line 140
    invoke-static {p1}, Lcom/fiio/music/widget/DragGridView;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/fiio/music/widget/DragGridView;->u:I

    .line 142
    return-void
.end method

.method private static a(Landroid/content/Context;)I
    .locals 4

    .prologue
    .line 491
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    move-object v0, p0

    .line 493
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 494
    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 495
    iget v0, v1, Landroid/graphics/Rect;->top:I

    .line 496
    if-nez v0, :cond_0

    .line 499
    :try_start_0
    const-string v1, "com.android.internal.R$dimen"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 500
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .line 502
    const-string v3, "status_bar_height"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 503
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 501
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 504
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 509
    :cond_0
    :goto_0
    return v0

    .line 506
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private a(II)V
    .locals 18

    .prologue
    .line 368
    invoke-virtual/range {p0 .. p2}, Lcom/fiio/music/widget/DragGridView;->pointToPosition(II)I

    move-result v15

    .line 371
    move-object/from16 v0, p0

    iget v2, v0, Lcom/fiio/music/widget/DragGridView;->j:I

    if-eq v15, v2, :cond_1

    .line 372
    const/4 v2, -0x1

    if-eq v15, v2, :cond_1

    .line 381
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/fiio/music/widget/DragGridView;->i:Z

    if-nez v2, :cond_0

    .line 384
    invoke-virtual/range {p0 .. p0}, Lcom/fiio/music/widget/DragGridView;->getFirstVisiblePosition()I

    move-result v2

    .line 383
    sub-int v3, v15, v2

    .line 385
    move-object/from16 v0, p0

    iget v2, v0, Lcom/fiio/music/widget/DragGridView;->j:I

    invoke-virtual/range {p0 .. p0}, Lcom/fiio/music/widget/DragGridView;->getFirstVisiblePosition()I

    move-result v4

    sub-int v12, v2, v4

    .line 386
    move-object/from16 v0, p0

    iget v0, v0, Lcom/fiio/music/widget/DragGridView;->j:I

    move/from16 v16, v0

    .line 387
    const-string v2, "log"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "tempPosition==="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 389
    const-string v5, "   dropPosition==="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 390
    const-string v5, "   dragPosition==="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 388
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    sub-int v2, v3, v12

    .line 393
    if-ne v12, v3, :cond_9

    .line 394
    const/4 v2, 0x0

    move v14, v2

    .line 395
    :goto_0
    if-eqz v14, :cond_0

    .line 396
    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v17

    .line 398
    const-string v2, "log"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "itemMoveNum==="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    const/4 v2, 0x0

    move v13, v2

    :goto_1
    move/from16 v0, v17

    if-lt v13, v0, :cond_2

    .line 452
    :cond_0
    const-string v2, "log"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mDragPosition="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/fiio/music/widget/DragGridView;->j:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 453
    const-string v4, "=====tempPosition="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 452
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    move-object/from16 v0, p0

    iput v15, v0, Lcom/fiio/music/widget/DragGridView;->j:I

    .line 456
    :cond_1
    return-void

    .line 401
    :cond_2
    const-string v2, "log"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "i==="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    if-lez v14, :cond_6

    .line 403
    add-int/lit8 v3, v12, 0x1

    .line 404
    move-object/from16 v0, p0

    iget v2, v0, Lcom/fiio/music/widget/DragGridView;->g:I

    div-int v2, v12, v2

    .line 405
    move-object/from16 v0, p0

    iget v4, v0, Lcom/fiio/music/widget/DragGridView;->g:I

    div-int v4, v3, v4

    .line 404
    if-ne v2, v4, :cond_4

    .line 405
    const/4 v2, -0x1

    .line 404
    :goto_2
    int-to-float v6, v2

    .line 406
    move-object/from16 v0, p0

    iget v2, v0, Lcom/fiio/music/widget/DragGridView;->g:I

    div-int v2, v12, v2

    .line 407
    move-object/from16 v0, p0

    iget v4, v0, Lcom/fiio/music/widget/DragGridView;->g:I

    div-int v4, v3, v4

    .line 406
    if-ne v2, v4, :cond_5

    .line 407
    const/4 v2, 0x0

    .line 406
    :goto_3
    int-to-float v10, v2

    move v12, v3

    .line 415
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/fiio/music/widget/DragGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/view/ViewGroup;

    .line 416
    const-string v2, "log"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "holdPosition==="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 418
    invoke-virtual {v11, v2}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 421
    invoke-virtual/range {p0 .. p0}, Lcom/fiio/music/widget/DragGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    .line 420
    check-cast v3, Lcom/fiio/music/adapter/DragAdapter;

    .line 423
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/fiio/music/widget/DragGridView;->i:Z

    .line 425
    add-int/lit8 v4, v17, -0x1

    if-ne v13, v4, :cond_3

    .line 427
    new-instance v4, Lcom/fiio/music/widget/f;

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v4, v0, v3, v1, v15}, Lcom/fiio/music/widget/f;-><init>(Lcom/fiio/music/widget/DragGridView;Lcom/fiio/music/adapter/DragAdapter;II)V

    invoke-virtual {v2, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 399
    :cond_3
    add-int/lit8 v2, v13, 0x1

    move v13, v2

    goto/16 :goto_1

    .line 405
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/fiio/music/widget/DragGridView;->g:I

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 407
    :cond_5
    const/4 v2, -0x1

    goto :goto_3

    .line 409
    :cond_6
    add-int/lit8 v3, v12, -0x1

    .line 410
    move-object/from16 v0, p0

    iget v2, v0, Lcom/fiio/music/widget/DragGridView;->g:I

    div-int v2, v12, v2

    .line 411
    move-object/from16 v0, p0

    iget v4, v0, Lcom/fiio/music/widget/DragGridView;->g:I

    div-int v4, v3, v4

    .line 410
    if-ne v2, v4, :cond_7

    .line 411
    const/4 v2, 0x1

    .line 410
    :goto_5
    int-to-float v6, v2

    .line 412
    move-object/from16 v0, p0

    iget v2, v0, Lcom/fiio/music/widget/DragGridView;->g:I

    div-int v2, v12, v2

    .line 413
    move-object/from16 v0, p0

    iget v4, v0, Lcom/fiio/music/widget/DragGridView;->g:I

    div-int v4, v3, v4

    .line 412
    if-ne v2, v4, :cond_8

    .line 413
    const/4 v2, 0x0

    .line 412
    :goto_6
    int-to-float v10, v2

    move v12, v3

    goto :goto_4

    .line 411
    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/fiio/music/widget/DragGridView;->g:I

    add-int/lit8 v2, v2, -0x1

    neg-int v2, v2

    goto :goto_5

    .line 413
    :cond_8
    const/4 v2, 0x1

    goto :goto_6

    :cond_9
    move v14, v2

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/fiio/music/widget/DragGridView;)V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fiio/music/widget/DragGridView;->b:Z

    return-void
.end method

.method static synthetic a(Lcom/fiio/music/widget/DragGridView;II)V
    .locals 0

    .prologue
    .line 366
    invoke-direct {p0, p1, p2}, Lcom/fiio/music/widget/DragGridView;->a(II)V

    return-void
.end method

.method static synthetic a(Lcom/fiio/music/widget/DragGridView;Landroid/graphics/Bitmap;II)V
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 272
    invoke-virtual {p0}, Lcom/fiio/music/widget/DragGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/adapter/DragAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/DragAdapter;->showDropItem(Z)V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/widget/DragGridView;->o:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/fiio/music/widget/DragGridView;->o:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v0, p0, Lcom/fiio/music/widget/DragGridView;->o:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/fiio/music/widget/DragGridView;->o:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/fiio/music/widget/DragGridView;->r:I

    sub-int v1, p2, v1

    iget v2, p0, Lcom/fiio/music/widget/DragGridView;->t:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-boolean v0, p0, Lcom/fiio/music/widget/DragGridView;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/widget/DragGridView;->o:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/fiio/music/widget/DragGridView;->q:I

    sub-int v1, p3, v1

    iget v2, p0, Lcom/fiio/music/widget/DragGridView;->s:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/fiio/music/widget/DragGridView;->u:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    :goto_0
    iget-object v0, p0, Lcom/fiio/music/widget/DragGridView;->o:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x3f0ccccd    # 0.55f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iget-object v0, p0, Lcom/fiio/music/widget/DragGridView;->o:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lcom/fiio/music/widget/DragGridView;->o:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v0, p0, Lcom/fiio/music/widget/DragGridView;->o:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x18

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/fiio/music/widget/DragGridView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fiio/music/widget/DragGridView;->l:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/fiio/music/widget/DragGridView;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/fiio/music/widget/DragGridView;->n:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/fiio/music/widget/DragGridView;->l:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/fiio/music/widget/DragGridView;->o:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/fiio/music/widget/DragGridView;->o:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0xc8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0
.end method

.method static synthetic b(Lcom/fiio/music/widget/DragGridView;)V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fiio/music/widget/DragGridView;->i:Z

    return-void
.end method

.method static synthetic c(Lcom/fiio/music/widget/DragGridView;)Landroid/os/Vibrator;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/fiio/music/widget/DragGridView;->m:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic d(Lcom/fiio/music/widget/DragGridView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/fiio/music/widget/DragGridView;->k:Landroid/view/View;

    return-object v0
.end method

.method static synthetic e(Lcom/fiio/music/widget/DragGridView;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/fiio/music/widget/DragGridView;->p:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic f(Lcom/fiio/music/widget/DragGridView;)I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/fiio/music/widget/DragGridView;->c:I

    return v0
.end method

.method static synthetic g(Lcom/fiio/music/widget/DragGridView;)I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/fiio/music/widget/DragGridView;->d:I

    return v0
.end method

.method static synthetic h(Lcom/fiio/music/widget/DragGridView;)I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/fiio/music/widget/DragGridView;->f:I

    return v0
.end method

.method static synthetic i(Lcom/fiio/music/widget/DragGridView;)I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/fiio/music/widget/DragGridView;->w:I

    return v0
.end method

.method static synthetic j(Lcom/fiio/music/widget/DragGridView;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/fiio/music/widget/DragGridView;->x:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic k(Lcom/fiio/music/widget/DragGridView;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/fiio/music/widget/DragGridView;->z:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic l(Lcom/fiio/music/widget/DragGridView;)I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/fiio/music/widget/DragGridView;->v:I

    return v0
.end method

.method static synthetic m(Lcom/fiio/music/widget/DragGridView;)I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/fiio/music/widget/DragGridView;->e:I

    return v0
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 230
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 233
    const/4 v0, 0x0

    .line 235
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/GridView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 243
    iget-boolean v0, p0, Lcom/fiio/music/widget/DragGridView;->b:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fiio/music/widget/DragGridView;->l:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 244
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    move v0, v1

    .line 260
    :goto_1
    return v0

    .line 246
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/fiio/music/widget/DragGridView;->e:I

    .line 247
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/fiio/music/widget/DragGridView;->f:I

    .line 249
    iget v0, p0, Lcom/fiio/music/widget/DragGridView;->e:I

    iget v2, p0, Lcom/fiio/music/widget/DragGridView;->f:I

    iget-object v3, p0, Lcom/fiio/music/widget/DragGridView;->o:Landroid/view/WindowManager$LayoutParams;

    iget v4, p0, Lcom/fiio/music/widget/DragGridView;->r:I

    sub-int v4, v0, v4

    iget v5, p0, Lcom/fiio/music/widget/DragGridView;->t:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-boolean v3, p0, Lcom/fiio/music/widget/DragGridView;->h:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/fiio/music/widget/DragGridView;->o:Landroid/view/WindowManager$LayoutParams;

    iget v4, p0, Lcom/fiio/music/widget/DragGridView;->q:I

    sub-int v4, v2, v4

    iget v5, p0, Lcom/fiio/music/widget/DragGridView;->s:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/fiio/music/widget/DragGridView;->u:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    :goto_2
    iget-object v3, p0, Lcom/fiio/music/widget/DragGridView;->n:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/fiio/music/widget/DragGridView;->l:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/fiio/music/widget/DragGridView;->o:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v3, v4, v5}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, v0, v2}, Lcom/fiio/music/widget/DragGridView;->a(II)V

    iget-object v0, p0, Lcom/fiio/music/widget/DragGridView;->x:Landroid/os/Handler;

    iget-object v2, p0, Lcom/fiio/music/widget/DragGridView;->z:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/fiio/music/widget/DragGridView;->o:Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0xc8

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_2

    .line 252
    :pswitch_1
    invoke-virtual {p0}, Lcom/fiio/music/widget/DragGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/adapter/DragAdapter;

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/DragAdapter;->showDropItem(Z)V

    invoke-virtual {v0}, Lcom/fiio/music/adapter/DragAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/fiio/music/widget/DragGridView;->l:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fiio/music/widget/DragGridView;->n:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/fiio/music/widget/DragGridView;->l:Landroid/widget/ImageView;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fiio/music/widget/DragGridView;->l:Landroid/widget/ImageView;

    .line 253
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fiio/music/widget/DragGridView;->b:Z

    .line 254
    iget-object v0, p0, Lcom/fiio/music/widget/DragGridView;->x:Landroid/os/Handler;

    iget-object v2, p0, Lcom/fiio/music/widget/DragGridView;->y:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 255
    iget-object v0, p0, Lcom/fiio/music/widget/DragGridView;->x:Landroid/os/Handler;

    iget-object v2, p0, Lcom/fiio/music/widget/DragGridView;->z:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 260
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/GridView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1

    .line 244
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setDragResponseMS(J)V
    .locals 1

    .prologue
    .line 167
    iput-wide p1, p0, Lcom/fiio/music/widget/DragGridView;->a:J

    .line 168
    return-void
.end method
