.class public Lcom/fiio/music/slidemenu/CustomViewBehind;
.super Landroid/view/ViewGroup;
.source "CustomViewBehind.java"


# instance fields
.field private a:I

.field private b:Lcom/fiio/music/slidemenu/CustomViewAbove;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:I

.field private f:I

.field private g:Lcom/fiio/music/slidemenu/g;

.field private h:Z

.field private i:I

.field private j:Z

.field private final k:Landroid/graphics/Paint;

.field private l:F

.field private m:Landroid/graphics/drawable/Drawable;

.field private n:Landroid/graphics/drawable/Drawable;

.field private o:I

.field private p:F

.field private q:Z

.field private r:Landroid/graphics/Bitmap;

.field private s:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/fiio/music/slidemenu/CustomViewBehind;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->a:I

    .line 154
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->k:Landroid/graphics/Paint;

    .line 388
    iput-boolean v2, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->q:Z

    .line 45
    const/high16 v0, 0x42400000    # 48.0f

    invoke-virtual {p0}, Lcom/fiio/music/slidemenu/CustomViewBehind;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 44
    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->e:I

    .line 46
    return-void
.end method

.method private getSelectorTop()I
    .locals 3

    .prologue
    .line 433
    iget-object v0, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->s:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 434
    iget-object v1, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->s:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->r:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 435
    return v0
.end method


# virtual methods
.method public final a(I)I
    .locals 4

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 209
    if-le p1, v3, :cond_1

    move p1, v0

    .line 210
    :cond_0
    :goto_0
    iget v2, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->i:I

    if-nez v2, :cond_2

    if-le p1, v3, :cond_2

    .line 215
    :goto_1
    return v1

    .line 209
    :cond_1
    if-gtz p1, :cond_0

    move p1, v1

    goto :goto_0

    .line 212
    :cond_2
    iget v1, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->i:I

    if-ne v1, v3, :cond_3

    if-gtz p1, :cond_3

    move v1, v0

    .line 213
    goto :goto_1

    :cond_3
    move v1, p1

    .line 215
    goto :goto_1
.end method

.method public final a(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 271
    iget v0, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->i:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->i:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 272
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/fiio/music/slidemenu/CustomViewBehind;->getBehindWidth()I

    move-result v1

    sub-int/2addr v0, v1

    .line 276
    :goto_0
    return v0

    .line 273
    :cond_1
    iget v0, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 274
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_0

    .line 276
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/view/View;I)I
    .locals 2

    .prologue
    .line 245
    iget v0, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->i:I

    if-nez v0, :cond_1

    .line 246
    packed-switch p2, :pswitch_data_0

    .line 267
    :cond_0
    :goto_0
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    :goto_1
    return v0

    .line 248
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/fiio/music/slidemenu/CustomViewBehind;->getBehindWidth()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_1

    .line 250
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_1

    .line 252
    :cond_1
    iget v0, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 253
    packed-switch p2, :pswitch_data_1

    :pswitch_3
    goto :goto_0

    .line 255
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_1

    .line 257
    :pswitch_5
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/fiio/music/slidemenu/CustomViewBehind;->getBehindWidth()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1

    .line 259
    :cond_2
    iget v0, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->i:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 260
    packed-switch p2, :pswitch_data_2

    :pswitch_6
    goto :goto_0

    .line 262
    :pswitch_7
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/fiio/music/slidemenu/CustomViewBehind;->getBehindWidth()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_1

    .line 264
    :pswitch_8
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/fiio/music/slidemenu/CustomViewBehind;->getBehindWidth()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1

    .line 246
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 253
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch

    .line 260
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method

.method public final a(Landroid/view/View;II)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 220
    .line 221
    iget v2, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->i:I

    if-nez v2, :cond_3

    .line 222
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lt p2, v2, :cond_0

    move v0, v1

    .line 223
    :cond_0
    invoke-virtual {p0}, Lcom/fiio/music/slidemenu/CustomViewBehind;->getBehindWidth()I

    move-result v2

    add-int/2addr v2, p2

    int-to-float v2, v2

    iget v3, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->l:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p0, v2, p3}, Lcom/fiio/music/slidemenu/CustomViewBehind;->scrollTo(II)V

    .line 239
    :cond_1
    :goto_0
    if-ne v0, v1, :cond_2

    .line 240
    const-string v1, "CustomViewBehind"

    const-string v2, "behind INVISIBLE"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_2
    invoke-virtual {p0, v0}, Lcom/fiio/music/slidemenu/CustomViewBehind;->setVisibility(I)V

    .line 242
    return-void

    .line 224
    :cond_3
    iget v2, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->i:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 225
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-gt p2, v2, :cond_4

    move v0, v1

    .line 226
    :cond_4
    invoke-virtual {p0}, Lcom/fiio/music/slidemenu/CustomViewBehind;->getBehindWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/fiio/music/slidemenu/CustomViewBehind;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 227
    invoke-virtual {p0}, Lcom/fiio/music/slidemenu/CustomViewBehind;->getBehindWidth()I

    move-result v3

    sub-int v3, p2, v3

    int-to-float v3, v3

    iget v4, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->l:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 226
    invoke-virtual {p0, v2, p3}, Lcom/fiio/music/slidemenu/CustomViewBehind;->scrollTo(II)V

    goto :goto_0

    .line 228
    :cond_5
    iget v2, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->i:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 229
    iget-object v3, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->c:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lt p2, v2, :cond_7

    move v2, v1

    :goto_1
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 230
    iget-object v3, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->d:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-gt p2, v2, :cond_8

    move v2, v1

    :goto_2
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 231
    if-nez p2, :cond_6

    move v0, v1

    .line 232
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-gt p2, v2, :cond_9

    .line 233
    invoke-virtual {p0}, Lcom/fiio/music/slidemenu/CustomViewBehind;->getBehindWidth()I

    move-result v2

    add-int/2addr v2, p2

    int-to-float v2, v2

    iget v3, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->l:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p0, v2, p3}, Lcom/fiio/music/slidemenu/CustomViewBehind;->scrollTo(II)V

    goto :goto_0

    :cond_7
    move v2, v0

    .line 229
    goto :goto_1

    :cond_8
    move v2, v0

    .line 230
    goto :goto_2

    .line 235
    :cond_9
    invoke-virtual {p0}, Lcom/fiio/music/slidemenu/CustomViewBehind;->getBehindWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/fiio/music/slidemenu/CustomViewBehind;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 236
    invoke-virtual {p0}, Lcom/fiio/music/slidemenu/CustomViewBehind;->getBehindWidth()I

    move-result v3

    sub-int v3, p2, v3

    int-to-float v3, v3

    iget v4, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->l:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 235
    invoke-virtual {p0, v2, p3}, Lcom/fiio/music/slidemenu/CustomViewBehind;->scrollTo(II)V

    goto/16 :goto_0
.end method

.method public final a(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 348
    iget-object v0, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->o:I

    if-gtz v0, :cond_1

    .line 364
    :cond_0
    :goto_0
    return-void

    .line 350
    :cond_1
    iget v0, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->i:I

    if-eqz v0, :cond_3

    .line 351
    iget v0, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->i:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 353
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    .line 362
    :goto_1
    iget-object v2, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->m:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->o:I

    add-int/2addr v3, v0

    invoke-virtual {p0}, Lcom/fiio/music/slidemenu/CustomViewBehind;->getHeight()I

    move-result v4

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 363
    iget-object v0, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 354
    :cond_2
    iget v0, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->i:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    .line 355
    iget-object v0, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->n:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 356
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    .line 357
    iget-object v2, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->n:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->o:I

    add-int/2addr v3, v0

    invoke-virtual {p0}, Lcom/fiio/music/slidemenu/CustomViewBehind;->getHeight()I

    move-result v4

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 358
    iget-object v0, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 360
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v2, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->o:I

    sub-int/2addr v0, v2

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public final a(Landroid/view/View;Landroid/graphics/Canvas;F)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 367
    iget-boolean v1, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->j:Z

    if-nez v1, :cond_0

    .line 386
    :goto_0
    return-void

    .line 368
    :cond_0
    iget v1, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->p:F

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v1, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, p3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v1, v3

    float-to-int v1, v1

    .line 369
    iget-object v3, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->k:Landroid/graphics/Paint;

    invoke-static {v1, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 372
    iget v1, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->i:I

    if-nez v1, :cond_1

    .line 373
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/fiio/music/slidemenu/CustomViewBehind;->getBehindWidth()I

    move-result v1

    sub-int v1, v0, v1

    .line 374
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 385
    :goto_1
    int-to-float v1, v1

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/fiio/music/slidemenu/CustomViewBehind;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->k:Landroid/graphics/Paint;

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 375
    :cond_1
    iget v1, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->i:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    .line 376
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    .line 377
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/fiio/music/slidemenu/CustomViewBehind;->getBehindWidth()I

    move-result v3

    add-int/2addr v0, v3

    .line 378
    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->i:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    .line 379
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/fiio/music/slidemenu/CustomViewBehind;->getBehindWidth()I

    move-result v1

    sub-int/2addr v0, v1

    .line 380
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 381
    int-to-float v1, v0

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/fiio/music/slidemenu/CustomViewBehind;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->k:Landroid/graphics/Paint;

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 382
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    .line 383
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/fiio/music/slidemenu/CustomViewBehind;->getBehindWidth()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_1

    :cond_3
    move v1, v0

    goto :goto_1
.end method

.method public final a(F)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 326
    iget v2, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->i:I

    if-nez v2, :cond_2

    .line 327
    cmpl-float v2, p1, v3

    if-lez v2, :cond_1

    .line 333
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 327
    goto :goto_0

    .line 328
    :cond_2
    iget v2, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->i:I

    if-ne v2, v0, :cond_3

    .line 329
    cmpg-float v2, p1, v3

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 330
    :cond_3
    iget v2, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->i:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 333
    goto :goto_0
.end method

.method public final a(Landroid/view/View;IF)Z
    .locals 1

    .prologue
    .line 307
    iget v0, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->a:I

    packed-switch v0, :pswitch_data_0

    .line 313
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 309
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 311
    :pswitch_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/fiio/music/slidemenu/CustomViewBehind;->b(Landroid/view/View;IF)Z

    move-result v0

    goto :goto_0

    .line 307
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 280
    iget v0, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->i:I

    if-nez v0, :cond_0

    .line 281
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 285
    :goto_0
    return v0

    .line 282
    :cond_0
    iget v0, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->i:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->i:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 283
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/fiio/music/slidemenu/CustomViewBehind;->getBehindWidth()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 285
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Landroid/view/View;Landroid/graphics/Canvas;F)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 393
    iget-boolean v0, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->q:Z

    if-nez v0, :cond_1

    .line 414
    :cond_0
    :goto_0
    return-void

    .line 394
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->r:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->s:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->s:Landroid/view/View;

    const/high16 v1, 0x7f0b0000

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 396
    const-string v1, "CustomViewBehindSelectedView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 399
    iget-object v0, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->r:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p3

    float-to-int v0, v0

    .line 400
    iget v1, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->i:I

    if-nez v1, :cond_3

    .line 401
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 402
    sub-int v0, v1, v0

    .line 403
    invoke-virtual {p0}, Lcom/fiio/music/slidemenu/CustomViewBehind;->getHeight()I

    move-result v2

    invoke-virtual {p2, v0, v3, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 404
    iget-object v1, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->r:Landroid/graphics/Bitmap;

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/fiio/music/slidemenu/CustomViewBehind;->getSelectorTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2, v1, v0, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 411
    :cond_2
    :goto_1
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 405
    :cond_3
    iget v1, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->i:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 406
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    .line 407
    add-int/2addr v0, v1

    .line 408
    invoke-virtual {p0}, Lcom/fiio/music/slidemenu/CustomViewBehind;->getHeight()I

    move-result v2

    invoke-virtual {p2, v1, v3, v0, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 409
    iget-object v1, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->r:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->r:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/fiio/music/slidemenu/CustomViewBehind;->getSelectorTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2, v1, v0, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method public final b(F)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 337
    iget v2, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->i:I

    if-nez v2, :cond_2

    .line 338
    cmpg-float v2, p1, v3

    if-gez v2, :cond_1

    .line 344
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 338
    goto :goto_0

    .line 339
    :cond_2
    iget v2, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->i:I

    if-ne v2, v0, :cond_3

    .line 340
    cmpl-float v2, p1, v3

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 341
    :cond_3
    iget v2, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->i:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 344
    goto :goto_0
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 289
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 290
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v3

    .line 291
    iget v4, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->i:I

    if-nez v4, :cond_2

    .line 292
    if-lt p2, v2, :cond_1

    iget v3, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->e:I

    add-int/2addr v2, v3

    if-gt p2, v2, :cond_1

    .line 299
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 292
    goto :goto_0

    .line 293
    :cond_2
    iget v4, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->i:I

    if-ne v4, v0, :cond_4

    .line 294
    if-gt p2, v3, :cond_3

    iget v2, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->e:I

    sub-int v2, v3, v2

    if-ge p2, v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    .line 295
    :cond_4
    iget v4, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->i:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_7

    .line 296
    if-lt p2, v2, :cond_5

    iget v4, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->e:I

    add-int/2addr v2, v4

    if-le p2, v2, :cond_0

    .line 297
    :cond_5
    if-gt p2, v3, :cond_6

    iget v2, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->e:I

    sub-int v2, v3, v2

    .line 296
    if-ge p2, v2, :cond_0

    :cond_6
    move v0, v1

    goto :goto_0

    :cond_7
    move v0, v1

    .line 299
    goto :goto_0
.end method

.method public final b(Landroid/view/View;IF)Z
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 317
    iget v2, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->i:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->i:I

    if-ne v2, v3, :cond_2

    if-nez p2, :cond_2

    .line 318
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, p3, v2

    if-ltz v2, :cond_1

    move v0, v1

    .line 322
    :cond_1
    :goto_0
    return v0

    .line 319
    :cond_2
    iget v2, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->i:I

    if-eq v2, v1, :cond_3

    iget v2, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->i:I

    if-ne v2, v3, :cond_1

    if-ne p2, v3, :cond_1

    .line 320
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, p3, v2

    if-gtz v2, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->g:Lcom/fiio/music/slidemenu/g;

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 124
    iget-object v0, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->g:Lcom/fiio/music/slidemenu/g;

    iget-object v0, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->b:Lcom/fiio/music/slidemenu/CustomViewAbove;

    invoke-virtual {v0}, Lcom/fiio/music/slidemenu/CustomViewAbove;->getPercentOpen()F

    .line 125
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 126
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 129
    :goto_0
    return-void

    .line 128
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public getBehindWidth()I
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method public getContent()Landroid/view/View;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->c:Landroid/view/View;

    return-object v0
.end method

.method public getMarginThreshold()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->e:I

    return v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->i:I

    return v0
.end method

.method public getScrollScale()F
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->l:F

    return v0
.end method

.method public getSecondaryContent()Landroid/view/View;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->d:Landroid/view/View;

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 133
    sub-int v0, p4, p2

    .line 134
    sub-int v1, p5, p3

    .line 135
    iget-object v2, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->c:Landroid/view/View;

    iget v3, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->f:I

    sub-int v3, v0, v3

    invoke-virtual {v2, v4, v4, v3, v1}, Landroid/view/View;->layout(IIII)V

    .line 136
    iget-object v2, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->d:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 137
    iget-object v2, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->d:Landroid/view/View;

    iget v3, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->f:I

    sub-int/2addr v0, v3

    invoke-virtual {v2, v4, v4, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 138
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 142
    invoke-static {v3, p1}, Lcom/fiio/music/slidemenu/CustomViewBehind;->getDefaultSize(II)I

    move-result v0

    .line 143
    invoke-static {v3, p2}, Lcom/fiio/music/slidemenu/CustomViewBehind;->getDefaultSize(II)I

    move-result v1

    .line 144
    invoke-virtual {p0, v0, v1}, Lcom/fiio/music/slidemenu/CustomViewBehind;->setMeasuredDimension(II)V

    .line 145
    iget v2, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->f:I

    sub-int/2addr v0, v2

    invoke-static {p1, v3, v0}, Lcom/fiio/music/slidemenu/CustomViewBehind;->getChildMeasureSpec(III)I

    move-result v0

    .line 146
    invoke-static {p2, v3, v1}, Lcom/fiio/music/slidemenu/CustomViewBehind;->getChildMeasureSpec(III)I

    move-result v1

    .line 147
    iget-object v2, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->c:Landroid/view/View;

    invoke-virtual {v2, v0, v1}, Landroid/view/View;->measure(II)V

    .line 148
    iget-object v2, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->d:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 149
    iget-object v2, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->d:Landroid/view/View;

    invoke-virtual {v2, v0, v1}, Landroid/view/View;->measure(II)V

    .line 150
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public scrollTo(II)V
    .locals 1

    .prologue
    .line 105
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 106
    iget-object v0, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->g:Lcom/fiio/music/slidemenu/g;

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/fiio/music/slidemenu/CustomViewBehind;->invalidate()V

    .line 108
    :cond_0
    return-void
.end method

.method public setCanvasTransformer(Lcom/fiio/music/slidemenu/g;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->g:Lcom/fiio/music/slidemenu/g;

    .line 54
    return-void
.end method

.method public setChildrenEnabled(Z)V
    .locals 0

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->h:Z

    .line 101
    return-void
.end method

.method public setContent(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->c:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/fiio/music/slidemenu/CustomViewBehind;->removeView(Landroid/view/View;)V

    .line 76
    :cond_0
    iput-object p1, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->c:Landroid/view/View;

    .line 77
    iget-object v0, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->c:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/fiio/music/slidemenu/CustomViewBehind;->addView(Landroid/view/View;)V

    .line 78
    return-void
.end method

.method public setCustomViewAbove(Lcom/fiio/music/slidemenu/CustomViewAbove;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->b:Lcom/fiio/music/slidemenu/CustomViewAbove;

    .line 50
    return-void
.end method

.method public setFadeDegree(F)V
    .locals 2

    .prologue
    .line 203
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 204
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The BehindFadeDegree must be between 0.0f and 1.0f"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_1
    iput p1, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->p:F

    .line 206
    return-void
.end method

.method public setFadeEnabled(Z)V
    .locals 0

    .prologue
    .line 199
    iput-boolean p1, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->j:Z

    .line 200
    return-void
.end method

.method public setMarginThreshold(I)V
    .locals 0

    .prologue
    .line 62
    iput p1, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->e:I

    .line 63
    return-void
.end method

.method public setMode(I)V
    .locals 2

    .prologue
    .line 162
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->c:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->d:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 166
    iget-object v0, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->d:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 168
    :cond_2
    iput p1, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->i:I

    .line 169
    return-void
.end method

.method public setScrollScale(F)V
    .locals 0

    .prologue
    .line 176
    iput p1, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->l:F

    .line 177
    return-void
.end method

.method public setSecondaryContent(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->d:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/fiio/music/slidemenu/CustomViewBehind;->removeView(Landroid/view/View;)V

    .line 91
    :cond_0
    iput-object p1, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->d:Landroid/view/View;

    .line 92
    iget-object v0, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->d:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/fiio/music/slidemenu/CustomViewBehind;->addView(Landroid/view/View;)V

    .line 93
    return-void
.end method

.method public setSecondaryShadowDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->n:Landroid/graphics/drawable/Drawable;

    .line 190
    invoke-virtual {p0}, Lcom/fiio/music/slidemenu/CustomViewBehind;->invalidate()V

    .line 191
    return-void
.end method

.method public setSelectedView(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/high16 v2, 0x7f0b0000

    .line 421
    iget-object v0, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->s:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->s:Landroid/view/View;

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 423
    iput-object v1, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->s:Landroid/view/View;

    .line 425
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 426
    iput-object p1, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->s:Landroid/view/View;

    .line 427
    iget-object v0, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->s:Landroid/view/View;

    const-string v1, "CustomViewBehindSelectedView"

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 428
    invoke-virtual {p0}, Lcom/fiio/music/slidemenu/CustomViewBehind;->invalidate()V

    .line 430
    :cond_1
    return-void
.end method

.method public setSelectorBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 439
    iput-object p1, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->r:Landroid/graphics/Bitmap;

    .line 440
    invoke-virtual {p0}, Lcom/fiio/music/slidemenu/CustomViewBehind;->refreshDrawableState()V

    .line 441
    return-void
.end method

.method public setSelectorEnabled(Z)V
    .locals 0

    .prologue
    .line 417
    iput-boolean p1, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->q:Z

    .line 418
    return-void
.end method

.method public setShadowDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->m:Landroid/graphics/drawable/Drawable;

    .line 185
    invoke-virtual {p0}, Lcom/fiio/music/slidemenu/CustomViewBehind;->invalidate()V

    .line 186
    return-void
.end method

.method public setShadowWidth(I)V
    .locals 0

    .prologue
    .line 194
    iput p1, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->o:I

    .line 195
    invoke-virtual {p0}, Lcom/fiio/music/slidemenu/CustomViewBehind;->invalidate()V

    .line 196
    return-void
.end method

.method public setTouchMode(I)V
    .locals 0

    .prologue
    .line 303
    iput p1, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->a:I

    .line 304
    return-void
.end method

.method public setWidthOffset(I)V
    .locals 0

    .prologue
    .line 57
    iput p1, p0, Lcom/fiio/music/slidemenu/CustomViewBehind;->f:I

    .line 58
    invoke-virtual {p0}, Lcom/fiio/music/slidemenu/CustomViewBehind;->requestLayout()V

    .line 59
    return-void
.end method
