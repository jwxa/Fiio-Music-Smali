.class public Lcom/fiio/music/widget/xyzSlidingDrawer;
.super Landroid/widget/SlidingDrawer;
.source "xyzSlidingDrawer.java"


# instance fields
.field private a:I

.field private b:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/SlidingDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/fiio/music/widget/xyzSlidingDrawer;->a:I

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fiio/music/widget/xyzSlidingDrawer;->b:[I

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SlidingDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/fiio/music/widget/xyzSlidingDrawer;->a:I

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fiio/music/widget/xyzSlidingDrawer;->b:[I

    .line 38
    return-void
.end method

.method private static a(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 4

    .prologue
    .line 44
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 45
    const/4 v0, 0x2

    new-array v2, v0, [I

    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 50
    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 51
    invoke-virtual {p0, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 52
    const/4 v0, 0x0

    aget v0, v2, v0

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 54
    return-object v1

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method


# virtual methods
.method public getHandleId()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/fiio/music/widget/xyzSlidingDrawer;->a:I

    return v0
.end method

.method public getTouchableIds()[I
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/fiio/music/widget/xyzSlidingDrawer;->b:[I

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v0, 0x0

    .line 59
    new-array v1, v9, [I

    .line 60
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    .line 61
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 62
    invoke-virtual {p0, v1}, Lcom/fiio/music/widget/xyzSlidingDrawer;->getLocationOnScreen([I)V

    .line 63
    aget v4, v1, v0

    add-int/2addr v2, v4

    .line 64
    aget v1, v1, v8

    add-int/2addr v3, v1

    .line 67
    iget-object v1, p0, Lcom/fiio/music/widget/xyzSlidingDrawer;->b:[I

    if-eqz v1, :cond_0

    .line 68
    iget-object v4, p0, Lcom/fiio/music/widget/xyzSlidingDrawer;->b:[I

    array-length v5, v4

    move v1, v0

    :goto_0
    if-lt v1, v5, :cond_3

    .line 86
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/fiio/music/widget/xyzSlidingDrawer;->a:I

    if-eqz v1, :cond_1

    .line 87
    iget v1, p0, Lcom/fiio/music/widget/xyzSlidingDrawer;->a:I

    invoke-virtual {p0, v1}, Lcom/fiio/music/widget/xyzSlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 88
    const-string v4, "xyz"

    .line 89
    const-string v5, "%d,%d"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 88
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-static {v1}, Lcom/fiio/music/widget/xyzSlidingDrawer;->a(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    .line 91
    const-string v4, "xyz"

    .line 92
    const-string v5, "%d,%d %d,%d"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, v1, Landroid/graphics/Rect;->left:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v0

    iget v7, v1, Landroid/graphics/Rect;->top:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    iget v7, v1, Landroid/graphics/Rect;->right:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    const/4 v7, 0x3

    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 91
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 94
    const-string v0, "xyz"

    const-string v1, "Hit handle"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/SlidingDrawer;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_2
    :goto_1
    return v0

    .line 68
    :cond_3
    aget v6, v4, v1

    .line 69
    invoke-virtual {p0, v6}, Lcom/fiio/music/widget/xyzSlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 70
    invoke-static {v6}, Lcom/fiio/music/widget/xyzSlidingDrawer;->a(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v7

    .line 71
    invoke-virtual {v7, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 78
    invoke-virtual {v6, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 79
    const-string v2, "xyz"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 68
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 104
    const-string v0, "xyz"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Action="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-super {p0, p1}, Landroid/widget/SlidingDrawer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setHandleId(I)V
    .locals 0

    .prologue
    .line 29
    iput p1, p0, Lcom/fiio/music/widget/xyzSlidingDrawer;->a:I

    .line 30
    return-void
.end method

.method public setTouchableIds([I)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/fiio/music/widget/xyzSlidingDrawer;->b:[I

    .line 22
    return-void
.end method
