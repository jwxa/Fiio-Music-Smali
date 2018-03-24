.class public Lcom/fiio/music/adapter/SimpleSongAdapter;
.super Landroid/widget/BaseAdapter;
.source "SimpleSongAdapter.java"


# static fields
.field private static final CANCEL_DELETE:I = 0x1

.field private static final START_DELETE:I = 0x0

.field private static final localMusicActivity:Ljava/lang/String; = "class com.fiio.music.activity.LocalMusicActivity"

.field private static final myMusicListActivity:Ljava/lang/String; = "class com.fiio.music.activity.MyMusicListActivity"


# instance fields
.field private UI_IS_CHANGE:Z

.field private adapterFlag:I

.field private anim:Landroid/graphics/drawable/AnimationDrawable;

.field private bottomSelectorListener:Landroid/view/View$OnClickListener;

.field private context:Landroid/content/Context;

.field private curAlbumPath:Ljava/lang/String;

.field private curArtName:Ljava/lang/String;

.field private curFilePath:Ljava/lang/String;

.field private curSongId:I

.field private curSongName:Ljava/lang/String;

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private displayPosition:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected imageLoader:Lcom/b/a/b/f;

.field private interfaceFootView:Lcom/fiio/music/util/dc;

.field private isPlayingSongInPlayList:Z

.field private listView:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

.field private mAdd_to_mylove:Landroid/widget/ImageView;

.field private mAdd_to_playlist:Landroid/widget/ImageView;

.field private mFootView:Landroid/view/View;

.field private mFoot_delete:Landroid/widget/ImageView;

.field private mFoot_play:Landroid/widget/ImageView;

.field private mFoot_send:Landroid/widget/ImageView;

.field public mHandler:Landroid/os/Handler;

.field private mItemListener:Lcom/fiio/music/adapter/SimpleSongAdapter$ItemListener;

.field public mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/SimpleSong;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedItem:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/SimpleSong;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedName:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mShowCheckBox:Z

.field private mUpdataInfoTitle:Lcom/fiio/music/adapter/SimpleSongAdapter$UpdataInfoTitle;

.field mediaPlayerManager:Lcom/fiio/music/service/h;

.field private options:Lcom/b/a/b/d;

.field private playListManager:Lcom/fiio/music/util/bw;

.field private playerId:I

.field private playerSongName:Ljava/lang/String;

.field private playerSongPath:Ljava/lang/String;

.field private playerState:I

.field private scrollStauts:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/fiio/music/service/h;ILcom/fiio/music/swipemenulistview/SwipeMenuListView;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/SimpleSong;",
            ">;",
            "Lcom/fiio/music/service/h;",
            "I",
            "Lcom/fiio/music/swipemenulistview/SwipeMenuListView;",
            "Z)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 98
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 57
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mSelectedItem:Ljava/util/List;

    .line 58
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mSelectedName:Ljava/util/List;

    .line 63
    iput-boolean v2, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mShowCheckBox:Z

    .line 65
    iput v2, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->adapterFlag:I

    .line 66
    iput v2, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->curSongId:I

    .line 86
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->displayPosition:Ljava/util/ArrayList;

    .line 96
    iput-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->listView:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    .line 97
    iput v2, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->scrollStauts:I

    .line 419
    new-instance v1, Lcom/fiio/music/adapter/ah;

    invoke-direct {v1, p0}, Lcom/fiio/music/adapter/ah;-><init>(Lcom/fiio/music/adapter/SimpleSongAdapter;)V

    iput-object v1, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->bottomSelectorListener:Landroid/view/View$OnClickListener;

    .line 667
    iput-boolean v2, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->isPlayingSongInPlayList:Z

    .line 669
    new-instance v1, Lcom/fiio/music/adapter/ai;

    invoke-direct {v1, p0}, Lcom/fiio/music/adapter/ai;-><init>(Lcom/fiio/music/adapter/SimpleSongAdapter;)V

    iput-object v1, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mHandler:Landroid/os/Handler;

    .line 99
    iput-object p1, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->context:Landroid/content/Context;

    .line 100
    iput-object p2, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mItems:Ljava/util/List;

    .line 101
    iput-object p3, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    .line 102
    invoke-virtual {p3}, Lcom/fiio/music/service/h;->m()I

    move-result v1

    iput v1, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->playerState:I

    .line 103
    invoke-virtual {p3}, Lcom/fiio/music/service/h;->i()I

    move-result v1

    iput v1, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->playerId:I

    .line 104
    invoke-virtual {p3}, Lcom/fiio/music/service/h;->k()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->playerSongPath:Ljava/lang/String;

    .line 105
    invoke-virtual {p3}, Lcom/fiio/music/service/h;->h()Lcom/fiio/music/entity/Song;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p3}, Lcom/fiio/music/service/h;->h()Lcom/fiio/music/entity/Song;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->playerSongName:Ljava/lang/String;

    .line 106
    iput p4, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->adapterFlag:I

    .line 107
    iput-boolean p6, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->UI_IS_CHANGE:Z

    .line 108
    invoke-direct {p0}, Lcom/fiio/music/adapter/SimpleSongAdapter;->initImageLoader()V

    .line 109
    invoke-virtual {p0}, Lcom/fiio/music/adapter/SimpleSongAdapter;->notifyDataSetChanged()V

    .line 110
    iput-object p5, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->listView:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    .line 111
    iget-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->listView:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    new-instance v1, Lcom/fiio/music/adapter/aj;

    invoke-direct {v1, p0}, Lcom/fiio/music/adapter/aj;-><init>(Lcom/fiio/music/adapter/SimpleSongAdapter;)V

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 139
    return-void
.end method

.method static synthetic access$0(Lcom/fiio/music/adapter/SimpleSongAdapter;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/fiio/music/adapter/SimpleSongAdapter;)Ljava/util/List;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mSelectedItem:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2(Lcom/fiio/music/adapter/SimpleSongAdapter;)I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->adapterFlag:I

    return v0
.end method

.method static synthetic access$3(Lcom/fiio/music/adapter/SimpleSongAdapter;Z)V
    .locals 0

    .prologue
    .line 667
    iput-boolean p1, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->isPlayingSongInPlayList:Z

    return-void
.end method

.method static synthetic access$4(Lcom/fiio/music/adapter/SimpleSongAdapter;)Z
    .locals 1

    .prologue
    .line 667
    iget-boolean v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->isPlayingSongInPlayList:Z

    return v0
.end method

.method static synthetic access$5(Lcom/fiio/music/adapter/SimpleSongAdapter;I)V
    .locals 0

    .prologue
    .line 97
    iput p1, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->scrollStauts:I

    return-void
.end method

.method static synthetic access$6(Lcom/fiio/music/adapter/SimpleSongAdapter;)V
    .locals 0

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/fiio/music/adapter/SimpleSongAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private checkSongIdIsSame(Lcom/fiio/music/entity/SimpleSong;)Z
    .locals 4

    .prologue
    .line 839
    const/4 v1, 0x0

    .line 840
    iget-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mSelectedItem:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 846
    :goto_0
    return v0

    .line 840
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/SimpleSong;

    .line 841
    invoke-virtual {v0}, Lcom/fiio/music/entity/SimpleSong;->getId()I

    move-result v0

    invoke-virtual {p1}, Lcom/fiio/music/entity/SimpleSong;->getId()I

    move-result v3

    if-ne v0, v3, :cond_0

    .line 842
    const/4 v0, 0x1

    .line 843
    goto :goto_0
.end method

.method private initFootView()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 404
    iget-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mFootView:Landroid/view/View;

    const v1, 0x7f0b0062

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mFoot_play:Landroid/widget/ImageView;

    .line 405
    iget-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mFootView:Landroid/view/View;

    const v1, 0x7f0b0063

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mAdd_to_mylove:Landroid/widget/ImageView;

    .line 406
    iget-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mFootView:Landroid/view/View;

    const v1, 0x7f0b0064

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mAdd_to_playlist:Landroid/widget/ImageView;

    .line 407
    iget-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mFootView:Landroid/view/View;

    const v1, 0x7f0b0065

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mFoot_send:Landroid/widget/ImageView;

    .line 408
    iget-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mFootView:Landroid/view/View;

    const v1, 0x7f0b0066

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mFoot_delete:Landroid/widget/ImageView;

    .line 409
    iget-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mFoot_play:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->bottomSelectorListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 410
    iget-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mAdd_to_mylove:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->bottomSelectorListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 411
    iget-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mAdd_to_playlist:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->bottomSelectorListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 412
    iget-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mFoot_send:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->bottomSelectorListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 413
    iget-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mFoot_delete:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->bottomSelectorListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 414
    iget v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->adapterFlag:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 415
    iget-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mAdd_to_mylove:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 416
    iget-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mAdd_to_playlist:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 418
    :cond_0
    return-void
.end method

.method private initImageLoader()V
    .locals 4

    .prologue
    const v3, 0x7f020423

    const v2, 0x7f0203b0

    const/4 v1, 0x1

    .line 145
    invoke-static {}, Lcom/b/a/b/f;->a()Lcom/b/a/b/f;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->imageLoader:Lcom/b/a/b/f;

    .line 147
    iget-boolean v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->UI_IS_CHANGE:Z

    if-eqz v0, :cond_0

    .line 148
    new-instance v0, Lcom/b/a/b/e;

    invoke-direct {v0}, Lcom/b/a/b/e;-><init>()V

    .line 149
    invoke-virtual {v0, v2}, Lcom/b/a/b/e;->a(I)Lcom/b/a/b/e;

    move-result-object v0

    .line 150
    invoke-virtual {v0, v2}, Lcom/b/a/b/e;->b(I)Lcom/b/a/b/e;

    move-result-object v0

    .line 151
    invoke-virtual {v0, v2}, Lcom/b/a/b/e;->c(I)Lcom/b/a/b/e;

    move-result-object v0

    .line 152
    invoke-virtual {v0, v1}, Lcom/b/a/b/e;->a(Z)Lcom/b/a/b/e;

    move-result-object v0

    .line 153
    invoke-virtual {v0, v1}, Lcom/b/a/b/e;->b(Z)Lcom/b/a/b/e;

    move-result-object v0

    .line 154
    new-instance v1, Lcom/b/a/b/c/c;

    invoke-direct {v1}, Lcom/b/a/b/c/c;-><init>()V

    invoke-virtual {v0, v1}, Lcom/b/a/b/e;->a(Lcom/b/a/b/c/a;)Lcom/b/a/b/e;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Lcom/b/a/b/e;->d()Lcom/b/a/b/d;

    move-result-object v0

    .line 148
    iput-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->options:Lcom/b/a/b/d;

    .line 168
    :goto_0
    return-void

    .line 157
    :cond_0
    new-instance v0, Lcom/b/a/b/e;

    invoke-direct {v0}, Lcom/b/a/b/e;-><init>()V

    .line 158
    invoke-virtual {v0, v3}, Lcom/b/a/b/e;->a(I)Lcom/b/a/b/e;

    move-result-object v0

    .line 159
    invoke-virtual {v0, v3}, Lcom/b/a/b/e;->b(I)Lcom/b/a/b/e;

    move-result-object v0

    .line 160
    invoke-virtual {v0, v3}, Lcom/b/a/b/e;->c(I)Lcom/b/a/b/e;

    move-result-object v0

    .line 161
    invoke-virtual {v0, v1}, Lcom/b/a/b/e;->a(Z)Lcom/b/a/b/e;

    move-result-object v0

    .line 162
    invoke-virtual {v0, v1}, Lcom/b/a/b/e;->b(Z)Lcom/b/a/b/e;

    move-result-object v0

    .line 163
    new-instance v1, Lcom/b/a/b/c/c;

    invoke-direct {v1}, Lcom/b/a/b/c/c;-><init>()V

    invoke-virtual {v0, v1}, Lcom/b/a/b/e;->a(Lcom/b/a/b/c/a;)Lcom/b/a/b/e;

    move-result-object v0

    .line 164
    invoke-virtual {v0}, Lcom/b/a/b/e;->d()Lcom/b/a/b/d;

    move-result-object v0

    .line 157
    iput-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->options:Lcom/b/a/b/d;

    goto :goto_0
.end method

.method private isCheckAll()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 359
    iget-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mSelectedName:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 360
    iget-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 362
    iget-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "class com.fiio.music.activity.LocalMusicActivity"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 363
    iget-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v0, v5}, Lcom/fiio/music/activity/LocalMusicActivity;->setItemAdapterCheckBoxFlag(Z)V

    .line 364
    if-ne v1, v2, :cond_1

    .line 365
    iget-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v0, v5}, Lcom/fiio/music/activity/LocalMusicActivity;->footSelectAllCheckBoxState(Z)V

    .line 369
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v0, v4}, Lcom/fiio/music/activity/LocalMusicActivity;->setItemAdapterCheckBoxFlag(Z)V

    .line 379
    :cond_0
    :goto_1
    return-void

    .line 367
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v0, v4}, Lcom/fiio/music/activity/LocalMusicActivity;->footSelectAllCheckBoxState(Z)V

    goto :goto_0

    .line 370
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "class com.fiio.music.activity.MyMusicListActivity"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-virtual {v0, v5}, Lcom/fiio/music/activity/MyMusicListActivity;->setItemAdapterCheckBoxFlag(Z)V

    .line 372
    if-ne v1, v2, :cond_3

    .line 373
    iget-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-virtual {v0, v5}, Lcom/fiio/music/activity/MyMusicListActivity;->footSelectAllCheckBoxState(Z)V

    .line 377
    :goto_2
    iget-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-virtual {v0, v4}, Lcom/fiio/music/activity/MyMusicListActivity;->setItemAdapterCheckBoxFlag(Z)V

    goto :goto_1

    .line 375
    :cond_3
    iget-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-virtual {v0, v4}, Lcom/fiio/music/activity/MyMusicListActivity;->footSelectAllCheckBoxState(Z)V

    goto :goto_2
.end method

.method private updateUI()V
    .locals 0

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/fiio/music/adapter/SimpleSongAdapter;->notifyDataSetChanged()V

    .line 142
    return-void
.end method


# virtual methods
.method public cancelSelect()V
    .locals 2

    .prologue
    .line 783
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mShowCheckBox:Z

    .line 784
    iget-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mFootView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mFootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 785
    iget-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mFootView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 786
    iget-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mSelectedItem:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 787
    iget-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mSelectedName:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 788
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 789
    iget-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->interfaceFootView:Lcom/fiio/music/util/dc;

    if-eqz v0, :cond_0

    .line 790
    iget-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->interfaceFootView:Lcom/fiio/music/util/dc;

    invoke-interface {v0}, Lcom/fiio/music/util/dc;->a()V

    .line 792
    :cond_0
    return-void
.end method

.method public deleteForResetPlayerList(IILjava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 741
    iget-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->m()I

    move-result v0

    .line 742
    if-eqz v0, :cond_0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 765
    :cond_0
    :goto_0
    return-void

    .line 745
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->l()I

    move-result v0

    if-eqz v0, :cond_0

    .line 748
    iget-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->B()Ljava/lang/String;

    move-result-object v0

    .line 749
    if-nez v0, :cond_2

    const-string v0, ""

    .line 750
    :cond_2
    const/4 v1, 0x1

    if-eq p2, v1, :cond_3

    .line 751
    iget-object v1, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->l()I

    move-result v1

    if-ne v1, p2, :cond_0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 753
    :cond_3
    if-ne p1, v2, :cond_4

    .line 754
    iget-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0, v2}, Lcom/fiio/music/service/h;->d(I)V

    goto :goto_0

    .line 758
    :cond_4
    iget-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->i()I

    move-result v0

    if-ne p1, v0, :cond_5

    .line 759
    iget-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0, p1}, Lcom/fiio/music/service/h;->d(I)V

    .line 762
    :cond_5
    iget-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    iget-object v1, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->v()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/service/h;->a(Ljava/util/List;)V

    .line 763
    iget-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->x()V

    goto :goto_0
.end method

.method public deleteItem(I)V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 196
    invoke-virtual {p0}, Lcom/fiio/music/adapter/SimpleSongAdapter;->notifyDataSetChanged()V

    .line 197
    return-void
.end method

.method public footViewCanceAll()V
    .locals 2

    .prologue
    .line 798
    iget-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mSelectedItem:Ljava/util/List;

    iget-object v1, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mSelectedItem:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 799
    iget-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mSelectedName:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 800
    iget-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mUpdataInfoTitle:Lcom/fiio/music/adapter/SimpleSongAdapter$UpdataInfoTitle;

    if-eqz v0, :cond_0

    .line 801
    iget-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mUpdataInfoTitle:Lcom/fiio/music/adapter/SimpleSongAdapter$UpdataInfoTitle;

    iget-object v1, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mSelectedItem:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/fiio/music/adapter/SimpleSongAdapter$UpdataInfoTitle;->upDataTitle(I)V

    .line 802
    :cond_0
    invoke-virtual {p0}, Lcom/fiio/music/adapter/SimpleSongAdapter;->notifyDataSetChanged()V

    .line 803
    return-void
.end method

.method public footViewSelectAll()V
    .locals 3

    .prologue
    .line 806
    iget-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mItems:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 807
    iget-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mSelectedItem:Ljava/util/List;

    iget-object v1, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mSelectedItem:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 808
    iget-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mSelectedName:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 809
    iget-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mSelectedItem:Ljava/util/List;

    iget-object v1, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 810
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    .line 813
    iget-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mUpdataInfoTitle:Lcom/fiio/music/adapter/SimpleSongAdapter$UpdataInfoTitle;

    if-eqz v0, :cond_0

    .line 814
    iget-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mUpdataInfoTitle:Lcom/fiio/music/adapter/SimpleSongAdapter$UpdataInfoTitle;

    iget-object v1, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mSelectedItem:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/fiio/music/adapter/SimpleSongAdapter$UpdataInfoTitle;->upDataTitle(I)V

    .line 815
    :cond_0
    invoke-virtual {p0}, Lcom/fiio/music/adapter/SimpleSongAdapter;->notifyDataSetChanged()V

    .line 817
    :cond_1
    return-void

    .line 811
    :cond_2
    iget-object v2, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mSelectedName:Ljava/util/List;

    iget-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/SimpleSong;

    invoke-virtual {v0}, Lcom/fiio/music/entity/SimpleSong;->getSongName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 810
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mItems:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 188
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/SimpleSong;",
            ">;"
        }
    .end annotation

    .prologue
    .line 192
    iget-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mItems:Ljava/util/List;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 205
    int-to-long v0, p1

    return-wide v0
.end method

.method public getPlayerId()I
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->playerId:I

    return v0
.end method

.method public getShowCheckBoxState()Z
    .locals 1

    .prologue
    .line 779
    iget-boolean v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mShowCheckBox:Z

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    .prologue
    const v10, 0x7f050002

    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v9, 0x0

    .line 213
    if-nez p2, :cond_5

    .line 217
    new-instance v2, Lcom/fiio/music/adapter/SimpleSongAdapter$ViewHolder;

    invoke-direct {v2, p0}, Lcom/fiio/music/adapter/SimpleSongAdapter$ViewHolder;-><init>(Lcom/fiio/music/adapter/SimpleSongAdapter;)V

    .line 218
    iget-boolean v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->UI_IS_CHANGE:Z

    if-eqz v0, :cond_4

    .line 219
    iget-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040128

    invoke-virtual {v0, v1, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    .line 223
    :goto_0
    const v0, 0x7f0b0270

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    iput-object v0, v2, Lcom/fiio/music/adapter/SimpleSongAdapter$ViewHolder;->tv_song_list_item_top:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    .line 224
    const v0, 0x7f0b0271

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    iput-object v0, v2, Lcom/fiio/music/adapter/SimpleSongAdapter$ViewHolder;->tv_song_list_item_bottom:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    .line 225
    const v0, 0x7f0b0208

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/fiio/music/adapter/SimpleSongAdapter$ViewHolder;->current_play_image_view:Landroid/widget/ImageView;

    .line 226
    const v0, 0x7f0b0359

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/fiio/music/adapter/SimpleSongAdapter$ViewHolder;->listview_item_image:Landroid/widget/ImageView;

    .line 227
    const v0, 0x7f0b026d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v2, Lcom/fiio/music/adapter/SimpleSongAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    .line 228
    iget-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/SimpleSong;

    .line 229
    iget-object v5, v2, Lcom/fiio/music/adapter/SimpleSongAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    .line 230
    invoke-virtual {v5, v0}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 231
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object p2, v1

    move-object v1, v2

    .line 236
    :goto_1
    iget-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/SimpleSong;

    .line 237
    invoke-virtual {v0}, Lcom/fiio/music/entity/SimpleSong;->getId()I

    move-result v2

    iput v2, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->curSongId:I

    .line 238
    invoke-virtual {v0}, Lcom/fiio/music/entity/SimpleSong;->getSongName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->curSongName:Ljava/lang/String;

    .line 239
    invoke-virtual {v0}, Lcom/fiio/music/entity/SimpleSong;->getArtistName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->curArtName:Ljava/lang/String;

    .line 240
    invoke-virtual {v0}, Lcom/fiio/music/entity/SimpleSong;->getFilePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->curFilePath:Ljava/lang/String;

    .line 243
    iget-boolean v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mShowCheckBox:Z

    if-eqz v0, :cond_7

    .line 244
    iget-object v0, v1, Lcom/fiio/music/adapter/SimpleSongAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/SimpleSong;

    .line 246
    iget-object v2, v1, Lcom/fiio/music/adapter/SimpleSongAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 250
    iget-object v2, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mSelectedName:Ljava/util/List;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mSelectedName:Ljava/util/List;

    invoke-virtual {v0}, Lcom/fiio/music/entity/SimpleSong;->getSongName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-direct {p0, v0}, Lcom/fiio/music/adapter/SimpleSongAdapter;->checkSongIdIsSame(Lcom/fiio/music/entity/SimpleSong;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 251
    iget-object v0, v1, Lcom/fiio/music/adapter/SimpleSongAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 252
    invoke-direct {p0}, Lcom/fiio/music/adapter/SimpleSongAdapter;->isCheckAll()V

    .line 264
    :goto_2
    iget-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->curFilePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->playerSongPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 265
    iget-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->h()Lcom/fiio/music/entity/Song;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->curSongName:Ljava/lang/String;

    iget-object v2, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v2}, Lcom/fiio/music/service/h;->h()Lcom/fiio/music/entity/Song;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->G()Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v3

    .line 268
    :goto_3
    iget-object v2, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->curFilePath:Ljava/lang/String;

    iget-object v5, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->playerSongPath:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 269
    iget-object v2, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v2}, Lcom/fiio/music/service/h;->h()Lcom/fiio/music/entity/Song;

    move-result-object v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->curSongName:Ljava/lang/String;

    iget-object v5, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v5}, Lcom/fiio/music/service/h;->h()Lcom/fiio/music/entity/Song;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v2}, Lcom/fiio/music/service/h;->G()Z

    move-result v2

    if-nez v2, :cond_9

    move v2, v3

    .line 270
    :goto_4
    const/4 v5, -0x1

    .line 271
    iget-object v7, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->context:Landroid/content/Context;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "LocalMusicActivity"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_a

    move v5, v3

    .line 280
    :cond_0
    :goto_5
    packed-switch v5, :pswitch_data_0

    move v3, v4

    .line 286
    :goto_6
    :pswitch_0
    if-eqz v3, :cond_b

    if-eqz v2, :cond_c

    .line 292
    :cond_1
    iget v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->playerState:I

    if-ne v0, v6, :cond_e

    .line 293
    iget-boolean v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->UI_IS_CHANGE:Z

    if-eqz v0, :cond_d

    .line 294
    iget-object v0, v1, Lcom/fiio/music/adapter/SimpleSongAdapter$ViewHolder;->current_play_image_view:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 298
    :goto_7
    iget-object v0, v1, Lcom/fiio/music/adapter/SimpleSongAdapter$ViewHolder;->tv_song_list_item_top:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    invoke-virtual {v0, v9}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 299
    iget-object v0, v1, Lcom/fiio/music/adapter/SimpleSongAdapter$ViewHolder;->tv_song_list_item_bottom:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    invoke-virtual {v0, v9}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 300
    iget-object v0, v1, Lcom/fiio/music/adapter/SimpleSongAdapter$ViewHolder;->current_play_image_view:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->anim:Landroid/graphics/drawable/AnimationDrawable;

    .line 301
    iget-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->anim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 338
    :cond_2
    :goto_8
    iget v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->scrollStauts:I

    if-eqz v0, :cond_3

    .line 343
    iget-boolean v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->UI_IS_CHANGE:Z

    if-eqz v0, :cond_12

    .line 344
    iget-object v0, v1, Lcom/fiio/music/adapter/SimpleSongAdapter$ViewHolder;->listview_item_image:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0203b0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 349
    :cond_3
    :goto_9
    iget-object v0, v1, Lcom/fiio/music/adapter/SimpleSongAdapter$ViewHolder;->tv_song_list_item_top:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    iget-object v2, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->curSongName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    iget-object v0, v1, Lcom/fiio/music/adapter/SimpleSongAdapter$ViewHolder;->tv_song_list_item_top:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    iget-object v2, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->curFilePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setTag(Ljava/lang/Object;)V

    .line 351
    iget-object v0, v1, Lcom/fiio/music/adapter/SimpleSongAdapter$ViewHolder;->tv_song_list_item_bottom:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    iget-object v2, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->curArtName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    iget-object v0, v1, Lcom/fiio/music/adapter/SimpleSongAdapter$ViewHolder;->tv_song_list_item_bottom:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    iget v1, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->curSongId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setTag(Ljava/lang/Object;)V

    .line 355
    return-object p2

    .line 221
    :cond_4
    iget-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040129

    invoke-virtual {v0, v1, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_0

    .line 233
    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/adapter/SimpleSongAdapter$ViewHolder;

    move-object v1, v0

    goto/16 :goto_1

    .line 254
    :cond_6
    iget-object v0, v1, Lcom/fiio/music/adapter/SimpleSongAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 255
    invoke-direct {p0}, Lcom/fiio/music/adapter/SimpleSongAdapter;->isCheckAll()V

    goto/16 :goto_2

    .line 259
    :cond_7
    iget-object v0, v1, Lcom/fiio/music/adapter/SimpleSongAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_2

    :cond_8
    move v0, v4

    .line 264
    goto/16 :goto_3

    :cond_9
    move v2, v4

    .line 268
    goto/16 :goto_4

    .line 273
    :cond_a
    iget-object v7, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->context:Landroid/content/Context;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "MyMusicListActivity"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v5, v6

    .line 274
    goto/16 :goto_5

    :pswitch_1
    move v3, v4

    .line 285
    goto/16 :goto_6

    .line 286
    :cond_b
    if-nez v0, :cond_1

    .line 320
    :cond_c
    iget-object v0, v1, Lcom/fiio/music/adapter/SimpleSongAdapter$ViewHolder;->tv_song_list_item_top:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    invoke-virtual {v0, v9}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 321
    iget-object v0, v1, Lcom/fiio/music/adapter/SimpleSongAdapter$ViewHolder;->tv_song_list_item_bottom:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    invoke-virtual {v0, v9}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 322
    iget-object v0, v1, Lcom/fiio/music/adapter/SimpleSongAdapter$ViewHolder;->current_play_image_view:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 323
    iget-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->anim:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_2

    iput-object v9, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->anim:Landroid/graphics/drawable/AnimationDrawable;

    goto/16 :goto_8

    .line 296
    :cond_d
    iget-object v0, v1, Lcom/fiio/music/adapter/SimpleSongAdapter$ViewHolder;->current_play_image_view:Landroid/widget/ImageView;

    const v2, 0x7f050003

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_7

    .line 302
    :cond_e
    iget v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->playerState:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_f

    .line 303
    iget v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->playerState:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_11

    .line 304
    :cond_f
    iget-boolean v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->UI_IS_CHANGE:Z

    if-eqz v0, :cond_10

    .line 305
    iget-object v0, v1, Lcom/fiio/music/adapter/SimpleSongAdapter$ViewHolder;->current_play_image_view:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 309
    :goto_a
    iget-object v0, v1, Lcom/fiio/music/adapter/SimpleSongAdapter$ViewHolder;->tv_song_list_item_top:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 310
    iget-object v0, v1, Lcom/fiio/music/adapter/SimpleSongAdapter$ViewHolder;->tv_song_list_item_bottom:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 311
    iget-object v0, v1, Lcom/fiio/music/adapter/SimpleSongAdapter$ViewHolder;->current_play_image_view:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->anim:Landroid/graphics/drawable/AnimationDrawable;

    .line 312
    iget-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->anim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto/16 :goto_8

    .line 307
    :cond_10
    iget-object v0, v1, Lcom/fiio/music/adapter/SimpleSongAdapter$ViewHolder;->current_play_image_view:Landroid/widget/ImageView;

    const v2, 0x7f050003

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_a

    .line 313
    :cond_11
    iget v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->playerState:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_2

    .line 314
    iget-object v0, v1, Lcom/fiio/music/adapter/SimpleSongAdapter$ViewHolder;->tv_song_list_item_top:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    invoke-virtual {v0, v9}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 315
    iget-object v0, v1, Lcom/fiio/music/adapter/SimpleSongAdapter$ViewHolder;->tv_song_list_item_bottom:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    invoke-virtual {v0, v9}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 316
    iget-object v0, v1, Lcom/fiio/music/adapter/SimpleSongAdapter$ViewHolder;->current_play_image_view:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 317
    iget-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->anim:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_2

    iput-object v9, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->anim:Landroid/graphics/drawable/AnimationDrawable;

    goto/16 :goto_8

    .line 346
    :cond_12
    iget-object v0, v1, Lcom/fiio/music/adapter/SimpleSongAdapter$ViewHolder;->listview_item_image:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020423

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_9

    .line 280
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/SimpleSong;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 850
    iget-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mItems:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 851
    iget-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 852
    iget-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 859
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/fiio/music/adapter/SimpleSongAdapter;->notifyDataSetChanged()V

    .line 860
    return-void

    .line 854
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mItems:Ljava/util/List;

    .line 855
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 856
    iget-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public setFootView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 400
    iput-object p1, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mFootView:Landroid/view/View;

    .line 401
    invoke-direct {p0}, Lcom/fiio/music/adapter/SimpleSongAdapter;->initFootView()V

    .line 402
    return-void
.end method

.method public setFootViewItf(Lcom/fiio/music/util/dc;)V
    .locals 0

    .prologue
    .line 397
    iput-object p1, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->interfaceFootView:Lcom/fiio/music/util/dc;

    .line 398
    return-void
.end method

.method public setItemListener(Lcom/fiio/music/adapter/SimpleSongAdapter$ItemListener;)Lcom/fiio/music/adapter/SimpleSongAdapter;
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mItemListener:Lcom/fiio/music/adapter/SimpleSongAdapter$ItemListener;

    .line 171
    return-object p0
.end method

.method public setPlayerId(I)V
    .locals 0

    .prologue
    .line 175
    iput p1, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->playerId:I

    .line 176
    invoke-virtual {p0}, Lcom/fiio/music/adapter/SimpleSongAdapter;->notifyDataSetChanged()V

    .line 177
    return-void
.end method

.method public setPlayerManager(Lcom/fiio/music/service/h;)V
    .locals 1

    .prologue
    .line 863
    iput-object p1, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    .line 864
    invoke-virtual {p1}, Lcom/fiio/music/service/h;->m()I

    move-result v0

    iput v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->playerState:I

    .line 865
    invoke-virtual {p1}, Lcom/fiio/music/service/h;->i()I

    move-result v0

    iput v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->playerId:I

    .line 866
    invoke-virtual {p1}, Lcom/fiio/music/service/h;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->playerSongPath:Ljava/lang/String;

    .line 867
    invoke-virtual {p0}, Lcom/fiio/music/adapter/SimpleSongAdapter;->notifyDataSetChanged()V

    .line 868
    return-void
.end method

.method public setPlayerState(I)V
    .locals 0

    .prologue
    .line 180
    iput p1, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->playerState:I

    .line 181
    invoke-virtual {p0}, Lcom/fiio/music/adapter/SimpleSongAdapter;->notifyDataSetChanged()V

    .line 182
    return-void
.end method

.method public setUpdataInfoTitle(Lcom/fiio/music/adapter/SimpleSongAdapter$UpdataInfoTitle;)V
    .locals 0

    .prologue
    .line 794
    iput-object p1, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mUpdataInfoTitle:Lcom/fiio/music/adapter/SimpleSongAdapter$UpdataInfoTitle;

    .line 795
    return-void
.end method

.method public showCheckBox(Z)V
    .locals 0

    .prologue
    .line 776
    iput-boolean p1, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mShowCheckBox:Z

    .line 777
    return-void
.end method

.method public showFootView()V
    .locals 2

    .prologue
    .line 767
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/fiio/music/adapter/SimpleSongAdapter;->showCheckBox(Z)V

    .line 768
    invoke-virtual {p0}, Lcom/fiio/music/adapter/SimpleSongAdapter;->notifyDataSetChanged()V

    .line 770
    iget-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mFootView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 771
    iget-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mFootView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 772
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->interfaceFootView:Lcom/fiio/music/util/dc;

    if-eqz v0, :cond_1

    .line 773
    iget-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->interfaceFootView:Lcom/fiio/music/util/dc;

    invoke-interface {v0}, Lcom/fiio/music/util/dc;->b()V

    .line 774
    :cond_1
    return-void
.end method

.method public toggleCheckBox(I)V
    .locals 3

    .prologue
    .line 825
    iget-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/SimpleSong;

    .line 826
    iget-object v1, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mSelectedName:Ljava/util/List;

    invoke-virtual {v0}, Lcom/fiio/music/entity/SimpleSong;->getSongName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/fiio/music/adapter/SimpleSongAdapter;->checkSongIdIsSame(Lcom/fiio/music/entity/SimpleSong;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 827
    iget-object v1, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mSelectedItem:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 828
    iget-object v1, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mSelectedName:Ljava/util/List;

    invoke-virtual {v0}, Lcom/fiio/music/entity/SimpleSong;->getSongName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 833
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mUpdataInfoTitle:Lcom/fiio/music/adapter/SimpleSongAdapter$UpdataInfoTitle;

    if-eqz v0, :cond_0

    .line 834
    iget-object v0, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mUpdataInfoTitle:Lcom/fiio/music/adapter/SimpleSongAdapter$UpdataInfoTitle;

    iget-object v1, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mSelectedName:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/fiio/music/adapter/SimpleSongAdapter$UpdataInfoTitle;->upDataTitle(I)V

    .line 835
    :cond_0
    invoke-virtual {p0}, Lcom/fiio/music/adapter/SimpleSongAdapter;->notifyDataSetChanged()V

    .line 836
    return-void

    .line 830
    :cond_1
    iget-object v1, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mSelectedItem:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 831
    iget-object v1, p0, Lcom/fiio/music/adapter/SimpleSongAdapter;->mSelectedName:Ljava/util/List;

    invoke-virtual {v0}, Lcom/fiio/music/entity/SimpleSong;->getSongName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
