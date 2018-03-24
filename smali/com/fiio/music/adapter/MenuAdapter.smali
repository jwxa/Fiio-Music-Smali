.class public Lcom/fiio/music/adapter/MenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "MenuAdapter.java"


# instance fields
.field private context:Landroid/content/Context;

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[I>;"
        }
    .end annotation
.end field

.field private mItemListener:Lcom/fiio/music/adapter/MenuAdapter$ItemListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<[I>;)V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/fiio/music/adapter/MenuAdapter;->context:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lcom/fiio/music/adapter/MenuAdapter;->data:Ljava/util/List;

    .line 25
    return-void
.end method

.method static synthetic access$0(Lcom/fiio/music/adapter/MenuAdapter;)Lcom/fiio/music/adapter/MenuAdapter$ItemListener;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/fiio/music/adapter/MenuAdapter;->mItemListener:Lcom/fiio/music/adapter/MenuAdapter$ItemListener;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/fiio/music/adapter/MenuAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/fiio/music/adapter/MenuAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 44
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 49
    if-nez p2, :cond_0

    .line 51
    iget-object v0, p0, Lcom/fiio/music/adapter/MenuAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04009a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 52
    new-instance v1, Lcom/fiio/music/adapter/MenuAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/fiio/music/adapter/MenuAdapter$ViewHolder;-><init>(Lcom/fiio/music/adapter/MenuAdapter;)V

    .line 53
    const v0, 0x7f0b0201

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/fiio/music/adapter/MenuAdapter$ViewHolder;->btn_menu:Landroid/widget/Button;

    .line 54
    const v0, 0x7f0b003a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/fiio/music/adapter/MenuAdapter$ViewHolder;->tv_title:Landroid/widget/TextView;

    .line 55
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 59
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/adapter/MenuAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 60
    iget-object v2, v1, Lcom/fiio/music/adapter/MenuAdapter$ViewHolder;->btn_menu:Landroid/widget/Button;

    aget v3, v0, v4

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 61
    iget-object v2, v1, Lcom/fiio/music/adapter/MenuAdapter$ViewHolder;->btn_menu:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setFocusable(Z)V

    .line 62
    iget-object v2, v1, Lcom/fiio/music/adapter/MenuAdapter$ViewHolder;->btn_menu:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setFocusableInTouchMode(Z)V

    .line 63
    iget-object v2, v1, Lcom/fiio/music/adapter/MenuAdapter$ViewHolder;->tv_title:Landroid/widget/TextView;

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 64
    iget-object v0, v1, Lcom/fiio/music/adapter/MenuAdapter$ViewHolder;->tv_title:Landroid/widget/TextView;

    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 65
    iget-object v0, v1, Lcom/fiio/music/adapter/MenuAdapter$ViewHolder;->tv_title:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 67
    iget-object v0, v1, Lcom/fiio/music/adapter/MenuAdapter$ViewHolder;->btn_menu:Landroid/widget/Button;

    new-instance v1, Lcom/fiio/music/adapter/r;

    invoke-direct {v1, p0, p1, p2}, Lcom/fiio/music/adapter/r;-><init>(Lcom/fiio/music/adapter/MenuAdapter;ILandroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    return-object p2

    .line 57
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/adapter/MenuAdapter$ViewHolder;

    move-object v1, v0

    goto :goto_0
.end method

.method public setmItemListener(Lcom/fiio/music/adapter/MenuAdapter$ItemListener;)Lcom/fiio/music/adapter/MenuAdapter;
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/fiio/music/adapter/MenuAdapter;->mItemListener:Lcom/fiio/music/adapter/MenuAdapter$ItemListener;

    .line 29
    return-object p0
.end method
