.class public Lcom/fiio/music/swipemenulistview/b;
.super Ljava/lang/Object;
.source "SwipeMenuAdapter.java"

# interfaces
.implements Landroid/widget/WrapperListAdapter;
.implements Lcom/fiio/music/swipemenulistview/j;


# instance fields
.field private a:Landroid/widget/ListAdapter;

.field private b:Landroid/content/Context;

.field private c:Lcom/fiio/music/swipemenulistview/g;

.field private d:Landroid/content/SharedPreferences;

.field private e:Z

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ListAdapter;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x3

    iput v0, p0, Lcom/fiio/music/swipemenulistview/b;->f:I

    .line 34
    const-string v0, "changestyle"

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/swipemenulistview/b;->d:Landroid/content/SharedPreferences;

    .line 35
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/b;->d:Landroid/content/SharedPreferences;

    const-string v1, "styleChange"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fiio/music/swipemenulistview/b;->e:Z

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/a;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/fiio/music/swipemenulistview/b;->f:I

    .line 37
    iput-object p2, p0, Lcom/fiio/music/swipemenulistview/b;->a:Landroid/widget/ListAdapter;

    .line 38
    iput-object p1, p0, Lcom/fiio/music/swipemenulistview/b;->b:Landroid/content/Context;

    .line 39
    return-void
.end method


# virtual methods
.method public a(Lcom/fiio/music/swipemenulistview/SwipeMenuView;Lcom/fiio/music/swipemenulistview/a;I)V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/b;->c:Lcom/fiio/music/swipemenulistview/g;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/b;->c:Lcom/fiio/music/swipemenulistview/g;

    invoke-virtual {p1}, Lcom/fiio/music/swipemenulistview/SwipeMenuView;->getPosition()I

    move-result v1

    invoke-interface {v0, v1, p2, p3}, Lcom/fiio/music/swipemenulistview/g;->a(ILcom/fiio/music/swipemenulistview/a;I)Z

    .line 139
    :cond_0
    return-void
.end method

.method public a(Lcom/fiio/music/swipemenulistview/a;)V
    .locals 4

    .prologue
    const/16 v3, 0x12c

    .line 106
    new-instance v0, Lcom/fiio/music/swipemenulistview/d;

    iget-object v1, p0, Lcom/fiio/music/swipemenulistview/b;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/fiio/music/swipemenulistview/d;-><init>(Landroid/content/Context;)V

    .line 107
    const-string v1, "Item 1"

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/d;->a(Ljava/lang/String;)V

    .line 108
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const v2, -0x777778

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/d;->a(Landroid/graphics/drawable/Drawable;)V

    .line 109
    invoke-virtual {v0, v3}, Lcom/fiio/music/swipemenulistview/d;->b(I)V

    .line 110
    invoke-virtual {p1, v0}, Lcom/fiio/music/swipemenulistview/a;->a(Lcom/fiio/music/swipemenulistview/d;)V

    .line 112
    new-instance v0, Lcom/fiio/music/swipemenulistview/d;

    iget-object v1, p0, Lcom/fiio/music/swipemenulistview/b;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/fiio/music/swipemenulistview/d;-><init>(Landroid/content/Context;)V

    .line 113
    const-string v1, "Item 2"

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/d;->a(Ljava/lang/String;)V

    .line 114
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v2, -0x10000

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/d;->a(Landroid/graphics/drawable/Drawable;)V

    .line 115
    invoke-virtual {v0, v3}, Lcom/fiio/music/swipemenulistview/d;->b(I)V

    .line 116
    invoke-virtual {p1, v0}, Lcom/fiio/music/swipemenulistview/a;->a(Lcom/fiio/music/swipemenulistview/d;)V

    .line 117
    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/b;->a:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method public b(Lcom/fiio/music/swipemenulistview/a;)V
    .locals 4

    .prologue
    const/16 v3, 0x12c

    .line 121
    new-instance v0, Lcom/fiio/music/swipemenulistview/d;

    iget-object v1, p0, Lcom/fiio/music/swipemenulistview/b;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/fiio/music/swipemenulistview/d;-><init>(Landroid/content/Context;)V

    .line 122
    const-string v1, "Item 1"

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/d;->a(Ljava/lang/String;)V

    .line 123
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v2, -0x10000

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/d;->a(Landroid/graphics/drawable/Drawable;)V

    .line 124
    invoke-virtual {v0, v3}, Lcom/fiio/music/swipemenulistview/d;->b(I)V

    .line 125
    invoke-virtual {p1, v0}, Lcom/fiio/music/swipemenulistview/a;->a(Lcom/fiio/music/swipemenulistview/d;)V

    .line 127
    new-instance v0, Lcom/fiio/music/swipemenulistview/d;

    iget-object v1, p0, Lcom/fiio/music/swipemenulistview/b;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/fiio/music/swipemenulistview/d;-><init>(Landroid/content/Context;)V

    .line 128
    const-string v1, "Item 2"

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/d;->a(Ljava/lang/String;)V

    .line 129
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const v2, -0x777778

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/d;->a(Landroid/graphics/drawable/Drawable;)V

    .line 130
    invoke-virtual {v0, v3}, Lcom/fiio/music/swipemenulistview/d;->b(I)V

    .line 131
    invoke-virtual {p1, v0}, Lcom/fiio/music/swipemenulistview/a;->a(Lcom/fiio/music/swipemenulistview/d;)V

    .line 132
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/b;->a:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/b;->a:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/b;->a:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/b;->a:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .prologue
    const v7, 0x7f080064

    const/16 v6, 0x19

    .line 59
    if-nez p2, :cond_4

    .line 61
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/b;->a:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 62
    new-instance v3, Lcom/fiio/music/swipemenulistview/a;

    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/b;->b:Landroid/content/Context;

    invoke-direct {v3, v0, v1}, Lcom/fiio/music/swipemenulistview/a;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 63
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/b;->a:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/fiio/music/swipemenulistview/a;->a(I)V

    .line 64
    invoke-virtual {p0, v3}, Lcom/fiio/music/swipemenulistview/b;->a(Lcom/fiio/music/swipemenulistview/a;)V

    .line 65
    new-instance v2, Lcom/fiio/music/swipemenulistview/SwipeMenuView;

    move-object v0, p3

    check-cast v0, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    invoke-direct {v2, v3, v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuView;-><init>(Lcom/fiio/music/swipemenulistview/a;Lcom/fiio/music/swipemenulistview/SwipeMenuListView;)V

    .line 66
    const/16 v0, 0xe6

    const/16 v3, 0x3a

    invoke-static {v0, v3, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuView;->setBackgroundColor(I)V

    .line 67
    invoke-virtual {v2, p0}, Lcom/fiio/music/swipemenulistview/SwipeMenuView;->setOnSwipeItemClickListener(Lcom/fiio/music/swipemenulistview/j;)V

    .line 69
    new-instance v4, Lcom/fiio/music/swipemenulistview/a;

    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/b;->b:Landroid/content/Context;

    invoke-direct {v4, v0, v1}, Lcom/fiio/music/swipemenulistview/a;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 70
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/b;->a:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/fiio/music/swipemenulistview/a;->a(I)V

    .line 71
    invoke-virtual {p0, v4}, Lcom/fiio/music/swipemenulistview/b;->b(Lcom/fiio/music/swipemenulistview/a;)V

    .line 72
    new-instance v3, Lcom/fiio/music/swipemenulistview/SwipeMenuView;

    move-object v0, p3

    check-cast v0, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    invoke-virtual {v2}, Lcom/fiio/music/swipemenulistview/SwipeMenuView;->getCount()I

    move-result v5

    invoke-direct {v3, v4, v0, v5}, Lcom/fiio/music/swipemenulistview/SwipeMenuView;-><init>(Lcom/fiio/music/swipemenulistview/a;Lcom/fiio/music/swipemenulistview/SwipeMenuListView;I)V

    .line 74
    iget v0, p0, Lcom/fiio/music/swipemenulistview/b;->f:I

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    .line 75
    const/16 v0, 0x97

    const/16 v4, 0xe8

    invoke-static {v6, v0, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuView;->setBackgroundColor(I)V

    .line 84
    :cond_0
    :goto_0
    invoke-virtual {v3, p0}, Lcom/fiio/music/swipemenulistview/SwipeMenuView;->setOnSwipeItemClickListener(Lcom/fiio/music/swipemenulistview/j;)V

    .line 86
    check-cast p3, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    .line 87
    new-instance v0, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;

    .line 88
    invoke-virtual {p3}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->getCloseInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v4

    .line 89
    invoke-virtual {p3}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->getOpenInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v5

    .line 87
    invoke-direct/range {v0 .. v5}, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;-><init>(Landroid/view/View;Lcom/fiio/music/swipemenulistview/SwipeMenuView;Lcom/fiio/music/swipemenulistview/SwipeMenuView;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;)V

    .line 93
    invoke-virtual {v0, p1}, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->setPosition(I)V

    .line 101
    :goto_1
    return-object v0

    .line 76
    :cond_1
    iget v0, p0, Lcom/fiio/music/swipemenulistview/b;->f:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    .line 77
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/b;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f080071

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuView;->setBackgroundColor(I)V

    goto :goto_0

    .line 78
    :cond_2
    iget v0, p0, Lcom/fiio/music/swipemenulistview/b;->f:I

    const/4 v4, 0x3

    if-ne v0, v4, :cond_3

    .line 79
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/b;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuView;->setBackgroundColor(I)V

    goto :goto_0

    .line 80
    :cond_3
    iget v0, p0, Lcom/fiio/music/swipemenulistview/b;->f:I

    const/4 v4, 0x4

    if-ne v0, v4, :cond_0

    .line 81
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/b;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuView;->setBackgroundColor(I)V

    goto :goto_0

    .line 95
    :cond_4
    check-cast p2, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;

    .line 96
    invoke-virtual {p2}, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->c()V

    .line 97
    invoke-virtual {p2, p1}, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->setPosition(I)V

    .line 98
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/b;->a:Landroid/widget/ListAdapter;

    invoke-virtual {p2}, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, p1, v1, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-object v0, p2

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/b;->a:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public getWrappedAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/b;->a:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/b;->a:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/b;->a:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/b;->a:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    return v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/b;->a:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 149
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/b;->a:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 154
    return-void
.end method
