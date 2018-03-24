.class public final Lcom/fiio/music/custom/j;
.super Ljava/lang/Object;
.source "XfMenu.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/GridView;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<[I>;>;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/PopupWindow;

.field private h:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/fiio/music/custom/j;->e:I

    .line 69
    new-instance v0, Lcom/fiio/music/custom/k;

    invoke-direct {v0, p0}, Lcom/fiio/music/custom/k;-><init>(Lcom/fiio/music/custom/j;)V

    iput-object v0, p0, Lcom/fiio/music/custom/j;->h:Landroid/view/View$OnClickListener;

    .line 34
    iput-object p1, p0, Lcom/fiio/music/custom/j;->a:Landroid/content/Context;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/custom/j;->d:Ljava/util/List;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/custom/j;->b:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/custom/j;->c:Ljava/util/List;

    .line 39
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fiio/music/custom/j;->f:Landroid/widget/LinearLayout;

    .line 40
    iget-object v0, p0, Lcom/fiio/music/custom/j;->f:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    .line 41
    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 40
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    iget-object v0, p0, Lcom/fiio/music/custom/j;->f:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 43
    iget-object v0, p0, Lcom/fiio/music/custom/j;->f:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 44
    iget-object v0, p0, Lcom/fiio/music/custom/j;->f:Landroid/widget/LinearLayout;

    const v1, 0x7f080006

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 45
    return-void
.end method

.method static synthetic a(Lcom/fiio/music/custom/j;)I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/fiio/music/custom/j;->e:I

    return v0
.end method

.method static synthetic a(Lcom/fiio/music/custom/j;I)V
    .locals 0

    .prologue
    .line 29
    iput p1, p0, Lcom/fiio/music/custom/j;->e:I

    return-void
.end method

.method static synthetic b(Lcom/fiio/music/custom/j;)Ljava/util/List;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fiio/music/custom/j;->d:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/fiio/music/custom/j;)Ljava/util/List;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/fiio/music/custom/j;->b:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final a()Landroid/widget/PopupWindow;
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v7, -0x2

    const/4 v3, 0x0

    .line 111
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/fiio/music/custom/j;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fiio/music/custom/j;->g:Landroid/widget/PopupWindow;

    .line 112
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/fiio/music/custom/j;->a:Landroid/content/Context;

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 113
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 114
    invoke-direct {v0, v8, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 113
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 117
    iget-object v0, p0, Lcom/fiio/music/custom/j;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    move v2, v3

    :goto_0
    if-lt v2, v5, :cond_0

    .line 131
    iget-object v0, p0, Lcom/fiio/music/custom/j;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v8}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 132
    iget-object v0, p0, Lcom/fiio/music/custom/j;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v7}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 133
    iget-object v0, p0, Lcom/fiio/music/custom/j;->g:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 134
    iget-object v0, p0, Lcom/fiio/music/custom/j;->g:Landroid/widget/PopupWindow;

    const v1, 0x7f090004

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 137
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 138
    iget-object v1, p0, Lcom/fiio/music/custom/j;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 139
    iget-object v0, p0, Lcom/fiio/music/custom/j;->g:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/fiio/music/custom/j;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 140
    iget-object v0, p0, Lcom/fiio/music/custom/j;->g:Landroid/widget/PopupWindow;

    return-object v0

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/custom/j;->d:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 119
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 120
    iget-object v1, p0, Lcom/fiio/music/custom/j;->b:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    .line 121
    iget v6, p0, Lcom/fiio/music/custom/j;->e:I

    if-eq v6, v2, :cond_1

    .line 122
    const v6, 0x7f080005

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 123
    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Landroid/widget/GridView;->setVisibility(I)V

    .line 125
    :cond_1
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 126
    if-nez v2, :cond_2

    .line 127
    iget-object v0, p0, Lcom/fiio/music/custom/j;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 129
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/custom/j;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 117
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method public final a(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 148
    iget-object v0, p0, Lcom/fiio/music/custom/j;->g:Landroid/widget/PopupWindow;

    const/16 v1, 0x51

    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 149
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/List;Lcom/fiio/music/adapter/MenuAdapter$ItemListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<[I>;",
            "Lcom/fiio/music/adapter/MenuAdapter$ItemListener;",
            ")V"
        }
    .end annotation

    .prologue
    const/16 v7, 0x11

    const/16 v3, 0xa

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/16 v4, 0xf

    .line 49
    iget-object v0, p0, Lcom/fiio/music/custom/j;->d:Ljava/util/List;

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fiio/music/custom/j;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v1, v6, v3, v6, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v6, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/fiio/music/custom/j;->h:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v0, p0, Lcom/fiio/music/custom/j;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object v0, p0, Lcom/fiio/music/custom/j;->b:Ljava/util/List;

    new-instance v1, Landroid/widget/GridView;

    iget-object v2, p0, Lcom/fiio/music/custom/j;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    invoke-virtual {v1, v4}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    invoke-virtual {v1, v4}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/GridView;->setPadding(IIII)V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setStretchMode(I)V

    invoke-virtual {v1, v7}, Landroid/widget/GridView;->setGravity(I)V

    new-instance v2, Lcom/fiio/music/custom/l;

    invoke-direct {v2, p0, p3}, Lcom/fiio/music/custom/l;-><init>(Lcom/fiio/music/custom/j;Lcom/fiio/music/adapter/MenuAdapter$ItemListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v2, Lcom/fiio/music/adapter/MenuAdapter;

    iget-object v3, p0, Lcom/fiio/music/custom/j;->a:Landroid/content/Context;

    invoke-direct {v2, v3, p2}, Lcom/fiio/music/adapter/MenuAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v2, p3}, Lcom/fiio/music/adapter/MenuAdapter;->setmItemListener(Lcom/fiio/music/adapter/MenuAdapter$ItemListener;)Lcom/fiio/music/adapter/MenuAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/fiio/music/custom/j;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/fiio/music/custom/j;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 153
    return-void
.end method
