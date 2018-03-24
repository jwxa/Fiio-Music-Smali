.class public Lcom/fiio/music/widget/StickyLayout;
.super Landroid/widget/LinearLayout;
.source "StickyLayout.java"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:Lcom/fiio/music/widget/s;

.field private d:Lcom/fiio/music/widget/r;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Z

.field private n:Z

.field private o:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 61
    iput v1, p0, Lcom/fiio/music/widget/StickyLayout;->g:I

    .line 68
    iput v0, p0, Lcom/fiio/music/widget/StickyLayout;->i:I

    .line 69
    iput v0, p0, Lcom/fiio/music/widget/StickyLayout;->j:I

    .line 72
    iput v0, p0, Lcom/fiio/music/widget/StickyLayout;->k:I

    .line 73
    iput v0, p0, Lcom/fiio/music/widget/StickyLayout;->l:I

    .line 78
    iput-boolean v1, p0, Lcom/fiio/music/widget/StickyLayout;->m:Z

    .line 79
    iput-boolean v0, p0, Lcom/fiio/music/widget/StickyLayout;->n:Z

    .line 80
    iput-boolean v1, p0, Lcom/fiio/music/widget/StickyLayout;->o:Z

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 87
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    iput v1, p0, Lcom/fiio/music/widget/StickyLayout;->g:I

    .line 68
    iput v0, p0, Lcom/fiio/music/widget/StickyLayout;->i:I

    .line 69
    iput v0, p0, Lcom/fiio/music/widget/StickyLayout;->j:I

    .line 72
    iput v0, p0, Lcom/fiio/music/widget/StickyLayout;->k:I

    .line 73
    iput v0, p0, Lcom/fiio/music/widget/StickyLayout;->l:I

    .line 78
    iput-boolean v1, p0, Lcom/fiio/music/widget/StickyLayout;->m:Z

    .line 79
    iput-boolean v0, p0, Lcom/fiio/music/widget/StickyLayout;->n:Z

    .line 80
    iput-boolean v1, p0, Lcom/fiio/music/widget/StickyLayout;->o:Z

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 92
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    iput v1, p0, Lcom/fiio/music/widget/StickyLayout;->g:I

    .line 68
    iput v0, p0, Lcom/fiio/music/widget/StickyLayout;->i:I

    .line 69
    iput v0, p0, Lcom/fiio/music/widget/StickyLayout;->j:I

    .line 72
    iput v0, p0, Lcom/fiio/music/widget/StickyLayout;->k:I

    .line 73
    iput v0, p0, Lcom/fiio/music/widget/StickyLayout;->l:I

    .line 78
    iput-boolean v1, p0, Lcom/fiio/music/widget/StickyLayout;->m:Z

    .line 79
    iput-boolean v0, p0, Lcom/fiio/music/widget/StickyLayout;->n:Z

    .line 80
    iput-boolean v1, p0, Lcom/fiio/music/widget/StickyLayout;->o:Z

    .line 93
    return-void
.end method

.method private a()V
    .locals 5

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/fiio/music/widget/StickyLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "sticky_header"

    const-string v2, "id"

    invoke-virtual {p0}, Lcom/fiio/music/widget/StickyLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 105
    invoke-virtual {p0}, Lcom/fiio/music/widget/StickyLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "sticky_content"

    const-string v3, "id"

    invoke-virtual {p0}, Lcom/fiio/music/widget/StickyLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 106
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 107
    invoke-virtual {p0, v0}, Lcom/fiio/music/widget/StickyLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/widget/StickyLayout;->a:Landroid/view/View;

    .line 108
    invoke-virtual {p0, v1}, Lcom/fiio/music/widget/StickyLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/widget/StickyLayout;->b:Landroid/view/View;

    .line 109
    iget-object v0, p0, Lcom/fiio/music/widget/StickyLayout;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/fiio/music/widget/StickyLayout;->e:I

    .line 110
    iget v0, p0, Lcom/fiio/music/widget/StickyLayout;->e:I

    iput v0, p0, Lcom/fiio/music/widget/StickyLayout;->f:I

    .line 111
    invoke-virtual {p0}, Lcom/fiio/music/widget/StickyLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/fiio/music/widget/StickyLayout;->h:I

    .line 112
    iget v0, p0, Lcom/fiio/music/widget/StickyLayout;->f:I

    if-lez v0, :cond_0

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fiio/music/widget/StickyLayout;->n:Z

    .line 121
    :cond_0
    return-void

    .line 119
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Did your view with id \"sticky_header\" or \"sticky_content\" exists?"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getHeaderHeight()I
    .locals 1

    .prologue
    .line 303
    iget v0, p0, Lcom/fiio/music/widget/StickyLayout;->f:I

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 131
    .line 132
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    .line 133
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 135
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_0
    move v2, v1

    .line 167
    :goto_1
    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/fiio/music/widget/StickyLayout;->m:Z

    if-eqz v2, :cond_4

    :goto_2
    return v0

    .line 137
    :pswitch_0
    iput v2, p0, Lcom/fiio/music/widget/StickyLayout;->k:I

    .line 138
    iput v3, p0, Lcom/fiio/music/widget/StickyLayout;->l:I

    .line 139
    iput v2, p0, Lcom/fiio/music/widget/StickyLayout;->i:I

    .line 140
    iput v3, p0, Lcom/fiio/music/widget/StickyLayout;->j:I

    move v2, v1

    .line 142
    goto :goto_1

    .line 145
    :pswitch_1
    iget v4, p0, Lcom/fiio/music/widget/StickyLayout;->k:I

    sub-int/2addr v2, v4

    .line 146
    iget v4, p0, Lcom/fiio/music/widget/StickyLayout;->l:I

    sub-int v4, v3, v4

    .line 147
    iget-boolean v5, p0, Lcom/fiio/music/widget/StickyLayout;->o:Z

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/fiio/music/widget/StickyLayout;->getHeaderHeight()I

    move-result v5

    if-gt v3, v5, :cond_1

    move v2, v1

    .line 149
    goto :goto_1

    :cond_1
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-gt v3, v2, :cond_2

    move v2, v1

    .line 151
    goto :goto_1

    :cond_2
    iget v2, p0, Lcom/fiio/music/widget/StickyLayout;->g:I

    if-ne v2, v0, :cond_3

    .line 152
    iget-object v2, p0, Lcom/fiio/music/widget/StickyLayout;->d:Lcom/fiio/music/widget/r;

    if-eqz v2, :cond_3

    .line 153
    iget-object v2, p0, Lcom/fiio/music/widget/StickyLayout;->d:Lcom/fiio/music/widget/r;

    invoke-interface {v2, p1}, Lcom/fiio/music/widget/r;->giveDownTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 154
    iget v2, p0, Lcom/fiio/music/widget/StickyLayout;->h:I

    neg-int v2, v2

    if-gt v4, v2, :cond_3

    move v2, v0

    .line 156
    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/fiio/music/widget/StickyLayout;->c:Lcom/fiio/music/widget/s;

    if-eqz v2, :cond_0

    .line 157
    iget-object v2, p0, Lcom/fiio/music/widget/StickyLayout;->c:Lcom/fiio/music/widget/s;

    invoke-interface {v2, p1}, Lcom/fiio/music/widget/s;->giveUpTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/fiio/music/widget/StickyLayout;->h:I

    if-lt v4, v2, :cond_0

    move v2, v0

    .line 162
    goto :goto_1

    .line 166
    :pswitch_2
    iput v1, p0, Lcom/fiio/music/widget/StickyLayout;->l:I

    iput v1, p0, Lcom/fiio/music/widget/StickyLayout;->k:I

    goto :goto_0

    :cond_4
    move v0, v1

    .line 167
    goto :goto_2

    .line 135
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 181
    iget-boolean v0, p0, Lcom/fiio/music/widget/StickyLayout;->m:Z

    if-nez v0, :cond_0

    .line 219
    :goto_0
    return v8

    .line 184
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v6, v0

    .line 185
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v7, v0

    .line 186
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 212
    :goto_1
    :pswitch_0
    iput v6, p0, Lcom/fiio/music/widget/StickyLayout;->i:I

    .line 218
    iput v7, p0, Lcom/fiio/music/widget/StickyLayout;->j:I

    goto :goto_0

    .line 191
    :pswitch_1
    iget v0, p0, Lcom/fiio/music/widget/StickyLayout;->i:I

    .line 192
    iget v0, p0, Lcom/fiio/music/widget/StickyLayout;->j:I

    sub-int v0, v7, v0

    .line 196
    iget v1, p0, Lcom/fiio/music/widget/StickyLayout;->f:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/fiio/music/widget/StickyLayout;->f:I

    .line 197
    iget v0, p0, Lcom/fiio/music/widget/StickyLayout;->f:I

    invoke-virtual {p0, v0}, Lcom/fiio/music/widget/StickyLayout;->setHeaderHeight(I)V

    goto :goto_1

    .line 202
    :pswitch_2
    iget v0, p0, Lcom/fiio/music/widget/StickyLayout;->f:I

    int-to-double v0, v0

    iget v2, p0, Lcom/fiio/music/widget/StickyLayout;->e:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v4

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_1

    .line 204
    const/4 v3, 0x0

    .line 205
    const/4 v0, 0x2

    iput v0, p0, Lcom/fiio/music/widget/StickyLayout;->g:I

    .line 211
    :goto_2
    iget v4, p0, Lcom/fiio/music/widget/StickyLayout;->f:I

    sub-int v0, v3, v4

    int-to-float v0, v0

    const/high16 v1, 0x41800000    # 16.0f

    div-float v5, v0, v1

    new-instance v0, Lcom/fiio/music/widget/p;

    const-string v2, "Thread#smoothSetHeaderHeight"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/fiio/music/widget/p;-><init>(Lcom/fiio/music/widget/StickyLayout;Ljava/lang/String;IIF)V

    invoke-virtual {v0}, Lcom/fiio/music/widget/p;->start()V

    goto :goto_1

    .line 207
    :cond_1
    iget v3, p0, Lcom/fiio/music/widget/StickyLayout;->e:I

    .line 208
    iput v8, p0, Lcom/fiio/music/widget/StickyLayout;->g:I

    goto :goto_2

    .line 186
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .prologue
    .line 97
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 98
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/fiio/music/widget/StickyLayout;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/widget/StickyLayout;->b:Landroid/view/View;

    if-nez v0, :cond_1

    .line 99
    :cond_0
    invoke-direct {p0}, Lcom/fiio/music/widget/StickyLayout;->a()V

    .line 101
    :cond_1
    return-void
.end method

.method public setHeaderHeight(I)V
    .locals 1

    .prologue
    .line 272
    iget-boolean v0, p0, Lcom/fiio/music/widget/StickyLayout;->n:Z

    if-nez v0, :cond_0

    .line 273
    invoke-direct {p0}, Lcom/fiio/music/widget/StickyLayout;->a()V

    .line 279
    :cond_0
    if-gtz p1, :cond_3

    .line 280
    const/4 p1, 0x0

    .line 285
    :cond_1
    :goto_0
    if-nez p1, :cond_4

    .line 286
    const/4 v0, 0x2

    iput v0, p0, Lcom/fiio/music/widget/StickyLayout;->g:I

    .line 291
    :goto_1
    iget-object v0, p0, Lcom/fiio/music/widget/StickyLayout;->a:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fiio/music/widget/StickyLayout;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 292
    iget-object v0, p0, Lcom/fiio/music/widget/StickyLayout;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 293
    iget-object v0, p0, Lcom/fiio/music/widget/StickyLayout;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 294
    iput p1, p0, Lcom/fiio/music/widget/StickyLayout;->f:I

    .line 300
    :cond_2
    return-void

    .line 281
    :cond_3
    iget v0, p0, Lcom/fiio/music/widget/StickyLayout;->e:I

    if-le p1, v0, :cond_1

    .line 282
    iget p1, p0, Lcom/fiio/music/widget/StickyLayout;->e:I

    goto :goto_0

    .line 288
    :cond_4
    const/4 v0, 0x1

    iput v0, p0, Lcom/fiio/music/widget/StickyLayout;->g:I

    goto :goto_1
.end method

.method public setOnGiveDownTouchEventListener(Lcom/fiio/music/widget/r;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/fiio/music/widget/StickyLayout;->d:Lcom/fiio/music/widget/r;

    .line 128
    return-void
.end method

.method public setOnGiveUpTouchEventListener(Lcom/fiio/music/widget/s;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/fiio/music/widget/StickyLayout;->c:Lcom/fiio/music/widget/s;

    .line 125
    return-void
.end method

.method public setOriginalHeaderHeight(I)V
    .locals 0

    .prologue
    .line 261
    iput p1, p0, Lcom/fiio/music/widget/StickyLayout;->e:I

    .line 262
    return-void
.end method

.method public setSticky(Z)V
    .locals 0

    .prologue
    .line 307
    iput-boolean p1, p0, Lcom/fiio/music/widget/StickyLayout;->m:Z

    .line 308
    return-void
.end method
