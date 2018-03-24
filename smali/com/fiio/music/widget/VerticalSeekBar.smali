.class public Lcom/fiio/music/widget/VerticalSeekBar;
.super Landroid/widget/SeekBar;
.source "VerticalSeekBar.java"


# instance fields
.field a:F

.field private b:Z

.field private c:F

.field private d:I

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fiio/music/widget/VerticalSeekBar;->e:Z

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fiio/music/widget/VerticalSeekBar;->e:Z

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fiio/music/widget/VerticalSeekBar;->e:Z

    .line 33
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/fiio/music/widget/VerticalSeekBar;->d:I

    .line 35
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/fiio/music/widget/VerticalSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 179
    if-eqz v0, :cond_0

    .line 180
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 182
    :cond_0
    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 135
    invoke-virtual {p0}, Lcom/fiio/music/widget/VerticalSeekBar;->getHeight()I

    move-result v1

    .line 136
    invoke-virtual {p0}, Lcom/fiio/music/widget/VerticalSeekBar;->getPaddingTop()I

    move-result v2

    .line 137
    invoke-virtual {p0}, Lcom/fiio/music/widget/VerticalSeekBar;->getPaddingBottom()I

    move-result v3

    .line 138
    sub-int v4, v1, v2

    sub-int/2addr v4, v3

    .line 140
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    .line 146
    sub-int/2addr v1, v3

    if-le v5, v1, :cond_0

    move v1, v0

    .line 155
    :goto_0
    invoke-virtual {p0}, Lcom/fiio/music/widget/VerticalSeekBar;->getMax()I

    move-result v2

    .line 156
    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 158
    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/fiio/music/widget/VerticalSeekBar;->setProgress(I)V

    .line 160
    return-void

    .line 148
    :cond_0
    if-ge v5, v2, :cond_1

    .line 149
    const/high16 v1, 0x3f800000    # 1.0f

    .line 150
    goto :goto_0

    .line 151
    :cond_1
    sub-int v0, v4, v5

    add-int/2addr v0, v2

    int-to-float v0, v0

    int-to-float v1, v4

    div-float v1, v0, v1

    .line 152
    iget v0, p0, Lcom/fiio/music/widget/VerticalSeekBar;->a:F

    goto :goto_0
.end method


# virtual methods
.method public isInScrollingContainer()Z
    .locals 1

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/fiio/music/widget/VerticalSeekBar;->e:Z

    return v0
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 61
    monitor-enter p0

    const/high16 v0, -0x3d4c0000    # -90.0f

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 62
    invoke-virtual {p0}, Lcom/fiio/music/widget/VerticalSeekBar;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 63
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    monitor-exit p0

    return-void

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 2

    .prologue
    .line 55
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p2, p1}, Landroid/widget/SeekBar;->onMeasure(II)V

    .line 56
    invoke-virtual {p0}, Lcom/fiio/music/widget/VerticalSeekBar;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/fiio/music/widget/VerticalSeekBar;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/fiio/music/widget/VerticalSeekBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    monitor-exit p0

    return-void

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .prologue
    .line 48
    invoke-super {p0, p2, p1, p4, p3}, Landroid/widget/SeekBar;->onSizeChanged(IIII)V

    .line 50
    return-void
.end method

.method onStartTrackingTouch()V
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fiio/music/widget/VerticalSeekBar;->b:Z

    .line 167
    return-void
.end method

.method onStopTrackingTouch()V
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fiio/music/widget/VerticalSeekBar;->b:Z

    .line 175
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 68
    invoke-virtual {p0}, Lcom/fiio/music/widget/VerticalSeekBar;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 130
    :goto_0
    return v0

    .line 72
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_1
    move v0, v1

    .line 130
    goto :goto_0

    .line 74
    :pswitch_0
    invoke-virtual {p0}, Lcom/fiio/music/widget/VerticalSeekBar;->isInScrollingContainer()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 76
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/fiio/music/widget/VerticalSeekBar;->c:F

    goto :goto_1

    .line 78
    :cond_1
    invoke-virtual {p0, v1}, Lcom/fiio/music/widget/VerticalSeekBar;->setPressed(Z)V

    .line 80
    invoke-virtual {p0}, Lcom/fiio/music/widget/VerticalSeekBar;->invalidate()V

    .line 81
    invoke-virtual {p0}, Lcom/fiio/music/widget/VerticalSeekBar;->onStartTrackingTouch()V

    .line 82
    invoke-direct {p0, p1}, Lcom/fiio/music/widget/VerticalSeekBar;->a(Landroid/view/MotionEvent;)V

    .line 83
    invoke-direct {p0}, Lcom/fiio/music/widget/VerticalSeekBar;->a()V

    .line 85
    invoke-virtual {p0}, Lcom/fiio/music/widget/VerticalSeekBar;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/fiio/music/widget/VerticalSeekBar;->getHeight()I

    move-result v3

    invoke-virtual {p0, v2, v3, v0, v0}, Lcom/fiio/music/widget/VerticalSeekBar;->onSizeChanged(IIII)V

    goto :goto_1

    .line 90
    :pswitch_1
    iget-boolean v2, p0, Lcom/fiio/music/widget/VerticalSeekBar;->b:Z

    if-eqz v2, :cond_3

    .line 91
    invoke-direct {p0, p1}, Lcom/fiio/music/widget/VerticalSeekBar;->a(Landroid/view/MotionEvent;)V

    .line 105
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/fiio/music/widget/VerticalSeekBar;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/fiio/music/widget/VerticalSeekBar;->getHeight()I

    move-result v3

    invoke-virtual {p0, v2, v3, v0, v0}, Lcom/fiio/music/widget/VerticalSeekBar;->onSizeChanged(IIII)V

    goto :goto_1

    .line 94
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 95
    iget v3, p0, Lcom/fiio/music/widget/VerticalSeekBar;->c:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/fiio/music/widget/VerticalSeekBar;->d:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 96
    invoke-virtual {p0, v1}, Lcom/fiio/music/widget/VerticalSeekBar;->setPressed(Z)V

    .line 98
    invoke-virtual {p0}, Lcom/fiio/music/widget/VerticalSeekBar;->invalidate()V

    .line 99
    invoke-virtual {p0}, Lcom/fiio/music/widget/VerticalSeekBar;->onStartTrackingTouch()V

    .line 100
    invoke-direct {p0, p1}, Lcom/fiio/music/widget/VerticalSeekBar;->a(Landroid/view/MotionEvent;)V

    .line 101
    invoke-direct {p0}, Lcom/fiio/music/widget/VerticalSeekBar;->a()V

    goto :goto_2

    .line 109
    :pswitch_2
    iget-boolean v2, p0, Lcom/fiio/music/widget/VerticalSeekBar;->b:Z

    if-eqz v2, :cond_4

    .line 110
    invoke-direct {p0, p1}, Lcom/fiio/music/widget/VerticalSeekBar;->a(Landroid/view/MotionEvent;)V

    .line 111
    invoke-virtual {p0}, Lcom/fiio/music/widget/VerticalSeekBar;->onStopTrackingTouch()V

    .line 112
    invoke-virtual {p0, v0}, Lcom/fiio/music/widget/VerticalSeekBar;->setPressed(Z)V

    .line 123
    :goto_3
    invoke-virtual {p0}, Lcom/fiio/music/widget/VerticalSeekBar;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/fiio/music/widget/VerticalSeekBar;->getHeight()I

    move-result v3

    invoke-virtual {p0, v2, v3, v0, v0}, Lcom/fiio/music/widget/VerticalSeekBar;->onSizeChanged(IIII)V

    .line 127
    invoke-virtual {p0}, Lcom/fiio/music/widget/VerticalSeekBar;->invalidate()V

    goto :goto_1

    .line 118
    :cond_4
    invoke-virtual {p0}, Lcom/fiio/music/widget/VerticalSeekBar;->onStartTrackingTouch()V

    .line 119
    invoke-direct {p0, p1}, Lcom/fiio/music/widget/VerticalSeekBar;->a(Landroid/view/MotionEvent;)V

    .line 120
    invoke-virtual {p0}, Lcom/fiio/music/widget/VerticalSeekBar;->onStopTrackingTouch()V

    goto :goto_3

    .line 72
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setInScrollingContainer(Z)V
    .locals 0

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/fiio/music/widget/VerticalSeekBar;->e:Z

    .line 23
    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .locals 4

    .prologue
    .line 187
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 188
    invoke-virtual {p0}, Lcom/fiio/music/widget/VerticalSeekBar;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/fiio/music/widget/VerticalSeekBar;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/fiio/music/widget/VerticalSeekBar;->onSizeChanged(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    monitor-exit p0

    return-void

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
