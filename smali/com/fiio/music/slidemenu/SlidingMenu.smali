.class public Lcom/fiio/music/slidemenu/SlidingMenu;
.super Landroid/widget/RelativeLayout;
.source "SlidingMenu.java"


# instance fields
.field private a:Z

.field private b:Lcom/fiio/music/slidemenu/CustomViewAbove;

.field private c:Lcom/fiio/music/slidemenu/CustomViewBehind;

.field private d:Lcom/fiio/music/slidemenu/j;

.field private e:Lcom/fiio/music/slidemenu/h;

.field private f:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/fiio/music/slidemenu/SlidingMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 174
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/fiio/music/slidemenu/SlidingMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 195
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const v6, 0x3ea8f5c3    # 0.33f

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 205
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    iput-boolean v4, p0, Lcom/fiio/music/slidemenu/SlidingMenu;->a:Z

    .line 989
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/slidemenu/SlidingMenu;->f:Landroid/os/Handler;

    .line 207
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 208
    new-instance v1, Lcom/fiio/music/slidemenu/CustomViewBehind;

    invoke-direct {v1, p1}, Lcom/fiio/music/slidemenu/CustomViewBehind;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/fiio/music/slidemenu/SlidingMenu;->c:Lcom/fiio/music/slidemenu/CustomViewBehind;

    .line 209
    iget-object v1, p0, Lcom/fiio/music/slidemenu/SlidingMenu;->c:Lcom/fiio/music/slidemenu/CustomViewBehind;

    invoke-virtual {p0, v1, v0}, Lcom/fiio/music/slidemenu/SlidingMenu;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 211
    new-instance v1, Lcom/fiio/music/slidemenu/CustomViewAbove;

    invoke-direct {v1, p1}, Lcom/fiio/music/slidemenu/CustomViewAbove;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/fiio/music/slidemenu/SlidingMenu;->b:Lcom/fiio/music/slidemenu/CustomViewAbove;

    .line 212
    iget-object v1, p0, Lcom/fiio/music/slidemenu/SlidingMenu;->b:Lcom/fiio/music/slidemenu/CustomViewAbove;

    invoke-virtual {p0, v1, v0}, Lcom/fiio/music/slidemenu/SlidingMenu;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    iget-object v0, p0, Lcom/fiio/music/slidemenu/SlidingMenu;->b:Lcom/fiio/music/slidemenu/CustomViewAbove;

    iget-object v1, p0, Lcom/fiio/music/slidemenu/SlidingMenu;->c:Lcom/fiio/music/slidemenu/CustomViewBehind;

    invoke-virtual {v0, v1}, Lcom/fiio/music/slidemenu/CustomViewAbove;->setCustomViewBehind(Lcom/fiio/music/slidemenu/CustomViewBehind;)V

    .line 215
    iget-object v0, p0, Lcom/fiio/music/slidemenu/SlidingMenu;->c:Lcom/fiio/music/slidemenu/CustomViewBehind;

    iget-object v1, p0, Lcom/fiio/music/slidemenu/SlidingMenu;->b:Lcom/fiio/music/slidemenu/CustomViewAbove;

    invoke-virtual {v0, v1}, Lcom/fiio/music/slidemenu/CustomViewBehind;->setCustomViewAbove(Lcom/fiio/music/slidemenu/CustomViewAbove;)V

    .line 216
    iget-object v0, p0, Lcom/fiio/music/slidemenu/SlidingMenu;->b:Lcom/fiio/music/slidemenu/CustomViewAbove;

    new-instance v1, Lcom/fiio/music/slidemenu/e;

    invoke-direct {v1, p0}, Lcom/fiio/music/slidemenu/e;-><init>(Lcom/fiio/music/slidemenu/SlidingMenu;)V

    invoke-virtual {v0, v1}, Lcom/fiio/music/slidemenu/CustomViewAbove;->setOnPageChangeListener(Lcom/fiio/music/slidemenu/c;)V

    .line 233
    sget-object v0, Lcom/fiio/music/R$styleable;->SlidingMenu:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 235
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 236
    invoke-virtual {p0, v1}, Lcom/fiio/music/slidemenu/SlidingMenu;->setMode(I)V

    .line 237
    invoke-virtual {v0, v7, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 238
    if-eq v1, v3, :cond_0

    .line 239
    invoke-virtual {p0, v1}, Lcom/fiio/music/slidemenu/SlidingMenu;->setContent(I)V

    .line 243
    :goto_0
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 244
    if-eq v1, v3, :cond_1

    .line 245
    invoke-virtual {p0, v1}, Lcom/fiio/music/slidemenu/SlidingMenu;->setMenu(I)V

    .line 249
    :goto_1
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 250
    invoke-virtual {p0, v1}, Lcom/fiio/music/slidemenu/SlidingMenu;->setTouchModeAbove(I)V

    .line 251
    const/4 v1, 0x7

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 252
    invoke-virtual {p0, v1}, Lcom/fiio/music/slidemenu/SlidingMenu;->setTouchModeBehind(I)V

    .line 254
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    .line 255
    const/4 v2, 0x4

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    .line 256
    if-eq v1, v3, :cond_2

    if-eq v2, v3, :cond_2

    .line 257
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set both behindOffset and behindWidth for a SlidingMenu"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_0
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Lcom/fiio/music/slidemenu/SlidingMenu;->setContent(Landroid/view/View;)V

    goto :goto_0

    .line 247
    :cond_1
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Lcom/fiio/music/slidemenu/SlidingMenu;->setMenu(Landroid/view/View;)V

    goto :goto_1

    .line 258
    :cond_2
    if-eq v1, v3, :cond_5

    .line 259
    invoke-virtual {p0, v1}, Lcom/fiio/music/slidemenu/SlidingMenu;->setBehindOffset(I)V

    .line 264
    :goto_2
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    .line 265
    invoke-virtual {p0, v1}, Lcom/fiio/music/slidemenu/SlidingMenu;->setBehindScrollScale(F)V

    .line 266
    const/16 v1, 0x8

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 267
    if-eq v1, v3, :cond_3

    .line 268
    invoke-virtual {p0, v1}, Lcom/fiio/music/slidemenu/SlidingMenu;->setShadowDrawable(I)V

    .line 270
    :cond_3
    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    .line 271
    invoke-virtual {p0, v1}, Lcom/fiio/music/slidemenu/SlidingMenu;->setShadowWidth(I)V

    .line 272
    const/16 v1, 0xa

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 273
    invoke-virtual {p0, v1}, Lcom/fiio/music/slidemenu/SlidingMenu;->setFadeEnabled(Z)V

    .line 274
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    .line 275
    invoke-virtual {p0, v1}, Lcom/fiio/music/slidemenu/SlidingMenu;->setFadeDegree(F)V

    .line 276
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 277
    invoke-virtual {p0, v1}, Lcom/fiio/music/slidemenu/SlidingMenu;->setSelectorEnabled(Z)V

    .line 278
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 279
    if-eq v1, v3, :cond_4

    .line 280
    invoke-virtual {p0, v1}, Lcom/fiio/music/slidemenu/SlidingMenu;->setSelectorDrawable(I)V

    .line 281
    :cond_4
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 282
    return-void

    .line 260
    :cond_5
    if-eq v2, v3, :cond_6

    .line 261
    invoke-virtual {p0, v2}, Lcom/fiio/music/slidemenu/SlidingMenu;->setBehindWidth(I)V

    goto :goto_2

    .line 263
    :cond_6
    invoke-virtual {p0, v4}, Lcom/fiio/music/slidemenu/SlidingMenu;->setBehindOffset(I)V

    goto :goto_2
.end method

.method static synthetic a(Lcom/fiio/music/slidemenu/SlidingMenu;)Lcom/fiio/music/slidemenu/j;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/fiio/music/slidemenu/SlidingMenu;->d:Lcom/fiio/music/slidemenu/j;

    return-object v0
.end method

.method static synthetic b(Lcom/fiio/music/slidemenu/SlidingMenu;)Lcom/fiio/music/slidemenu/h;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/fiio/music/slidemenu/SlidingMenu;->e:Lcom/fiio/music/slidemenu/h;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 492
    iget-object v0, p0, Lcom/fiio/music/slidemenu/SlidingMenu;->b:Lcom/fiio/music/slidemenu/CustomViewAbove;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fiio/music/slidemenu/CustomViewAbove;->setCurrentItem$2563266(I)V

    .line 493
    return-void
.end method

.method public final a(F)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 993
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_1

    .line 1010
    :cond_0
    :goto_0
    return-void

    .line 995
    :cond_1
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_3

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v1

    if-gez v1, :cond_3

    const/4 v1, 0x1

    .line 996
    :goto_1
    if-eqz v1, :cond_2

    const/4 v0, 0x2

    .line 998
    :cond_2
    invoke-virtual {p0}, Lcom/fiio/music/slidemenu/SlidingMenu;->getContent()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayerType()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 999
    iget-object v1, p0, Lcom/fiio/music/slidemenu/SlidingMenu;->f:Landroid/os/Handler;

    new-instance v2, Lcom/fiio/music/slidemenu/f;

    invoke-direct {v2, p0, v0}, Lcom/fiio/music/slidemenu/f;-><init>(Lcom/fiio/music/slidemenu/SlidingMenu;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_3
    move v1, v0

    .line 995
    goto :goto_1
.end method

.method public final a(Landroid/app/Activity;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 291
    invoke-virtual {p0}, Lcom/fiio/music/slidemenu/SlidingMenu;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This SlidingMenu appears to already be attached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x1010054

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iput-boolean v3, p0, Lcom/fiio/music/slidemenu/SlidingMenu;->a:Z

    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v2}, Lcom/fiio/music/slidemenu/SlidingMenu;->setContent(Landroid/view/View;)V

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 292
    :cond_1
    return-void
.end method

.method public final b()Z
    .locals 2

    .prologue
    .line 555
    iget-object v0, p0, Lcom/fiio/music/slidemenu/SlidingMenu;->b:Lcom/fiio/music/slidemenu/CustomViewAbove;

    invoke-virtual {v0}, Lcom/fiio/music/slidemenu/CustomViewAbove;->getCurrentItem()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/slidemenu/SlidingMenu;->b:Lcom/fiio/music/slidemenu/CustomViewAbove;

    invoke-virtual {v0}, Lcom/fiio/music/slidemenu/CustomViewAbove;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 978
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 979
    iget v1, p1, Landroid/graphics/Rect;->right:I

    .line 980
    iget v2, p1, Landroid/graphics/Rect;->top:I

    .line 981
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 982
    iget-boolean v4, p0, Lcom/fiio/music/slidemenu/SlidingMenu;->a:Z

    if-nez v4, :cond_0

    .line 983
    const-string v4, "SlidingMenu"

    const-string v5, "setting padding!"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/fiio/music/slidemenu/SlidingMenu;->setPadding(IIII)V

    .line 986
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getBehindOffset()I
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lcom/fiio/music/slidemenu/SlidingMenu;->c:Lcom/fiio/music/slidemenu/CustomViewBehind;

    invoke-virtual {v0}, Lcom/fiio/music/slidemenu/CustomViewBehind;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    return v0
.end method

.method public getBehindScrollScale()F
    .locals 1

    .prologue
    .line 660
    iget-object v0, p0, Lcom/fiio/music/slidemenu/SlidingMenu;->c:Lcom/fiio/music/slidemenu/CustomViewBehind;

    invoke-virtual {v0}, Lcom/fiio/music/slidemenu/CustomViewBehind;->getScrollScale()F

    move-result v0

    return v0
.end method

.method public getContent()Landroid/view/View;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/fiio/music/slidemenu/SlidingMenu;->b:Lcom/fiio/music/slidemenu/CustomViewAbove;

    invoke-virtual {v0}, Lcom/fiio/music/slidemenu/CustomViewAbove;->getContent()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getMenu()Landroid/view/View;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/fiio/music/slidemenu/SlidingMenu;->c:Lcom/fiio/music/slidemenu/CustomViewBehind;

    invoke-virtual {v0}, Lcom/fiio/music/slidemenu/CustomViewBehind;->getContent()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/fiio/music/slidemenu/SlidingMenu;->c:Lcom/fiio/music/slidemenu/CustomViewBehind;

    invoke-virtual {v0}, Lcom/fiio/music/slidemenu/CustomViewBehind;->getMode()I

    move-result v0

    return v0
.end method

.method public getSecondaryMenu()Landroid/view/View;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/fiio/music/slidemenu/SlidingMenu;->c:Lcom/fiio/music/slidemenu/CustomViewBehind;

    invoke-virtual {v0}, Lcom/fiio/music/slidemenu/CustomViewBehind;->getSecondaryContent()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getTouchModeAbove()I
    .locals 1

    .prologue
    .line 706
    iget-object v0, p0, Lcom/fiio/music/slidemenu/SlidingMenu;->b:Lcom/fiio/music/slidemenu/CustomViewAbove;

    invoke-virtual {v0}, Lcom/fiio/music/slidemenu/CustomViewAbove;->getTouchMode()I

    move-result v0

    return v0
.end method

.method public getTouchmodeMarginThreshold()I
    .locals 1

    .prologue
    .line 668
    iget-object v0, p0, Lcom/fiio/music/slidemenu/SlidingMenu;->c:Lcom/fiio/music/slidemenu/CustomViewBehind;

    invoke-virtual {v0}, Lcom/fiio/music/slidemenu/CustomViewBehind;->getMarginThreshold()I

    move-result v0

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 967
    check-cast p1, Lcom/fiio/music/slidemenu/SlidingMenu$SavedState;

    .line 968
    invoke-virtual {p1}, Lcom/fiio/music/slidemenu/SlidingMenu$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 969
    iget-object v0, p0, Lcom/fiio/music/slidemenu/SlidingMenu;->b:Lcom/fiio/music/slidemenu/CustomViewAbove;

    invoke-virtual {p1}, Lcom/fiio/music/slidemenu/SlidingMenu$SavedState;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/slidemenu/CustomViewAbove;->setCurrentItem(I)V

    .line 970
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 957
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 958
    new-instance v1, Lcom/fiio/music/slidemenu/SlidingMenu$SavedState;

    iget-object v2, p0, Lcom/fiio/music/slidemenu/SlidingMenu;->b:Lcom/fiio/music/slidemenu/CustomViewAbove;

    invoke-virtual {v2}, Lcom/fiio/music/slidemenu/CustomViewAbove;->getCurrentItem()I

    move-result v2

    invoke-direct {v1, v0, v2}, Lcom/fiio/music/slidemenu/SlidingMenu$SavedState;-><init>(Landroid/os/Parcelable;I)V

    .line 959
    return-object v1
.end method

.method public setAboveOffset(I)V
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Lcom/fiio/music/slidemenu/SlidingMenu;->b:Lcom/fiio/music/slidemenu/CustomViewAbove;

    invoke-virtual {v0, p1}, Lcom/fiio/music/slidemenu/CustomViewAbove;->setAboveOffset(I)V

    .line 608
    return-void
.end method

.method public setAboveOffsetRes(I)V
    .locals 1

    .prologue
    .line 616
    invoke-virtual {p0}, Lcom/fiio/music/slidemenu/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 617
    invoke-virtual {p0, v0}, Lcom/fiio/music/slidemenu/SlidingMenu;->setAboveOffset(I)V

    .line 618
    return-void
.end method

.method public setBehindCanvasTransformer(Lcom/fiio/music/slidemenu/g;)V
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Lcom/fiio/music/slidemenu/SlidingMenu;->c:Lcom/fiio/music/slidemenu/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/fiio/music/slidemenu/CustomViewBehind;->setCanvasTransformer(Lcom/fiio/music/slidemenu/g;)V

    .line 698
    return-void
.end method

.method public setBehindOffset(I)V
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Lcom/fiio/music/slidemenu/SlidingMenu;->c:Lcom/fiio/music/slidemenu/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/fiio/music/slidemenu/CustomViewBehind;->setWidthOffset(I)V

    .line 588
    return-void
.end method

.method public setBehindOffsetRes(I)V
    .locals 1

    .prologue
    .line 597
    invoke-virtual {p0}, Lcom/fiio/music/slidemenu/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 598
    invoke-virtual {p0, v0}, Lcom/fiio/music/slidemenu/SlidingMenu;->setBehindOffset(I)V

    .line 599
    return-void
.end method

.method public setBehindScrollScale(F)V
    .locals 2

    .prologue
    .line 686
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 687
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollScale must be between 0 and 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 688
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/slidemenu/SlidingMenu;->c:Lcom/fiio/music/slidemenu/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/fiio/music/slidemenu/CustomViewBehind;->setScrollScale(F)V

    .line 689
    return-void
.end method

.method public setBehindWidth(I)V
    .locals 5

    .prologue
    .line 628
    invoke-virtual {p0}, Lcom/fiio/music/slidemenu/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 629
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 631
    :try_start_0
    const-class v1, Landroid/view/Display;

    .line 632
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/graphics/Point;

    aput-object v4, v2, v3

    .line 633
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 634
    const-string v4, "getSize"

    invoke-virtual {v1, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 635
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    iget v0, v3, Landroid/graphics/Point;->x:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 640
    :goto_0
    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/fiio/music/slidemenu/SlidingMenu;->setBehindOffset(I)V

    .line 641
    return-void

    .line 638
    :catch_0
    move-exception v1

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    goto :goto_0
.end method

.method public setBehindWidthRes(I)V
    .locals 1

    .prologue
    .line 650
    invoke-virtual {p0}, Lcom/fiio/music/slidemenu/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 651
    invoke-virtual {p0, v0}, Lcom/fiio/music/slidemenu/SlidingMenu;->setBehindWidth(I)V

    .line 652
    return-void
.end method

.method public setContent(I)V
    .locals 2

    .prologue
    .line 346
    invoke-virtual {p0}, Lcom/fiio/music/slidemenu/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fiio/music/slidemenu/SlidingMenu;->setContent(Landroid/view/View;)V

    .line 347
    return-void
.end method

.method public setContent(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 355
    iget-object v0, p0, Lcom/fiio/music/slidemenu/SlidingMenu;->b:Lcom/fiio/music/slidemenu/CustomViewAbove;

    invoke-virtual {v0, p1}, Lcom/fiio/music/slidemenu/CustomViewAbove;->setContent(Landroid/view/View;)V

    .line 356
    iget-object v0, p0, Lcom/fiio/music/slidemenu/SlidingMenu;->b:Lcom/fiio/music/slidemenu/CustomViewAbove;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fiio/music/slidemenu/CustomViewAbove;->setCurrentItem$2563266(I)V

    .line 357
    return-void
.end method

.method public setFadeDegree(F)V
    .locals 1

    .prologue
    .line 811
    iget-object v0, p0, Lcom/fiio/music/slidemenu/SlidingMenu;->c:Lcom/fiio/music/slidemenu/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/fiio/music/slidemenu/CustomViewBehind;->setFadeDegree(F)V

    .line 812
    return-void
.end method

.method public setFadeEnabled(Z)V
    .locals 1

    .prologue
    .line 801
    iget-object v0, p0, Lcom/fiio/music/slidemenu/SlidingMenu;->c:Lcom/fiio/music/slidemenu/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/fiio/music/slidemenu/CustomViewBehind;->setFadeEnabled(Z)V

    .line 802
    return-void
.end method

.method public setMenu(I)V
    .locals 2

    .prologue
    .line 374
    invoke-virtual {p0}, Lcom/fiio/music/slidemenu/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fiio/music/slidemenu/SlidingMenu;->setMenu(Landroid/view/View;)V

    .line 375
    return-void
.end method

.method public setMenu(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/fiio/music/slidemenu/SlidingMenu;->c:Lcom/fiio/music/slidemenu/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/fiio/music/slidemenu/CustomViewBehind;->setContent(Landroid/view/View;)V

    .line 384
    return-void
.end method

.method public setMode(I)V
    .locals 2

    .prologue
    .line 446
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 447
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SlidingMenu mode must be LEFT, RIGHT, or LEFT_RIGHT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/slidemenu/SlidingMenu;->c:Lcom/fiio/music/slidemenu/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/fiio/music/slidemenu/CustomViewBehind;->setMode(I)V

    .line 450
    return-void
.end method

.method public setOnCloseListener(Lcom/fiio/music/slidemenu/h;)V
    .locals 0

    .prologue
    .line 892
    iput-object p1, p0, Lcom/fiio/music/slidemenu/SlidingMenu;->e:Lcom/fiio/music/slidemenu/h;

    .line 893
    return-void
.end method

.method public setOnClosedListener(Lcom/fiio/music/slidemenu/i;)V
    .locals 1

    .prologue
    .line 910
    iget-object v0, p0, Lcom/fiio/music/slidemenu/SlidingMenu;->b:Lcom/fiio/music/slidemenu/CustomViewAbove;

    invoke-virtual {v0, p1}, Lcom/fiio/music/slidemenu/CustomViewAbove;->setOnClosedListener(Lcom/fiio/music/slidemenu/i;)V

    .line 911
    return-void
.end method

.method public setOnOpenListener(Lcom/fiio/music/slidemenu/j;)V
    .locals 0

    .prologue
    .line 882
    iput-object p1, p0, Lcom/fiio/music/slidemenu/SlidingMenu;->d:Lcom/fiio/music/slidemenu/j;

    .line 883
    return-void
.end method

.method public setOnOpenedListener(Lcom/fiio/music/slidemenu/k;)V
    .locals 1

    .prologue
    .line 901
    iget-object v0, p0, Lcom/fiio/music/slidemenu/SlidingMenu;->b:Lcom/fiio/music/slidemenu/CustomViewAbove;

    invoke-virtual {v0, p1}, Lcom/fiio/music/slidemenu/CustomViewAbove;->setOnOpenedListener(Lcom/fiio/music/slidemenu/k;)V

    .line 902
    return-void
.end method

.method public setSecondaryMenu(I)V
    .locals 2

    .prologue
    .line 401
    invoke-virtual {p0}, Lcom/fiio/music/slidemenu/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fiio/music/slidemenu/SlidingMenu;->setSecondaryMenu(Landroid/view/View;)V

    .line 402
    return-void
.end method

.method public setSecondaryMenu(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/fiio/music/slidemenu/SlidingMenu;->c:Lcom/fiio/music/slidemenu/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/fiio/music/slidemenu/CustomViewBehind;->setSecondaryContent(Landroid/view/View;)V

    .line 412
    return-void
.end method

.method public setSecondaryShadowDrawable(I)V
    .locals 1

    .prologue
    .line 765
    invoke-virtual {p0}, Lcom/fiio/music/slidemenu/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fiio/music/slidemenu/SlidingMenu;->setSecondaryShadowDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 766
    return-void
.end method

.method public setSecondaryShadowDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 774
    iget-object v0, p0, Lcom/fiio/music/slidemenu/SlidingMenu;->c:Lcom/fiio/music/slidemenu/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/fiio/music/slidemenu/CustomViewBehind;->setSecondaryShadowDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 775
    return-void
.end method

.method public setSelectedView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 829
    iget-object v0, p0, Lcom/fiio/music/slidemenu/SlidingMenu;->c:Lcom/fiio/music/slidemenu/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/fiio/music/slidemenu/CustomViewBehind;->setSelectedView(Landroid/view/View;)V

    .line 830
    return-void
.end method

.method public setSelectorBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 847
    iget-object v0, p0, Lcom/fiio/music/slidemenu/SlidingMenu;->c:Lcom/fiio/music/slidemenu/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/fiio/music/slidemenu/CustomViewBehind;->setSelectorBitmap(Landroid/graphics/Bitmap;)V

    .line 848
    return-void
.end method

.method public setSelectorDrawable(I)V
    .locals 2

    .prologue
    .line 838
    iget-object v0, p0, Lcom/fiio/music/slidemenu/SlidingMenu;->c:Lcom/fiio/music/slidemenu/CustomViewBehind;

    invoke-virtual {p0}, Lcom/fiio/music/slidemenu/SlidingMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/slidemenu/CustomViewBehind;->setSelectorBitmap(Landroid/graphics/Bitmap;)V

    .line 839
    return-void
.end method

.method public setSelectorEnabled(Z)V
    .locals 2

    .prologue
    .line 820
    iget-object v0, p0, Lcom/fiio/music/slidemenu/SlidingMenu;->c:Lcom/fiio/music/slidemenu/CustomViewBehind;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fiio/music/slidemenu/CustomViewBehind;->setSelectorEnabled(Z)V

    .line 821
    return-void
.end method

.method public setShadowDrawable(I)V
    .locals 1

    .prologue
    .line 747
    invoke-virtual {p0}, Lcom/fiio/music/slidemenu/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fiio/music/slidemenu/SlidingMenu;->setShadowDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 748
    return-void
.end method

.method public setShadowDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 756
    iget-object v0, p0, Lcom/fiio/music/slidemenu/SlidingMenu;->c:Lcom/fiio/music/slidemenu/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/fiio/music/slidemenu/CustomViewBehind;->setShadowDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 757
    return-void
.end method

.method public setShadowWidth(I)V
    .locals 1

    .prologue
    .line 792
    iget-object v0, p0, Lcom/fiio/music/slidemenu/SlidingMenu;->c:Lcom/fiio/music/slidemenu/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/fiio/music/slidemenu/CustomViewBehind;->setShadowWidth(I)V

    .line 793
    return-void
.end method

.method public setShadowWidthRes(I)V
    .locals 1

    .prologue
    .line 783
    invoke-virtual {p0}, Lcom/fiio/music/slidemenu/SlidingMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/fiio/music/slidemenu/SlidingMenu;->setShadowWidth(I)V

    .line 784
    return-void
.end method

.method public setSlidingEnabled(Z)V
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/fiio/music/slidemenu/SlidingMenu;->b:Lcom/fiio/music/slidemenu/CustomViewAbove;

    invoke-virtual {v0, p1}, Lcom/fiio/music/slidemenu/CustomViewAbove;->setSlidingEnabled(Z)V

    .line 430
    return-void
.end method

.method public setStatic(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 466
    if-eqz p1, :cond_0

    .line 467
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fiio/music/slidemenu/SlidingMenu;->setSlidingEnabled(Z)V

    .line 468
    iget-object v0, p0, Lcom/fiio/music/slidemenu/SlidingMenu;->b:Lcom/fiio/music/slidemenu/CustomViewAbove;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fiio/music/slidemenu/CustomViewAbove;->setCustomViewBehind(Lcom/fiio/music/slidemenu/CustomViewBehind;)V

    .line 469
    iget-object v0, p0, Lcom/fiio/music/slidemenu/SlidingMenu;->b:Lcom/fiio/music/slidemenu/CustomViewAbove;

    invoke-virtual {v0, v2}, Lcom/fiio/music/slidemenu/CustomViewAbove;->setCurrentItem(I)V

    .line 477
    :goto_0
    return-void

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/slidemenu/SlidingMenu;->b:Lcom/fiio/music/slidemenu/CustomViewAbove;

    invoke-virtual {v0, v2}, Lcom/fiio/music/slidemenu/CustomViewAbove;->setCurrentItem(I)V

    .line 474
    iget-object v0, p0, Lcom/fiio/music/slidemenu/SlidingMenu;->b:Lcom/fiio/music/slidemenu/CustomViewAbove;

    iget-object v1, p0, Lcom/fiio/music/slidemenu/SlidingMenu;->c:Lcom/fiio/music/slidemenu/CustomViewBehind;

    invoke-virtual {v0, v1}, Lcom/fiio/music/slidemenu/CustomViewAbove;->setCustomViewBehind(Lcom/fiio/music/slidemenu/CustomViewBehind;)V

    .line 475
    invoke-virtual {p0, v2}, Lcom/fiio/music/slidemenu/SlidingMenu;->setSlidingEnabled(Z)V

    goto :goto_0
.end method

.method public setTouchModeAbove(I)V
    .locals 2

    .prologue
    .line 717
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    .line 718
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 719
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TouchMode must be set to eitherTOUCHMODE_FULLSCREEN or TOUCHMODE_MARGIN or TOUCHMODE_NONE."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 722
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/slidemenu/SlidingMenu;->b:Lcom/fiio/music/slidemenu/CustomViewAbove;

    invoke-virtual {v0, p1}, Lcom/fiio/music/slidemenu/CustomViewAbove;->setTouchMode(I)V

    .line 723
    return-void
.end method

.method public setTouchModeBehind(I)V
    .locals 2

    .prologue
    .line 733
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    .line 734
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 735
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TouchMode must be set to eitherTOUCHMODE_FULLSCREEN or TOUCHMODE_MARGIN or TOUCHMODE_NONE."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 738
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/slidemenu/SlidingMenu;->c:Lcom/fiio/music/slidemenu/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/fiio/music/slidemenu/CustomViewBehind;->setTouchMode(I)V

    .line 739
    return-void
.end method

.method public setTouchmodeMarginThreshold(I)V
    .locals 1

    .prologue
    .line 676
    iget-object v0, p0, Lcom/fiio/music/slidemenu/SlidingMenu;->c:Lcom/fiio/music/slidemenu/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/fiio/music/slidemenu/CustomViewBehind;->setMarginThreshold(I)V

    .line 677
    return-void
.end method
