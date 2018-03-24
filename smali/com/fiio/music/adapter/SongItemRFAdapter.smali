.class public Lcom/fiio/music/adapter/SongItemRFAdapter;
.super Landroid/widget/BaseAdapter;
.source "SongItemRFAdapter.java"


# instance fields
.field private STYLE_PARAMTER:I

.field private UI_IS_CHANGE:Z

.field private anim:Landroid/graphics/drawable/AnimationDrawable;

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

.field private mItemListener:Lcom/fiio/music/adapter/SongItemRFAdapter$ItemListener;

.field private mediaPlayerManager:Lcom/fiio/music/service/h;

.field private playState:I

.field private playerInfo:[I

.field private rfwString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lcom/fiio/music/service/h;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/fiio/music/service/h;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/fiio/music/adapter/SongItemRFAdapter;->playerInfo:[I

    .line 33
    const/4 v0, 0x3

    iput v0, p0, Lcom/fiio/music/adapter/SongItemRFAdapter;->STYLE_PARAMTER:I

    .line 36
    iput-object p1, p0, Lcom/fiio/music/adapter/SongItemRFAdapter;->context:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/fiio/music/adapter/SongItemRFAdapter;->data:Ljava/util/List;

    .line 38
    iput-object p3, p0, Lcom/fiio/music/adapter/SongItemRFAdapter;->rfwString:Ljava/lang/String;

    .line 39
    iput-object p4, p0, Lcom/fiio/music/adapter/SongItemRFAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    .line 40
    iput p5, p0, Lcom/fiio/music/adapter/SongItemRFAdapter;->playState:I

    .line 41
    iput p6, p0, Lcom/fiio/music/adapter/SongItemRFAdapter;->STYLE_PARAMTER:I

    .line 42
    return-void
.end method

.method static synthetic access$0(Lcom/fiio/music/adapter/SongItemRFAdapter;)Lcom/fiio/music/adapter/SongItemRFAdapter$ItemListener;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/fiio/music/adapter/SongItemRFAdapter;->mItemListener:Lcom/fiio/music/adapter/SongItemRFAdapter$ItemListener;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/fiio/music/adapter/SongItemRFAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/fiio/music/adapter/SongItemRFAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 68
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    .prologue
    const v9, 0x7f050008

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 72
    iget-object v0, p0, Lcom/fiio/music/adapter/SongItemRFAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    .line 74
    if-nez p2, :cond_8

    .line 75
    new-instance v2, Lcom/fiio/music/adapter/SongItemRFAdapter$ViewHolder;

    invoke-direct {v2, p0}, Lcom/fiio/music/adapter/SongItemRFAdapter$ViewHolder;-><init>(Lcom/fiio/music/adapter/SongItemRFAdapter;)V

    .line 77
    iget v1, p0, Lcom/fiio/music/adapter/SongItemRFAdapter;->STYLE_PARAMTER:I

    if-ne v1, v5, :cond_5

    .line 78
    iget-object v1, p0, Lcom/fiio/music/adapter/SongItemRFAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f04012c

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 86
    :cond_0
    :goto_0
    const v1, 0x7f0b035b

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/fiio/music/adapter/SongItemRFAdapter$ViewHolder;->tv_web_list_item_top:Landroid/widget/TextView;

    .line 87
    const v1, 0x7f0b035c

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/fiio/music/adapter/SongItemRFAdapter$ViewHolder;->tv_web_list_item_bottom:Landroid/widget/TextView;

    .line 88
    const v1, 0x7f0b035e

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v2, Lcom/fiio/music/adapter/SongItemRFAdapter$ViewHolder;->ibtn_web_list_item_download:Landroid/widget/Button;

    .line 89
    const v1, 0x7f0b00da

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/fiio/music/adapter/SongItemRFAdapter$ViewHolder;->tv_list_item_count:Landroid/widget/TextView;

    .line 90
    const v1, 0x7f0b026f

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/fiio/music/adapter/SongItemRFAdapter$ViewHolder;->mItemImage:Landroid/widget/ImageView;

    .line 91
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 97
    :goto_1
    iget-object v1, v2, Lcom/fiio/music/adapter/SongItemRFAdapter$ViewHolder;->tv_web_list_item_top:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v1, v2, Lcom/fiio/music/adapter/SongItemRFAdapter$ViewHolder;->tv_web_list_item_top:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getId_()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 100
    iget-object v1, v2, Lcom/fiio/music/adapter/SongItemRFAdapter$ViewHolder;->tv_web_list_item_bottom:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getArtist()Lcom/fiio/music/entity/Artist;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fiio/music/entity/Artist;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/fiio/music/adapter/SongItemRFAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v3}, Lcom/fiio/music/service/h;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/fiio/music/adapter/SongItemRFAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v3}, Lcom/fiio/music/service/h;->h()Lcom/fiio/music/entity/Song;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 102
    iget-object v1, p0, Lcom/fiio/music/adapter/SongItemRFAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->G()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 104
    iget v1, p0, Lcom/fiio/music/adapter/SongItemRFAdapter;->STYLE_PARAMTER:I

    if-ne v1, v5, :cond_9

    .line 105
    iget-object v1, v2, Lcom/fiio/music/adapter/SongItemRFAdapter$ViewHolder;->tv_web_list_item_top:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/fiio/music/adapter/SongItemRFAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 106
    const v4, 0x7f080053

    .line 105
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 107
    iget-object v1, v2, Lcom/fiio/music/adapter/SongItemRFAdapter$ViewHolder;->tv_web_list_item_bottom:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/fiio/music/adapter/SongItemRFAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 108
    const v4, 0x7f080053

    .line 107
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 109
    iget-object v1, v2, Lcom/fiio/music/adapter/SongItemRFAdapter$ViewHolder;->tv_list_item_count:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/fiio/music/adapter/SongItemRFAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 110
    const v4, 0x7f080053

    .line 109
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 136
    :cond_1
    :goto_2
    iget-object v1, v2, Lcom/fiio/music/adapter/SongItemRFAdapter$ViewHolder;->tv_list_item_count:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 137
    iget-object v1, v2, Lcom/fiio/music/adapter/SongItemRFAdapter$ViewHolder;->mItemImage:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 138
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 139
    iget-object v1, v2, Lcom/fiio/music/adapter/SongItemRFAdapter$ViewHolder;->tv_list_item_count:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getCue_duration()I

    move-result v3

    invoke-static {v3}, Lcom/fiio/music/util/h;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    :goto_3
    iget v1, p0, Lcom/fiio/music/adapter/SongItemRFAdapter;->STYLE_PARAMTER:I

    if-ne v1, v5, :cond_e

    .line 147
    iget-object v1, v2, Lcom/fiio/music/adapter/SongItemRFAdapter$ViewHolder;->mItemImage:Landroid/widget/ImageView;

    const v3, 0x7f050005

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 159
    :cond_2
    :goto_4
    iget-object v1, v2, Lcom/fiio/music/adapter/SongItemRFAdapter$ViewHolder;->mItemImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v1, p0, Lcom/fiio/music/adapter/SongItemRFAdapter;->anim:Landroid/graphics/drawable/AnimationDrawable;

    .line 160
    iget-object v1, p0, Lcom/fiio/music/adapter/SongItemRFAdapter;->anim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 163
    iget v1, p0, Lcom/fiio/music/adapter/SongItemRFAdapter;->playState:I

    if-ne v1, v6, :cond_14

    .line 164
    iget v1, p0, Lcom/fiio/music/adapter/SongItemRFAdapter;->STYLE_PARAMTER:I

    if-ne v1, v5, :cond_11

    .line 165
    iget-object v1, v2, Lcom/fiio/music/adapter/SongItemRFAdapter$ViewHolder;->mItemImage:Landroid/widget/ImageView;

    const v3, 0x7f050005

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 177
    :cond_3
    :goto_5
    iget-object v1, v2, Lcom/fiio/music/adapter/SongItemRFAdapter$ViewHolder;->mItemImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v1, p0, Lcom/fiio/music/adapter/SongItemRFAdapter;->anim:Landroid/graphics/drawable/AnimationDrawable;

    .line 178
    iget-object v1, p0, Lcom/fiio/music/adapter/SongItemRFAdapter;->anim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 227
    :cond_4
    :goto_6
    iget-object v1, p0, Lcom/fiio/music/adapter/SongItemRFAdapter;->rfwString:Ljava/lang/String;

    const-string v3, "R"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 228
    iget-object v1, v2, Lcom/fiio/music/adapter/SongItemRFAdapter$ViewHolder;->ibtn_web_list_item_download:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 237
    :goto_7
    iget-object v1, v2, Lcom/fiio/music/adapter/SongItemRFAdapter$ViewHolder;->ibtn_web_list_item_download:Landroid/widget/Button;

    new-instance v3, Lcom/fiio/music/adapter/ap;

    invoke-direct {v3, p0, v0}, Lcom/fiio/music/adapter/ap;-><init>(Lcom/fiio/music/adapter/SongItemRFAdapter;Lcom/fiio/music/entity/Song;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    iget-object v0, v2, Lcom/fiio/music/adapter/SongItemRFAdapter$ViewHolder;->ibtn_web_list_item_download:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setFocusable(Z)V

    .line 246
    iget-object v0, v2, Lcom/fiio/music/adapter/SongItemRFAdapter$ViewHolder;->ibtn_web_list_item_download:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setFocusableInTouchMode(Z)V

    .line 247
    return-object p2

    .line 79
    :cond_5
    iget v1, p0, Lcom/fiio/music/adapter/SongItemRFAdapter;->STYLE_PARAMTER:I

    if-ne v1, v6, :cond_6

    .line 80
    iget-object v1, p0, Lcom/fiio/music/adapter/SongItemRFAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f04012d

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 81
    :cond_6
    iget v1, p0, Lcom/fiio/music/adapter/SongItemRFAdapter;->STYLE_PARAMTER:I

    if-ne v1, v7, :cond_7

    .line 82
    iget-object v1, p0, Lcom/fiio/music/adapter/SongItemRFAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f04012e

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 83
    :cond_7
    iget v1, p0, Lcom/fiio/music/adapter/SongItemRFAdapter;->STYLE_PARAMTER:I

    if-ne v1, v8, :cond_0

    .line 84
    iget-object v1, p0, Lcom/fiio/music/adapter/SongItemRFAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f04012f

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 93
    :cond_8
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fiio/music/adapter/SongItemRFAdapter$ViewHolder;

    move-object v2, v1

    goto/16 :goto_1

    .line 111
    :cond_9
    iget v1, p0, Lcom/fiio/music/adapter/SongItemRFAdapter;->STYLE_PARAMTER:I

    if-ne v1, v6, :cond_a

    .line 112
    iget-object v1, v2, Lcom/fiio/music/adapter/SongItemRFAdapter$ViewHolder;->tv_web_list_item_top:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/fiio/music/adapter/SongItemRFAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 113
    const v4, 0x7f08006f

    .line 112
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 114
    iget-object v1, v2, Lcom/fiio/music/adapter/SongItemRFAdapter$ViewHolder;->tv_web_list_item_bottom:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/fiio/music/adapter/SongItemRFAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 115
    const v4, 0x7f08006f

    .line 114
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 116
    iget-object v1, v2, Lcom/fiio/music/adapter/SongItemRFAdapter$ViewHolder;->tv_list_item_count:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/fiio/music/adapter/SongItemRFAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 117
    const v4, 0x7f08006d

    .line 116
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 118
    :cond_a
    iget v1, p0, Lcom/fiio/music/adapter/SongItemRFAdapter;->STYLE_PARAMTER:I

    if-ne v1, v7, :cond_b

    .line 120
    iget-object v1, v2, Lcom/fiio/music/adapter/SongItemRFAdapter$ViewHolder;->tv_web_list_item_top:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/fiio/music/adapter/SongItemRFAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 121
    const v4, 0x7f08006b

    .line 120
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 122
    iget-object v1, v2, Lcom/fiio/music/adapter/SongItemRFAdapter$ViewHolder;->tv_web_list_item_bottom:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/fiio/music/adapter/SongItemRFAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 123
    const v4, 0x7f08006b

    .line 122
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 124
    iget-object v1, v2, Lcom/fiio/music/adapter/SongItemRFAdapter$ViewHolder;->tv_list_item_count:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/fiio/music/adapter/SongItemRFAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 125
    const v4, 0x7f08006d

    .line 124
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 126
    :cond_b
    iget v1, p0, Lcom/fiio/music/adapter/SongItemRFAdapter;->STYLE_PARAMTER:I

    if-ne v1, v8, :cond_1

    .line 128
    iget-object v1, v2, Lcom/fiio/music/adapter/SongItemRFAdapter$ViewHolder;->tv_web_list_item_top:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/fiio/music/adapter/SongItemRFAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 129
    const v4, 0x7f080027

    .line 128
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 130
    iget-object v1, v2, Lcom/fiio/music/adapter/SongItemRFAdapter$ViewHolder;->tv_web_list_item_bottom:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/fiio/music/adapter/SongItemRFAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 131
    const v4, 0x7f080027

    .line 130
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 132
    iget-object v1, v2, Lcom/fiio/music/adapter/SongItemRFAdapter$ViewHolder;->tv_list_item_count:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/fiio/music/adapter/SongItemRFAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 133
    const v4, 0x7f08006d

    .line 132
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 140
    :cond_c
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isSacd()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 141
    iget-object v1, v2, Lcom/fiio/music/adapter/SongItemRFAdapter$ViewHolder;->tv_list_item_count:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getSacd_duration()I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    invoke-static {v3}, Lcom/fiio/music/util/h;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 143
    :cond_d
    iget-object v1, v2, Lcom/fiio/music/adapter/SongItemRFAdapter$ViewHolder;->tv_list_item_count:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getDurationTime()I

    move-result v3

    invoke-static {v3}, Lcom/fiio/music/util/h;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 149
    :cond_e
    iget v1, p0, Lcom/fiio/music/adapter/SongItemRFAdapter;->STYLE_PARAMTER:I

    if-ne v1, v6, :cond_f

    .line 150
    iget-object v1, v2, Lcom/fiio/music/adapter/SongItemRFAdapter$ViewHolder;->mItemImage:Landroid/widget/ImageView;

    const v3, 0x7f050006

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_4

    .line 152
    :cond_f
    iget v1, p0, Lcom/fiio/music/adapter/SongItemRFAdapter;->STYLE_PARAMTER:I

    if-ne v1, v7, :cond_10

    .line 153
    iget-object v1, v2, Lcom/fiio/music/adapter/SongItemRFAdapter$ViewHolder;->mItemImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_4

    .line 155
    :cond_10
    iget v1, p0, Lcom/fiio/music/adapter/SongItemRFAdapter;->STYLE_PARAMTER:I

    if-ne v1, v8, :cond_2

    .line 156
    iget-object v1, v2, Lcom/fiio/music/adapter/SongItemRFAdapter$ViewHolder;->mItemImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_4

    .line 167
    :cond_11
    iget v1, p0, Lcom/fiio/music/adapter/SongItemRFAdapter;->STYLE_PARAMTER:I

    if-ne v1, v6, :cond_12

    .line 168
    iget-object v1, v2, Lcom/fiio/music/adapter/SongItemRFAdapter$ViewHolder;->mItemImage:Landroid/widget/ImageView;

    const v3, 0x7f050006

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_5

    .line 170
    :cond_12
    iget v1, p0, Lcom/fiio/music/adapter/SongItemRFAdapter;->STYLE_PARAMTER:I

    if-ne v1, v7, :cond_13

    .line 171
    iget-object v1, v2, Lcom/fiio/music/adapter/SongItemRFAdapter$ViewHolder;->mItemImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_5

    .line 173
    :cond_13
    iget v1, p0, Lcom/fiio/music/adapter/SongItemRFAdapter;->STYLE_PARAMTER:I

    if-ne v1, v8, :cond_3

    .line 174
    iget-object v1, v2, Lcom/fiio/music/adapter/SongItemRFAdapter$ViewHolder;->mItemImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_5

    .line 179
    :cond_14
    iget v1, p0, Lcom/fiio/music/adapter/SongItemRFAdapter;->playState:I

    if-eq v1, v7, :cond_15

    iget v1, p0, Lcom/fiio/music/adapter/SongItemRFAdapter;->playState:I

    if-ne v1, v5, :cond_4

    .line 180
    :cond_15
    iget v1, p0, Lcom/fiio/music/adapter/SongItemRFAdapter;->STYLE_PARAMTER:I

    if-ne v1, v5, :cond_17

    .line 181
    iget-object v1, v2, Lcom/fiio/music/adapter/SongItemRFAdapter$ViewHolder;->mItemImage:Landroid/widget/ImageView;

    const v3, 0x7f050005

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 193
    :cond_16
    :goto_8
    iget-object v1, v2, Lcom/fiio/music/adapter/SongItemRFAdapter$ViewHolder;->mItemImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v1, p0, Lcom/fiio/music/adapter/SongItemRFAdapter;->anim:Landroid/graphics/drawable/AnimationDrawable;

    .line 194
    iget-object v1, p0, Lcom/fiio/music/adapter/SongItemRFAdapter;->anim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto/16 :goto_6

    .line 183
    :cond_17
    iget v1, p0, Lcom/fiio/music/adapter/SongItemRFAdapter;->STYLE_PARAMTER:I

    if-ne v1, v6, :cond_18

    .line 184
    iget-object v1, v2, Lcom/fiio/music/adapter/SongItemRFAdapter$ViewHolder;->mItemImage:Landroid/widget/ImageView;

    const v3, 0x7f050006

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_8

    .line 186
    :cond_18
    iget v1, p0, Lcom/fiio/music/adapter/SongItemRFAdapter;->STYLE_PARAMTER:I

    if-ne v1, v7, :cond_19

    .line 187
    iget-object v1, v2, Lcom/fiio/music/adapter/SongItemRFAdapter$ViewHolder;->mItemImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_8

    .line 189
    :cond_19
    iget v1, p0, Lcom/fiio/music/adapter/SongItemRFAdapter;->STYLE_PARAMTER:I

    if-ne v1, v8, :cond_16

    .line 190
    iget-object v1, v2, Lcom/fiio/music/adapter/SongItemRFAdapter$ViewHolder;->mItemImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_8

    .line 199
    :cond_1a
    iget v1, p0, Lcom/fiio/music/adapter/SongItemRFAdapter;->STYLE_PARAMTER:I

    if-ne v1, v5, :cond_1c

    .line 200
    iget-object v1, v2, Lcom/fiio/music/adapter/SongItemRFAdapter$ViewHolder;->tv_web_list_item_top:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/fiio/music/adapter/SongItemRFAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 201
    const v4, 0x7f08004c

    .line 200
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 202
    iget-object v1, v2, Lcom/fiio/music/adapter/SongItemRFAdapter$ViewHolder;->tv_web_list_item_bottom:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/fiio/music/adapter/SongItemRFAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 203
    const v4, 0x7f08004c

    .line 202
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 224
    :cond_1b
    :goto_9
    iget-object v1, v2, Lcom/fiio/music/adapter/SongItemRFAdapter$ViewHolder;->mItemImage:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 225
    iget-object v1, v2, Lcom/fiio/music/adapter/SongItemRFAdapter$ViewHolder;->tv_list_item_count:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    .line 205
    :cond_1c
    iget v1, p0, Lcom/fiio/music/adapter/SongItemRFAdapter;->STYLE_PARAMTER:I

    if-ne v1, v6, :cond_1d

    .line 206
    iget-object v1, v2, Lcom/fiio/music/adapter/SongItemRFAdapter$ViewHolder;->tv_web_list_item_top:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/fiio/music/adapter/SongItemRFAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 207
    const v4, 0x7f08006e

    .line 206
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 208
    iget-object v1, v2, Lcom/fiio/music/adapter/SongItemRFAdapter$ViewHolder;->tv_web_list_item_bottom:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/fiio/music/adapter/SongItemRFAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 209
    const v4, 0x7f08006d

    .line 208
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_9

    .line 211
    :cond_1d
    iget v1, p0, Lcom/fiio/music/adapter/SongItemRFAdapter;->STYLE_PARAMTER:I

    if-ne v1, v7, :cond_1e

    .line 212
    iget-object v1, v2, Lcom/fiio/music/adapter/SongItemRFAdapter$ViewHolder;->tv_web_list_item_top:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/fiio/music/adapter/SongItemRFAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 213
    const v4, 0x7f08000f

    .line 212
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 214
    iget-object v1, v2, Lcom/fiio/music/adapter/SongItemRFAdapter$ViewHolder;->tv_web_list_item_bottom:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/fiio/music/adapter/SongItemRFAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 215
    const v4, 0x7f080014

    .line 214
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_9

    .line 217
    :cond_1e
    iget v1, p0, Lcom/fiio/music/adapter/SongItemRFAdapter;->STYLE_PARAMTER:I

    if-ne v1, v8, :cond_1b

    .line 218
    iget-object v1, v2, Lcom/fiio/music/adapter/SongItemRFAdapter$ViewHolder;->tv_web_list_item_top:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/fiio/music/adapter/SongItemRFAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 219
    const v4, 0x7f08006e

    .line 218
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 220
    iget-object v1, v2, Lcom/fiio/music/adapter/SongItemRFAdapter$ViewHolder;->tv_web_list_item_bottom:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/fiio/music/adapter/SongItemRFAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 221
    const v4, 0x7f080014

    .line 220
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_9

    .line 229
    :cond_1f
    iget-object v1, p0, Lcom/fiio/music/adapter/SongItemRFAdapter;->rfwString:Ljava/lang/String;

    const-string v3, "F"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 230
    iget-object v1, v2, Lcom/fiio/music/adapter/SongItemRFAdapter$ViewHolder;->ibtn_web_list_item_download:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_7

    .line 231
    :cond_20
    iget-object v1, p0, Lcom/fiio/music/adapter/SongItemRFAdapter;->rfwString:Ljava/lang/String;

    const-string v3, "A"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 232
    iget-object v1, v2, Lcom/fiio/music/adapter/SongItemRFAdapter$ViewHolder;->ibtn_web_list_item_download:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_7

    .line 234
    :cond_21
    iget-object v1, v2, Lcom/fiio/music/adapter/SongItemRFAdapter$ViewHolder;->ibtn_web_list_item_download:Landroid/widget/Button;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getNetUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 235
    iget-object v1, v2, Lcom/fiio/music/adapter/SongItemRFAdapter$ViewHolder;->ibtn_web_list_item_download:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_7
.end method

.method public setItemListener(Lcom/fiio/music/adapter/SongItemRFAdapter$ItemListener;)Lcom/fiio/music/adapter/SongItemRFAdapter;
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/fiio/music/adapter/SongItemRFAdapter;->mItemListener:Lcom/fiio/music/adapter/SongItemRFAdapter$ItemListener;

    .line 46
    return-object p0
.end method

.method public setPlayerInfo([I)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/fiio/music/adapter/SongItemRFAdapter;->playerInfo:[I

    .line 51
    invoke-virtual {p0}, Lcom/fiio/music/adapter/SongItemRFAdapter;->notifyDataSetChanged()V

    .line 52
    return-void
.end method

.method public setPlayerState(I)V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/fiio/music/adapter/SongItemRFAdapter;->playerInfo:[I

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 56
    invoke-virtual {p0}, Lcom/fiio/music/adapter/SongItemRFAdapter;->notifyDataSetChanged()V

    .line 57
    return-void
.end method

.method public update(Ljava/util/List;Ljava/lang/String;Lcom/fiio/music/service/h;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/fiio/music/service/h;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 263
    iput-object p1, p0, Lcom/fiio/music/adapter/SongItemRFAdapter;->data:Ljava/util/List;

    .line 264
    iput-object p2, p0, Lcom/fiio/music/adapter/SongItemRFAdapter;->rfwString:Ljava/lang/String;

    .line 265
    iput-object p3, p0, Lcom/fiio/music/adapter/SongItemRFAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    .line 266
    iput p4, p0, Lcom/fiio/music/adapter/SongItemRFAdapter;->playState:I

    .line 267
    invoke-virtual {p0}, Lcom/fiio/music/adapter/SongItemRFAdapter;->notifyDataSetChanged()V

    .line 268
    return-void
.end method
