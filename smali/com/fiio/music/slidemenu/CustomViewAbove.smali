.class public Lcom/fiio/music/slidemenu/CustomViewAbove;
.super Landroid/view/ViewGroup;
.source "CustomViewAbove.java"


# static fields
.field private static final e:Landroid/view/animation/Interpolator;


# instance fields
.field private A:F

.field protected a:I

.field protected b:Landroid/view/VelocityTracker;

.field protected c:I

.field protected d:I

.field private f:Landroid/view/View;

.field private g:I

.field private h:Landroid/widget/Scroller;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:I

.field private n:F

.field private o:F

.field private p:F

.field private q:I

.field private r:I

.field private s:Lcom/fiio/music/slidemenu/CustomViewBehind;

.field private t:Z

.field private u:Lcom/fiio/music/slidemenu/c;

.field private v:Lcom/fiio/music/slidemenu/c;

.field private w:Lcom/fiio/music/slidemenu/i;

.field private x:Lcom/fiio/music/slidemenu/k;

.field private y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/fiio/music/slidemenu/a;

    invoke-direct {v0}, Lcom/fiio/music/slidemenu/a;-><init>()V

    sput-object v0, Lcom/fiio/music/slidemenu/CustomViewAbove;->e:Landroid/view/animation/Interpolator;

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/fiio/music/slidemenu/CustomViewAbove;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 154
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 157
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    const/4 v0, -0x1

    iput v0, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->a:I

    .line 91
    iput-boolean v2, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->t:Z

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->y:Ljava/util/List;

    .line 566
    iput v1, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->d:I

    .line 612
    iput-boolean v1, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->z:Z

    .line 840
    const/4 v0, 0x0

    iput v0, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->A:F

    .line 158
    invoke-virtual {p0, v1}, Lcom/fiio/music/slidemenu/CustomViewAbove;->setWillNotDraw(Z)V

    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Lcom/fiio/music/slidemenu/CustomViewAbove;->setDescendantFocusability(I)V

    invoke-virtual {p0, v2}, Lcom/fiio/music/slidemenu/CustomViewAbove;->setFocusable(Z)V

    invoke-virtual {p0}, Lcom/fiio/music/slidemenu/CustomViewAbove;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/widget/Scroller;

    sget-object v2, Lcom/fiio/music/slidemenu/CustomViewAbove;->e:Landroid/view/animation/Interpolator;

    invoke-direct {v1, v0, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->h:Landroid/widget/Scroller;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v2

    iput v2, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->m:I

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->q:I

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->c:I

    new-instance v1, Lcom/fiio/music/slidemenu/b;

    invoke-direct {v1, p0}, Lcom/fiio/music/slidemenu/b;-><init>(Lcom/fiio/music/slidemenu/CustomViewAbove;)V

    iget-object v2, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->v:Lcom/fiio/music/slidemenu/c;

    iput-object v1, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->v:Lcom/fiio/music/slidemenu/c;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41c80000    # 25.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->r:I

    .line 159
    return-void
.end method

.method private a(I)I
    .locals 2

    .prologue
    .line 308
    packed-switch p1, :pswitch_data_0

    .line 315
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 311
    :pswitch_0
    iget-object v0, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->s:Lcom/fiio/music/slidemenu/CustomViewBehind;

    iget-object v1, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->f:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lcom/fiio/music/slidemenu/CustomViewBehind;->a(Landroid/view/View;I)I

    move-result v0

    goto :goto_0

    .line 313
    :pswitch_1
    iget-object v0, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_0

    .line 308
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Landroid/view/MotionEvent;I)I
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 606
    invoke-static {p1, p2}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 607
    if-ne v0, v1, :cond_0

    .line 608
    iput v1, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->a:I

    .line 609
    :cond_0
    return v0
.end method

.method static synthetic a(Lcom/fiio/music/slidemenu/CustomViewAbove;)Lcom/fiio/music/slidemenu/CustomViewBehind;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->s:Lcom/fiio/music/slidemenu/CustomViewBehind;

    return-object v0
.end method

.method private a(IZI)V
    .locals 12

    .prologue
    const/16 v6, 0x258

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 221
    if-nez p2, :cond_1

    iget v0, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->g:I

    if-ne v0, p1, :cond_1

    .line 222
    invoke-direct {p0, v1}, Lcom/fiio/music/slidemenu/CustomViewAbove;->setScrollingCacheEnabled(Z)V

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->s:Lcom/fiio/music/slidemenu/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/fiio/music/slidemenu/CustomViewBehind;->a(I)I

    move-result v2

    .line 228
    iget v0, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->g:I

    if-eq v0, v2, :cond_4

    move v0, v5

    .line 229
    :goto_1
    iput v2, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->g:I

    .line 230
    iget v3, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->g:I

    invoke-direct {p0, v3}, Lcom/fiio/music/slidemenu/CustomViewAbove;->a(I)I

    move-result v3

    .line 231
    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->u:Lcom/fiio/music/slidemenu/c;

    if-eqz v4, :cond_2

    .line 232
    iget-object v4, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->u:Lcom/fiio/music/slidemenu/c;

    invoke-interface {v4, v2}, Lcom/fiio/music/slidemenu/c;->a(I)V

    .line 234
    :cond_2
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->v:Lcom/fiio/music/slidemenu/c;

    if-eqz v0, :cond_3

    .line 235
    iget-object v0, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->v:Lcom/fiio/music/slidemenu/c;

    invoke-interface {v0, v2}, Lcom/fiio/music/slidemenu/c;->a(I)V

    .line 237
    :cond_3
    invoke-virtual {p0}, Lcom/fiio/music/slidemenu/CustomViewAbove;->getChildCount()I

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0, v1}, Lcom/fiio/music/slidemenu/CustomViewAbove;->setScrollingCacheEnabled(Z)V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 228
    goto :goto_1

    .line 237
    :cond_5
    invoke-virtual {p0}, Lcom/fiio/music/slidemenu/CustomViewAbove;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/fiio/music/slidemenu/CustomViewAbove;->getScrollY()I

    move-result v2

    sub-int/2addr v3, v1

    rsub-int/lit8 v4, v2, 0x0

    if-nez v3, :cond_7

    if-nez v4, :cond_7

    invoke-direct {p0}, Lcom/fiio/music/slidemenu/CustomViewAbove;->c()V

    invoke-direct {p0}, Lcom/fiio/music/slidemenu/CustomViewAbove;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->x:Lcom/fiio/music/slidemenu/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->x:Lcom/fiio/music/slidemenu/k;

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->w:Lcom/fiio/music/slidemenu/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->w:Lcom/fiio/music/slidemenu/i;

    goto :goto_0

    :cond_7
    invoke-direct {p0, v5}, Lcom/fiio/music/slidemenu/CustomViewAbove;->setScrollingCacheEnabled(Z)V

    iput-boolean v5, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->j:Z

    invoke-virtual {p0}, Lcom/fiio/music/slidemenu/CustomViewAbove;->getBehindWidth()I

    move-result v0

    div-int/lit8 v5, v0, 0x2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v8

    int-to-float v0, v0

    div-float v0, v7, v0

    invoke-static {v8, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    int-to-float v7, v5

    int-to-float v5, v5

    const/high16 v8, 0x3f000000    # 0.5f

    sub-float/2addr v0, v8

    float-to-double v8, v0

    const-wide v10, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v8, v10

    double-to-float v0, v8

    invoke-static {v0}, Landroid/util/FloatMath;->sin(F)F

    move-result v0

    mul-float/2addr v0, v5

    add-float/2addr v0, v7

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-lez v5, :cond_8

    const/high16 v7, 0x447a0000    # 1000.0f

    int-to-float v5, v5

    div-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    mul-float/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    :goto_2
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget-object v0, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->h:Landroid/widget/Scroller;

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Lcom/fiio/music/slidemenu/CustomViewAbove;->invalidate()V

    goto/16 :goto_0

    :cond_8
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move v0, v6

    goto :goto_2
.end method

.method private a()Z
    .locals 2

    .prologue
    .line 331
    iget v0, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->g:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->g:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 577
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->A:F

    add-float/2addr v0, v3

    float-to-int v0, v0

    .line 578
    invoke-direct {p0}, Lcom/fiio/music/slidemenu/CustomViewAbove;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 579
    iget-object v1, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->s:Lcom/fiio/music/slidemenu/CustomViewBehind;

    iget-object v2, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->f:Landroid/view/View;

    iget v3, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->g:I

    int-to-float v0, v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/fiio/music/slidemenu/CustomViewBehind;->a(Landroid/view/View;IF)Z

    move-result v0

    .line 590
    :goto_0
    return v0

    .line 581
    :cond_0
    iget v3, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->d:I

    packed-switch v3, :pswitch_data_0

    move v0, v1

    .line 590
    goto :goto_0

    .line 583
    :pswitch_0
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget-object v0, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v0, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_0

    :pswitch_1
    move v0, v1

    .line 585
    goto :goto_0

    .line 587
    :pswitch_2
    iget-object v1, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->s:Lcom/fiio/music/slidemenu/CustomViewBehind;

    iget-object v2, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->f:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Lcom/fiio/music/slidemenu/CustomViewBehind;->b(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0

    .line 581
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private b()V
    .locals 1

    .prologue
    .line 513
    invoke-virtual {p0}, Lcom/fiio/music/slidemenu/CustomViewAbove;->getWidth()I

    .line 514
    iget-object v0, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->u:Lcom/fiio/music/slidemenu/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->u:Lcom/fiio/music/slidemenu/c;

    :cond_0
    iget-object v0, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->v:Lcom/fiio/music/slidemenu/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->v:Lcom/fiio/music/slidemenu/c;

    .line 519
    :cond_1
    return-void
.end method

.method private b(Landroid/view/MotionEvent;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 783
    iget v0, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->a:I

    .line 784
    invoke-direct {p0, p1, v0}, Lcom/fiio/music/slidemenu/CustomViewAbove;->a(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 785
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 802
    :cond_0
    :goto_0
    return-void

    .line 787
    :cond_1
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v2

    .line 788
    iget v0, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->o:F

    sub-float v3, v2, v0

    .line 789
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 790
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v1

    .line 791
    iget v0, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->p:F

    sub-float v0, v1, v0

    .line 792
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 793
    invoke-direct {p0}, Lcom/fiio/music/slidemenu/CustomViewAbove;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->m:I

    div-int/lit8 v0, v0, 0x2

    :goto_1
    int-to-float v0, v0

    cmpl-float v0, v4, v0

    if-lez v0, :cond_4

    cmpl-float v0, v4, v5

    if-lez v0, :cond_4

    invoke-direct {p0}, Lcom/fiio/music/slidemenu/CustomViewAbove;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->s:Lcom/fiio/music/slidemenu/CustomViewBehind;

    invoke-virtual {v0, v3}, Lcom/fiio/music/slidemenu/CustomViewBehind;->b(F)Z

    move-result v0

    :goto_2
    if-eqz v0, :cond_4

    .line 794
    iput-boolean v6, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->k:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->z:Z

    .line 795
    iput v2, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->o:F

    .line 796
    iput v1, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->p:F

    .line 797
    invoke-direct {p0, v6}, Lcom/fiio/music/slidemenu/CustomViewAbove;->setScrollingCacheEnabled(Z)V

    goto :goto_0

    .line 793
    :cond_2
    iget v0, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->m:I

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->s:Lcom/fiio/music/slidemenu/CustomViewBehind;

    invoke-virtual {v0, v3}, Lcom/fiio/music/slidemenu/CustomViewBehind;->a(F)Z

    move-result v0

    goto :goto_2

    .line 799
    :cond_4
    iget v0, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->m:I

    int-to-float v0, v0

    cmpl-float v0, v4, v0

    if-lez v0, :cond_0

    .line 800
    iput-boolean v6, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->l:Z

    goto :goto_0
.end method

.method private b(I)Z
    .locals 6

    .prologue
    const/16 v5, 0x42

    const/16 v4, 0x11

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 964
    invoke-virtual {p0}, Lcom/fiio/music/slidemenu/CustomViewAbove;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 965
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 969
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    invoke-virtual {v3, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    .line 971
    if-eqz v3, :cond_5

    if-eq v3, v0, :cond_5

    .line 972
    if-ne p1, v4, :cond_3

    .line 973
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    move-result v1

    :goto_0
    move v2, v1

    .line 990
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    .line 991
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fiio/music/slidemenu/CustomViewAbove;->playSoundEffect(I)V

    .line 993
    :cond_2
    return v2

    .line 974
    :cond_3
    if-ne p1, v5, :cond_1

    .line 977
    if-eqz v0, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    if-le v4, v0, :cond_9

    .line 978
    :cond_4
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    move-result v1

    goto :goto_0

    .line 983
    :cond_5
    if-eq p1, v4, :cond_6

    if-ne p1, v1, :cond_8

    .line 985
    :cond_6
    iget v0, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->g:I

    if-lez v0, :cond_7

    iget v0, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->g:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0, v2, v2}, Lcom/fiio/music/slidemenu/CustomViewAbove;->a(IZI)V

    move v0, v1

    :goto_2
    move v2, v0

    .line 986
    goto :goto_1

    :cond_7
    move v0, v2

    .line 985
    goto :goto_2

    .line 986
    :cond_8
    if-eq p1, v5, :cond_9

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 988
    :cond_9
    iget v0, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->g:I

    if-gtz v0, :cond_a

    iget v0, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->g:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0, v2, v2}, Lcom/fiio/music/slidemenu/CustomViewAbove;->a(IZI)V

    goto :goto_0

    :cond_a
    move v1, v2

    goto :goto_0
.end method

.method private c()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 543
    iget-boolean v0, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->j:Z

    .line 544
    if-eqz v0, :cond_2

    .line 546
    invoke-direct {p0, v4}, Lcom/fiio/music/slidemenu/CustomViewAbove;->setScrollingCacheEnabled(Z)V

    .line 547
    iget-object v0, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->h:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 548
    invoke-virtual {p0}, Lcom/fiio/music/slidemenu/CustomViewAbove;->getScrollX()I

    move-result v0

    .line 549
    invoke-virtual {p0}, Lcom/fiio/music/slidemenu/CustomViewAbove;->getScrollY()I

    move-result v1

    .line 550
    iget-object v2, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->h:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 551
    iget-object v3, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->h:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 552
    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    .line 553
    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/fiio/music/slidemenu/CustomViewAbove;->scrollTo(II)V

    .line 555
    :cond_1
    invoke-direct {p0}, Lcom/fiio/music/slidemenu/CustomViewAbove;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 556
    iget-object v0, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->x:Lcom/fiio/music/slidemenu/k;

    if-eqz v0, :cond_2

    .line 557
    iget-object v0, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->x:Lcom/fiio/music/slidemenu/k;

    .line 563
    :cond_2
    :goto_0
    iput-boolean v4, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->j:Z

    .line 564
    return-void

    .line 559
    :cond_3
    iget-object v0, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->w:Lcom/fiio/music/slidemenu/i;

    if-eqz v0, :cond_2

    .line 560
    iget-object v0, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->w:Lcom/fiio/music/slidemenu/i;

    goto :goto_0
.end method

.method private c(Landroid/view/MotionEvent;)V
    .locals 3

    .prologue
    .line 844
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 845
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 846
    iget v2, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->a:I

    if-ne v1, v2, :cond_0

    .line 849
    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 850
    :goto_0
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v1

    iput v1, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->o:F

    .line 851
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->a:I

    .line 852
    iget-object v0, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->b:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 853
    iget-object v0, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->b:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 856
    :cond_0
    return-void

    .line 849
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 864
    iput-boolean v0, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->z:Z

    .line 865
    iput-boolean v0, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->k:Z

    .line 866
    iput-boolean v0, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->l:Z

    .line 867
    const/4 v0, -0x1

    iput v0, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->a:I

    .line 869
    iget-object v0, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->b:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 870
    iget-object v0, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->b:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 871
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->b:Landroid/view/VelocityTracker;

    .line 873
    :cond_0
    return-void
.end method

.method private getLeftBound()I
    .locals 2

    .prologue
    .line 319
    iget-object v0, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->s:Lcom/fiio/music/slidemenu/CustomViewBehind;

    iget-object v1, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/fiio/music/slidemenu/CustomViewBehind;->a(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method private getRightBound()I
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->s:Lcom/fiio/music/slidemenu/CustomViewBehind;

    iget-object v1, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/fiio/music/slidemenu/CustomViewBehind;->b(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1

    .prologue
    .line 876
    iget-boolean v0, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->i:Z

    if-eq v0, p1, :cond_0

    .line 877
    iput-boolean p1, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->i:Z

    .line 888
    :cond_0
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 4

    .prologue
    .line 490
    iget-object v0, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->h:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 491
    iget-object v0, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->h:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 492
    invoke-virtual {p0}, Lcom/fiio/music/slidemenu/CustomViewAbove;->getScrollX()I

    move-result v0

    .line 493
    invoke-virtual {p0}, Lcom/fiio/music/slidemenu/CustomViewAbove;->getScrollY()I

    move-result v1

    .line 494
    iget-object v2, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->h:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 495
    iget-object v3, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->h:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 497
    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    .line 498
    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/fiio/music/slidemenu/CustomViewAbove;->scrollTo(II)V

    .line 499
    invoke-direct {p0}, Lcom/fiio/music/slidemenu/CustomViewAbove;->b()V

    .line 503
    :cond_1
    invoke-virtual {p0}, Lcom/fiio/music/slidemenu/CustomViewAbove;->invalidate()V

    .line 510
    :goto_0
    return-void

    .line 509
    :cond_2
    invoke-direct {p0}, Lcom/fiio/music/slidemenu/CustomViewAbove;->c()V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    .line 832
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 834
    iget-object v0, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->s:Lcom/fiio/music/slidemenu/CustomViewBehind;

    iget-object v1, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->f:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lcom/fiio/music/slidemenu/CustomViewBehind;->a(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 835
    iget-object v0, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->s:Lcom/fiio/music/slidemenu/CustomViewBehind;

    iget-object v1, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->f:Landroid/view/View;

    invoke-virtual {p0}, Lcom/fiio/music/slidemenu/CustomViewAbove;->getPercentOpen()F

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/fiio/music/slidemenu/CustomViewBehind;->a(Landroid/view/View;Landroid/graphics/Canvas;F)V

    .line 836
    iget-object v0, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->s:Lcom/fiio/music/slidemenu/CustomViewBehind;

    iget-object v1, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->f:Landroid/view/View;

    invoke-virtual {p0}, Lcom/fiio/music/slidemenu/CustomViewAbove;->getPercentOpen()F

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/fiio/music/slidemenu/CustomViewBehind;->b(Landroid/view/View;Landroid/graphics/Canvas;F)V

    .line 837
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 926
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    move v2, v0

    :goto_0
    if-nez v2, :cond_2

    :goto_1
    return v0

    :sswitch_0
    const/16 v2, 0x11

    invoke-direct {p0, v2}, Lcom/fiio/music/slidemenu/CustomViewAbove;->b(I)Z

    move-result v2

    goto :goto_0

    :sswitch_1
    const/16 v2, 0x42

    invoke-direct {p0, v2}, Lcom/fiio/music/slidemenu/CustomViewAbove;->b(I)Z

    move-result v2

    goto :goto_0

    :sswitch_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_0

    invoke-static {p1}, Landroid/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/fiio/music/slidemenu/CustomViewAbove;->b(I)Z

    move-result v2

    goto :goto_0

    :cond_1
    invoke-static {p1, v1}, Landroid/support/v4/view/KeyEventCompat;->hasModifiers(Landroid/view/KeyEvent;I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lcom/fiio/music/slidemenu/CustomViewAbove;->b(I)Z

    move-result v2

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3d -> :sswitch_2
    .end sparse-switch
.end method

.method public getBehindWidth()I
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->s:Lcom/fiio/music/slidemenu/CustomViewBehind;

    if-nez v0, :cond_0

    .line 345
    const/4 v0, 0x0

    .line 347
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->s:Lcom/fiio/music/slidemenu/CustomViewBehind;

    invoke-virtual {v0}, Lcom/fiio/music/slidemenu/CustomViewBehind;->getBehindWidth()I

    move-result v0

    goto :goto_0
.end method

.method public getContent()Landroid/view/View;
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->f:Landroid/view/View;

    return-object v0
.end method

.method public getContentLeft()I
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->f:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getCurrentItem()I
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->g:I

    return v0
.end method

.method protected getPercentOpen()F
    .locals 2

    .prologue
    .line 827
    iget v0, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->A:F

    iget-object v1, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->f:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p0}, Lcom/fiio/music/slidemenu/CustomViewAbove;->getBehindWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getTouchMode()I
    .locals 1

    .prologue
    .line 573
    iget v0, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->d:I

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 617
    iget-boolean v2, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->t:Z

    if-nez v2, :cond_1

    .line 664
    :cond_0
    :goto_0
    return v0

    .line 620
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 626
    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    if-eq v2, v1, :cond_2

    .line 627
    if-eqz v2, :cond_3

    iget-boolean v3, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->l:Z

    if-eqz v3, :cond_3

    .line 628
    :cond_2
    invoke-direct {p0}, Lcom/fiio/music/slidemenu/CustomViewAbove;->d()V

    goto :goto_0

    .line 632
    :cond_3
    sparse-switch v2, :sswitch_data_0

    .line 658
    :cond_4
    :goto_1
    iget-boolean v2, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->k:Z

    if-nez v2, :cond_6

    .line 659
    iget-object v2, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->b:Landroid/view/VelocityTracker;

    if-nez v2, :cond_5

    .line 660
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->b:Landroid/view/VelocityTracker;

    .line 662
    :cond_5
    iget-object v2, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->b:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 664
    :cond_6
    iget-boolean v2, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->k:Z

    if-nez v2, :cond_7

    iget-boolean v2, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->z:Z

    if-eqz v2, :cond_0

    :cond_7
    move v0, v1

    goto :goto_0

    .line 634
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/fiio/music/slidemenu/CustomViewAbove;->b(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 637
    :sswitch_1
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v2

    .line 638
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v3

    iput v3, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->a:I

    .line 639
    iget v3, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->a:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    .line 640
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v3

    iput v3, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->n:F

    iput v3, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->o:F

    .line 642
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v2

    iput v2, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->p:F

    .line 643
    invoke-direct {p0, p1}, Lcom/fiio/music/slidemenu/CustomViewAbove;->a(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 644
    iput-boolean v0, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->k:Z

    .line 645
    iput-boolean v0, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->l:Z

    .line 646
    invoke-direct {p0}, Lcom/fiio/music/slidemenu/CustomViewAbove;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->s:Lcom/fiio/music/slidemenu/CustomViewBehind;

    iget-object v3, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->f:Landroid/view/View;

    iget v4, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->g:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget v6, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->A:F

    add-float/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/fiio/music/slidemenu/CustomViewBehind;->b(Landroid/view/View;IF)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 647
    iput-boolean v1, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->z:Z

    goto :goto_1

    .line 650
    :cond_8
    iput-boolean v1, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->l:Z

    goto :goto_1

    .line 654
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/fiio/music/slidemenu/CustomViewAbove;->c(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 632
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_0
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 475
    sub-int v0, p4, p2

    .line 476
    sub-int v1, p5, p3

    .line 477
    iget-object v2, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->f:Landroid/view/View;

    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 478
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 451
    invoke-static {v2, p1}, Lcom/fiio/music/slidemenu/CustomViewAbove;->getDefaultSize(II)I

    move-result v0

    .line 452
    invoke-static {v2, p2}, Lcom/fiio/music/slidemenu/CustomViewAbove;->getDefaultSize(II)I

    move-result v1

    .line 453
    invoke-virtual {p0, v0, v1}, Lcom/fiio/music/slidemenu/CustomViewAbove;->setMeasuredDimension(II)V

    .line 455
    invoke-static {p1, v2, v0}, Lcom/fiio/music/slidemenu/CustomViewAbove;->getChildMeasureSpec(III)I

    move-result v0

    .line 456
    invoke-static {p2, v2, v1}, Lcom/fiio/music/slidemenu/CustomViewAbove;->getChildMeasureSpec(III)I

    move-result v1

    .line 457
    iget-object v2, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->f:Landroid/view/View;

    invoke-virtual {v2, v0, v1}, Landroid/view/View;->measure(II)V

    .line 458
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .prologue
    .line 462
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 464
    if-eq p1, p3, :cond_0

    .line 468
    invoke-direct {p0}, Lcom/fiio/music/slidemenu/CustomViewAbove;->c()V

    .line 469
    iget v0, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->g:I

    invoke-direct {p0, v0}, Lcom/fiio/music/slidemenu/CustomViewAbove;->a(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/fiio/music/slidemenu/CustomViewAbove;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/fiio/music/slidemenu/CustomViewAbove;->scrollTo(II)V

    .line 471
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v7, -0x1

    .line 671
    iget-boolean v1, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->t:Z

    if-nez v1, :cond_1

    .line 779
    :cond_0
    :goto_0
    return v0

    .line 674
    :cond_1
    iget-boolean v1, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->k:Z

    if-nez v1, :cond_2

    invoke-direct {p0, p1}, Lcom/fiio/music/slidemenu/CustomViewAbove;->a(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 680
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 682
    iget-object v2, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->b:Landroid/view/VelocityTracker;

    if-nez v2, :cond_3

    .line 683
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->b:Landroid/view/VelocityTracker;

    .line 685
    :cond_3
    iget-object v2, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->b:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 687
    and-int/lit16 v1, v1, 0xff

    packed-switch v1, :pswitch_data_0

    :cond_4
    :goto_1
    :pswitch_0
    move v0, v3

    .line 779
    goto :goto_0

    .line 693
    :pswitch_1
    invoke-direct {p0}, Lcom/fiio/music/slidemenu/CustomViewAbove;->c()V

    .line 696
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 697
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->a:I

    .line 698
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->n:F

    iput v0, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->o:F

    goto :goto_1

    .line 701
    :pswitch_2
    iget-boolean v1, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->k:Z

    if-nez v1, :cond_5

    .line 702
    invoke-direct {p0, p1}, Lcom/fiio/music/slidemenu/CustomViewAbove;->b(Landroid/view/MotionEvent;)V

    .line 703
    iget-boolean v1, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->l:Z

    if-nez v1, :cond_0

    .line 706
    :cond_5
    iget-boolean v0, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->k:Z

    if-eqz v0, :cond_4

    .line 708
    iget v0, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->a:I

    invoke-direct {p0, p1, v0}, Lcom/fiio/music/slidemenu/CustomViewAbove;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 709
    iget v1, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->a:I

    if-eq v1, v7, :cond_4

    .line 710
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 712
    iget v1, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->o:F

    sub-float/2addr v1, v0

    .line 713
    iput v0, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->o:F

    .line 714
    invoke-virtual {p0}, Lcom/fiio/music/slidemenu/CustomViewAbove;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    .line 715
    add-float v2, v0, v1

    .line 716
    invoke-direct {p0}, Lcom/fiio/music/slidemenu/CustomViewAbove;->getLeftBound()I

    move-result v0

    int-to-float v0, v0

    .line 717
    invoke-direct {p0}, Lcom/fiio/music/slidemenu/CustomViewAbove;->getRightBound()I

    move-result v1

    int-to-float v1, v1

    .line 718
    cmpg-float v4, v2, v0

    if-gez v4, :cond_6

    .line 724
    :goto_2
    iget v1, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->o:F

    float-to-int v2, v0

    int-to-float v2, v2

    sub-float v2, v0, v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->o:F

    .line 725
    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/fiio/music/slidemenu/CustomViewAbove;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/fiio/music/slidemenu/CustomViewAbove;->scrollTo(II)V

    .line 726
    invoke-direct {p0}, Lcom/fiio/music/slidemenu/CustomViewAbove;->b()V

    goto :goto_1

    .line 720
    :cond_6
    cmpl-float v0, v2, v1

    if-lez v0, :cond_c

    move v0, v1

    .line 721
    goto :goto_2

    .line 730
    :pswitch_3
    iget-boolean v0, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->k:Z

    if-eqz v0, :cond_b

    .line 731
    iget-object v0, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->b:Landroid/view/VelocityTracker;

    .line 732
    const/16 v1, 0x3e8

    iget v2, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->c:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 734
    iget v1, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->a:I

    .line 733
    invoke-static {v0, v1}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v0

    float-to-int v1, v0

    .line 735
    invoke-virtual {p0}, Lcom/fiio/music/slidemenu/CustomViewAbove;->getScrollX()I

    move-result v0

    .line 739
    iget v2, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->g:I

    invoke-direct {p0, v2}, Lcom/fiio/music/slidemenu/CustomViewAbove;->a(I)I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/fiio/music/slidemenu/CustomViewAbove;->getBehindWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v0, v2

    .line 740
    iget v0, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->a:I

    invoke-direct {p0, p1, v0}, Lcom/fiio/music/slidemenu/CustomViewAbove;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 741
    iget v4, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->a:I

    if-eq v4, v7, :cond_a

    .line 742
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 743
    iget v4, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->n:F

    sub-float/2addr v0, v4

    float-to-int v4, v0

    .line 744
    iget v0, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->g:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->r:I

    if-le v5, v6, :cond_9

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->q:I

    if-le v5, v6, :cond_9

    if-lez v1, :cond_8

    if-lez v4, :cond_8

    add-int/lit8 v0, v0, -0x1

    .line 746
    :cond_7
    :goto_3
    invoke-direct {p0, v0, v3, v1}, Lcom/fiio/music/slidemenu/CustomViewAbove;->a(IZI)V

    .line 750
    :goto_4
    iput v7, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->a:I

    .line 751
    invoke-direct {p0}, Lcom/fiio/music/slidemenu/CustomViewAbove;->d()V

    goto/16 :goto_1

    .line 744
    :cond_8
    if-gez v1, :cond_7

    if-gez v4, :cond_7

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_9
    iget v0, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->g:I

    int-to-float v0, v0

    add-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_3

    .line 748
    :cond_a
    iget v0, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->g:I

    invoke-direct {p0, v0, v3, v1}, Lcom/fiio/music/slidemenu/CustomViewAbove;->a(IZI)V

    goto :goto_4

    .line 752
    :cond_b
    iget-boolean v0, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->z:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->s:Lcom/fiio/music/slidemenu/CustomViewBehind;

    iget-object v1, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->f:Landroid/view/View;

    iget v2, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->g:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v5, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->A:F

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v4}, Lcom/fiio/music/slidemenu/CustomViewBehind;->b(Landroid/view/View;IF)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 754
    invoke-virtual {p0, v3}, Lcom/fiio/music/slidemenu/CustomViewAbove;->setCurrentItem(I)V

    .line 755
    invoke-direct {p0}, Lcom/fiio/music/slidemenu/CustomViewAbove;->d()V

    goto/16 :goto_1

    .line 759
    :pswitch_4
    iget-boolean v1, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->k:Z

    if-eqz v1, :cond_4

    .line 760
    iget v1, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->g:I

    invoke-direct {p0, v1, v3, v0}, Lcom/fiio/music/slidemenu/CustomViewAbove;->a(IZI)V

    .line 761
    iput v7, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->a:I

    .line 762
    invoke-direct {p0}, Lcom/fiio/music/slidemenu/CustomViewAbove;->d()V

    goto/16 :goto_1

    .line 766
    :pswitch_5
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 767
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v1

    iput v1, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->o:F

    .line 768
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->a:I

    goto/16 :goto_1

    .line 772
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/fiio/music/slidemenu/CustomViewAbove;->c(Landroid/view/MotionEvent;)V

    .line 773
    iget v0, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->a:I

    invoke-direct {p0, p1, v0}, Lcom/fiio/music/slidemenu/CustomViewAbove;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 774
    iget v1, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->a:I

    if-eq v1, v7, :cond_4

    .line 775
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v0

    iput v0, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->o:F

    goto/16 :goto_1

    :cond_c
    move v0, v2

    goto/16 :goto_2

    .line 687
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public scrollTo(II)V
    .locals 2

    .prologue
    .line 806
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 807
    int-to-float v0, p1

    iput v0, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->A:F

    .line 808
    iget-object v0, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->s:Lcom/fiio/music/slidemenu/CustomViewBehind;

    iget-object v1, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->f:Landroid/view/View;

    invoke-virtual {v0, v1, p1, p2}, Lcom/fiio/music/slidemenu/CustomViewBehind;->a(Landroid/view/View;II)V

    .line 809
    invoke-virtual {p0}, Lcom/fiio/music/slidemenu/CustomViewAbove;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/slidemenu/SlidingMenu;

    invoke-virtual {p0}, Lcom/fiio/music/slidemenu/CustomViewAbove;->getPercentOpen()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/slidemenu/SlidingMenu;->a(F)V

    .line 810
    return-void
.end method

.method public setAboveOffset(I)V
    .locals 4

    .prologue
    .line 483
    iget-object v0, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->f:Landroid/view/View;

    iget-object v1, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->f:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    .line 484
    iget-object v2, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->f:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    iget-object v3, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->f:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    .line 483
    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 485
    return-void
.end method

.method public setContent(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->f:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/fiio/music/slidemenu/CustomViewAbove;->removeView(Landroid/view/View;)V

    .line 436
    :cond_0
    iput-object p1, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->f:Landroid/view/View;

    .line 437
    iget-object v0, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->f:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/fiio/music/slidemenu/CustomViewAbove;->addView(Landroid/view/View;)V

    .line 438
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 199
    invoke-direct {p0, p1, v0, v0}, Lcom/fiio/music/slidemenu/CustomViewAbove;->a(IZI)V

    .line 200
    return-void
.end method

.method public final setCurrentItem$2563266(I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 209
    invoke-direct {p0, p1, v0, v0}, Lcom/fiio/music/slidemenu/CustomViewAbove;->a(IZI)V

    .line 210
    return-void
.end method

.method public setCustomViewBehind(Lcom/fiio/music/slidemenu/CustomViewBehind;)V
    .locals 0

    .prologue
    .line 445
    iput-object p1, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->s:Lcom/fiio/music/slidemenu/CustomViewBehind;

    .line 446
    return-void
.end method

.method public setOnClosedListener(Lcom/fiio/music/slidemenu/i;)V
    .locals 0

    .prologue
    .line 268
    iput-object p1, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->w:Lcom/fiio/music/slidemenu/i;

    .line 269
    return-void
.end method

.method public setOnOpenedListener(Lcom/fiio/music/slidemenu/k;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->x:Lcom/fiio/music/slidemenu/k;

    .line 265
    return-void
.end method

.method public setOnPageChangeListener(Lcom/fiio/music/slidemenu/c;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->u:Lcom/fiio/music/slidemenu/c;

    .line 253
    return-void
.end method

.method public setSlidingEnabled(Z)V
    .locals 0

    .prologue
    .line 367
    iput-boolean p1, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->t:Z

    .line 368
    return-void
.end method

.method public setTouchMode(I)V
    .locals 0

    .prologue
    .line 569
    iput p1, p0, Lcom/fiio/music/slidemenu/CustomViewAbove;->d:I

    .line 570
    return-void
.end method
