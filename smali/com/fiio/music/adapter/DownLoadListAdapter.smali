.class public Lcom/fiio/music/adapter/DownLoadListAdapter;
.super Landroid/widget/BaseAdapter;
.source "DownLoadListAdapter.java"


# instance fields
.field private context:Landroid/content/Context;

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;"
        }
    .end annotation
.end field

.field private mItemListener:Lcom/fiio/music/adapter/DownLoadListAdapter$ItemListener;

.field private playerInfo:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;[I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;[I)V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 21
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/fiio/music/adapter/DownLoadListAdapter;->playerInfo:[I

    .line 25
    iput-object p1, p0, Lcom/fiio/music/adapter/DownLoadListAdapter;->context:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/fiio/music/adapter/DownLoadListAdapter;->data:Ljava/util/List;

    .line 27
    iput-object p3, p0, Lcom/fiio/music/adapter/DownLoadListAdapter;->playerInfo:[I

    .line 28
    return-void
.end method

.method static synthetic access$0(Lcom/fiio/music/adapter/DownLoadListAdapter;)Lcom/fiio/music/adapter/DownLoadListAdapter$ItemListener;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/fiio/music/adapter/DownLoadListAdapter;->mItemListener:Lcom/fiio/music/adapter/DownLoadListAdapter$ItemListener;

    return-object v0
.end method


# virtual methods
.method public deleteItem(I)V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/fiio/music/adapter/DownLoadListAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 62
    invoke-virtual {p0}, Lcom/fiio/music/adapter/DownLoadListAdapter;->notifyDataSetChanged()V

    .line 63
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/fiio/music/adapter/DownLoadListAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/fiio/music/adapter/DownLoadListAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 57
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 67
    if-nez p2, :cond_1

    .line 69
    new-instance v1, Lcom/fiio/music/adapter/DownLoadListAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/fiio/music/adapter/DownLoadListAdapter$ViewHolder;-><init>(Lcom/fiio/music/adapter/DownLoadListAdapter;)V

    .line 70
    iget-object v0, p0, Lcom/fiio/music/adapter/DownLoadListAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f040044

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 71
    const v0, 0x7f0b00a7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/fiio/music/adapter/DownLoadListAdapter$ViewHolder;->tv_download_list_item_bottom:Landroid/widget/TextView;

    .line 72
    const v0, 0x7f0b00a4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/fiio/music/adapter/DownLoadListAdapter$ViewHolder;->tv_download_list_item_number:Landroid/widget/TextView;

    .line 73
    const v0, 0x7f0b00a6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/fiio/music/adapter/DownLoadListAdapter$ViewHolder;->tv_download_list_item_top:Landroid/widget/TextView;

    .line 74
    const v0, 0x7f0b00a5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/fiio/music/adapter/DownLoadListAdapter$ViewHolder;->ibtn_download_list_item_menu:Landroid/widget/Button;

    .line 76
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 81
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/adapter/DownLoadListAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    .line 83
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getId_()I

    move-result v2

    iget-object v3, p0, Lcom/fiio/music/adapter/DownLoadListAdapter;->playerInfo:[I

    aget v3, v3, v5

    if-ne v2, v3, :cond_5

    .line 84
    iget-object v2, v1, Lcom/fiio/music/adapter/DownLoadListAdapter$ViewHolder;->tv_download_list_item_number:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v2, p0, Lcom/fiio/music/adapter/DownLoadListAdapter;->playerInfo:[I

    aget v2, v2, v4

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 87
    iget-object v2, v1, Lcom/fiio/music/adapter/DownLoadListAdapter$ViewHolder;->tv_download_list_item_number:Landroid/widget/TextView;

    const v3, 0x7f020532

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 99
    :cond_0
    :goto_1
    iget-object v2, v1, Lcom/fiio/music/adapter/DownLoadListAdapter$ViewHolder;->tv_download_list_item_top:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v2, v1, Lcom/fiio/music/adapter/DownLoadListAdapter$ViewHolder;->tv_download_list_item_top:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 101
    iget-object v2, v1, Lcom/fiio/music/adapter/DownLoadListAdapter$ViewHolder;->tv_download_list_item_bottom:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getArtist()Lcom/fiio/music/entity/Artist;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fiio/music/entity/Artist;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v2, v1, Lcom/fiio/music/adapter/DownLoadListAdapter$ViewHolder;->ibtn_download_list_item_menu:Landroid/widget/Button;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getId_()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 104
    iget-object v2, v1, Lcom/fiio/music/adapter/DownLoadListAdapter$ViewHolder;->ibtn_download_list_item_menu:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setFocusable(Z)V

    .line 105
    iget-object v2, v1, Lcom/fiio/music/adapter/DownLoadListAdapter$ViewHolder;->ibtn_download_list_item_menu:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setFocusableInTouchMode(Z)V

    .line 107
    iget-object v1, v1, Lcom/fiio/music/adapter/DownLoadListAdapter$ViewHolder;->ibtn_download_list_item_menu:Landroid/widget/Button;

    new-instance v2, Lcom/fiio/music/adapter/a;

    invoke-direct {v2, p0, v0, p1}, Lcom/fiio/music/adapter/a;-><init>(Lcom/fiio/music/adapter/DownLoadListAdapter;Lcom/fiio/music/entity/Song;I)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    return-object p2

    .line 78
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/adapter/DownLoadListAdapter$ViewHolder;

    move-object v1, v0

    goto :goto_0

    .line 88
    :cond_2
    iget-object v2, p0, Lcom/fiio/music/adapter/DownLoadListAdapter;->playerInfo:[I

    aget v2, v2, v4

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/fiio/music/adapter/DownLoadListAdapter;->playerInfo:[I

    aget v2, v2, v4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    .line 89
    :cond_3
    iget-object v2, v1, Lcom/fiio/music/adapter/DownLoadListAdapter$ViewHolder;->tv_download_list_item_number:Landroid/widget/TextView;

    const v3, 0x7f020533

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    .line 90
    :cond_4
    iget-object v2, p0, Lcom/fiio/music/adapter/DownLoadListAdapter;->playerInfo:[I

    aget v2, v2, v4

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 91
    iget-object v2, v1, Lcom/fiio/music/adapter/DownLoadListAdapter$ViewHolder;->tv_download_list_item_number:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v4, p1, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v2, v1, Lcom/fiio/music/adapter/DownLoadListAdapter$ViewHolder;->tv_download_list_item_number:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    .line 95
    :cond_5
    iget-object v2, v1, Lcom/fiio/music/adapter/DownLoadListAdapter$ViewHolder;->tv_download_list_item_number:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v4, p1, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v2, v1, Lcom/fiio/music/adapter/DownLoadListAdapter$ViewHolder;->tv_download_list_item_number:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_1
.end method

.method public setItemListener(Lcom/fiio/music/adapter/DownLoadListAdapter$ItemListener;)Lcom/fiio/music/adapter/DownLoadListAdapter;
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/fiio/music/adapter/DownLoadListAdapter;->mItemListener:Lcom/fiio/music/adapter/DownLoadListAdapter$ItemListener;

    .line 32
    return-object p0
.end method

.method public setPlayerInfo([I)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/fiio/music/adapter/DownLoadListAdapter;->playerInfo:[I

    .line 37
    invoke-virtual {p0}, Lcom/fiio/music/adapter/DownLoadListAdapter;->notifyDataSetChanged()V

    .line 38
    return-void
.end method

.method public setPlayerState(I)V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/fiio/music/adapter/DownLoadListAdapter;->playerInfo:[I

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 42
    invoke-virtual {p0}, Lcom/fiio/music/adapter/DownLoadListAdapter;->notifyDataSetChanged()V

    .line 43
    return-void
.end method
