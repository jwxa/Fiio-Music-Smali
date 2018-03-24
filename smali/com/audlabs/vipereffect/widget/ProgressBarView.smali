.class public Lcom/audlabs/vipereffect/widget/ProgressBarView;
.super Landroid/view/View;
.source "ProgressBarView.java"


# static fields
.field private static final ARC_FULL_DEGREE:I = 0x12c


# instance fields
.field private STROKE_WIDTH:I

.field private centerX:I

.field private centerY:I

.field private circleRadius:I

.field private circleRectF:Landroid/graphics/RectF;

.field private colorId:I

.field private draggingEnabled:Z

.field private height:I

.field private max:F

.field private progress:F

.field private progressPaint:Landroid/graphics/Paint;

.field private thumbPaint:Landroid/graphics/Paint;

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/audlabs/vipereffect/widget/ProgressBarView;->draggingEnabled:Z

    .line 79
    invoke-direct {p0}, Lcom/audlabs/vipereffect/widget/ProgressBarView;->init()V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/audlabs/vipereffect/widget/ProgressBarView;->draggingEnabled:Z

    .line 85
    invoke-direct {p0}, Lcom/audlabs/vipereffect/widget/ProgressBarView;->init()V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/audlabs/vipereffect/widget/ProgressBarView;->draggingEnabled:Z

    .line 91
    invoke-direct {p0}, Lcom/audlabs/vipereffect/widget/ProgressBarView;->init()V

    .line 92
    return-void
.end method

.method private checkProgress(F)F
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 353
    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    move p1, v0

    .line 358
    :cond_0
    :goto_0
    return p1

    :cond_1
    iget v0, p0, Lcom/audlabs/vipereffect/widget/ProgressBarView;->max:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget p1, p0, Lcom/audlabs/vipereffect/widget/ProgressBarView;->max:F

    goto :goto_0
.end method

.method private init()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 96
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/audlabs/vipereffect/widget/ProgressBarView;->progressPaint:Landroid/graphics/Paint;

    .line 97
    iget-object v0, p0, Lcom/audlabs/vipereffect/widget/ProgressBarView;->progressPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 105
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/audlabs/vipereffect/widget/ProgressBarView;->thumbPaint:Landroid/graphics/Paint;

    .line 106
    iget-object v0, p0, Lcom/audlabs/vipereffect/widget/ProgressBarView;->thumbPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 108
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/widget/ProgressBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/audlabs/vipereffect/widget/ProgressBarView;->colorId:I

    .line 113
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .prologue
    const/high16 v4, 0x43960000    # 300.0f

    const/high16 v2, 0x42f00000    # 120.0f

    const v11, 0x7f08000e

    const-wide v12, 0x3fe0c15240000000L    # 0.5235987901687622

    const/4 v10, 0x0

    .line 152
    iget v0, p0, Lcom/audlabs/vipereffect/widget/ProgressBarView;->progress:F

    iget v1, p0, Lcom/audlabs/vipereffect/widget/ProgressBarView;->max:F

    div-float/2addr v0, v1

    mul-float v3, v4, v0

    .line 154
    sub-float v7, v4, v3

    .line 157
    cmpg-float v0, v3, v10

    if-gtz v0, :cond_0

    .line 158
    const/high16 v3, 0x3f800000    # 1.0f

    .line 159
    iget-object v0, p0, Lcom/audlabs/vipereffect/widget/ProgressBarView;->progressPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/audlabs/vipereffect/widget/ProgressBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 163
    :goto_0
    iget-object v0, p0, Lcom/audlabs/vipereffect/widget/ProgressBarView;->progressPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 164
    iget-object v0, p0, Lcom/audlabs/vipereffect/widget/ProgressBarView;->progressPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 165
    iget v0, p0, Lcom/audlabs/vipereffect/widget/ProgressBarView;->centerX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/audlabs/vipereffect/widget/ProgressBarView;->circleRadius:I

    int-to-float v1, v1

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v1, v4

    sub-float/2addr v0, v1

    .line 167
    iget v1, p0, Lcom/audlabs/vipereffect/widget/ProgressBarView;->centerY:I

    int-to-float v1, v1

    iget v4, p0, Lcom/audlabs/vipereffect/widget/ProgressBarView;->circleRadius:I

    int-to-float v4, v4

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v5, v8

    mul-float/2addr v4, v5

    add-float/2addr v1, v4

    .line 168
    iget v4, p0, Lcom/audlabs/vipereffect/widget/ProgressBarView;->STROKE_WIDTH:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget-object v5, p0, Lcom/audlabs/vipereffect/widget/ProgressBarView;->progressPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 172
    iget-object v0, p0, Lcom/audlabs/vipereffect/widget/ProgressBarView;->progressPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/audlabs/vipereffect/widget/ProgressBarView;->STROKE_WIDTH:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 173
    iget-object v0, p0, Lcom/audlabs/vipereffect/widget/ProgressBarView;->progressPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 174
    iget-object v1, p0, Lcom/audlabs/vipereffect/widget/ProgressBarView;->circleRectF:Landroid/graphics/RectF;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/audlabs/vipereffect/widget/ProgressBarView;->progressPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 176
    iget-object v0, p0, Lcom/audlabs/vipereffect/widget/ProgressBarView;->progressPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/audlabs/vipereffect/widget/ProgressBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 177
    iget-object v5, p0, Lcom/audlabs/vipereffect/widget/ProgressBarView;->circleRectF:Landroid/graphics/RectF;

    add-float v6, v2, v3

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/audlabs/vipereffect/widget/ProgressBarView;->progressPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 181
    cmpl-float v0, v7, v10

    if-lez v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/audlabs/vipereffect/widget/ProgressBarView;->progressPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/audlabs/vipereffect/widget/ProgressBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 186
    :goto_1
    iget-object v0, p0, Lcom/audlabs/vipereffect/widget/ProgressBarView;->progressPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 187
    iget-object v0, p0, Lcom/audlabs/vipereffect/widget/ProgressBarView;->progressPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 188
    iget v0, p0, Lcom/audlabs/vipereffect/widget/ProgressBarView;->centerX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/audlabs/vipereffect/widget/ProgressBarView;->circleRadius:I

    int-to-float v1, v1

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v2, v4

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 189
    iget v1, p0, Lcom/audlabs/vipereffect/widget/ProgressBarView;->centerY:I

    int-to-float v1, v1

    iget v2, p0, Lcom/audlabs/vipereffect/widget/ProgressBarView;->circleRadius:I

    int-to-float v2, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v2, v4

    add-float/2addr v1, v2

    .line 190
    iget v2, p0, Lcom/audlabs/vipereffect/widget/ProgressBarView;->STROKE_WIDTH:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v4, p0, Lcom/audlabs/vipereffect/widget/ProgressBarView;->progressPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 220
    const/high16 v0, 0x41f00000    # 30.0f

    add-float/2addr v0, v3

    const/high16 v1, 0x43340000    # 180.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v4

    double-to-float v0, v0

    .line 221
    iget v1, p0, Lcom/audlabs/vipereffect/widget/ProgressBarView;->centerX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/audlabs/vipereffect/widget/ProgressBarView;->circleRadius:I

    int-to-float v2, v2

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v2, v4

    sub-float/2addr v1, v2

    .line 222
    iget v2, p0, Lcom/audlabs/vipereffect/widget/ProgressBarView;->centerY:I

    int-to-float v2, v2

    iget v4, p0, Lcom/audlabs/vipereffect/widget/ProgressBarView;->circleRadius:I

    int-to-float v4, v4

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v0, v6

    mul-float/2addr v0, v4

    add-float/2addr v0, v2

    .line 227
    cmpg-float v2, v3, v10

    if-gtz v2, :cond_2

    .line 228
    iget-object v2, p0, Lcom/audlabs/vipereffect/widget/ProgressBarView;->thumbPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/audlabs/vipereffect/widget/ProgressBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 232
    :goto_2
    iget v2, p0, Lcom/audlabs/vipereffect/widget/ProgressBarView;->STROKE_WIDTH:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/audlabs/vipereffect/widget/ProgressBarView;->thumbPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 233
    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/audlabs/vipereffect/widget/ProgressBarView;->progressPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/audlabs/vipereffect/widget/ProgressBarView;->colorId:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_0

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/audlabs/vipereffect/widget/ProgressBarView;->progressPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/audlabs/vipereffect/widget/ProgressBarView;->colorId:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_1

    .line 230
    :cond_2
    iget-object v2, p0, Lcom/audlabs/vipereffect/widget/ProgressBarView;->thumbPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/audlabs/vipereffect/widget/ProgressBarView;->colorId:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 3

    .prologue
    .line 118
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 121
    iget v0, p0, Lcom/audlabs/vipereffect/widget/ProgressBarView;->width:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/audlabs/vipereffect/widget/ProgressBarView;->height:I

    if-nez v0, :cond_1

    .line 122
    :cond_0
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/widget/ProgressBarView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/audlabs/vipereffect/widget/ProgressBarView;->width:I

    .line 123
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/widget/ProgressBarView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/audlabs/vipereffect/widget/ProgressBarView;->height:I

    .line 127
    iget v0, p0, Lcom/audlabs/vipereffect/widget/ProgressBarView;->width:I

    iget v1, p0, Lcom/audlabs/vipereffect/widget/ProgressBarView;->height:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/audlabs/vipereffect/widget/ProgressBarView;->circleRadius:I

    .line 128
    iget v0, p0, Lcom/audlabs/vipereffect/widget/ProgressBarView;->circleRadius:I

    div-int/lit8 v0, v0, 0xc

    iput v0, p0, Lcom/audlabs/vipereffect/widget/ProgressBarView;->STROKE_WIDTH:I

    .line 129
    iget v0, p0, Lcom/audlabs/vipereffect/widget/ProgressBarView;->circleRadius:I

    iget v1, p0, Lcom/audlabs/vipereffect/widget/ProgressBarView;->STROKE_WIDTH:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/audlabs/vipereffect/widget/ProgressBarView;->circleRadius:I

    .line 132
    iget v0, p0, Lcom/audlabs/vipereffect/widget/ProgressBarView;->width:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/audlabs/vipereffect/widget/ProgressBarView;->centerX:I

    .line 133
    iget v0, p0, Lcom/audlabs/vipereffect/widget/ProgressBarView;->height:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/audlabs/vipereffect/widget/ProgressBarView;->centerY:I

    .line 137
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/audlabs/vipereffect/widget/ProgressBarView;->circleRectF:Landroid/graphics/RectF;

    .line 138
    iget-object v0, p0, Lcom/audlabs/vipereffect/widget/ProgressBarView;->circleRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/audlabs/vipereffect/widget/ProgressBarView;->centerX:I

    iget v2, p0, Lcom/audlabs/vipereffect/widget/ProgressBarView;->circleRadius:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 139
    iget-object v0, p0, Lcom/audlabs/vipereffect/widget/ProgressBarView;->circleRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/audlabs/vipereffect/widget/ProgressBarView;->centerY:I

    iget v2, p0, Lcom/audlabs/vipereffect/widget/ProgressBarView;->circleRadius:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 140
    iget-object v0, p0, Lcom/audlabs/vipereffect/widget/ProgressBarView;->circleRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/audlabs/vipereffect/widget/ProgressBarView;->centerX:I

    iget v2, p0, Lcom/audlabs/vipereffect/widget/ProgressBarView;->circleRadius:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 141
    iget-object v0, p0, Lcom/audlabs/vipereffect/widget/ProgressBarView;->circleRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/audlabs/vipereffect/widget/ProgressBarView;->centerY:I

    iget v2, p0, Lcom/audlabs/vipereffect/widget/ProgressBarView;->circleRadius:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 143
    :cond_1
    return-void
.end method

.method public setColorId(I)V
    .locals 0

    .prologue
    .line 236
    iput p1, p0, Lcom/audlabs/vipereffect/widget/ProgressBarView;->colorId:I

    .line 237
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/widget/ProgressBarView;->invalidate()V

    .line 238
    return-void
.end method

.method public setMax(I)V
    .locals 1

    .prologue
    .line 323
    int-to-float v0, p1

    iput v0, p0, Lcom/audlabs/vipereffect/widget/ProgressBarView;->max:F

    .line 324
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/widget/ProgressBarView;->invalidate()V

    .line 325
    return-void
.end method

.method public setProgressSync(F)V
    .locals 1

    .prologue
    .line 346
    invoke-direct {p0, p1}, Lcom/audlabs/vipereffect/widget/ProgressBarView;->checkProgress(F)F

    move-result v0

    iput v0, p0, Lcom/audlabs/vipereffect/widget/ProgressBarView;->progress:F

    .line 347
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/widget/ProgressBarView;->invalidate()V

    .line 348
    return-void
.end method
