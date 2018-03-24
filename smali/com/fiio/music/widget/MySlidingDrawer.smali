.class public Lcom/fiio/music/widget/MySlidingDrawer;
.super Landroid/widget/SlidingDrawer;
.source "MySlidingDrawer.java"


# instance fields
.field private a:I

.field private b:[I

.field private c:Lcom/fiio/music/f/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/SlidingDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/fiio/music/widget/MySlidingDrawer;->a:I

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fiio/music/widget/MySlidingDrawer;->b:[I

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SlidingDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/fiio/music/widget/MySlidingDrawer;->a:I

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fiio/music/widget/MySlidingDrawer;->b:[I

    .line 51
    return-void
.end method

.method private static a(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 4

    .prologue
    .line 57
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 58
    const/4 v0, 0x2

    new-array v2, v0, [I

    .line 60
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 63
    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 64
    invoke-virtual {p0, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 65
    const/4 v0, 0x0

    aget v0, v2, v0

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 67
    return-object v1

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method


# virtual methods
.method public getHandleId()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/fiio/music/widget/MySlidingDrawer;->a:I

    return v0
.end method

.method public getTouchableIds()[I
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/fiio/music/widget/MySlidingDrawer;->b:[I

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 72
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 73
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    .line 74
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    .line 75
    invoke-virtual {p0, v2}, Lcom/fiio/music/widget/MySlidingDrawer;->getLocationOnScreen([I)V

    .line 76
    aget v5, v2, v1

    add-int/2addr v3, v5

    .line 77
    aget v2, v2, v0

    add-int/2addr v4, v2

    .line 78
    iget-object v2, p0, Lcom/fiio/music/widget/MySlidingDrawer;->b:[I

    if-eqz v2, :cond_0

    .line 79
    iget-object v5, p0, Lcom/fiio/music/widget/MySlidingDrawer;->b:[I

    array-length v6, v5

    move v2, v1

    :goto_0
    if-lt v2, v6, :cond_1

    .line 96
    :cond_0
    const-string v0, "xyz"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "event.getAction()="

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const-string v0, "xyz"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "mHandleId="

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/fiio/music/widget/MySlidingDrawer;->a:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_5

    iget v0, p0, Lcom/fiio/music/widget/MySlidingDrawer;->a:I

    if-eqz v0, :cond_5

    .line 100
    iget v0, p0, Lcom/fiio/music/widget/MySlidingDrawer;->a:I

    invoke-virtual {p0, v0}, Lcom/fiio/music/widget/MySlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 101
    const-string v2, "xyz"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "view"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-static {v0}, Lcom/fiio/music/widget/MySlidingDrawer;->a(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 103
    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 104
    const-string v0, "xyz"

    const-string v1, "return super.onInterceptTouchEvent(event);\u70b9\u51fb\u62bd\u5c49\u63a7\u4ef6\u65f6\u4ea4\u7531\u7cfb\u7edf\u5904\u7406"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-super {p0, p1}, Landroid/widget/SlidingDrawer;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 113
    :goto_1
    return v0

    .line 79
    :cond_1
    aget v7, v5, v2

    .line 80
    invoke-virtual {p0, v7}, Lcom/fiio/music/widget/MySlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 81
    invoke-virtual {v7}, Landroid/view/View;->isShown()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 82
    invoke-static {v7}, Lcom/fiio/music/widget/MySlidingDrawer;->a(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v7

    .line 83
    invoke-virtual {v7, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 84
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    .line 85
    iget-object v1, p0, Lcom/fiio/music/widget/MySlidingDrawer;->c:Lcom/fiio/music/f/a;

    if-eqz v1, :cond_2

    .line 86
    iget-object v1, p0, Lcom/fiio/music/widget/MySlidingDrawer;->c:Lcom/fiio/music/f/a;

    .line 89
    :cond_2
    const-string v1, "xyz"

    const-string v2, "rect.contains(x,y) return ture"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 79
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 107
    :cond_4
    const-string v0, "xyz"

    const-string v2, "return false"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 108
    goto :goto_1

    .line 112
    :cond_5
    const-string v0, "xyz"

    const-string v1, "return super.onInterceptTouchEvent(event);\u6700\u540e"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-super {p0, p1}, Landroid/widget/SlidingDrawer;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 118
    invoke-super {p0, p1}, Landroid/widget/SlidingDrawer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setHandleId(I)V
    .locals 0

    .prologue
    .line 35
    iput p1, p0, Lcom/fiio/music/widget/MySlidingDrawer;->a:I

    .line 36
    return-void
.end method

.method public setOnSliderHandleViewClickListener(Lcom/fiio/music/f/a;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/fiio/music/widget/MySlidingDrawer;->c:Lcom/fiio/music/f/a;

    .line 43
    return-void
.end method

.method public setTouchableIds([I)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/fiio/music/widget/MySlidingDrawer;->b:[I

    .line 28
    return-void
.end method
