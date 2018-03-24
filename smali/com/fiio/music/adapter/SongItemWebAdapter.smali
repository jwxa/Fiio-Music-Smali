.class public Lcom/fiio/music/adapter/SongItemWebAdapter;
.super Landroid/widget/BaseAdapter;
.source "SongItemWebAdapter.java"


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

.field private mItemListener:Lcom/fiio/music/adapter/SongItemWebAdapter$ItemListener;

.field private playerInfo:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 24
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 21
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/fiio/music/adapter/SongItemWebAdapter;->playerInfo:[I

    .line 25
    iput-object p1, p0, Lcom/fiio/music/adapter/SongItemWebAdapter;->context:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/fiio/music/adapter/SongItemWebAdapter;->data:Ljava/util/List;

    .line 27
    iget-object v0, p0, Lcom/fiio/music/adapter/SongItemWebAdapter;->playerInfo:[I

    const/4 v1, 0x0

    aput v2, v0, v1

    .line 28
    iget-object v0, p0, Lcom/fiio/music/adapter/SongItemWebAdapter;->playerInfo:[I

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 29
    return-void
.end method

.method static synthetic access$0(Lcom/fiio/music/adapter/SongItemWebAdapter;)Lcom/fiio/music/adapter/SongItemWebAdapter$ItemListener;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/fiio/music/adapter/SongItemWebAdapter;->mItemListener:Lcom/fiio/music/adapter/SongItemWebAdapter$ItemListener;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/fiio/music/adapter/SongItemWebAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/fiio/music/adapter/SongItemWebAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 55
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 59
    if-nez p2, :cond_1

    .line 61
    new-instance v1, Lcom/fiio/music/adapter/SongItemWebAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/fiio/music/adapter/SongItemWebAdapter$ViewHolder;-><init>(Lcom/fiio/music/adapter/SongItemWebAdapter;)V

    .line 62
    iget-object v0, p0, Lcom/fiio/music/adapter/SongItemWebAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f040130

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 63
    const v0, 0x7f0b035f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/fiio/music/adapter/SongItemWebAdapter$ViewHolder;->tv_web_list_item_number:Landroid/widget/TextView;

    .line 64
    const v0, 0x7f0b035b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/fiio/music/adapter/SongItemWebAdapter$ViewHolder;->tv_web_list_item_top:Landroid/widget/TextView;

    .line 65
    const v0, 0x7f0b035c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/fiio/music/adapter/SongItemWebAdapter$ViewHolder;->tv_web_list_item_bottom:Landroid/widget/TextView;

    .line 66
    const v0, 0x7f0b035e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/fiio/music/adapter/SongItemWebAdapter$ViewHolder;->ibtn_web_list_item_download:Landroid/widget/Button;

    .line 68
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 72
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/adapter/SongItemWebAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    .line 74
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getId_()I

    move-result v2

    iget-object v3, p0, Lcom/fiio/music/adapter/SongItemWebAdapter;->playerInfo:[I

    aget v3, v3, v5

    if-ne v2, v3, :cond_5

    .line 75
    iget-object v2, v1, Lcom/fiio/music/adapter/SongItemWebAdapter$ViewHolder;->tv_web_list_item_number:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v2, p0, Lcom/fiio/music/adapter/SongItemWebAdapter;->playerInfo:[I

    aget v2, v2, v4

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 78
    iget-object v2, v1, Lcom/fiio/music/adapter/SongItemWebAdapter$ViewHolder;->tv_web_list_item_number:Landroid/widget/TextView;

    const v3, 0x7f020532

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 90
    :cond_0
    :goto_1
    iget-object v2, v1, Lcom/fiio/music/adapter/SongItemWebAdapter$ViewHolder;->tv_web_list_item_top:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v2, v1, Lcom/fiio/music/adapter/SongItemWebAdapter$ViewHolder;->tv_web_list_item_top:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getId_()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 92
    iget-object v2, v1, Lcom/fiio/music/adapter/SongItemWebAdapter$ViewHolder;->tv_web_list_item_bottom:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getArtist()Lcom/fiio/music/entity/Artist;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fiio/music/entity/Artist;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v2, v1, Lcom/fiio/music/adapter/SongItemWebAdapter$ViewHolder;->ibtn_web_list_item_download:Landroid/widget/Button;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getNetUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 96
    iget-object v2, v1, Lcom/fiio/music/adapter/SongItemWebAdapter$ViewHolder;->ibtn_web_list_item_download:Landroid/widget/Button;

    new-instance v3, Lcom/fiio/music/adapter/aq;

    invoke-direct {v3, p0, v0}, Lcom/fiio/music/adapter/aq;-><init>(Lcom/fiio/music/adapter/SongItemWebAdapter;Lcom/fiio/music/entity/Song;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v0, v1, Lcom/fiio/music/adapter/SongItemWebAdapter$ViewHolder;->ibtn_web_list_item_download:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setFocusable(Z)V

    .line 105
    iget-object v0, v1, Lcom/fiio/music/adapter/SongItemWebAdapter$ViewHolder;->ibtn_web_list_item_download:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setFocusableInTouchMode(Z)V

    .line 106
    return-object p2

    .line 70
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/adapter/SongItemWebAdapter$ViewHolder;

    move-object v1, v0

    goto :goto_0

    .line 79
    :cond_2
    iget-object v2, p0, Lcom/fiio/music/adapter/SongItemWebAdapter;->playerInfo:[I

    aget v2, v2, v4

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/fiio/music/adapter/SongItemWebAdapter;->playerInfo:[I

    aget v2, v2, v4

    if-ne v2, v4, :cond_4

    .line 80
    :cond_3
    iget-object v2, v1, Lcom/fiio/music/adapter/SongItemWebAdapter$ViewHolder;->tv_web_list_item_number:Landroid/widget/TextView;

    const v3, 0x7f020533

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    .line 81
    :cond_4
    iget-object v2, p0, Lcom/fiio/music/adapter/SongItemWebAdapter;->playerInfo:[I

    aget v2, v2, v4

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 82
    iget-object v2, v1, Lcom/fiio/music/adapter/SongItemWebAdapter$ViewHolder;->tv_web_list_item_number:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v4, p1, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v2, v1, Lcom/fiio/music/adapter/SongItemWebAdapter$ViewHolder;->tv_web_list_item_number:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    .line 86
    :cond_5
    iget-object v2, v1, Lcom/fiio/music/adapter/SongItemWebAdapter$ViewHolder;->tv_web_list_item_number:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v4, p1, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v2, v1, Lcom/fiio/music/adapter/SongItemWebAdapter$ViewHolder;->tv_web_list_item_number:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_1
.end method

.method public setItemListener(Lcom/fiio/music/adapter/SongItemWebAdapter$ItemListener;)Lcom/fiio/music/adapter/SongItemWebAdapter;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/fiio/music/adapter/SongItemWebAdapter;->mItemListener:Lcom/fiio/music/adapter/SongItemWebAdapter$ItemListener;

    .line 33
    return-object p0
.end method

.method public setPlayerInfo([I)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/fiio/music/adapter/SongItemWebAdapter;->playerInfo:[I

    .line 38
    invoke-virtual {p0}, Lcom/fiio/music/adapter/SongItemWebAdapter;->notifyDataSetChanged()V

    .line 39
    return-void
.end method

.method public setPlayerState(I)V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/fiio/music/adapter/SongItemWebAdapter;->playerInfo:[I

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 43
    invoke-virtual {p0}, Lcom/fiio/music/adapter/SongItemWebAdapter;->notifyDataSetChanged()V

    .line 44
    return-void
.end method
