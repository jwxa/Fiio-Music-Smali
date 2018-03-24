.class public Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;
.super Landroid/widget/FrameLayout;
.source "SwipeMenuLayout.java"


# instance fields
.field private a:Landroid/view/View;

.field private b:Lcom/fiio/music/swipemenulistview/SwipeMenuView;

.field private c:Lcom/fiio/music/swipemenulistview/SwipeMenuView;

.field private d:I

.field private e:I

.field private f:Landroid/support/v4/view/GestureDetectorCompat;

.field private g:Landroid/view/GestureDetector$OnGestureListener;

.field private h:Z

.field private i:I

.field private j:I

.field private k:Landroid/support/v4/widget/ScrollerCompat;

.field private l:Landroid/support/v4/widget/ScrollerCompat;

.field private m:I

.field private n:I

.field private o:Landroid/view/animation/Interpolator;

.field private p:Landroid/view/animation/Interpolator;

.field private q:Z

.field private r:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/fiio/music/swipemenulistview/SwipeMenuView;Lcom/fiio/music/swipemenulistview/SwipeMenuView;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v1, 0x0

    const/4 v3, -0x2

    .line 71
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 37
    iput v1, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->e:I

    .line 41
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->b(I)I

    move-result v0

    iput v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->i:I

    .line 42
    const/16 v0, 0x1f4

    invoke-direct {p0, v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->b(I)I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->j:I

    .line 49
    iput-boolean v1, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->q:Z

    .line 50
    iput-boolean v1, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->r:Z

    .line 72
    iput-object p4, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->o:Landroid/view/animation/Interpolator;

    .line 73
    iput-object p5, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->p:Landroid/view/animation/Interpolator;

    .line 74
    iput-object p1, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->a:Landroid/view/View;

    .line 75
    iput-object p2, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->b:Lcom/fiio/music/swipemenulistview/SwipeMenuView;

    .line 76
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->b:Lcom/fiio/music/swipemenulistview/SwipeMenuView;

    invoke-virtual {v0, p0}, Lcom/fiio/music/swipemenulistview/SwipeMenuView;->setLayout(Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;)V

    .line 78
    iput-object p3, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->c:Lcom/fiio/music/swipemenulistview/SwipeMenuView;

    .line 79
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->c:Lcom/fiio/music/swipemenulistview/SwipeMenuView;

    invoke-virtual {v0, p0}, Lcom/fiio/music/swipemenulistview/SwipeMenuView;->setLayout(Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;)V

    .line 80
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v0, v4, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/fiio/music/swipemenulistview/e;

    invoke-direct {v0, p0}, Lcom/fiio/music/swipemenulistview/e;-><init>(Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;)V

    iput-object v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->g:Landroid/view/GestureDetector$OnGestureListener;

    new-instance v0, Landroid/support/v4/view/GestureDetectorCompat;

    invoke-virtual {p0}, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->g:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/support/v4/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->f:Landroid/support/v4/view/GestureDetectorCompat;

    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->o:Landroid/view/animation/Interpolator;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->o:Landroid/view/animation/Interpolator;

    invoke-static {v0, v1}, Landroid/support/v4/widget/ScrollerCompat;->create(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/ScrollerCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->l:Landroid/support/v4/widget/ScrollerCompat;

    :goto_0
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->p:Landroid/view/animation/Interpolator;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->p:Landroid/view/animation/Interpolator;

    invoke-static {v0, v1}, Landroid/support/v4/widget/ScrollerCompat;->create(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/ScrollerCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->k:Landroid/support/v4/widget/ScrollerCompat;

    :goto_1
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->a:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    :cond_0
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->b:Lcom/fiio/music/swipemenulistview/SwipeMenuView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuView;->setId(I)V

    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->b:Lcom/fiio/music/swipemenulistview/SwipeMenuView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->c:Lcom/fiio/music/swipemenulistview/SwipeMenuView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuView;->setId(I)V

    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->c:Lcom/fiio/music/swipemenulistview/SwipeMenuView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->b:Lcom/fiio/music/swipemenulistview/SwipeMenuView;

    invoke-virtual {p0, v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->c:Lcom/fiio/music/swipemenulistview/SwipeMenuView;

    invoke-virtual {p0, v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->addView(Landroid/view/View;)V

    .line 81
    return-void

    .line 80
    :cond_1
    invoke-virtual {p0}, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/widget/ScrollerCompat;->create(Landroid/content/Context;)Landroid/support/v4/widget/ScrollerCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->l:Landroid/support/v4/widget/ScrollerCompat;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/widget/ScrollerCompat;->create(Landroid/content/Context;)Landroid/support/v4/widget/ScrollerCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->k:Landroid/support/v4/widget/ScrollerCompat;

    goto :goto_1
.end method

.method static synthetic a(Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;)I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->i:I

    return v0
.end method

.method private a(I)V
    .locals 5

    .prologue
    .line 260
    iget-boolean v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->q:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->r:Z

    if-nez v0, :cond_1

    if-gez p1, :cond_1

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    iget-boolean v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->q:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->r:Z

    if-eqz v0, :cond_2

    if-gtz p1, :cond_0

    .line 269
    :cond_2
    if-lez p1, :cond_4

    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->b:Lcom/fiio/music/swipemenulistview/SwipeMenuView;

    invoke-virtual {v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuView;->getWidth()I

    move-result v0

    if-le p1, v0, :cond_4

    .line 270
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->b:Lcom/fiio/music/swipemenulistview/SwipeMenuView;

    invoke-virtual {v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuView;->getWidth()I

    move-result p1

    .line 275
    :cond_3
    :goto_1
    if-lez p1, :cond_5

    .line 277
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->a:Landroid/view/View;

    neg-int v1, p1

    iget-object v2, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v3, p1

    invoke-virtual {p0}, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 278
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->b:Lcom/fiio/music/swipemenulistview/SwipeMenuView;

    iget-object v1, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v1, p1

    iget-object v2, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->b:Lcom/fiio/music/swipemenulistview/SwipeMenuView;

    invoke-virtual {v2}, Lcom/fiio/music/swipemenulistview/SwipeMenuView;->getTop()I

    move-result v2

    .line 279
    iget-object v3, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->b:Lcom/fiio/music/swipemenulistview/SwipeMenuView;

    invoke-virtual {v4}, Lcom/fiio/music/swipemenulistview/SwipeMenuView;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v3, p1

    .line 280
    iget-object v4, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->b:Lcom/fiio/music/swipemenulistview/SwipeMenuView;

    invoke-virtual {v4}, Lcom/fiio/music/swipemenulistview/SwipeMenuView;->getBottom()I

    move-result v4

    .line 278
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fiio/music/swipemenulistview/SwipeMenuView;->layout(IIII)V

    goto :goto_0

    .line 271
    :cond_4
    if-gez p1, :cond_3

    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->c:Lcom/fiio/music/swipemenulistview/SwipeMenuView;

    invoke-virtual {v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuView;->getWidth()I

    move-result v0

    neg-int v0, v0

    if-ge p1, v0, :cond_3

    .line 272
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->c:Lcom/fiio/music/swipemenulistview/SwipeMenuView;

    invoke-virtual {v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuView;->getWidth()I

    move-result v0

    rsub-int/lit8 p1, v0, 0x0

    goto :goto_1

    .line 281
    :cond_5
    if-gez p1, :cond_6

    .line 282
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->a:Landroid/view/View;

    neg-int v1, p1

    iget-object v2, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v3, p1

    invoke-virtual {p0}, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 283
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->c:Lcom/fiio/music/swipemenulistview/SwipeMenuView;

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget-object v2, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->c:Lcom/fiio/music/swipemenulistview/SwipeMenuView;

    invoke-virtual {v2}, Lcom/fiio/music/swipemenulistview/SwipeMenuView;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->c:Lcom/fiio/music/swipemenulistview/SwipeMenuView;

    invoke-virtual {v2}, Lcom/fiio/music/swipemenulistview/SwipeMenuView;->getTop()I

    move-result v2

    .line 284
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget-object v4, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->c:Lcom/fiio/music/swipemenulistview/SwipeMenuView;

    invoke-virtual {v4}, Lcom/fiio/music/swipemenulistview/SwipeMenuView;->getBottom()I

    move-result v4

    .line 283
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fiio/music/swipemenulistview/SwipeMenuView;->layout(IIII)V

    goto/16 :goto_0

    .line 286
    :cond_6
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->a:Landroid/view/View;

    neg-int v1, p1

    iget-object v2, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v3, p1

    invoke-virtual {p0}, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 287
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->b:Lcom/fiio/music/swipemenulistview/SwipeMenuView;

    iget-object v1, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v1, p1

    iget-object v2, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->b:Lcom/fiio/music/swipemenulistview/SwipeMenuView;

    invoke-virtual {v2}, Lcom/fiio/music/swipemenulistview/SwipeMenuView;->getTop()I

    move-result v2

    .line 288
    iget-object v3, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->b:Lcom/fiio/music/swipemenulistview/SwipeMenuView;

    invoke-virtual {v4}, Lcom/fiio/music/swipemenulistview/SwipeMenuView;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v3, p1

    .line 289
    iget-object v4, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->b:Lcom/fiio/music/swipemenulistview/SwipeMenuView;

    invoke-virtual {v4}, Lcom/fiio/music/swipemenulistview/SwipeMenuView;->getBottom()I

    move-result v4

    .line 287
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fiio/music/swipemenulistview/SwipeMenuView;->layout(IIII)V

    .line 290
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->c:Lcom/fiio/music/swipemenulistview/SwipeMenuView;

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget-object v2, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->c:Lcom/fiio/music/swipemenulistview/SwipeMenuView;

    invoke-virtual {v2}, Lcom/fiio/music/swipemenulistview/SwipeMenuView;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->c:Lcom/fiio/music/swipemenulistview/SwipeMenuView;

    invoke-virtual {v2}, Lcom/fiio/music/swipemenulistview/SwipeMenuView;->getTop()I

    move-result v2

    .line 291
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget-object v4, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->c:Lcom/fiio/music/swipemenulistview/SwipeMenuView;

    invoke-virtual {v4}, Lcom/fiio/music/swipemenulistview/SwipeMenuView;->getBottom()I

    move-result v4

    .line 290
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fiio/music/swipemenulistview/SwipeMenuView;->layout(IIII)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;Z)V
    .locals 0

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->h:Z

    return-void
.end method

.method private b(I)I
    .locals 3

    .prologue
    .line 374
    const/4 v0, 0x1

    int-to-float v1, p1

    .line 375
    invoke-virtual {p0}, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 374
    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method static synthetic b(Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;)I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->j:I

    return v0
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 250
    iget v1, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->e:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/16 v5, 0x15e

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 196
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->f:Landroid/support/v4/view/GestureDetectorCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 197
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    move v2, v6

    .line 246
    :goto_1
    return v2

    .line 199
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->d:I

    .line 200
    iput-boolean v2, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->h:Z

    goto :goto_0

    .line 203
    :pswitch_1
    iget v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->d:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 205
    iget v1, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->d:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v1, v3

    const/4 v3, 0x0

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1

    .line 206
    iput-boolean v6, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->q:Z

    .line 210
    :goto_2
    iget v1, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->e:I

    if-ne v1, v6, :cond_0

    .line 211
    iget-boolean v1, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->q:Z

    if-nez v1, :cond_2

    .line 212
    iget-object v1, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->c:Lcom/fiio/music/swipemenulistview/SwipeMenuView;

    invoke-virtual {v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuView;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    .line 221
    :cond_0
    :goto_3
    invoke-direct {p0, v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->a(I)V

    goto :goto_0

    .line 208
    :cond_1
    iput-boolean v2, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->q:Z

    goto :goto_2

    .line 214
    :cond_2
    iget-object v1, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->b:Lcom/fiio/music/swipemenulistview/SwipeMenuView;

    invoke-virtual {v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuView;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_3

    .line 224
    :pswitch_2
    iget v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->d:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    .line 226
    iget-boolean v1, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->h:Z

    if-nez v1, :cond_4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v3, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->b:Lcom/fiio/music/swipemenulistview/SwipeMenuView;

    invoke-virtual {v3}, Lcom/fiio/music/swipemenulistview/SwipeMenuView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_3

    iget-boolean v1, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->q:Z

    if-eqz v1, :cond_4

    .line 227
    :cond_3
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v3, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->c:Lcom/fiio/music/swipemenulistview/SwipeMenuView;

    invoke-virtual {v3}, Lcom/fiio/music/swipemenulistview/SwipeMenuView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_9

    iget-boolean v1, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->q:Z

    if-eqz v1, :cond_9

    .line 228
    :cond_4
    invoke-virtual {p0}, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 229
    invoke-virtual {p0}, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->b()V

    goto :goto_1

    .line 232
    :cond_5
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v3, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->c:Lcom/fiio/music/swipemenulistview/SwipeMenuView;

    invoke-virtual {v3}, Lcom/fiio/music/swipemenulistview/SwipeMenuView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_7

    iget-boolean v1, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->q:Z

    if-eqz v1, :cond_7

    .line 233
    iput-boolean v6, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->r:Z

    .line 237
    :cond_6
    :goto_4
    iput v6, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->e:I

    iget-boolean v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->q:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->k:Landroid/support/v4/widget/ScrollerCompat;

    iget-object v1, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    neg-int v1, v1

    iget-object v3, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->c:Lcom/fiio/music/swipemenulistview/SwipeMenuView;

    invoke-virtual {v3}, Lcom/fiio/music/swipemenulistview/SwipeMenuView;->getWidth()I

    move-result v3

    neg-int v3, v3

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/ScrollerCompat;->startScroll(IIIII)V

    :goto_5
    invoke-virtual {p0}, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->postInvalidate()V

    goto/16 :goto_0

    .line 234
    :cond_7
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->b:Lcom/fiio/music/swipemenulistview/SwipeMenuView;

    invoke-virtual {v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    iget-boolean v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->q:Z

    if-nez v0, :cond_6

    .line 235
    iput-boolean v2, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->r:Z

    goto :goto_4

    .line 237
    :cond_8
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->k:Landroid/support/v4/widget/ScrollerCompat;

    iget-object v1, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    neg-int v1, v1

    iget-object v3, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->b:Lcom/fiio/music/swipemenulistview/SwipeMenuView;

    invoke-virtual {v3}, Lcom/fiio/music/swipemenulistview/SwipeMenuView;->getWidth()I

    move-result v3

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/ScrollerCompat;->startScroll(IIIII)V

    goto :goto_5

    .line 241
    :cond_9
    invoke-virtual {p0}, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->b()V

    goto/16 :goto_1

    .line 197
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final b()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 314
    iput v1, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->e:I

    .line 316
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->m:I

    .line 317
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->l:Landroid/support/v4/widget/ScrollerCompat;

    iget v3, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->m:I

    const/16 v5, 0x15e

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/ScrollerCompat;->startScroll(IIIII)V

    .line 324
    invoke-virtual {p0}, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->postInvalidate()V

    .line 325
    return-void
.end method

.method public final c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 340
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->l:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->l:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->abortAnimation()V

    .line 343
    :cond_0
    iget v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 344
    iput v2, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->e:I

    .line 345
    invoke-direct {p0, v2}, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->a(I)V

    .line 347
    :cond_1
    return-void
.end method

.method public computeScroll()V
    .locals 2

    .prologue
    .line 300
    iget v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 301
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->k:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->k:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getCurrX()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->a(I)V

    .line 303
    invoke-virtual {p0}, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->postInvalidate()V

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 306
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->l:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    iget v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->m:I

    iget-object v1, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->l:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/ScrollerCompat;->getCurrX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->a(I)V

    .line 308
    invoke-virtual {p0}, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->postInvalidate()V

    goto :goto_0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->a:Landroid/view/View;

    return-object v0
.end method

.method public getLeftMenuView()Lcom/fiio/music/swipemenulistview/SwipeMenuView;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->c:Lcom/fiio/music/swipemenulistview/SwipeMenuView;

    return-object v0
.end method

.method public getMenuView()Lcom/fiio/music/swipemenulistview/SwipeMenuView;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->b:Lcom/fiio/music/swipemenulistview/SwipeMenuView;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->n:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 187
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 188
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 391
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->getMeasuredWidth()I

    move-result v1

    .line 392
    iget-object v2, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 391
    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 394
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->b:Lcom/fiio/music/swipemenulistview/SwipeMenuView;

    invoke-virtual {p0}, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->getMeasuredWidth()I

    move-result v1

    .line 395
    invoke-virtual {p0}, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->b:Lcom/fiio/music/swipemenulistview/SwipeMenuView;

    invoke-virtual {v3}, Lcom/fiio/music/swipemenulistview/SwipeMenuView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v2, v3

    .line 396
    iget-object v3, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 394
    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/fiio/music/swipemenulistview/SwipeMenuView;->layout(IIII)V

    .line 398
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->c:Lcom/fiio/music/swipemenulistview/SwipeMenuView;

    invoke-virtual {p0}, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->getMeasuredWidth()I

    move-result v1

    .line 399
    invoke-virtual {p0}, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->c:Lcom/fiio/music/swipemenulistview/SwipeMenuView;

    invoke-virtual {v3}, Lcom/fiio/music/swipemenulistview/SwipeMenuView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v2, v3

    .line 400
    iget-object v3, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 398
    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/fiio/music/swipemenulistview/SwipeMenuView;->layout(IIII)V

    .line 407
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/4 v3, 0x0

    .line 380
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 381
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->b:Lcom/fiio/music/swipemenulistview/SwipeMenuView;

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 383
    invoke-virtual {p0}, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->getMeasuredHeight()I

    move-result v2

    .line 382
    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 381
    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/swipemenulistview/SwipeMenuView;->measure(II)V

    .line 384
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->c:Lcom/fiio/music/swipemenulistview/SwipeMenuView;

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 386
    invoke-virtual {p0}, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->getMeasuredHeight()I

    move-result v2

    .line 385
    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 384
    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/swipemenulistview/SwipeMenuView;->measure(II)V

    .line 387
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .prologue
    .line 192
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 193
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 255
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setMenuHeight(I)V
    .locals 3

    .prologue
    .line 410
    const-string v0, "byz"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pos = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->n:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->b:Lcom/fiio/music/swipemenulistview/SwipeMenuView;

    invoke-virtual {v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 412
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-eq v1, p1, :cond_0

    .line 413
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 414
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->b:Lcom/fiio/music/swipemenulistview/SwipeMenuView;

    iget-object v1, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->b:Lcom/fiio/music/swipemenulistview/SwipeMenuView;

    invoke-virtual {v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->c:Lcom/fiio/music/swipemenulistview/SwipeMenuView;

    invoke-virtual {v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 418
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-eq v1, p1, :cond_1

    .line 419
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 420
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->c:Lcom/fiio/music/swipemenulistview/SwipeMenuView;

    iget-object v1, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->c:Lcom/fiio/music/swipemenulistview/SwipeMenuView;

    invoke-virtual {v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 422
    :cond_1
    return-void
.end method

.method public setPosition(I)V
    .locals 1

    .prologue
    .line 100
    iput p1, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->n:I

    .line 101
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->b:Lcom/fiio/music/swipemenulistview/SwipeMenuView;

    invoke-virtual {v0, p1}, Lcom/fiio/music/swipemenulistview/SwipeMenuView;->setPosition(I)V

    .line 102
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->c:Lcom/fiio/music/swipemenulistview/SwipeMenuView;

    invoke-virtual {v0, p1}, Lcom/fiio/music/swipemenulistview/SwipeMenuView;->setPosition(I)V

    .line 103
    return-void
.end method
