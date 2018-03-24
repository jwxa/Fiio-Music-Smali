.class public Lcom/fiio/music/widget/ClickableSlidingDrawer;
.super Landroid/widget/SlidingDrawer;
.source "ClickableSlidingDrawer.java"


# instance fields
.field private a:Landroid/view/ViewGroup;

.field private b:Landroid/graphics/Rect;

.field private c:Lcom/fiio/music/widget/c;

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/SlidingDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/widget/ClickableSlidingDrawer;->b:Landroid/graphics/Rect;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SlidingDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/widget/ClickableSlidingDrawer;->b:Landroid/graphics/Rect;

    .line 34
    return-void
.end method

.method private static a(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 4

    .prologue
    .line 65
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 66
    const/4 v0, 0x2

    new-array v2, v0, [I

    .line 68
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 71
    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 72
    invoke-virtual {p0, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 73
    const/4 v0, 0x0

    aget v0, v2, v0

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 75
    return-object v1

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 51
    invoke-super {p0}, Landroid/widget/SlidingDrawer;->onFinishInflate()V

    .line 52
    invoke-virtual {p0}, Lcom/fiio/music/widget/ClickableSlidingDrawer;->getHandle()Landroid/view/View;

    move-result-object v0

    .line 53
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 54
    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/fiio/music/widget/ClickableSlidingDrawer;->a:Landroid/view/ViewGroup;

    .line 55
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/widget/SlidingDrawer;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v4, 0x0

    .line 81
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 132
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/SlidingDrawer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 85
    :pswitch_0
    iput-boolean v10, p0, Lcom/fiio/music/widget/ClickableSlidingDrawer;->d:Z

    goto :goto_0

    .line 88
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 89
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 91
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    const/high16 v1, 0x44480000    # 800.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 92
    iput-boolean v10, p0, Lcom/fiio/music/widget/ClickableSlidingDrawer;->d:Z

    goto :goto_0

    .line 93
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    const/high16 v1, 0x43af0000    # 350.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 94
    iput-boolean v10, p0, Lcom/fiio/music/widget/ClickableSlidingDrawer;->d:Z

    goto :goto_0

    .line 96
    :cond_2
    iput-boolean v4, p0, Lcom/fiio/music/widget/ClickableSlidingDrawer;->d:Z

    goto :goto_0

    .line 100
    :pswitch_2
    iget-boolean v0, p0, Lcom/fiio/music/widget/ClickableSlidingDrawer;->d:Z

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 102
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 103
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 104
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 105
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 106
    invoke-virtual {p0, v0}, Lcom/fiio/music/widget/ClickableSlidingDrawer;->getLocationOnScreen([I)V

    .line 107
    aget v3, v0, v4

    add-int v6, v1, v3

    .line 108
    aget v0, v0, v10

    add-int v7, v2, v0

    .line 109
    iput-boolean v4, p0, Lcom/fiio/music/widget/ClickableSlidingDrawer;->d:Z

    .line 110
    iget-object v0, p0, Lcom/fiio/music/widget/ClickableSlidingDrawer;->a:Landroid/view/ViewGroup;

    .line 111
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 110
    check-cast v0, Landroid/view/ViewGroup;

    .line 112
    invoke-static {v0}, Lcom/fiio/music/widget/ClickableSlidingDrawer;->a(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    .line 113
    invoke-virtual {v1, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_0

    move v3, v4

    .line 114
    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v3, v1, :cond_0

    .line 115
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    move v5, v4

    .line 116
    :goto_2
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lt v5, v2, :cond_3

    .line 114
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    .line 117
    :cond_3
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 118
    invoke-static {v2}, Lcom/fiio/music/widget/ClickableSlidingDrawer;->a(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v8

    .line 119
    invoke-virtual {v8, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 120
    invoke-virtual {v2, v10}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 121
    iget-object v8, p0, Lcom/fiio/music/widget/ClickableSlidingDrawer;->c:Lcom/fiio/music/widget/c;

    if-eqz v8, :cond_4

    .line 122
    iget-object v8, p0, Lcom/fiio/music/widget/ClickableSlidingDrawer;->c:Lcom/fiio/music/widget/c;

    invoke-virtual {v2}, Landroid/widget/RadioButton;->getId()I

    move-result v9

    invoke-virtual {v2}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v2

    invoke-interface {v8, v9, v2}, Lcom/fiio/music/widget/c;->a(IZ)V

    .line 116
    :cond_4
    :goto_3
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_2

    .line 125
    :cond_5
    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_3

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setOnDrawerCloseListener(Landroid/widget/SlidingDrawer$OnDrawerCloseListener;)V
    .locals 0

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/widget/SlidingDrawer;->setOnDrawerCloseListener(Landroid/widget/SlidingDrawer$OnDrawerCloseListener;)V

    .line 41
    return-void
.end method

.method public setOnDrawerOpenListener(Landroid/widget/SlidingDrawer$OnDrawerOpenListener;)V
    .locals 0

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/widget/SlidingDrawer;->setOnDrawerOpenListener(Landroid/widget/SlidingDrawer$OnDrawerOpenListener;)V

    .line 48
    return-void
.end method

.method public setUpDataCheck(Lcom/fiio/music/widget/c;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/fiio/music/widget/ClickableSlidingDrawer;->c:Lcom/fiio/music/widget/c;

    .line 142
    return-void
.end method
