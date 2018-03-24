.class public Lcom/audlabs/vipereffect/widget/TouchRotateButton;
.super Landroid/widget/ImageView;
.source "TouchRotateButton.java"


# instance fields
.field private MAX_DEGREE:F

.field private MIN_DEGREE:F

.field private bgImageInt:I

.field private bgPressImageInt:I

.field private centerX:F

.field private centerY:F

.field private changeDegree:F

.field private curDegree:F

.field private curTouchX:F

.field private curTouchY:F

.field private isDisable:Z

.field private m:Landroid/graphics/Matrix;

.field private onChangeDegreeListening:Lcom/audlabs/vipereffect/widget/TouchRotateButton$OnChangeDegreeListening;

.field private onDownUpListening:Lcom/audlabs/vipereffect/widget/TouchRotateButton$OnDownUpListening;

.field private saveX:F

.field private saveY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->isDisable:Z

    .line 24
    const/high16 v0, 0x41f00000    # 30.0f

    iput v0, p0, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->MIN_DEGREE:F

    .line 25
    const/high16 v0, 0x43a50000    # 330.0f

    iput v0, p0, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->MAX_DEGREE:F

    .line 43
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 44
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->m:Landroid/graphics/Matrix;

    .line 46
    return-void
.end method

.method private getActionDegrees(FFFFFF)D
    .locals 10

    .prologue
    .line 146
    sub-float v0, p3, p5

    sub-float v1, p3, p5

    mul-float/2addr v0, v1

    sub-float v1, p4, p6

    sub-float v2, p4, p6

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 147
    sub-float v2, p1, p5

    sub-float v3, p1, p5

    mul-float/2addr v2, v3

    sub-float v3, p2, p6

    sub-float v4, p2, p6

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 148
    sub-float v4, p3, p1

    sub-float v5, p3, p1

    mul-float/2addr v4, v5

    sub-float v5, p4, p2

    sub-float v6, p4, p2

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .line 150
    mul-double v6, v2, v2

    mul-double v8, v4, v4

    add-double/2addr v6, v8

    mul-double/2addr v0, v0

    sub-double v0, v6, v0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v6

    mul-double/2addr v2, v4

    div-double/2addr v0, v2

    .line 152
    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    .line 153
    const-wide v2, 0x4066800000000000L    # 180.0

    mul-double/2addr v0, v2

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v2

    .line 157
    cmpg-float v2, p4, p2

    if-gez v2, :cond_2

    cmpg-float v2, p6, p2

    if-gez v2, :cond_2

    .line 158
    cmpg-float v2, p3, p1

    if-gez v2, :cond_1

    cmpl-float v2, p5, p1

    if-lez v2, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-wide v0

    .line 162
    :cond_1
    cmpl-float v2, p3, p1

    if-ltz v2, :cond_2

    cmpg-float v2, p5, p1

    if-gtz v2, :cond_2

    .line 163
    neg-double v0, v0

    goto :goto_0

    .line 167
    :cond_2
    cmpl-float v2, p4, p2

    if-lez v2, :cond_4

    cmpl-float v2, p6, p2

    if-lez v2, :cond_4

    .line 169
    cmpg-float v2, p3, p1

    if-gez v2, :cond_3

    cmpl-float v2, p5, p1

    if-lez v2, :cond_3

    .line 170
    neg-double v0, v0

    goto :goto_0

    .line 173
    :cond_3
    cmpl-float v2, p3, p1

    if-lez v2, :cond_4

    cmpg-float v2, p5, p1

    if-ltz v2, :cond_0

    .line 179
    :cond_4
    cmpg-float v2, p3, p1

    if-gez v2, :cond_6

    cmpg-float v2, p5, p1

    if-gez v2, :cond_6

    .line 181
    cmpg-float v2, p4, p2

    if-gez v2, :cond_5

    cmpl-float v2, p6, p2

    if-lez v2, :cond_5

    .line 182
    neg-double v0, v0

    goto :goto_0

    .line 185
    :cond_5
    cmpl-float v2, p4, p2

    if-lez v2, :cond_6

    cmpg-float v2, p6, p2

    if-ltz v2, :cond_0

    .line 190
    :cond_6
    cmpl-float v2, p3, p1

    if-lez v2, :cond_8

    cmpl-float v2, p5, p1

    if-lez v2, :cond_8

    .line 192
    cmpl-float v2, p4, p2

    if-lez v2, :cond_7

    cmpg-float v2, p6, p2

    if-gez v2, :cond_7

    .line 193
    neg-double v0, v0

    goto :goto_0

    .line 196
    :cond_7
    cmpg-float v2, p4, p2

    if-gez v2, :cond_8

    cmpl-float v2, p6, p2

    if-gtz v2, :cond_0

    .line 202
    :cond_8
    sub-float v2, p4, p2

    sub-float v3, p3, p1

    div-float/2addr v2, v3

    .line 203
    sub-float v3, p6, p2

    sub-float v4, p5, p1

    div-float/2addr v3, v4

    .line 204
    cmpl-float v4, p3, p1

    if-lez v4, :cond_9

    cmpl-float v4, p4, p2

    if-lez v4, :cond_9

    cmpl-float v4, p5, p1

    if-lez v4, :cond_9

    cmpl-float v4, p6, p2

    if-lez v4, :cond_9

    cmpl-float v4, v2, v3

    if-gtz v4, :cond_c

    .line 205
    :cond_9
    cmpl-float v4, p3, p1

    if-lez v4, :cond_a

    cmpg-float v4, p4, p2

    if-gez v4, :cond_a

    cmpl-float v4, p5, p1

    if-lez v4, :cond_a

    cmpg-float v4, p6, p2

    if-gez v4, :cond_a

    cmpl-float v4, v2, v3

    if-gtz v4, :cond_c

    .line 206
    :cond_a
    cmpg-float v4, p3, p1

    if-gez v4, :cond_b

    cmpg-float v4, p4, p2

    if-gez v4, :cond_b

    cmpg-float v4, p5, p1

    if-gez v4, :cond_b

    cmpg-float v4, p6, p2

    if-gez v4, :cond_b

    cmpl-float v4, v2, v3

    if-gtz v4, :cond_c

    .line 207
    :cond_b
    cmpg-float v4, p3, p1

    if-gez v4, :cond_0

    cmpl-float v4, p4, p2

    if-lez v4, :cond_0

    cmpg-float v4, p5, p1

    if-gez v4, :cond_0

    cmpl-float v4, p6, p2

    if-lez v4, :cond_0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 208
    :cond_c
    neg-double v0, v0

    goto/16 :goto_0
.end method

.method private handleTouch(Landroid/view/MotionEvent;)V
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->curTouchX:F

    .line 78
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->curTouchY:F

    .line 80
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 82
    :pswitch_0
    iget v0, p0, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->bgPressImageInt:I

    invoke-virtual {p0, v0}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setImageResource(I)V

    .line 83
    invoke-direct {p0}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->saveTouchPoint()V

    .line 84
    iget-object v0, p0, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->onDownUpListening:Lcom/audlabs/vipereffect/widget/TouchRotateButton$OnDownUpListening;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->onDownUpListening:Lcom/audlabs/vipereffect/widget/TouchRotateButton$OnDownUpListening;

    invoke-interface {v0}, Lcom/audlabs/vipereffect/widget/TouchRotateButton$OnDownUpListening;->onDown()V

    goto :goto_0

    .line 88
    :pswitch_1
    invoke-direct {p0}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->handleTouchMove()V

    goto :goto_0

    .line 91
    :pswitch_2
    iget v0, p0, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->bgImageInt:I

    invoke-virtual {p0, v0}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setImageResource(I)V

    .line 92
    iget-object v0, p0, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->onDownUpListening:Lcom/audlabs/vipereffect/widget/TouchRotateButton$OnDownUpListening;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->onDownUpListening:Lcom/audlabs/vipereffect/widget/TouchRotateButton$OnDownUpListening;

    invoke-interface {v0}, Lcom/audlabs/vipereffect/widget/TouchRotateButton$OnDownUpListening;->onUp()V

    goto :goto_0

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private handleTouchMove()V
    .locals 7

    .prologue
    .line 100
    iget v1, p0, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->centerX:F

    iget v2, p0, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->centerY:F

    iget v3, p0, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->saveX:F

    iget v4, p0, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->saveY:F

    .line 101
    iget v5, p0, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->curTouchX:F

    iget v6, p0, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->curTouchY:F

    move-object v0, p0

    .line 100
    invoke-direct/range {v0 .. v6}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->getActionDegrees(FFFFFF)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->changeDegree:F

    .line 102
    iget v0, p0, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->curDegree:F

    iget v1, p0, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->changeDegree:F

    add-float/2addr v0, v1

    .line 103
    iget v1, p0, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->MIN_DEGREE:F

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->MAX_DEGREE:F

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    .line 104
    invoke-direct {p0, v0}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->optimize(F)V

    .line 105
    iget-object v0, p0, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->m:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->curDegree:F

    iget v2, p0, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->centerX:F

    iget v3, p0, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->centerY:F

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 106
    iget-object v0, p0, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->m:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 109
    :cond_0
    invoke-direct {p0}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->saveTouchPoint()V

    .line 110
    iget-object v0, p0, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->onChangeDegreeListening:Lcom/audlabs/vipereffect/widget/TouchRotateButton$OnChangeDegreeListening;

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->onChangeDegreeListening:Lcom/audlabs/vipereffect/widget/TouchRotateButton$OnChangeDegreeListening;

    iget v1, p0, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->curDegree:F

    invoke-interface {v0, v1}, Lcom/audlabs/vipereffect/widget/TouchRotateButton$OnChangeDegreeListening;->onChangeDegree(F)V

    .line 112
    :cond_1
    return-void
.end method

.method private optimize(F)V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 115
    iget v0, p0, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->MAX_DEGREE:F

    sub-float/2addr v0, v1

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 116
    iget v0, p0, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->MAX_DEGREE:F

    iput v0, p0, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->curDegree:F

    .line 124
    :goto_0
    return-void

    .line 117
    :cond_0
    iget v0, p0, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->MIN_DEGREE:F

    add-float/2addr v0, v1

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 118
    iget v0, p0, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->MIN_DEGREE:F

    iput v0, p0, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->curDegree:F

    goto :goto_0

    .line 120
    :cond_1
    iput p1, p0, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->curDegree:F

    goto :goto_0
.end method

.method private saveTouchPoint()V
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->curTouchX:F

    iput v0, p0, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->saveX:F

    .line 128
    iget v0, p0, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->curTouchY:F

    iput v0, p0, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->saveY:F

    .line 130
    return-void
.end method


# virtual methods
.method public getCurDegree()F
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->curDegree:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 61
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 68
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 69
    iget-boolean v1, p0, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->isDisable:Z

    if-eqz v1, :cond_0

    .line 70
    const/4 v0, 0x0

    .line 73
    :goto_0
    return v0

    .line 72
    :cond_0
    invoke-direct {p0, p1}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->handleTouch(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method public setBgImageInt(I)V
    .locals 2

    .prologue
    .line 225
    iput p1, p0, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->bgImageInt:I

    .line 226
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 227
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, p0, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->centerX:F

    .line 228
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, p0, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->centerY:F

    .line 229
    invoke-virtual {p0, v0}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 230
    return-void
.end method

.method public setBgPressImageInt(I)V
    .locals 0

    .prologue
    .line 233
    iput p1, p0, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->bgPressImageInt:I

    .line 234
    return-void
.end method

.method public setCurDegree(F)V
    .locals 3

    .prologue
    .line 217
    iget v0, p0, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->MIN_DEGREE:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->MAX_DEGREE:F

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 218
    iput p1, p0, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->curDegree:F

    .line 219
    iget-object v0, p0, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->m:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->centerX:F

    iget v2, p0, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->centerY:F

    invoke-virtual {v0, p1, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 220
    iget-object v0, p0, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->m:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 222
    :cond_0
    return-void
.end method

.method public setDisable(Z)V
    .locals 0

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->isDisable:Z

    .line 65
    return-void
.end method

.method public setMAX_DEGREE(F)V
    .locals 0

    .prologue
    .line 249
    iput p1, p0, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->MAX_DEGREE:F

    .line 250
    return-void
.end method

.method public setMIN_DEGREE(F)V
    .locals 0

    .prologue
    .line 245
    iput p1, p0, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->MIN_DEGREE:F

    .line 246
    return-void
.end method

.method public setOnChangeDegreeListening(Lcom/audlabs/vipereffect/widget/TouchRotateButton$OnChangeDegreeListening;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->onChangeDegreeListening:Lcom/audlabs/vipereffect/widget/TouchRotateButton$OnChangeDegreeListening;

    .line 238
    return-void
.end method

.method public setOnDownUpListening(Lcom/audlabs/vipereffect/widget/TouchRotateButton$OnDownUpListening;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->onDownUpListening:Lcom/audlabs/vipereffect/widget/TouchRotateButton$OnDownUpListening;

    .line 242
    return-void
.end method
