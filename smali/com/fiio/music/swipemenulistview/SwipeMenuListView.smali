.class public Lcom/fiio/music/swipemenulistview/SwipeMenuListView;
.super Landroid/widget/ListView;
.source "SwipeMenuListView.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:F

.field private e:F

.field private f:I

.field private g:I

.field private h:Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;

.field private i:Lcom/fiio/music/swipemenulistview/i;

.field private j:Lcom/fiio/music/swipemenulistview/c;

.field private k:Lcom/fiio/music/swipemenulistview/c;

.field private l:Lcom/fiio/music/swipemenulistview/g;

.field private m:Lcom/fiio/music/swipemenulistview/h;

.field private n:Landroid/view/animation/Interpolator;

.field private o:Landroid/view/animation/Interpolator;

.field private p:Landroid/widget/ListAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 30
    const/4 v0, 0x1

    iput v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->a:I

    .line 32
    const/4 v0, 0x5

    iput v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->b:I

    .line 33
    const/4 v0, 0x3

    iput v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->c:I

    .line 51
    invoke-direct {p0}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->a()V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const/4 v0, 0x1

    iput v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->a:I

    .line 32
    const/4 v0, 0x5

    iput v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->b:I

    .line 33
    const/4 v0, 0x3

    iput v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->c:I

    .line 61
    invoke-direct {p0}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->a()V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    const/4 v0, 0x1

    iput v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->a:I

    .line 32
    const/4 v0, 0x5

    iput v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->b:I

    .line 33
    const/4 v0, 0x3

    iput v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->c:I

    .line 56
    invoke-direct {p0}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->a()V

    .line 57
    return-void
.end method

.method private a(I)I
    .locals 3

    .prologue
    .line 256
    const/4 v0, 0x1

    int-to-float v1, p1

    .line 257
    invoke-virtual {p0}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 256
    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method static synthetic a(Lcom/fiio/music/swipemenulistview/SwipeMenuListView;)Lcom/fiio/music/swipemenulistview/c;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->j:Lcom/fiio/music/swipemenulistview/c;

    return-object v0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->c:I

    invoke-direct {p0, v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->a(I)I

    move-result v0

    iput v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->c:I

    .line 66
    iget v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->b:I

    invoke-direct {p0, v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->a(I)I

    move-result v0

    iput v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->b:I

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->f:I

    .line 68
    return-void
.end method

.method static synthetic b(Lcom/fiio/music/swipemenulistview/SwipeMenuListView;)Lcom/fiio/music/swipemenulistview/c;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->k:Lcom/fiio/music/swipemenulistview/c;

    return-object v0
.end method

.method static synthetic c(Lcom/fiio/music/swipemenulistview/SwipeMenuListView;)Lcom/fiio/music/swipemenulistview/g;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->l:Lcom/fiio/music/swipemenulistview/g;

    return-object v0
.end method

.method static synthetic d(Lcom/fiio/music/swipemenulistview/SwipeMenuListView;)Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->h:Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;

    return-object v0
.end method


# virtual methods
.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->p:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getCloseInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->n:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public getOpenInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->o:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 122
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v1, 0x1

    .line 127
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->h:Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;

    if-nez v0, :cond_0

    .line 128
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 230
    :goto_0
    return v0

    .line 130
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 131
    packed-switch v0, :pswitch_data_0

    .line 230
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 133
    :pswitch_0
    iget v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->g:I

    .line 134
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->d:F

    .line 135
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->e:F

    .line 136
    const/4 v2, 0x0

    iput v2, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->f:I

    .line 138
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0, v2, v3}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->pointToPosition(II)I

    move-result v2

    iput v2, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->g:I

    .line 140
    iget v2, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->g:I

    if-ne v2, v0, :cond_2

    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->h:Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;

    if-eqz v0, :cond_2

    .line 141
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->h:Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;

    invoke-virtual {v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 142
    iput v1, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->f:I

    .line 143
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->h:Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;

    invoke-virtual {v0, p1}, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->a(Landroid/view/MotionEvent;)Z

    move v0, v1

    .line 144
    goto :goto_0

    .line 147
    :cond_2
    iget v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->g:I

    invoke-virtual {p0}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 149
    iget-object v2, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->h:Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->h:Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;

    invoke-virtual {v2}, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 150
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->h:Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;

    invoke-virtual {v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->b()V

    .line 151
    iput-object v5, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->h:Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;

    .line 154
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 155
    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 156
    invoke-virtual {p0, v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 157
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->m:Lcom/fiio/music/swipemenulistview/h;

    if-eqz v0, :cond_3

    .line 158
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->m:Lcom/fiio/music/swipemenulistview/h;

    :cond_3
    move v0, v1

    .line 160
    goto :goto_0

    .line 162
    :cond_4
    instance-of v1, v0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;

    if-eqz v1, :cond_5

    .line 163
    check-cast v0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;

    iput-object v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->h:Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;

    .line 166
    :cond_5
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->h:Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->h:Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;

    invoke-virtual {v0, p1}, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->a(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 171
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v2, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->e:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 172
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->d:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 184
    iget v3, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->f:I

    if-ne v3, v1, :cond_7

    .line 185
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->h:Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;

    if-eqz v0, :cond_6

    .line 186
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->h:Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;

    invoke-virtual {v0, p1}, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->a(Landroid/view/MotionEvent;)Z

    .line 188
    :cond_6
    invoke-virtual {p0}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-array v2, v1, [I

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 189
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 190
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move v0, v1

    .line 191
    goto/16 :goto_0

    .line 192
    :cond_7
    iget v3, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->f:I

    if-nez v3, :cond_1

    .line 193
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->b:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_8

    .line 194
    const/4 v0, 0x2

    iput v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->f:I

    goto/16 :goto_1

    .line 195
    :cond_8
    iget v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->c:I

    int-to-float v0, v0

    cmpl-float v0, v2, v0

    if-lez v0, :cond_1

    .line 196
    iput v1, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->f:I

    .line 197
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->i:Lcom/fiio/music/swipemenulistview/i;

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->i:Lcom/fiio/music/swipemenulistview/i;

    iget v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->g:I

    goto/16 :goto_1

    .line 204
    :pswitch_2
    iget v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->f:I

    if-ne v0, v1, :cond_1

    .line 205
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->h:Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;

    if-eqz v0, :cond_a

    .line 206
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->h:Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;

    invoke-virtual {v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->a()Z

    move-result v0

    .line 207
    iget-object v2, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->h:Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;

    invoke-virtual {v2, p1}, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->a(Landroid/view/MotionEvent;)Z

    .line 208
    iget-object v2, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->h:Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;

    invoke-virtual {v2}, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->a()Z

    move-result v2

    .line 209
    if-eq v0, v2, :cond_9

    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->m:Lcom/fiio/music/swipemenulistview/h;

    if-eqz v0, :cond_9

    .line 210
    if-eqz v2, :cond_c

    .line 211
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->m:Lcom/fiio/music/swipemenulistview/h;

    iget v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->g:I

    .line 216
    :cond_9
    :goto_2
    if-nez v2, :cond_a

    .line 217
    const/4 v0, -0x1

    iput v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->g:I

    .line 218
    iput-object v5, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->h:Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;

    .line 221
    :cond_a
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->i:Lcom/fiio/music/swipemenulistview/i;

    if-eqz v0, :cond_b

    .line 222
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->i:Lcom/fiio/music/swipemenulistview/i;

    iget v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->g:I

    .line 224
    :cond_b
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 225
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move v0, v1

    .line 226
    goto/16 :goto_0

    .line 213
    :cond_c
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->m:Lcom/fiio/music/swipemenulistview/h;

    iget v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->g:I

    goto :goto_2

    .line 131
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    .prologue
    .line 72
    iput-object p1, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->p:Landroid/widget/ListAdapter;

    .line 73
    new-instance v0, Lcom/fiio/music/swipemenulistview/f;

    invoke-virtual {p0}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/fiio/music/swipemenulistview/f;-><init>(Lcom/fiio/music/swipemenulistview/SwipeMenuListView;Landroid/content/Context;Landroid/widget/ListAdapter;)V

    invoke-super {p0, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 98
    return-void
.end method

.method public setCloseInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->n:Landroid/view/animation/Interpolator;

    .line 106
    return-void
.end method

.method public setMenuCreator(Lcom/fiio/music/swipemenulistview/c;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->j:Lcom/fiio/music/swipemenulistview/c;

    .line 262
    return-void
.end method

.method public setMenuLeftCreator(Lcom/fiio/music/swipemenulistview/c;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->k:Lcom/fiio/music/swipemenulistview/c;

    .line 266
    return-void
.end method

.method public setOnMenuItemClickListener(Lcom/fiio/music/swipemenulistview/g;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->l:Lcom/fiio/music/swipemenulistview/g;

    .line 270
    return-void
.end method

.method public setOnMenuStateChangeListener(Lcom/fiio/music/swipemenulistview/h;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->m:Lcom/fiio/music/swipemenulistview/h;

    .line 278
    return-void
.end method

.method public setOnSwipeListener(Lcom/fiio/music/swipemenulistview/i;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->i:Lcom/fiio/music/swipemenulistview/i;

    .line 274
    return-void
.end method

.method public setOpenInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->o:Landroid/view/animation/Interpolator;

    .line 110
    return-void
.end method
