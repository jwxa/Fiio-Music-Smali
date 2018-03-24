.class public Lcom/fiio/music/custom/FlingGalleryView;
.super Landroid/view/ViewGroup;
.source "FlingGalleryView.java"


# instance fields
.field private a:I

.field private b:Landroid/widget/Scroller;

.field private c:Landroid/view/VelocityTracker;

.field private d:F

.field private e:F

.field private f:I

.field private g:I

.field private h:I

.field private i:Lcom/fiio/music/custom/e;

.field private j:Lcom/fiio/music/custom/d;

.field private k:Z

.field private l:I

.field private m:I

.field private n:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 43
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 30
    iput v1, p0, Lcom/fiio/music/custom/FlingGalleryView;->f:I

    .line 40
    iput-boolean v1, p0, Lcom/fiio/music/custom/FlingGalleryView;->k:Z

    .line 73
    iput v0, p0, Lcom/fiio/music/custom/FlingGalleryView;->l:I

    .line 74
    iput v0, p0, Lcom/fiio/music/custom/FlingGalleryView;->m:I

    .line 155
    new-instance v0, Lcom/fiio/music/custom/c;

    invoke-direct {v0, p0}, Lcom/fiio/music/custom/c;-><init>(Lcom/fiio/music/custom/FlingGalleryView;)V

    iput-object v0, p0, Lcom/fiio/music/custom/FlingGalleryView;->n:Landroid/view/View$OnTouchListener;

    .line 44
    invoke-direct {p0}, Lcom/fiio/music/custom/FlingGalleryView;->a()V

    .line 45
    iput v1, p0, Lcom/fiio/music/custom/FlingGalleryView;->a:I

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/fiio/music/custom/FlingGalleryView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    iput v1, p0, Lcom/fiio/music/custom/FlingGalleryView;->f:I

    .line 40
    iput-boolean v1, p0, Lcom/fiio/music/custom/FlingGalleryView;->k:Z

    .line 73
    iput v0, p0, Lcom/fiio/music/custom/FlingGalleryView;->l:I

    .line 74
    iput v0, p0, Lcom/fiio/music/custom/FlingGalleryView;->m:I

    .line 155
    new-instance v0, Lcom/fiio/music/custom/c;

    invoke-direct {v0, p0}, Lcom/fiio/music/custom/c;-><init>(Lcom/fiio/music/custom/FlingGalleryView;)V

    iput-object v0, p0, Lcom/fiio/music/custom/FlingGalleryView;->n:Landroid/view/View$OnTouchListener;

    .line 56
    sget-object v0, Lcom/fiio/music/R$styleable;->FlingGalleryView:[I

    .line 55
    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 58
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 57
    iput v1, p0, Lcom/fiio/music/custom/FlingGalleryView;->a:I

    .line 59
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 61
    invoke-direct {p0}, Lcom/fiio/music/custom/FlingGalleryView;->a()V

    .line 62
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 65
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/fiio/music/custom/FlingGalleryView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fiio/music/custom/FlingGalleryView;->b:Landroid/widget/Scroller;

    .line 67
    invoke-virtual {p0}, Lcom/fiio/music/custom/FlingGalleryView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/fiio/music/custom/FlingGalleryView;->g:I

    .line 69
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/fiio/music/custom/FlingGalleryView;->h:I

    .line 70
    return-void
.end method

.method private a(I)V
    .locals 7

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x0

    .line 287
    invoke-virtual {p0}, Lcom/fiio/music/custom/FlingGalleryView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 288
    invoke-virtual {p0}, Lcom/fiio/music/custom/FlingGalleryView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/fiio/music/custom/FlingGalleryView;->getWidth()I

    move-result v1

    mul-int/2addr v1, v6

    if-eq v0, v1, :cond_1

    .line 289
    invoke-virtual {p0}, Lcom/fiio/music/custom/FlingGalleryView;->getWidth()I

    move-result v0

    mul-int/2addr v0, v6

    invoke-virtual {p0}, Lcom/fiio/music/custom/FlingGalleryView;->getScrollX()I

    move-result v1

    sub-int v3, v0, v1

    .line 290
    iput v4, p0, Lcom/fiio/music/custom/FlingGalleryView;->l:I

    .line 291
    iput v4, p0, Lcom/fiio/music/custom/FlingGalleryView;->m:I

    .line 293
    iget-object v0, p0, Lcom/fiio/music/custom/FlingGalleryView;->b:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/fiio/music/custom/FlingGalleryView;->getScrollX()I

    move-result v1

    .line 294
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    mul-int/lit8 v5, v4, 0x2

    move v4, v2

    .line 293
    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 295
    iget v0, p0, Lcom/fiio/music/custom/FlingGalleryView;->a:I

    .line 296
    iput v6, p0, Lcom/fiio/music/custom/FlingGalleryView;->a:I

    .line 298
    if-eq v0, v6, :cond_0

    .line 300
    sub-int/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 301
    iget-object v0, p0, Lcom/fiio/music/custom/FlingGalleryView;->i:Lcom/fiio/music/custom/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/custom/FlingGalleryView;->i:Lcom/fiio/music/custom/e;

    iget v1, p0, Lcom/fiio/music/custom/FlingGalleryView;->a:I

    invoke-virtual {p0}, Lcom/fiio/music/custom/FlingGalleryView;->getChildCount()I

    invoke-interface {v0, v1}, Lcom/fiio/music/custom/e;->a(I)V

    .line 304
    :cond_0
    invoke-virtual {p0}, Lcom/fiio/music/custom/FlingGalleryView;->invalidate()V

    .line 306
    :cond_1
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 80
    iget-object v0, p0, Lcom/fiio/music/custom/FlingGalleryView;->b:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 82
    iget-object v0, p0, Lcom/fiio/music/custom/FlingGalleryView;->b:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    invoke-virtual {p0, v0, v3}, Lcom/fiio/music/custom/FlingGalleryView;->scrollTo(II)V

    .line 83
    iget-boolean v0, p0, Lcom/fiio/music/custom/FlingGalleryView;->k:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/fiio/music/custom/FlingGalleryView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/fiio/music/custom/FlingGalleryView;->getScrollX()I

    move-result v1

    div-int/lit8 v2, v0, 0x2

    add-int/2addr v1, v2

    div-int v0, v1, v0

    invoke-virtual {p0}, Lcom/fiio/music/custom/FlingGalleryView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_1

    iget v1, p0, Lcom/fiio/music/custom/FlingGalleryView;->m:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    iput v0, p0, Lcom/fiio/music/custom/FlingGalleryView;->m:I

    iput v4, p0, Lcom/fiio/music/custom/FlingGalleryView;->l:I

    :cond_0
    :goto_0
    iget v1, p0, Lcom/fiio/music/custom/FlingGalleryView;->l:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/fiio/music/custom/FlingGalleryView;->i:Lcom/fiio/music/custom/e;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/fiio/music/custom/FlingGalleryView;->i:Lcom/fiio/music/custom/e;

    invoke-virtual {p0}, Lcom/fiio/music/custom/FlingGalleryView;->getChildCount()I

    invoke-interface {v1, v0}, Lcom/fiio/music/custom/e;->a(I)V

    .line 84
    :cond_1
    invoke-virtual {p0}, Lcom/fiio/music/custom/FlingGalleryView;->postInvalidate()V

    .line 86
    :cond_2
    return-void

    .line 83
    :cond_3
    iget v1, p0, Lcom/fiio/music/custom/FlingGalleryView;->m:I

    if-ne v1, v0, :cond_4

    iget v1, p0, Lcom/fiio/music/custom/FlingGalleryView;->l:I

    if-nez v1, :cond_4

    iput v4, p0, Lcom/fiio/music/custom/FlingGalleryView;->l:I

    goto :goto_0

    :cond_4
    iget v1, p0, Lcom/fiio/music/custom/FlingGalleryView;->m:I

    if-eq v1, v0, :cond_0

    iput v0, p0, Lcom/fiio/music/custom/FlingGalleryView;->m:I

    iput v3, p0, Lcom/fiio/music/custom/FlingGalleryView;->l:I

    goto :goto_0
.end method

.method public getCurrentScreen()I
    .locals 1

    .prologue
    .line 344
    iget v0, p0, Lcom/fiio/music/custom/FlingGalleryView;->a:I

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 177
    iget-object v0, p0, Lcom/fiio/music/custom/FlingGalleryView;->j:Lcom/fiio/music/custom/d;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/fiio/music/custom/FlingGalleryView;->j:Lcom/fiio/music/custom/d;

    .line 180
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 181
    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 182
    iget v3, p0, Lcom/fiio/music/custom/FlingGalleryView;->f:I

    if-eqz v3, :cond_2

    .line 210
    :cond_1
    :goto_0
    return v2

    .line 185
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 186
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 187
    packed-switch v0, :pswitch_data_0

    .line 210
    :cond_3
    :goto_1
    iget v0, p0, Lcom/fiio/music/custom/FlingGalleryView;->f:I

    if-nez v0, :cond_1

    move v2, v1

    goto :goto_0

    .line 190
    :pswitch_0
    iget v0, p0, Lcom/fiio/music/custom/FlingGalleryView;->d:F

    sub-float v0, v3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    .line 191
    iget v5, p0, Lcom/fiio/music/custom/FlingGalleryView;->g:I

    .line 192
    if-le v0, v5, :cond_3

    .line 194
    iget v0, p0, Lcom/fiio/music/custom/FlingGalleryView;->e:F

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v4, p0, Lcom/fiio/music/custom/FlingGalleryView;->d:F

    sub-float v3, v4, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v0, v3

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v3

    if-gez v0, :cond_3

    .line 195
    iput v2, p0, Lcom/fiio/music/custom/FlingGalleryView;->f:I

    goto :goto_1

    .line 200
    :pswitch_1
    iput v3, p0, Lcom/fiio/music/custom/FlingGalleryView;->d:F

    .line 201
    iput v4, p0, Lcom/fiio/music/custom/FlingGalleryView;->e:F

    .line 202
    iget-object v0, p0, Lcom/fiio/music/custom/FlingGalleryView;->b:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_2
    iput v0, p0, Lcom/fiio/music/custom/FlingGalleryView;->f:I

    goto :goto_1

    :cond_4
    move v0, v2

    .line 203
    goto :goto_2

    .line 207
    :pswitch_2
    iput v1, p0, Lcom/fiio/music/custom/FlingGalleryView;->f:I

    goto :goto_1

    .line 187
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 139
    .line 141
    invoke-virtual {p0}, Lcom/fiio/music/custom/FlingGalleryView;->getChildCount()I

    move-result v3

    move v1, v2

    move v0, v2

    .line 142
    :goto_0
    if-lt v1, v3, :cond_0

    .line 152
    return-void

    .line 143
    :cond_0
    invoke-virtual {p0, v1}, Lcom/fiio/music/custom/FlingGalleryView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 144
    iget-object v5, p0, Lcom/fiio/music/custom/FlingGalleryView;->n:Landroid/view/View$OnTouchListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 145
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_1

    .line 146
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 147
    add-int v6, v0, v5

    .line 148
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 147
    invoke-virtual {v4, v0, v2, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 149
    add-int/2addr v0, v5

    .line 142
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 5

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/4 v1, 0x0

    .line 117
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 118
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 119
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 120
    if-eq v0, v3, :cond_0

    .line 121
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 122
    const-string v1, "Workspace can only be used in EXACTLY mode."

    .line 121
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 125
    if-eq v0, v3, :cond_1

    .line 126
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 127
    const-string v1, "Workspace can only be used in EXACTLY mode."

    .line 126
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_1
    invoke-virtual {p0}, Lcom/fiio/music/custom/FlingGalleryView;->getChildCount()I

    move-result v3

    move v0, v1

    .line 130
    :goto_0
    if-lt v0, v3, :cond_2

    .line 133
    iget v0, p0, Lcom/fiio/music/custom/FlingGalleryView;->a:I

    mul-int/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/fiio/music/custom/FlingGalleryView;->scrollTo(II)V

    .line 134
    return-void

    .line 131
    :cond_2
    invoke-virtual {p0, v0}, Lcom/fiio/music/custom/FlingGalleryView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Landroid/view/View;->measure(II)V

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/16 v3, 0x3e8

    const/4 v2, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 215
    iget-object v0, p0, Lcom/fiio/music/custom/FlingGalleryView;->c:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 216
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/custom/FlingGalleryView;->c:Landroid/view/VelocityTracker;

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/custom/FlingGalleryView;->c:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 219
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 220
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 221
    packed-switch v0, :pswitch_data_0

    .line 272
    :cond_1
    :goto_0
    return v6

    .line 223
    :pswitch_0
    iget-object v0, p0, Lcom/fiio/music/custom/FlingGalleryView;->b:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 225
    iget-object v0, p0, Lcom/fiio/music/custom/FlingGalleryView;->b:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 227
    :cond_2
    iput v1, p0, Lcom/fiio/music/custom/FlingGalleryView;->d:F

    .line 228
    iput v2, p0, Lcom/fiio/music/custom/FlingGalleryView;->l:I

    .line 229
    iput v2, p0, Lcom/fiio/music/custom/FlingGalleryView;->m:I

    goto :goto_0

    .line 232
    :pswitch_1
    iget v0, p0, Lcom/fiio/music/custom/FlingGalleryView;->f:I

    if-ne v0, v6, :cond_1

    .line 233
    invoke-virtual {p0}, Lcom/fiio/music/custom/FlingGalleryView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x40800000    # 4.0f

    div-float/2addr v0, v2

    .line 235
    invoke-virtual {p0}, Lcom/fiio/music/custom/FlingGalleryView;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/fiio/music/custom/FlingGalleryView;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0}, Lcom/fiio/music/custom/FlingGalleryView;->getWidth()I

    move-result v4

    mul-int/2addr v3, v4

    int-to-float v3, v3

    add-float/2addr v3, v0

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_1

    .line 236
    invoke-virtual {p0}, Lcom/fiio/music/custom/FlingGalleryView;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, -0x40800000    # -1.0f

    mul-float/2addr v0, v3

    cmpg-float v0, v2, v0

    if-ltz v0, :cond_1

    .line 240
    iget v0, p0, Lcom/fiio/music/custom/FlingGalleryView;->d:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 243
    iput v1, p0, Lcom/fiio/music/custom/FlingGalleryView;->d:F

    .line 244
    invoke-virtual {p0, v0, v5}, Lcom/fiio/music/custom/FlingGalleryView;->scrollBy(II)V

    goto :goto_0

    .line 248
    :pswitch_2
    iget v0, p0, Lcom/fiio/music/custom/FlingGalleryView;->f:I

    if-ne v0, v6, :cond_3

    .line 249
    iget-object v0, p0, Lcom/fiio/music/custom/FlingGalleryView;->c:Landroid/view/VelocityTracker;

    .line 250
    iget v1, p0, Lcom/fiio/music/custom/FlingGalleryView;->h:I

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 251
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    float-to-int v0, v0

    .line 252
    if-le v0, v3, :cond_4

    iget v1, p0, Lcom/fiio/music/custom/FlingGalleryView;->a:I

    if-lez v1, :cond_4

    .line 254
    iget v0, p0, Lcom/fiio/music/custom/FlingGalleryView;->a:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/fiio/music/custom/FlingGalleryView;->a(I)V

    .line 262
    :goto_1
    iget-object v0, p0, Lcom/fiio/music/custom/FlingGalleryView;->c:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_3

    .line 263
    iget-object v0, p0, Lcom/fiio/music/custom/FlingGalleryView;->c:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 264
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fiio/music/custom/FlingGalleryView;->c:Landroid/view/VelocityTracker;

    .line 267
    :cond_3
    iput v5, p0, Lcom/fiio/music/custom/FlingGalleryView;->f:I

    goto :goto_0

    .line 255
    :cond_4
    const/16 v1, -0x3e8

    if-ge v0, v1, :cond_5

    .line 256
    iget v0, p0, Lcom/fiio/music/custom/FlingGalleryView;->a:I

    invoke-virtual {p0}, Lcom/fiio/music/custom/FlingGalleryView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_5

    .line 258
    iget v0, p0, Lcom/fiio/music/custom/FlingGalleryView;->a:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/fiio/music/custom/FlingGalleryView;->a(I)V

    goto :goto_1

    .line 260
    :cond_5
    invoke-virtual {p0}, Lcom/fiio/music/custom/FlingGalleryView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/fiio/music/custom/FlingGalleryView;->getScrollX()I

    move-result v1

    div-int/lit8 v2, v0, 0x2

    add-int/2addr v1, v2

    div-int v0, v1, v0

    invoke-direct {p0, v0}, Lcom/fiio/music/custom/FlingGalleryView;->a(I)V

    goto :goto_1

    .line 270
    :pswitch_3
    iput v5, p0, Lcom/fiio/music/custom/FlingGalleryView;->f:I

    goto/16 :goto_0

    .line 221
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setDefaultScreen(I)V
    .locals 0

    .prologue
    .line 337
    iput p1, p0, Lcom/fiio/music/custom/FlingGalleryView;->a:I

    .line 338
    return-void
.end method

.method public setEveryScreen(Z)V
    .locals 0

    .prologue
    .line 385
    iput-boolean p1, p0, Lcom/fiio/music/custom/FlingGalleryView;->k:Z

    .line 386
    return-void
.end method

.method public setOnCustomTouchListener(Lcom/fiio/music/custom/d;)V
    .locals 0

    .prologue
    .line 362
    if-eqz p1, :cond_0

    .line 363
    iput-object p1, p0, Lcom/fiio/music/custom/FlingGalleryView;->j:Lcom/fiio/music/custom/d;

    .line 365
    :cond_0
    return-void
.end method

.method public setOnScrollToScreenListener(Lcom/fiio/music/custom/e;)V
    .locals 0

    .prologue
    .line 352
    if-eqz p1, :cond_0

    .line 353
    iput-object p1, p0, Lcom/fiio/music/custom/FlingGalleryView;->i:Lcom/fiio/music/custom/e;

    .line 355
    :cond_0
    return-void
.end method
