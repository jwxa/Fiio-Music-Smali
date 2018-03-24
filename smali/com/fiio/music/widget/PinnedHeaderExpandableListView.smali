.class public Lcom/fiio/music/widget/PinnedHeaderExpandableListView;
.super Landroid/widget/ExpandableListView;
.source "PinnedHeaderExpandableListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field protected a:Z

.field private b:Landroid/view/View;

.field private c:I

.field private d:I

.field private e:Landroid/view/View;

.field private f:Landroid/widget/AbsListView$OnScrollListener;

.field private g:Lcom/fiio/music/widget/k;

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0, p1}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;)V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->h:Z

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->a:Z

    .line 70
    invoke-direct {p0}, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->a()V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->h:Z

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->a:Z

    .line 75
    invoke-direct {p0}, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->a()V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->h:Z

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->a:Z

    .line 80
    invoke-direct {p0}, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->a()V

    .line 81
    return-void
.end method

.method private a(Landroid/view/View;II)Landroid/view/View;
    .locals 6

    .prologue
    .line 187
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 207
    :cond_0
    :goto_0
    return-object p1

    .line 191
    :cond_1
    check-cast p1, Landroid/view/ViewGroup;

    .line 192
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .line 193
    invoke-virtual {p0}, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->isChildrenDrawingOrderEnabled()Z

    move-result v5

    .line 194
    const/4 v2, 0x0

    .line 195
    add-int/lit8 v1, v4, -0x1

    :goto_1
    if-gez v1, :cond_3

    move-object v0, v2

    .line 203
    :cond_2
    if-eqz v0, :cond_0

    move-object p1, v0

    goto :goto_0

    .line 196
    :cond_3
    if-eqz v5, :cond_4

    invoke-virtual {p0, v4, v1}, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->getChildDrawingOrder(II)I

    move-result v0

    .line 197
    :goto_2
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 198
    invoke-virtual {v0}, Landroid/view/View;->isClickable()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p3, v3, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p3, v3, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt p2, v3, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    if-gt p2, v3, :cond_5

    const/4 v3, 0x1

    :goto_3
    if-nez v3, :cond_2

    .line 195
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_4
    move v0, v1

    .line 196
    goto :goto_2

    .line 198
    :cond_5
    const/4 v3, 0x0

    goto :goto_3
.end method

.method private a()V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->setFadingEdgeLength(I)V

    .line 85
    invoke-virtual {p0, p0}, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 86
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 148
    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 149
    iget-object v0, p0, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->b:Landroid/view/View;

    invoke-virtual {p0}, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->getDrawingTime()J

    move-result-wide v2

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 152
    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v5, 0x0

    .line 156
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 157
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 158
    invoke-virtual {p0, v1, v2}, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->pointToPosition(II)I

    move-result v3

    .line 159
    iget-object v4, p0, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->b:Landroid/view/View;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->b:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    if-lt v2, v4, :cond_5

    iget-object v4, p0, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->b:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    if-gt v2, v4, :cond_5

    .line 160
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_1

    .line 161
    iget-object v3, p0, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->b:Landroid/view/View;

    invoke-direct {p0, v3, v1, v2}, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->a(Landroid/view/View;II)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->e:Landroid/view/View;

    .line 162
    iput-boolean v0, p0, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->h:Z

    .line 183
    :cond_0
    :goto_0
    return v0

    .line 163
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v0, :cond_0

    .line 164
    iget-object v4, p0, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->b:Landroid/view/View;

    invoke-direct {p0, v4, v1, v2}, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->a(Landroid/view/View;II)Landroid/view/View;

    move-result-object v1

    .line 165
    iget-object v2, p0, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->e:Landroid/view/View;

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->e:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 166
    iget-object v1, p0, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->e:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->performClick()Z

    .line 167
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->c:I

    iget v3, p0, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->d:I

    invoke-direct {v1, v5, v5, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v1}, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->invalidate(Landroid/graphics/Rect;)V

    .line 178
    :cond_2
    :goto_1
    iput-boolean v5, p0, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->h:Z

    goto :goto_0

    .line 168
    :cond_3
    iget-boolean v1, p0, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->a:Z

    if-eqz v1, :cond_2

    .line 169
    invoke-virtual {p0, v3}, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->getPackedPositionGroup(J)I

    move-result v1

    .line 170
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    iget-boolean v2, p0, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->h:Z

    if-eqz v2, :cond_2

    .line 171
    invoke-virtual {p0, v1}, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->isGroupExpanded(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 172
    invoke-virtual {p0, v1}, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->collapseGroup(I)Z

    goto :goto_1

    .line 174
    :cond_4
    invoke-virtual {p0, v1}, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->expandGroup(I)Z

    goto :goto_1

    .line 183
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    .prologue
    .line 138
    invoke-super/range {p0 .. p5}, Landroid/widget/ExpandableListView;->onLayout(ZIIII)V

    .line 139
    iget-object v0, p0, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->b:Landroid/view/View;

    if-nez v0, :cond_0

    .line 144
    :goto_0
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 143
    iget-object v1, p0, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->b:Landroid/view/View;

    const/4 v2, 0x0

    iget v3, p0, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->c:I

    iget v4, p0, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->d:I

    add-int/2addr v4, v0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 1

    .prologue
    .line 127
    invoke-super {p0, p1, p2}, Landroid/widget/ExpandableListView;->onMeasure(II)V

    .line 128
    iget-object v0, p0, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->b:Landroid/view/View;

    if-nez v0, :cond_0

    .line 134
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->b:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->measureChild(Landroid/view/View;II)V

    .line 132
    iget-object v0, p0, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->c:I

    .line 133
    iget-object v0, p0, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->d:I

    goto :goto_0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 267
    if-lez p4, :cond_0

    .line 268
    iget-object v0, p0, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->getFirstVisiblePosition()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->getPackedPositionGroup(J)I

    move-result v0

    invoke-virtual {p0, v1}, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->getPackedPositionGroup(J)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    if-ne v1, v0, :cond_4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "PinnedHeaderExpandableListView"

    const-string v1, "Warning : refreshHeader getChildAt(1)=null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->f:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 271
    iget-object v0, p0, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->f:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 273
    :cond_1
    return-void

    .line 268
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    iget v2, p0, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->d:I

    if-gt v1, v2, :cond_3

    iget v1, p0, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->d:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int v0, v1, v0

    iget-object v1, p0, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->b:Landroid/view/View;

    neg-int v2, v0

    iget v3, p0, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->c:I

    iget v4, p0, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->d:I

    sub-int v0, v4, v0

    invoke-virtual {v1, v5, v2, v3, v0}, Landroid/view/View;->layout(IIII)V

    :goto_1
    iget-object v0, p0, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->g:Lcom/fiio/music/widget/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->g:Lcom/fiio/music/widget/k;

    iget-object v0, p0, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->b:Landroid/view/View;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->b:Landroid/view/View;

    iget v1, p0, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->c:I

    iget v2, p0, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->d:I

    invoke-virtual {v0, v5, v5, v1, v2}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->b:Landroid/view/View;

    iget v1, p0, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->c:I

    iget v2, p0, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->d:I

    invoke-virtual {v0, v5, v5, v1, v2}, Landroid/view/View;->layout(IIII)V

    goto :goto_1
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->f:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->f:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 262
    :cond_0
    return-void
.end method

.method public setOnHeaderUpdateListener(Lcom/fiio/music/widget/k;)V
    .locals 2

    .prologue
    .line 111
    iput-object p1, p0, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->g:Lcom/fiio/music/widget/k;

    .line 112
    if-nez p1, :cond_0

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->b:Landroid/view/View;

    .line 114
    const/4 v0, 0x0

    iput v0, p0, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->d:I

    iput v0, p0, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->c:I

    .line 123
    :goto_0
    return-void

    .line 117
    :cond_0
    invoke-interface {p1}, Lcom/fiio/music/widget/k;->a()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->b:Landroid/view/View;

    .line 118
    invoke-virtual {p0}, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->getFirstVisiblePosition()I

    move-result v0

    .line 119
    invoke-virtual {p0, v0}, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->getPackedPositionGroup(J)I

    .line 120
    iget-object v0, p0, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->b:Landroid/view/View;

    .line 121
    invoke-virtual {p0}, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->requestLayout()V

    .line 122
    invoke-virtual {p0}, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->postInvalidate()V

    goto :goto_0
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 1

    .prologue
    .line 90
    if-eq p1, p0, :cond_0

    .line 91
    iput-object p1, p0, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->f:Landroid/widget/AbsListView$OnScrollListener;

    .line 95
    :goto_0
    invoke-super {p0, p0}, Landroid/widget/ExpandableListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 96
    return-void

    .line 93
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->f:Landroid/widget/AbsListView$OnScrollListener;

    goto :goto_0
.end method
