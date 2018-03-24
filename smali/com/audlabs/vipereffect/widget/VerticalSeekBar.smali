.class public Lcom/audlabs/vipereffect/widget/VerticalSeekBar;
.super Landroid/widget/SeekBar;
.source "VerticalSeekBar.java"


# instance fields
.field private isInScrollingContainer:Z

.field private mIsDragging:Z

.field private mScaledTouchSlop:I

.field private mTouchDownY:F

.field mTouchProgressOffset:F

.field private onSeekBarChangeListenerStart:Lcom/audlabs/vipereffect/widget/VerticalSeekBar$OnSeekBarChangeListenerStart;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/audlabs/vipereffect/widget/VerticalSeekBar;->isInScrollingContainer:Z

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/audlabs/vipereffect/widget/VerticalSeekBar;->isInScrollingContainer:Z

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/audlabs/vipereffect/widget/VerticalSeekBar;->isInScrollingContainer:Z

    .line 41
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/audlabs/vipereffect/widget/VerticalSeekBar;->mScaledTouchSlop:I

    .line 43
    return-void
.end method

.method private attemptClaimDrag()V
    .locals 2

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/widget/VerticalSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 217
    if-eqz v0, :cond_0

    .line 219
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 221
    :cond_0
    return-void
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 162
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/widget/VerticalSeekBar;->getHeight()I

    move-result v1

    .line 163
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/widget/VerticalSeekBar;->getPaddingTop()I

    move-result v2

    .line 164
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/widget/VerticalSeekBar;->getPaddingBottom()I

    move-result v3

    .line 165
    sub-int v4, v1, v2

    sub-int/2addr v4, v3

    .line 167
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    .line 173
    sub-int/2addr v1, v3

    if-le v5, v1, :cond_0

    move v1, v0

    .line 187
    :goto_0
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/widget/VerticalSeekBar;->getMax()I

    move-result v2

    .line 188
    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 190
    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/audlabs/vipereffect/widget/VerticalSeekBar;->setProgress(I)V

    .line 192
    return-void

    .line 177
    :cond_0
    if-ge v5, v2, :cond_1

    .line 179
    const/high16 v1, 0x3f800000    # 1.0f

    .line 180
    goto :goto_0

    .line 183
    :cond_1
    sub-int v0, v4, v5

    add-int/2addr v0, v2

    int-to-float v0, v0

    int-to-float v1, v4

    div-float v1, v0, v1

    .line 184
    iget v0, p0, Lcom/audlabs/vipereffect/widget/VerticalSeekBar;->mTouchProgressOffset:F

    goto :goto_0
.end method


# virtual methods
.method public isInScrollingContainer()Z
    .locals 1

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/audlabs/vipereffect/widget/VerticalSeekBar;->isInScrollingContainer:Z

    return v0
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 74
    monitor-enter p0

    const/high16 v0, -0x3d4c0000    # -90.0f

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 75
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/widget/VerticalSeekBar;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 76
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    monitor-exit p0

    return-void

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 2

    .prologue
    .line 67
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p2, p1}, Landroid/widget/SeekBar;->onMeasure(II)V

    .line 68
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/widget/VerticalSeekBar;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/audlabs/vipereffect/widget/VerticalSeekBar;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/audlabs/vipereffect/widget/VerticalSeekBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    monitor-exit p0

    return-void

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .prologue
    .line 59
    invoke-super {p0, p2, p1, p4, p3}, Landroid/widget/SeekBar;->onSizeChanged(IIII)V

    .line 61
    return-void
.end method

.method onStartTrackingTouch()V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/audlabs/vipereffect/widget/VerticalSeekBar;->onSeekBarChangeListenerStart:Lcom/audlabs/vipereffect/widget/VerticalSeekBar$OnSeekBarChangeListenerStart;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/audlabs/vipereffect/widget/VerticalSeekBar;->onSeekBarChangeListenerStart:Lcom/audlabs/vipereffect/widget/VerticalSeekBar$OnSeekBarChangeListenerStart;

    invoke-interface {v0, p0}, Lcom/audlabs/vipereffect/widget/VerticalSeekBar$OnSeekBarChangeListenerStart;->onStartTrackingTouch(Lcom/audlabs/vipereffect/widget/VerticalSeekBar;)V

    .line 202
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/audlabs/vipereffect/widget/VerticalSeekBar;->mIsDragging:Z

    .line 203
    return-void
.end method

.method onStopTrackingTouch()V
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/audlabs/vipereffect/widget/VerticalSeekBar;->mIsDragging:Z

    .line 212
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 82
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/widget/VerticalSeekBar;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 156
    :goto_0
    return v0

    .line 87
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_1
    move v0, v1

    .line 156
    goto :goto_0

    .line 90
    :pswitch_0
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/widget/VerticalSeekBar;->isInScrollingContainer()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 93
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/audlabs/vipereffect/widget/VerticalSeekBar;->mTouchDownY:F

    goto :goto_1

    .line 97
    :cond_1
    invoke-virtual {p0, v1}, Lcom/audlabs/vipereffect/widget/VerticalSeekBar;->setPressed(Z)V

    .line 99
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/widget/VerticalSeekBar;->invalidate()V

    .line 100
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/widget/VerticalSeekBar;->onStartTrackingTouch()V

    .line 101
    invoke-direct {p0, p1}, Lcom/audlabs/vipereffect/widget/VerticalSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 102
    invoke-direct {p0}, Lcom/audlabs/vipereffect/widget/VerticalSeekBar;->attemptClaimDrag()V

    .line 104
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/widget/VerticalSeekBar;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/audlabs/vipereffect/widget/VerticalSeekBar;->getHeight()I

    move-result v3

    invoke-virtual {p0, v2, v3, v0, v0}, Lcom/audlabs/vipereffect/widget/VerticalSeekBar;->onSizeChanged(IIII)V

    goto :goto_1

    .line 109
    :pswitch_1
    iget-boolean v2, p0, Lcom/audlabs/vipereffect/widget/VerticalSeekBar;->mIsDragging:Z

    if-eqz v2, :cond_3

    .line 111
    invoke-direct {p0, p1}, Lcom/audlabs/vipereffect/widget/VerticalSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 128
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/widget/VerticalSeekBar;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/audlabs/vipereffect/widget/VerticalSeekBar;->getHeight()I

    move-result v3

    invoke-virtual {p0, v2, v3, v0, v0}, Lcom/audlabs/vipereffect/widget/VerticalSeekBar;->onSizeChanged(IIII)V

    goto :goto_1

    .line 116
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 117
    iget v3, p0, Lcom/audlabs/vipereffect/widget/VerticalSeekBar;->mTouchDownY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/audlabs/vipereffect/widget/VerticalSeekBar;->mScaledTouchSlop:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 119
    invoke-virtual {p0, v1}, Lcom/audlabs/vipereffect/widget/VerticalSeekBar;->setPressed(Z)V

    .line 121
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/widget/VerticalSeekBar;->invalidate()V

    .line 122
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/widget/VerticalSeekBar;->onStartTrackingTouch()V

    .line 123
    invoke-direct {p0, p1}, Lcom/audlabs/vipereffect/widget/VerticalSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 124
    invoke-direct {p0}, Lcom/audlabs/vipereffect/widget/VerticalSeekBar;->attemptClaimDrag()V

    goto :goto_2

    .line 132
    :pswitch_2
    iget-boolean v2, p0, Lcom/audlabs/vipereffect/widget/VerticalSeekBar;->mIsDragging:Z

    if-eqz v2, :cond_4

    .line 134
    invoke-direct {p0, p1}, Lcom/audlabs/vipereffect/widget/VerticalSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 135
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/widget/VerticalSeekBar;->onStopTrackingTouch()V

    .line 136
    invoke-virtual {p0, v0}, Lcom/audlabs/vipereffect/widget/VerticalSeekBar;->setPressed(Z)V

    .line 149
    :goto_3
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/widget/VerticalSeekBar;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/audlabs/vipereffect/widget/VerticalSeekBar;->getHeight()I

    move-result v3

    invoke-virtual {p0, v2, v3, v0, v0}, Lcom/audlabs/vipereffect/widget/VerticalSeekBar;->onSizeChanged(IIII)V

    .line 153
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/widget/VerticalSeekBar;->invalidate()V

    goto :goto_1

    .line 144
    :cond_4
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/widget/VerticalSeekBar;->onStartTrackingTouch()V

    .line 145
    invoke-direct {p0, p1}, Lcom/audlabs/vipereffect/widget/VerticalSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 146
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/widget/VerticalSeekBar;->onStopTrackingTouch()V

    goto :goto_3

    .line 87
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
    .line 29
    iput-boolean p1, p0, Lcom/audlabs/vipereffect/widget/VerticalSeekBar;->isInScrollingContainer:Z

    .line 30
    return-void
.end method

.method public setOnSeekBarChangeListenerStart(Lcom/audlabs/vipereffect/widget/VerticalSeekBar$OnSeekBarChangeListenerStart;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/audlabs/vipereffect/widget/VerticalSeekBar;->onSeekBarChangeListenerStart:Lcom/audlabs/vipereffect/widget/VerticalSeekBar$OnSeekBarChangeListenerStart;

    .line 245
    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .locals 4

    .prologue
    .line 227
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 228
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 230
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/widget/VerticalSeekBar;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/audlabs/vipereffect/widget/VerticalSeekBar;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/audlabs/vipereffect/widget/VerticalSeekBar;->onSizeChanged(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    :goto_0
    monitor-exit p0

    return-void

    .line 232
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/widget/VerticalSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/audlabs/vipereffect/widget/g;

    invoke-direct {v1, p0}, Lcom/audlabs/vipereffect/widget/g;-><init>(Lcom/audlabs/vipereffect/widget/VerticalSeekBar;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
