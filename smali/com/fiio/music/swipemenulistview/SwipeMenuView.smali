.class public Lcom/fiio/music/swipemenulistview/SwipeMenuView;
.super Landroid/widget/LinearLayout;
.source "SwipeMenuView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

.field private b:Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;

.field private c:Lcom/fiio/music/swipemenulistview/a;

.field private d:Lcom/fiio/music/swipemenulistview/j;

.field private e:I


# direct methods
.method public constructor <init>(Lcom/fiio/music/swipemenulistview/a;Lcom/fiio/music/swipemenulistview/SwipeMenuListView;)V
    .locals 4

    .prologue
    .line 36
    invoke-virtual {p1}, Lcom/fiio/music/swipemenulistview/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 37
    iput-object p2, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuView;->a:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    .line 38
    iput-object p1, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuView;->c:Lcom/fiio/music/swipemenulistview/a;

    .line 39
    invoke-virtual {p1}, Lcom/fiio/music/swipemenulistview/a;->b()Ljava/util/List;

    move-result-object v1

    .line 40
    const/4 v0, 0x0

    .line 41
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    return-void

    .line 41
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/swipemenulistview/d;

    .line 42
    add-int/lit8 v2, v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuView;->a(Lcom/fiio/music/swipemenulistview/d;I)V

    move v1, v2

    goto :goto_0
.end method

.method public constructor <init>(Lcom/fiio/music/swipemenulistview/a;Lcom/fiio/music/swipemenulistview/SwipeMenuListView;I)V
    .locals 4

    .prologue
    .line 48
    invoke-virtual {p1}, Lcom/fiio/music/swipemenulistview/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 49
    iput-object p2, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuView;->a:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    .line 50
    iput-object p1, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuView;->c:Lcom/fiio/music/swipemenulistview/a;

    .line 51
    invoke-virtual {p1}, Lcom/fiio/music/swipemenulistview/a;->b()Ljava/util/List;

    move-result-object v1

    .line 52
    add-int/lit8 v0, p3, 0x0

    .line 54
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    return-void

    .line 54
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/swipemenulistview/d;

    .line 55
    add-int/lit8 v2, v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuView;->a(Lcom/fiio/music/swipemenulistview/d;I)V

    move v1, v2

    goto :goto_0
.end method

.method private a(Lcom/fiio/music/swipemenulistview/d;I)V
    .locals 4

    .prologue
    const/16 v3, 0x11

    .line 60
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1}, Lcom/fiio/music/swipemenulistview/d;->f()I

    move-result v1

    .line 61
    const/4 v2, -0x1

    .line 60
    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 62
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/fiio/music/swipemenulistview/SwipeMenuView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 63
    invoke-virtual {v1, p2}, Landroid/widget/LinearLayout;->setId(I)V

    .line 64
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 65
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 66
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    invoke-virtual {p1}, Lcom/fiio/music/swipemenulistview/d;->e()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    invoke-virtual {p0, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuView;->addView(Landroid/view/View;)V

    .line 71
    invoke-virtual {p1}, Lcom/fiio/music/swipemenulistview/d;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/fiio/music/swipemenulistview/SwipeMenuView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/fiio/music/swipemenulistview/d;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 74
    :cond_0
    invoke-virtual {p1}, Lcom/fiio/music/swipemenulistview/d;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 75
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/fiio/music/swipemenulistview/SwipeMenuView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/fiio/music/swipemenulistview/d;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {p1}, Lcom/fiio/music/swipemenulistview/d;->b()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p1}, Lcom/fiio/music/swipemenulistview/d;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 78
    :cond_1
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuView;->c:Lcom/fiio/music/swipemenulistview/a;

    invoke-virtual {v0}, Lcom/fiio/music/swipemenulistview/a;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getOnSwipeItemClickListener()Lcom/fiio/music/swipemenulistview/j;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuView;->d:Lcom/fiio/music/swipemenulistview/j;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuView;->e:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 97
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuView;->d:Lcom/fiio/music/swipemenulistview/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuView;->b:Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;

    invoke-virtual {v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuView;->d:Lcom/fiio/music/swipemenulistview/j;

    iget-object v1, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuView;->c:Lcom/fiio/music/swipemenulistview/a;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Lcom/fiio/music/swipemenulistview/j;->a(Lcom/fiio/music/swipemenulistview/SwipeMenuView;Lcom/fiio/music/swipemenulistview/a;I)V

    .line 100
    :cond_0
    return-void
.end method

.method public setLayout(Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuView;->b:Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;

    .line 112
    return-void
.end method

.method public setOnSwipeItemClickListener(Lcom/fiio/music/swipemenulistview/j;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuView;->d:Lcom/fiio/music/swipemenulistview/j;

    .line 108
    return-void
.end method

.method public setPosition(I)V
    .locals 0

    .prologue
    .line 32
    iput p1, p0, Lcom/fiio/music/swipemenulistview/SwipeMenuView;->e:I

    .line 33
    return-void
.end method
