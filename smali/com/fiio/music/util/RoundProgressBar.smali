.class public Lcom/fiio/music/util/RoundProgressBar;
.super Landroid/view/View;
.source "RoundProgressBar.java"


# instance fields
.field public a:I

.field private b:Landroid/graphics/Paint;

.field private c:I

.field private d:I

.field private e:I

.field private f:F

.field private g:F

.field private h:I

.field private i:I

.field private j:Z

.field private k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/fiio/music/util/RoundProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/fiio/music/util/RoundProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const v2, -0xff0100

    .line 85
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    const/16 v0, -0x5a

    iput v0, p0, Lcom/fiio/music/util/RoundProgressBar;->a:I

    .line 87
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/util/RoundProgressBar;->b:Landroid/graphics/Paint;

    .line 91
    sget-object v0, Lcom/fiio/music/R$styleable;->RoundProgressBar:[I

    .line 90
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 94
    const/high16 v1, -0x10000

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/fiio/music/util/RoundProgressBar;->c:I

    .line 95
    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/fiio/music/util/RoundProgressBar;->d:I

    .line 96
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/fiio/music/util/RoundProgressBar;->e:I

    .line 97
    const/4 v1, 0x4

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/fiio/music/util/RoundProgressBar;->f:F

    .line 98
    const/4 v1, 0x2

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/fiio/music/util/RoundProgressBar;->g:F

    .line 99
    const/4 v1, 0x5

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/fiio/music/util/RoundProgressBar;->h:I

    .line 100
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/fiio/music/util/RoundProgressBar;->j:Z

    .line 101
    const/4 v1, 0x7

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/fiio/music/util/RoundProgressBar;->k:I

    .line 103
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 104
    return-void
.end method


# virtual methods
.method public getCricleColor()I
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lcom/fiio/music/util/RoundProgressBar;->c:I

    return v0
.end method

.method public getCricleProgressColor()I
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Lcom/fiio/music/util/RoundProgressBar;->d:I

    return v0
.end method

.method public declared-synchronized getMax()I
    .locals 1

    .prologue
    .line 170
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/fiio/music/util/RoundProgressBar;->h:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProgress()I
    .locals 1

    .prologue
    .line 189
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/fiio/music/util/RoundProgressBar;->i:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRoundWidth()F
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lcom/fiio/music/util/RoundProgressBar;->g:F

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Lcom/fiio/music/util/RoundProgressBar;->e:I

    return v0
.end method

.method public getTextSize()F
    .locals 1

    .prologue
    .line 237
    iget v0, p0, Lcom/fiio/music/util/RoundProgressBar;->f:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/high16 v7, 0x40000000    # 2.0f

    .line 112
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 117
    invoke-virtual {p0}, Lcom/fiio/music/util/RoundProgressBar;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 118
    int-to-float v1, v0

    iget v2, p0, Lcom/fiio/music/util/RoundProgressBar;->g:F

    div-float/2addr v2, v7

    sub-float/2addr v1, v2

    float-to-int v2, v1

    .line 119
    iget-object v1, p0, Lcom/fiio/music/util/RoundProgressBar;->b:Landroid/graphics/Paint;

    iget v3, p0, Lcom/fiio/music/util/RoundProgressBar;->c:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 120
    iget-object v1, p0, Lcom/fiio/music/util/RoundProgressBar;->b:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 121
    iget-object v1, p0, Lcom/fiio/music/util/RoundProgressBar;->b:Landroid/graphics/Paint;

    iget v3, p0, Lcom/fiio/music/util/RoundProgressBar;->g:F

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 122
    iget-object v1, p0, Lcom/fiio/music/util/RoundProgressBar;->b:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 123
    int-to-float v1, v0

    int-to-float v3, v0

    int-to-float v5, v2

    iget-object v6, p0, Lcom/fiio/music/util/RoundProgressBar;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 130
    iget-object v1, p0, Lcom/fiio/music/util/RoundProgressBar;->b:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 131
    iget-object v1, p0, Lcom/fiio/music/util/RoundProgressBar;->b:Landroid/graphics/Paint;

    iget v3, p0, Lcom/fiio/music/util/RoundProgressBar;->e:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 132
    iget-object v1, p0, Lcom/fiio/music/util/RoundProgressBar;->b:Landroid/graphics/Paint;

    iget v3, p0, Lcom/fiio/music/util/RoundProgressBar;->f:F

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 133
    iget-object v1, p0, Lcom/fiio/music/util/RoundProgressBar;->b:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 134
    iget v1, p0, Lcom/fiio/music/util/RoundProgressBar;->i:I

    int-to-float v1, v1

    iget v3, p0, Lcom/fiio/music/util/RoundProgressBar;->h:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    .line 135
    iget-object v3, p0, Lcom/fiio/music/util/RoundProgressBar;->b:Landroid/graphics/Paint;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    .line 137
    iget-boolean v5, p0, Lcom/fiio/music/util/RoundProgressBar;->j:Z

    if-eqz v5, :cond_0

    if-eqz v1, :cond_0

    iget v5, p0, Lcom/fiio/music/util/RoundProgressBar;->k:I

    if-nez v5, :cond_0

    .line 138
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "%"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    int-to-float v5, v0

    div-float/2addr v3, v7

    sub-float v3, v5, v3

    int-to-float v5, v0

    iget v6, p0, Lcom/fiio/music/util/RoundProgressBar;->f:F

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/fiio/music/util/RoundProgressBar;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 147
    :cond_0
    iget-object v1, p0, Lcom/fiio/music/util/RoundProgressBar;->b:Landroid/graphics/Paint;

    iget v3, p0, Lcom/fiio/music/util/RoundProgressBar;->g:F

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 148
    iget-object v1, p0, Lcom/fiio/music/util/RoundProgressBar;->b:Landroid/graphics/Paint;

    iget v3, p0, Lcom/fiio/music/util/RoundProgressBar;->d:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 149
    new-instance v1, Landroid/graphics/RectF;

    sub-int v3, v0, v2

    int-to-float v3, v3

    sub-int v5, v0, v2

    int-to-float v5, v5

    .line 150
    add-int v6, v0, v2

    int-to-float v6, v6

    add-int/2addr v0, v2

    int-to-float v0, v0

    .line 149
    invoke-direct {v1, v3, v5, v6, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 152
    iget v0, p0, Lcom/fiio/music/util/RoundProgressBar;->k:I

    packed-switch v0, :pswitch_data_0

    .line 166
    :cond_1
    :goto_0
    return-void

    .line 154
    :pswitch_0
    iget-object v0, p0, Lcom/fiio/music/util/RoundProgressBar;->b:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 155
    iget v0, p0, Lcom/fiio/music/util/RoundProgressBar;->a:I

    int-to-float v2, v0

    iget v0, p0, Lcom/fiio/music/util/RoundProgressBar;->i:I

    mul-int/lit16 v0, v0, 0x168

    iget v3, p0, Lcom/fiio/music/util/RoundProgressBar;->h:I

    div-int/2addr v0, v3

    int-to-float v3, v0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/fiio/music/util/RoundProgressBar;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_0

    .line 159
    :pswitch_1
    iget-object v0, p0, Lcom/fiio/music/util/RoundProgressBar;->b:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 160
    iget v0, p0, Lcom/fiio/music/util/RoundProgressBar;->i:I

    if-eqz v0, :cond_1

    .line 161
    iget v0, p0, Lcom/fiio/music/util/RoundProgressBar;->a:I

    int-to-float v2, v0

    iget v0, p0, Lcom/fiio/music/util/RoundProgressBar;->i:I

    mul-int/lit16 v0, v0, 0x168

    iget v3, p0, Lcom/fiio/music/util/RoundProgressBar;->h:I

    div-int/2addr v0, v3

    int-to-float v3, v0

    iget-object v5, p0, Lcom/fiio/music/util/RoundProgressBar;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_0

    .line 152
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setCricleColor(I)V
    .locals 0

    .prologue
    .line 217
    iput p1, p0, Lcom/fiio/music/util/RoundProgressBar;->c:I

    .line 218
    return-void
.end method

.method public setCricleProgressColor(I)V
    .locals 0

    .prologue
    .line 225
    iput p1, p0, Lcom/fiio/music/util/RoundProgressBar;->d:I

    .line 226
    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 2

    .prologue
    .line 178
    monitor-enter p0

    if-gez p1, :cond_0

    .line 179
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "max not less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 181
    :cond_0
    :try_start_1
    iput p1, p0, Lcom/fiio/music/util/RoundProgressBar;->h:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .locals 2

    .prologue
    .line 198
    monitor-enter p0

    if-gez p1, :cond_0

    .line 199
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "progress not less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 201
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/fiio/music/util/RoundProgressBar;->h:I

    if-le p1, v0, :cond_1

    .line 202
    iget p1, p0, Lcom/fiio/music/util/RoundProgressBar;->h:I

    .line 204
    :cond_1
    iget v0, p0, Lcom/fiio/music/util/RoundProgressBar;->h:I

    if-gt p1, v0, :cond_2

    .line 205
    iput p1, p0, Lcom/fiio/music/util/RoundProgressBar;->i:I

    .line 206
    invoke-virtual {p0}, Lcom/fiio/music/util/RoundProgressBar;->postInvalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 209
    :cond_2
    monitor-exit p0

    return-void
.end method

.method public setRoundWidth(F)V
    .locals 0

    .prologue
    .line 249
    iput p1, p0, Lcom/fiio/music/util/RoundProgressBar;->g:F

    .line 250
    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    .prologue
    .line 233
    iput p1, p0, Lcom/fiio/music/util/RoundProgressBar;->e:I

    .line 234
    return-void
.end method

.method public setTextIsDisplayable(Z)V
    .locals 0

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/fiio/music/util/RoundProgressBar;->j:Z

    .line 108
    return-void
.end method

.method public setTextSize(F)V
    .locals 0

    .prologue
    .line 241
    iput p1, p0, Lcom/fiio/music/util/RoundProgressBar;->f:F

    .line 242
    return-void
.end method
