.class public Lcom/fiio/music/adapter/TestExpandableListAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "TestExpandableListAdapter.java"


# instance fields
.field private STYLE_PARAMTER:I

.field private anim:Landroid/graphics/drawable/AnimationDrawable;

.field private changeboolean:Z

.field private childList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/util/bq;",
            ">;>;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private groupList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fiio/music/util/as;",
            ">;"
        }
    .end annotation
.end field

.field private groupString:[Ljava/lang/String;

.field private inflater:Landroid/view/LayoutInflater;

.field private isPlayerList:Ljava/lang/Boolean;

.field private mediaPlayerManager:Lcom/fiio/music/service/h;

.field private playListManager:Lcom/fiio/music/util/bw;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 50
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 40
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->groupString:[Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->isPlayerList:Ljava/lang/Boolean;

    .line 47
    iput v1, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->STYLE_PARAMTER:I

    .line 51
    iput-object p1, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->context:Landroid/content/Context;

    .line 52
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/fiio/music/service/h;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fiio/music/util/as;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/util/bq;",
            ">;>;",
            "Lcom/fiio/music/service/h;",
            "I)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x3

    .line 56
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 40
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->groupString:[Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->isPlayerList:Ljava/lang/Boolean;

    .line 47
    iput v1, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->STYLE_PARAMTER:I

    .line 58
    iput-object p1, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->context:Landroid/content/Context;

    .line 59
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 60
    iput-object p2, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->groupList:Ljava/util/ArrayList;

    .line 61
    iput-object p3, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->childList:Ljava/util/ArrayList;

    .line 62
    iput-object p4, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    .line 63
    iput p5, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->STYLE_PARAMTER:I

    .line 68
    return-void
.end method

.method static synthetic access$0(Lcom/fiio/music/adapter/TestExpandableListAdapter;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->groupString:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/fiio/music/adapter/TestExpandableListAdapter;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->childList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2

    .prologue
    .line 112
    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    .line 178
    if-nez p4, :cond_7

    .line 180
    new-instance v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$ChildViewHolder;

    invoke-direct {v1, p0}, Lcom/fiio/music/adapter/TestExpandableListAdapter$ChildViewHolder;-><init>(Lcom/fiio/music/adapter/TestExpandableListAdapter;)V

    .line 181
    iget v0, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->STYLE_PARAMTER:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 182
    iget-object v0, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0400c4

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 191
    :cond_0
    :goto_0
    const v0, 0x7f0b0270

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$ChildViewHolder;->tv_song_list_item_top:Landroid/widget/TextView;

    .line 192
    const v0, 0x7f0b0271

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$ChildViewHolder;->tv_song_list_item_bottom:Landroid/widget/TextView;

    .line 194
    const v0, 0x7f0b00da

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$ChildViewHolder;->tv_list_item_count:Landroid/widget/TextView;

    .line 195
    const v0, 0x7f0b026f

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$ChildViewHolder;->mItemImage:Landroid/widget/ImageView;

    .line 197
    invoke-virtual {p4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 201
    :goto_1
    iget-object v2, v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$ChildViewHolder;->tv_song_list_item_top:Landroid/widget/TextView;

    invoke-virtual {p0, p1, p2}, Lcom/fiio/music/adapter/TestExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/util/bq;

    .line 202
    invoke-virtual {v0}, Lcom/fiio/music/util/bq;->a()Ljava/lang/String;

    move-result-object v0

    .line 201
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v2, v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$ChildViewHolder;->tv_song_list_item_top:Landroid/widget/TextView;

    invoke-virtual {p0, p1, p2}, Lcom/fiio/music/adapter/TestExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/util/bq;

    .line 204
    invoke-virtual {v0}, Lcom/fiio/music/util/bq;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 203
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 205
    invoke-virtual {p0, p1, p2}, Lcom/fiio/music/adapter/TestExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/util/bq;

    .line 206
    invoke-virtual {v0}, Lcom/fiio/music/util/bq;->d()Ljava/lang/String;

    move-result-object v2

    .line 207
    if-eqz v2, :cond_8

    .line 208
    iget-object v0, v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$ChildViewHolder;->tv_song_list_item_bottom:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v0, v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$ChildViewHolder;->tv_song_list_item_bottom:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 216
    :goto_2
    invoke-virtual {p0, p1, p2}, Lcom/fiio/music/adapter/TestExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/util/bq;

    .line 217
    invoke-virtual {v0}, Lcom/fiio/music/util/bq;->c()I

    move-result v3

    .line 220
    invoke-virtual {p0, p1, p2}, Lcom/fiio/music/adapter/TestExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/util/bq;

    invoke-virtual {v0}, Lcom/fiio/music/util/bq;->a()Ljava/lang/String;

    move-result-object v4

    .line 221
    iget-object v0, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->h()Lcom/fiio/music/entity/Song;

    move-result-object v5

    .line 223
    if-eqz v2, :cond_1a

    .line 224
    invoke-virtual {p0, p1, p2}, Lcom/fiio/music/adapter/TestExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/util/bq;

    .line 225
    invoke-virtual {v0}, Lcom/fiio/music/util/bq;->e()Ljava/lang/String;

    move-result-object v2

    .line 226
    if-eqz v2, :cond_15

    invoke-virtual {p0, p1, p2}, Lcom/fiio/music/adapter/TestExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/util/bq;

    invoke-virtual {v0}, Lcom/fiio/music/util/bq;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 227
    if-eqz v5, :cond_15

    invoke-virtual {v5}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 229
    iget v0, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->STYLE_PARAMTER:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_9

    .line 231
    iget-object v0, v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$ChildViewHolder;->tv_song_list_item_top:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 232
    const v4, 0x7f080053

    .line 231
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 233
    iget-object v0, v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$ChildViewHolder;->tv_song_list_item_bottom:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 234
    const v4, 0x7f080053

    .line 233
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 235
    iget-object v0, v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$ChildViewHolder;->tv_list_item_count:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 236
    const v4, 0x7f080053

    .line 235
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 265
    :cond_1
    :goto_3
    if-eqz v3, :cond_c

    .line 266
    iget-object v0, v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$ChildViewHolder;->tv_list_item_count:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 267
    iget-object v0, v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$ChildViewHolder;->mItemImage:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 273
    :goto_4
    invoke-virtual {p0, p1, p2}, Lcom/fiio/music/adapter/TestExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/util/bq;

    .line 274
    invoke-virtual {v0}, Lcom/fiio/music/util/bq;->g()I

    move-result v0

    const/4 v2, 0x3

    .line 273
    if-eq v0, v2, :cond_2

    .line 275
    invoke-virtual {p0, p1, p2}, Lcom/fiio/music/adapter/TestExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/util/bq;

    .line 276
    invoke-virtual {v0}, Lcom/fiio/music/util/bq;->g()I

    move-result v0

    const/4 v2, 0x4

    .line 275
    if-ne v0, v2, :cond_10

    .line 277
    :cond_2
    iget-object v0, v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$ChildViewHolder;->tv_list_item_count:Landroid/widget/TextView;

    invoke-static {v3}, Lcom/fiio/music/util/h;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    iget v0, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->STYLE_PARAMTER:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_d

    .line 281
    iget-object v0, v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$ChildViewHolder;->mItemImage:Landroid/widget/ImageView;

    const v2, 0x7f050005

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 294
    :cond_3
    :goto_5
    iget-object v0, v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$ChildViewHolder;->mItemImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->anim:Landroid/graphics/drawable/AnimationDrawable;

    .line 295
    iget-object v0, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->anim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 490
    :goto_6
    return-object p4

    .line 183
    :cond_4
    iget v0, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->STYLE_PARAMTER:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    .line 184
    iget-object v0, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0400c5

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    goto/16 :goto_0

    .line 185
    :cond_5
    iget v0, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->STYLE_PARAMTER:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_6

    .line 186
    iget-object v0, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0400c6

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    goto/16 :goto_0

    .line 187
    :cond_6
    iget v0, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->STYLE_PARAMTER:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 188
    iget-object v0, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0400c7

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    goto/16 :goto_0

    .line 199
    :cond_7
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/adapter/TestExpandableListAdapter$ChildViewHolder;

    move-object v1, v0

    goto/16 :goto_1

    .line 212
    :cond_8
    iget-object v0, v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$ChildViewHolder;->tv_song_list_item_bottom:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 213
    iget-object v0, v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$ChildViewHolder;->mItemImage:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 238
    :cond_9
    iget v0, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->STYLE_PARAMTER:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_a

    .line 240
    iget-object v0, v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$ChildViewHolder;->tv_song_list_item_top:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 241
    const v4, 0x7f08006f

    .line 240
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 242
    iget-object v0, v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$ChildViewHolder;->tv_song_list_item_bottom:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 243
    const v4, 0x7f08006d

    .line 242
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 244
    iget-object v0, v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$ChildViewHolder;->tv_list_item_count:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 245
    const v4, 0x7f08006d

    .line 244
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_3

    .line 247
    :cond_a
    iget v0, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->STYLE_PARAMTER:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_b

    .line 249
    iget-object v0, v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$ChildViewHolder;->tv_song_list_item_top:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 250
    const v4, 0x7f08006b

    .line 249
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 251
    iget-object v0, v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$ChildViewHolder;->tv_song_list_item_bottom:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 252
    const v4, 0x7f08006b

    .line 251
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 253
    iget-object v0, v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$ChildViewHolder;->tv_list_item_count:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 254
    const v4, 0x7f080014

    .line 253
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_3

    .line 255
    :cond_b
    iget v0, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->STYLE_PARAMTER:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    .line 257
    iget-object v0, v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$ChildViewHolder;->tv_song_list_item_top:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 258
    const v4, 0x7f080027

    .line 257
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 259
    iget-object v0, v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$ChildViewHolder;->tv_song_list_item_bottom:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 260
    const v4, 0x7f080027

    .line 259
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 261
    iget-object v0, v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$ChildViewHolder;->tv_list_item_count:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 262
    const v4, 0x7f080014

    .line 261
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_3

    .line 270
    :cond_c
    iget-object v0, v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$ChildViewHolder;->tv_list_item_count:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 271
    iget-object v0, v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$ChildViewHolder;->mItemImage:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    .line 283
    :cond_d
    iget v0, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->STYLE_PARAMTER:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_e

    .line 285
    iget-object v0, v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$ChildViewHolder;->mItemImage:Landroid/widget/ImageView;

    const v2, 0x7f050006

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_5

    .line 287
    :cond_e
    iget v0, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->STYLE_PARAMTER:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_f

    .line 289
    iget-object v0, v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$ChildViewHolder;->mItemImage:Landroid/widget/ImageView;

    const v2, 0x7f050008

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_5

    .line 290
    :cond_f
    iget v0, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->STYLE_PARAMTER:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_3

    .line 292
    iget-object v0, v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$ChildViewHolder;->mItemImage:Landroid/widget/ImageView;

    const v2, 0x7f050008

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_5

    .line 297
    :cond_10
    iget-object v0, v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$ChildViewHolder;->tv_list_item_count:Landroid/widget/TextView;

    invoke-static {v3}, Lcom/fiio/music/util/h;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    iget v0, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->STYLE_PARAMTER:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_12

    .line 301
    iget-object v0, v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$ChildViewHolder;->mItemImage:Landroid/widget/ImageView;

    const v2, 0x7f050005

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 314
    :cond_11
    :goto_7
    iget-object v0, v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$ChildViewHolder;->mItemImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->anim:Landroid/graphics/drawable/AnimationDrawable;

    .line 315
    iget-object v0, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->anim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto/16 :goto_6

    .line 303
    :cond_12
    iget v0, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->STYLE_PARAMTER:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_13

    .line 305
    iget-object v0, v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$ChildViewHolder;->mItemImage:Landroid/widget/ImageView;

    const v2, 0x7f050006

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_7

    .line 307
    :cond_13
    iget v0, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->STYLE_PARAMTER:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_14

    .line 309
    iget-object v0, v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$ChildViewHolder;->mItemImage:Landroid/widget/ImageView;

    const v2, 0x7f050008

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_7

    .line 310
    :cond_14
    iget v0, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->STYLE_PARAMTER:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_11

    .line 312
    iget-object v0, v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$ChildViewHolder;->mItemImage:Landroid/widget/ImageView;

    const v2, 0x7f050008

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_7

    .line 318
    :cond_15
    iget v0, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->STYLE_PARAMTER:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_17

    .line 320
    iget-object v0, v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$ChildViewHolder;->tv_song_list_item_top:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 321
    const v3, 0x7f08004c

    .line 320
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 322
    iget-object v0, v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$ChildViewHolder;->tv_song_list_item_bottom:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 323
    const v3, 0x7f08004c

    .line 322
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 349
    :cond_16
    :goto_8
    iget-object v0, v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$ChildViewHolder;->mItemImage:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 350
    iget-object v0, v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$ChildViewHolder;->tv_list_item_count:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    .line 325
    :cond_17
    iget v0, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->STYLE_PARAMTER:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_18

    .line 327
    iget-object v0, v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$ChildViewHolder;->tv_song_list_item_top:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 328
    const v3, 0x7f08006e

    .line 327
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 329
    iget-object v0, v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$ChildViewHolder;->tv_song_list_item_bottom:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 330
    const v3, 0x7f08006d

    .line 329
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_8

    .line 332
    :cond_18
    iget v0, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->STYLE_PARAMTER:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_19

    .line 334
    iget-object v0, v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$ChildViewHolder;->tv_song_list_item_top:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 335
    const v3, 0x7f08000f

    .line 334
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 336
    iget-object v0, v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$ChildViewHolder;->tv_song_list_item_bottom:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 337
    const v3, 0x7f080014

    .line 336
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_8

    .line 339
    :cond_19
    iget v0, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->STYLE_PARAMTER:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_16

    .line 341
    iget-object v0, v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$ChildViewHolder;->tv_song_list_item_top:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 342
    const v3, 0x7f08006e

    .line 341
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 343
    iget-object v0, v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$ChildViewHolder;->tv_song_list_item_bottom:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 344
    const v3, 0x7f08006d

    .line 343
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_8

    .line 353
    :cond_1a
    iget-object v0, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->n()Ljava/lang/String;

    move-result-object v2

    .line 354
    invoke-virtual {p0, p1, p2}, Lcom/fiio/music/adapter/TestExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/util/bq;

    invoke-virtual {v0}, Lcom/fiio/music/util/bq;->a()Ljava/lang/String;

    move-result-object v0

    .line 355
    if-eqz v2, :cond_1b

    .line 356
    iget-object v3, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0055

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 357
    new-instance v3, Lcom/fiio/music/util/bw;

    iget-object v4, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0054

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/fiio/music/util/bw;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->playListManager:Lcom/fiio/music/util/bw;

    .line 363
    :cond_1b
    :goto_9
    iget-object v3, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v3}, Lcom/fiio/music/service/h;->k()Ljava/lang/String;

    move-result-object v3

    .line 364
    if-eqz v0, :cond_2a

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->isPlayerList:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->playListManager:Lcom/fiio/music/util/bw;

    iget-object v0, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->h()Lcom/fiio/music/entity/Song;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/fiio/music/util/bw;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 366
    iget v0, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->STYLE_PARAMTER:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1f

    .line 368
    iget-object v0, v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$ChildViewHolder;->tv_song_list_item_top:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 369
    const v3, 0x7f080053

    .line 368
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 370
    iget-object v0, v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$ChildViewHolder;->tv_song_list_item_bottom:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 371
    const v3, 0x7f080053

    .line 370
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 372
    iget-object v0, v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$ChildViewHolder;->tv_list_item_count:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 373
    const v3, 0x7f080053

    .line 372
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 403
    :cond_1c
    :goto_a
    iget-object v0, v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$ChildViewHolder;->tv_list_item_count:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 404
    iget-object v0, v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$ChildViewHolder;->mItemImage:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 405
    iget-object v0, v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$ChildViewHolder;->mItemImage:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 406
    iget-object v0, v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$ChildViewHolder;->tv_list_item_count:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 408
    iget-object v0, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->q()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 410
    iget v0, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->STYLE_PARAMTER:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_22

    .line 412
    iget-object v0, v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$ChildViewHolder;->mItemImage:Landroid/widget/ImageView;

    const v2, 0x7f050005

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 427
    :cond_1d
    :goto_b
    iget-object v0, v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$ChildViewHolder;->mItemImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->anim:Landroid/graphics/drawable/AnimationDrawable;

    .line 428
    iget-object v0, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->anim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto/16 :goto_6

    .line 359
    :cond_1e
    new-instance v3, Lcom/fiio/music/util/bw;

    invoke-direct {v3, v2}, Lcom/fiio/music/util/bw;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->playListManager:Lcom/fiio/music/util/bw;

    goto/16 :goto_9

    .line 375
    :cond_1f
    iget v0, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->STYLE_PARAMTER:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_20

    .line 377
    iget-object v0, v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$ChildViewHolder;->tv_song_list_item_top:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 378
    const v3, 0x7f08006f

    .line 377
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 379
    iget-object v0, v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$ChildViewHolder;->tv_song_list_item_bottom:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 380
    const v3, 0x7f08006d

    .line 379
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 381
    iget-object v0, v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$ChildViewHolder;->tv_list_item_count:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 382
    const v3, 0x7f08006d

    .line 381
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_a

    .line 384
    :cond_20
    iget v0, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->STYLE_PARAMTER:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_21

    .line 386
    iget-object v0, v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$ChildViewHolder;->tv_song_list_item_top:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 387
    const v3, 0x7f08006b

    .line 386
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 388
    iget-object v0, v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$ChildViewHolder;->tv_song_list_item_bottom:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 389
    const v3, 0x7f08006b

    .line 388
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 390
    iget-object v0, v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$ChildViewHolder;->tv_list_item_count:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 391
    const v3, 0x7f080014

    .line 390
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_a

    .line 393
    :cond_21
    iget v0, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->STYLE_PARAMTER:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1c

    .line 395
    iget-object v0, v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$ChildViewHolder;->tv_song_list_item_top:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 396
    const v3, 0x7f080027

    .line 395
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 397
    iget-object v0, v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$ChildViewHolder;->tv_song_list_item_bottom:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 398
    const v3, 0x7f080027

    .line 397
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 399
    iget-object v0, v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$ChildViewHolder;->tv_list_item_count:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 400
    const v3, 0x7f080014

    .line 399
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_a

    .line 414
    :cond_22
    iget v0, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->STYLE_PARAMTER:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_23

    .line 416
    iget-object v0, v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$ChildViewHolder;->mItemImage:Landroid/widget/ImageView;

    const v2, 0x7f050006

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_b

    .line 418
    :cond_23
    iget v0, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->STYLE_PARAMTER:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_24

    .line 420
    iget-object v0, v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$ChildViewHolder;->mItemImage:Landroid/widget/ImageView;

    const v2, 0x7f050008

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_b

    .line 422
    :cond_24
    iget v0, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->STYLE_PARAMTER:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1d

    .line 424
    iget-object v0, v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$ChildViewHolder;->mItemImage:Landroid/widget/ImageView;

    const v2, 0x7f050008

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_b

    .line 430
    :cond_25
    iget v0, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->STYLE_PARAMTER:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_27

    .line 432
    iget-object v0, v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$ChildViewHolder;->mItemImage:Landroid/widget/ImageView;

    const v2, 0x7f050005

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 448
    :cond_26
    :goto_c
    iget-object v0, v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$ChildViewHolder;->mItemImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->anim:Landroid/graphics/drawable/AnimationDrawable;

    .line 449
    iget-object v0, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->anim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto/16 :goto_6

    .line 434
    :cond_27
    iget v0, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->STYLE_PARAMTER:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_28

    .line 436
    iget-object v0, v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$ChildViewHolder;->mItemImage:Landroid/widget/ImageView;

    const v2, 0x7f050006

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_c

    .line 438
    :cond_28
    iget v0, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->STYLE_PARAMTER:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_29

    .line 440
    iget-object v0, v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$ChildViewHolder;->mItemImage:Landroid/widget/ImageView;

    const v2, 0x7f050008

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_c

    .line 442
    :cond_29
    iget v0, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->STYLE_PARAMTER:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_26

    .line 444
    iget-object v0, v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$ChildViewHolder;->mItemImage:Landroid/widget/ImageView;

    const v2, 0x7f050008

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_c

    .line 452
    :cond_2a
    iget v0, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->STYLE_PARAMTER:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2c

    .line 454
    iget-object v0, v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$ChildViewHolder;->tv_song_list_item_top:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 455
    const v3, 0x7f08004c

    .line 454
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 456
    iget-object v0, v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$ChildViewHolder;->tv_song_list_item_bottom:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 457
    const v3, 0x7f08004c

    .line 456
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 482
    :cond_2b
    :goto_d
    iget-object v0, v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$ChildViewHolder;->tv_list_item_count:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 483
    iget-object v0, v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$ChildViewHolder;->mItemImage:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 484
    iget-object v0, v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$ChildViewHolder;->mItemImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_6

    .line 459
    :cond_2c
    iget v0, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->STYLE_PARAMTER:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2d

    .line 461
    iget-object v0, v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$ChildViewHolder;->tv_song_list_item_top:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 462
    const v3, 0x7f08006e

    .line 461
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 463
    iget-object v0, v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$ChildViewHolder;->tv_song_list_item_bottom:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 464
    const v3, 0x7f08006d

    .line 463
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_d

    .line 466
    :cond_2d
    iget v0, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->STYLE_PARAMTER:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2e

    .line 468
    iget-object v0, v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$ChildViewHolder;->tv_song_list_item_top:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 469
    const v3, 0x7f08000f

    .line 468
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 470
    iget-object v0, v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$ChildViewHolder;->tv_song_list_item_bottom:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 471
    const v3, 0x7f080014

    .line 470
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_d

    .line 473
    :cond_2e
    iget v0, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->STYLE_PARAMTER:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2b

    .line 475
    iget-object v0, v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$ChildViewHolder;->tv_song_list_item_top:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 476
    const v3, 0x7f08006e

    .line 475
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 477
    iget-object v0, v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$ChildViewHolder;->tv_song_list_item_bottom:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 478
    const v3, 0x7f08006d

    .line 477
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_d
.end method

.method public getChildrenCount(I)I
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->childList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->groupList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->groupList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2

    .prologue
    .line 107
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 124
    if-nez p3, :cond_5

    .line 127
    new-instance v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$GroupHolder;

    invoke-direct {v1, p0}, Lcom/fiio/music/adapter/TestExpandableListAdapter$GroupHolder;-><init>(Lcom/fiio/music/adapter/TestExpandableListAdapter;)V

    .line 128
    iget v0, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->STYLE_PARAMTER:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 129
    iget-object v0, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040079

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 138
    :cond_0
    :goto_0
    const v0, 0x7f0b0186

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 137
    iput-object v0, v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$GroupHolder;->textView:Landroid/widget/TextView;

    .line 140
    const v0, 0x7f0b0187

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 139
    iput-object v0, v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$GroupHolder;->imageViewTitle:Landroid/widget/ImageView;

    .line 143
    const v0, 0x7f0b006a

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 142
    iput-object v0, v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$GroupHolder;->imageView:Landroid/widget/ImageView;

    .line 145
    const v0, 0x7f0b0188

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 144
    iput-object v0, v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$GroupHolder;->groupTitleMoreButton:Landroid/widget/ImageView;

    .line 146
    iget-object v0, v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$GroupHolder;->groupTitleMoreButton:Landroid/widget/ImageView;

    new-instance v2, Lcom/fiio/music/adapter/ar;

    invoke-direct {v2, p0, p1}, Lcom/fiio/music/adapter/ar;-><init>(Lcom/fiio/music/adapter/TestExpandableListAdapter;I)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    invoke-virtual {p3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 162
    :goto_1
    iget-object v2, v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$GroupHolder;->imageViewTitle:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/fiio/music/adapter/TestExpandableListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/util/as;

    invoke-virtual {v0}, Lcom/fiio/music/util/as;->c()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 163
    iget-object v2, v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$GroupHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/fiio/music/adapter/TestExpandableListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/util/as;

    invoke-virtual {v0}, Lcom/fiio/music/util/as;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v0, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->groupString:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_1

    .line 165
    iget-object v2, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->groupString:[Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/fiio/music/adapter/TestExpandableListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/util/as;

    invoke-virtual {v0}, Lcom/fiio/music/util/as;->b()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, p1

    .line 168
    :cond_1
    if-eqz p2, :cond_6

    .line 169
    iget-object v0, v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$GroupHolder;->imageView:Landroid/widget/ImageView;

    const v1, 0x7f020329

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 172
    :goto_2
    return-object p3

    .line 130
    :cond_2
    iget v0, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->STYLE_PARAMTER:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 131
    iget-object v0, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f04007a

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    goto/16 :goto_0

    .line 132
    :cond_3
    iget v0, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->STYLE_PARAMTER:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_4

    .line 133
    iget-object v0, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f04007b

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    goto/16 :goto_0

    .line 134
    :cond_4
    iget v0, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->STYLE_PARAMTER:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 135
    iget-object v0, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f04007c

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    goto/16 :goto_0

    .line 160
    :cond_5
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/adapter/TestExpandableListAdapter$GroupHolder;

    move-object v1, v0

    goto :goto_1

    .line 171
    :cond_6
    iget-object v0, v1, Lcom/fiio/music/adapter/TestExpandableListAdapter$GroupHolder;->imageView:Landroid/widget/ImageView;

    const v1, 0x7f0202ae

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1

    .prologue
    .line 516
    const/4 v0, 0x1

    return v0
.end method

.method public refresh(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/util/bq;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 70
    iput-object p1, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->childList:Ljava/util/ArrayList;

    .line 71
    invoke-virtual {p0}, Lcom/fiio/music/adapter/TestExpandableListAdapter;->notifyDataSetChanged()V

    .line 72
    return-void
.end method

.method public refresh(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fiio/music/util/as;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/util/bq;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 74
    iput-object p1, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->groupList:Ljava/util/ArrayList;

    .line 75
    iput-object p2, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->childList:Ljava/util/ArrayList;

    .line 76
    invoke-virtual {p0}, Lcom/fiio/music/adapter/TestExpandableListAdapter;->notifyDataSetChanged()V

    .line 77
    return-void
.end method

.method public setIsPlayerList(Z)V
    .locals 1

    .prologue
    .line 520
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/adapter/TestExpandableListAdapter;->isPlayerList:Ljava/lang/Boolean;

    .line 521
    invoke-virtual {p0}, Lcom/fiio/music/adapter/TestExpandableListAdapter;->notifyDataSetChanged()V

    .line 522
    return-void
.end method
