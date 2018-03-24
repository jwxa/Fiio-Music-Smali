.class public Lcom/fiio/music/adapter/SearchAutoAdapter;
.super Landroid/widget/BaseAdapter;
.source "SearchAutoAdapter.java"


# instance fields
.field private STYLE_PARAMTER:I

.field private mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private mMaxMatch:I

.field private mObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/c/a;",
            ">;"
        }
    .end annotation
.end field

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOriginalValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fiio/music/c/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/adapter/SearchAutoAdapter;->mLock:Ljava/lang/Object;

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/fiio/music/adapter/SearchAutoAdapter;->mMaxMatch:I

    .line 29
    const/4 v0, 0x3

    iput v0, p0, Lcom/fiio/music/adapter/SearchAutoAdapter;->STYLE_PARAMTER:I

    .line 33
    iput-object p1, p0, Lcom/fiio/music/adapter/SearchAutoAdapter;->mContext:Landroid/content/Context;

    .line 34
    iput p2, p0, Lcom/fiio/music/adapter/SearchAutoAdapter;->mMaxMatch:I

    .line 35
    iput-object p3, p0, Lcom/fiio/music/adapter/SearchAutoAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 36
    invoke-virtual {p0}, Lcom/fiio/music/adapter/SearchAutoAdapter;->initSearchHistory()V

    .line 37
    iget-object v0, p0, Lcom/fiio/music/adapter/SearchAutoAdapter;->mOriginalValues:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/fiio/music/adapter/SearchAutoAdapter;->mObjects:Ljava/util/List;

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/a;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/fiio/music/adapter/SearchAutoAdapter;->STYLE_PARAMTER:I

    .line 40
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/fiio/music/adapter/SearchAutoAdapter;->mObjects:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/fiio/music/adapter/SearchAutoAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/fiio/music/adapter/SearchAutoAdapter;->mObjects:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fiio/music/adapter/SearchAutoAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 54
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    const v3, 0x7f0400e9

    const/4 v2, 0x0

    .line 60
    if-nez p2, :cond_4

    .line 61
    iget v0, p0, Lcom/fiio/music/adapter/SearchAutoAdapter;->STYLE_PARAMTER:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 62
    iget-object v0, p0, Lcom/fiio/music/adapter/SearchAutoAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 71
    :cond_0
    :goto_0
    new-instance v1, Lcom/fiio/music/adapter/ag;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/fiio/music/adapter/ag;-><init>(Lcom/fiio/music/adapter/SearchAutoAdapter;B)V

    .line 72
    const v0, 0x7f0b02a1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/fiio/music/adapter/ag;->a:Landroid/widget/TextView;

    .line 77
    :goto_1
    iget-object v0, p0, Lcom/fiio/music/adapter/SearchAutoAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/c/a;

    .line 79
    iget-object v2, v1, Lcom/fiio/music/adapter/ag;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/fiio/music/c/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 84
    return-object p2

    .line 63
    :cond_1
    iget v0, p0, Lcom/fiio/music/adapter/SearchAutoAdapter;->STYLE_PARAMTER:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 64
    iget-object v0, p0, Lcom/fiio/music/adapter/SearchAutoAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 65
    :cond_2
    iget v0, p0, Lcom/fiio/music/adapter/SearchAutoAdapter;->STYLE_PARAMTER:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 66
    iget-object v0, p0, Lcom/fiio/music/adapter/SearchAutoAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400eb

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 67
    :cond_3
    iget v0, p0, Lcom/fiio/music/adapter/SearchAutoAdapter;->STYLE_PARAMTER:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 68
    iget-object v0, p0, Lcom/fiio/music/adapter/SearchAutoAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400ec

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 75
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/adapter/ag;

    move-object v1, v0

    goto :goto_1
.end method

.method public initSearchHistory()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 91
    iget-object v1, p0, Lcom/fiio/music/adapter/SearchAutoAdapter;->mContext:Landroid/content/Context;

    .line 92
    const-string v2, "search_history"

    .line 91
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 93
    const-string v2, "search_history"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 95
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 97
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/fiio/music/adapter/SearchAutoAdapter;->mOriginalValues:Ljava/util/ArrayList;

    .line 99
    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v1, p0, Lcom/fiio/music/adapter/SearchAutoAdapter;->mOriginalValues:Ljava/util/ArrayList;

    new-instance v3, Lcom/fiio/music/c/a;

    invoke-direct {v3}, Lcom/fiio/music/c/a;-><init>()V

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Lcom/fiio/music/c/a;->a(Ljava/lang/String;)Lcom/fiio/music/c/a;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    add-int/lit8 v0, v0, 0x1

    :cond_1
    array-length v1, v2

    if-lt v0, v1, :cond_0

    goto :goto_0
.end method
