.class public Lcom/fiio/music/adapter/SongItemAdapter;
.super Landroid/widget/BaseAdapter;
.source "SongItemAdapter.java"


# static fields
.field private static final CANCEL_DELETE:I = 0x1

.field private static final START_DELETE:I = 0x0

.field private static final TAG:Ljava/lang/String;

.field private static final localMusicActivity:Ljava/lang/String; = "class com.fiio.music.activity.LocalMusicActivity"

.field private static final myMusicListActivity:Ljava/lang/String; = "class com.fiio.music.activity.MyMusicListActivity"


# instance fields
.field private SONG_FLAG:I

.field private STYLE_PARAMTER:I

.field private UI_IS_CHANGE:Z

.field private adapterFlag:I

.field private anim:Landroid/graphics/drawable/AnimationDrawable;

.field private bottomSelectorListener:Landroid/view/View$OnClickListener;

.field private clearCache:Z

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

.field private mItemListener:Lcom/fiio/music/adapter/SongItemAdapter$ItemListener;

.field public mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedItem:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
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

.field private mUpdataInfoTitle:Lcom/fiio/music/adapter/SongItemAdapter$UpdataInfoTitle;

.field mediaPlayerManager:Lcom/fiio/music/service/h;

.field private options:Lcom/b/a/b/d;

.field private playListManager:Lcom/fiio/music/util/bw;

.field private playerId:I

.field private playerSongName:Ljava/lang/String;

.field private playerSongPath:Ljava/lang/String;

.field private playerState:I

.field private scrollStauts:I

.field private tempPlayState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fiio/music/adapter/SongItemAdapter;->TAG:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/fiio/music/service/h;ILcom/fiio/music/swipemenulistview/SwipeMenuListView;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;",
            "Lcom/fiio/music/service/h;",
            "I",
            "Lcom/fiio/music/swipemenulistview/SwipeMenuListView;",
            "I)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 105
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 60
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mSelectedItem:Ljava/util/List;

    .line 61
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mSelectedName:Ljava/util/List;

    .line 66
    iput-boolean v2, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mShowCheckBox:Z

    .line 68
    iput v2, p0, Lcom/fiio/music/adapter/SongItemAdapter;->adapterFlag:I

    .line 69
    iput v2, p0, Lcom/fiio/music/adapter/SongItemAdapter;->curSongId:I

    .line 74
    iput-boolean v2, p0, Lcom/fiio/music/adapter/SongItemAdapter;->clearCache:Z

    .line 75
    iput v2, p0, Lcom/fiio/music/adapter/SongItemAdapter;->tempPlayState:I

    .line 91
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/fiio/music/adapter/SongItemAdapter;->displayPosition:Ljava/util/ArrayList;

    .line 100
    const/4 v1, 0x3

    iput v1, p0, Lcom/fiio/music/adapter/SongItemAdapter;->STYLE_PARAMTER:I

    .line 103
    iput-object v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->listView:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    .line 104
    iput v2, p0, Lcom/fiio/music/adapter/SongItemAdapter;->scrollStauts:I

    .line 468
    new-instance v1, Lcom/fiio/music/adapter/ak;

    invoke-direct {v1, p0}, Lcom/fiio/music/adapter/ak;-><init>(Lcom/fiio/music/adapter/SongItemAdapter;)V

    iput-object v1, p0, Lcom/fiio/music/adapter/SongItemAdapter;->bottomSelectorListener:Landroid/view/View$OnClickListener;

    .line 718
    iput-boolean v2, p0, Lcom/fiio/music/adapter/SongItemAdapter;->isPlayingSongInPlayList:Z

    .line 719
    const/4 v1, 0x1

    iput v1, p0, Lcom/fiio/music/adapter/SongItemAdapter;->SONG_FLAG:I

    .line 720
    new-instance v1, Lcom/fiio/music/adapter/an;

    invoke-direct {v1, p0}, Lcom/fiio/music/adapter/an;-><init>(Lcom/fiio/music/adapter/SongItemAdapter;)V

    iput-object v1, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mHandler:Landroid/os/Handler;

    .line 106
    iput-object p1, p0, Lcom/fiio/music/adapter/SongItemAdapter;->context:Landroid/content/Context;

    .line 107
    iput-object p2, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mItems:Ljava/util/List;

    .line 108
    iput-object p3, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    .line 109
    invoke-virtual {p3}, Lcom/fiio/music/service/h;->m()I

    move-result v1

    iput v1, p0, Lcom/fiio/music/adapter/SongItemAdapter;->playerState:I

    .line 110
    invoke-virtual {p3}, Lcom/fiio/music/service/h;->i()I

    move-result v1

    iput v1, p0, Lcom/fiio/music/adapter/SongItemAdapter;->playerId:I

    .line 111
    invoke-virtual {p3}, Lcom/fiio/music/service/h;->k()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fiio/music/adapter/SongItemAdapter;->playerSongPath:Ljava/lang/String;

    .line 112
    invoke-virtual {p3}, Lcom/fiio/music/service/h;->h()Lcom/fiio/music/entity/Song;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p3}, Lcom/fiio/music/service/h;->h()Lcom/fiio/music/entity/Song;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->playerSongName:Ljava/lang/String;

    .line 113
    iput p4, p0, Lcom/fiio/music/adapter/SongItemAdapter;->adapterFlag:I

    .line 114
    iput p6, p0, Lcom/fiio/music/adapter/SongItemAdapter;->STYLE_PARAMTER:I

    .line 115
    invoke-direct {p0}, Lcom/fiio/music/adapter/SongItemAdapter;->initImageLoader()V

    .line 116
    invoke-virtual {p0}, Lcom/fiio/music/adapter/SongItemAdapter;->notifyDataSetChanged()V

    .line 117
    invoke-virtual {p3}, Lcom/fiio/music/service/h;->m()I

    move-result v0

    iput v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->tempPlayState:I

    .line 118
    iput-object p5, p0, Lcom/fiio/music/adapter/SongItemAdapter;->listView:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    .line 119
    iget-object v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->listView:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    new-instance v1, Lcom/fiio/music/adapter/ao;

    invoke-direct {v1, p0}, Lcom/fiio/music/adapter/ao;-><init>(Lcom/fiio/music/adapter/SongItemAdapter;)V

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 147
    return-void
.end method

.method static synthetic access$0(Lcom/fiio/music/adapter/SongItemAdapter;)I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->adapterFlag:I

    return v0
.end method

.method static synthetic access$1(Lcom/fiio/music/adapter/SongItemAdapter;)Ljava/util/List;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mSelectedItem:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$10(Lcom/fiio/music/adapter/SongItemAdapter;)V
    .locals 0

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/fiio/music/adapter/SongItemAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method static synthetic access$2(Lcom/fiio/music/adapter/SongItemAdapter;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3(Lcom/fiio/music/adapter/SongItemAdapter;Lcom/fiio/music/util/bw;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/fiio/music/adapter/SongItemAdapter;->playListManager:Lcom/fiio/music/util/bw;

    return-void
.end method

.method static synthetic access$4(Lcom/fiio/music/adapter/SongItemAdapter;)Lcom/fiio/music/util/bw;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->playListManager:Lcom/fiio/music/util/bw;

    return-object v0
.end method

.method static synthetic access$5(Lcom/fiio/music/adapter/SongItemAdapter;)Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->UI_IS_CHANGE:Z

    return v0
.end method

.method static synthetic access$6(Lcom/fiio/music/adapter/SongItemAdapter;)I
    .locals 1

    .prologue
    .line 719
    iget v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->SONG_FLAG:I

    return v0
.end method

.method static synthetic access$7(Lcom/fiio/music/adapter/SongItemAdapter;Z)V
    .locals 0

    .prologue
    .line 718
    iput-boolean p1, p0, Lcom/fiio/music/adapter/SongItemAdapter;->isPlayingSongInPlayList:Z

    return-void
.end method

.method static synthetic access$8(Lcom/fiio/music/adapter/SongItemAdapter;)Z
    .locals 1

    .prologue
    .line 718
    iget-boolean v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->isPlayingSongInPlayList:Z

    return v0
.end method

.method static synthetic access$9(Lcom/fiio/music/adapter/SongItemAdapter;I)V
    .locals 0

    .prologue
    .line 104
    iput p1, p0, Lcom/fiio/music/adapter/SongItemAdapter;->scrollStauts:I

    return-void
.end method

.method private checkSongIdIsSame(Lcom/fiio/music/entity/Song;)Z
    .locals 4

    .prologue
    .line 892
    const/4 v1, 0x0

    .line 893
    iget-object v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mSelectedItem:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 899
    :goto_0
    return v0

    .line 893
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    .line 894
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getId_()I

    move-result v0

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getId_()I

    move-result v3

    if-ne v0, v3, :cond_0

    .line 895
    const/4 v0, 0x1

    .line 896
    goto :goto_0
.end method

.method private initFootView()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 453
    iget-object v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mFootView:Landroid/view/View;

    const v1, 0x7f0b0062

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mFoot_play:Landroid/widget/ImageView;

    .line 454
    iget-object v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mFootView:Landroid/view/View;

    const v1, 0x7f0b0063

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mAdd_to_mylove:Landroid/widget/ImageView;

    .line 455
    iget-object v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mFootView:Landroid/view/View;

    const v1, 0x7f0b0064

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mAdd_to_playlist:Landroid/widget/ImageView;

    .line 456
    iget-object v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mFootView:Landroid/view/View;

    const v1, 0x7f0b0065

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mFoot_send:Landroid/widget/ImageView;

    .line 457
    iget-object v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mFootView:Landroid/view/View;

    const v1, 0x7f0b0066

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mFoot_delete:Landroid/widget/ImageView;

    .line 458
    iget-object v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mFoot_play:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fiio/music/adapter/SongItemAdapter;->bottomSelectorListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 459
    iget-object v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mAdd_to_mylove:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fiio/music/adapter/SongItemAdapter;->bottomSelectorListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 460
    iget-object v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mAdd_to_playlist:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fiio/music/adapter/SongItemAdapter;->bottomSelectorListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 461
    iget-object v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mFoot_send:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fiio/music/adapter/SongItemAdapter;->bottomSelectorListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 462
    iget-object v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mFoot_delete:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fiio/music/adapter/SongItemAdapter;->bottomSelectorListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 463
    iget v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->adapterFlag:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 464
    iget-object v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mAdd_to_mylove:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 465
    iget-object v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mAdd_to_playlist:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 467
    :cond_0
    return-void
.end method

.method private initImageLoader()V
    .locals 5

    .prologue
    const v4, 0x7f020424

    const v3, 0x7f020423

    const v1, 0x7f0203b0

    const/4 v2, 0x1

    .line 153
    invoke-static {}, Lcom/b/a/b/f;->a()Lcom/b/a/b/f;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->imageLoader:Lcom/b/a/b/f;

    .line 157
    iget v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->STYLE_PARAMTER:I

    if-ne v0, v2, :cond_1

    .line 158
    new-instance v0, Lcom/b/a/b/e;

    invoke-direct {v0}, Lcom/b/a/b/e;-><init>()V

    .line 159
    invoke-virtual {v0, v1}, Lcom/b/a/b/e;->a(I)Lcom/b/a/b/e;

    move-result-object v0

    .line 160
    invoke-virtual {v0, v1}, Lcom/b/a/b/e;->b(I)Lcom/b/a/b/e;

    move-result-object v0

    .line 161
    invoke-virtual {v0, v1}, Lcom/b/a/b/e;->c(I)Lcom/b/a/b/e;

    move-result-object v0

    .line 162
    invoke-virtual {v0, v2}, Lcom/b/a/b/e;->a(Z)Lcom/b/a/b/e;

    move-result-object v0

    .line 163
    invoke-virtual {v0, v2}, Lcom/b/a/b/e;->b(Z)Lcom/b/a/b/e;

    move-result-object v0

    .line 164
    new-instance v1, Lcom/b/a/b/c/c;

    invoke-direct {v1}, Lcom/b/a/b/c/c;-><init>()V

    invoke-virtual {v0, v1}, Lcom/b/a/b/e;->a(Lcom/b/a/b/c/a;)Lcom/b/a/b/e;

    move-result-object v0

    .line 165
    invoke-virtual {v0}, Lcom/b/a/b/e;->d()Lcom/b/a/b/d;

    move-result-object v0

    .line 158
    iput-object v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->options:Lcom/b/a/b/d;

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    iget v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->STYLE_PARAMTER:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 169
    new-instance v0, Lcom/b/a/b/e;

    invoke-direct {v0}, Lcom/b/a/b/e;-><init>()V

    .line 170
    invoke-virtual {v0, v3}, Lcom/b/a/b/e;->a(I)Lcom/b/a/b/e;

    move-result-object v0

    .line 171
    invoke-virtual {v0, v3}, Lcom/b/a/b/e;->b(I)Lcom/b/a/b/e;

    move-result-object v0

    .line 172
    invoke-virtual {v0, v3}, Lcom/b/a/b/e;->c(I)Lcom/b/a/b/e;

    move-result-object v0

    .line 173
    invoke-virtual {v0, v2}, Lcom/b/a/b/e;->a(Z)Lcom/b/a/b/e;

    move-result-object v0

    .line 174
    invoke-virtual {v0, v2}, Lcom/b/a/b/e;->b(Z)Lcom/b/a/b/e;

    move-result-object v0

    .line 175
    new-instance v1, Lcom/b/a/b/c/c;

    invoke-direct {v1}, Lcom/b/a/b/c/c;-><init>()V

    invoke-virtual {v0, v1}, Lcom/b/a/b/e;->a(Lcom/b/a/b/c/a;)Lcom/b/a/b/e;

    move-result-object v0

    .line 176
    invoke-virtual {v0}, Lcom/b/a/b/e;->d()Lcom/b/a/b/d;

    move-result-object v0

    .line 169
    iput-object v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->options:Lcom/b/a/b/d;

    goto :goto_0

    .line 178
    :cond_2
    iget v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->STYLE_PARAMTER:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->STYLE_PARAMTER:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 180
    :cond_3
    new-instance v0, Lcom/b/a/b/e;

    invoke-direct {v0}, Lcom/b/a/b/e;-><init>()V

    .line 181
    invoke-virtual {v0, v4}, Lcom/b/a/b/e;->a(I)Lcom/b/a/b/e;

    move-result-object v0

    .line 182
    invoke-virtual {v0, v4}, Lcom/b/a/b/e;->b(I)Lcom/b/a/b/e;

    move-result-object v0

    .line 183
    invoke-virtual {v0, v4}, Lcom/b/a/b/e;->c(I)Lcom/b/a/b/e;

    move-result-object v0

    .line 184
    invoke-virtual {v0, v2}, Lcom/b/a/b/e;->a(Z)Lcom/b/a/b/e;

    move-result-object v0

    .line 185
    invoke-virtual {v0, v2}, Lcom/b/a/b/e;->b(Z)Lcom/b/a/b/e;

    move-result-object v0

    .line 186
    new-instance v1, Lcom/b/a/b/c/c;

    invoke-direct {v1}, Lcom/b/a/b/c/c;-><init>()V

    invoke-virtual {v0, v1}, Lcom/b/a/b/e;->a(Lcom/b/a/b/c/a;)Lcom/b/a/b/e;

    move-result-object v0

    .line 187
    invoke-virtual {v0}, Lcom/b/a/b/e;->d()Lcom/b/a/b/d;

    move-result-object v0

    .line 180
    iput-object v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->options:Lcom/b/a/b/d;

    goto :goto_0
.end method

.method private isCheckAll()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 408
    iget-object v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mSelectedName:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 409
    iget-object v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 411
    iget-object v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "class com.fiio.music.activity.LocalMusicActivity"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 412
    iget-object v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v0, v5}, Lcom/fiio/music/activity/LocalMusicActivity;->setItemAdapterCheckBoxFlag(Z)V

    .line 413
    if-ne v1, v2, :cond_1

    .line 414
    iget-object v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v0, v5}, Lcom/fiio/music/activity/LocalMusicActivity;->footSelectAllCheckBoxState(Z)V

    .line 418
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v0, v4}, Lcom/fiio/music/activity/LocalMusicActivity;->setItemAdapterCheckBoxFlag(Z)V

    .line 428
    :cond_0
    :goto_1
    return-void

    .line 416
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v0, v4}, Lcom/fiio/music/activity/LocalMusicActivity;->footSelectAllCheckBoxState(Z)V

    goto :goto_0

    .line 419
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "class com.fiio.music.activity.MyMusicListActivity"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-virtual {v0, v5}, Lcom/fiio/music/activity/MyMusicListActivity;->setItemAdapterCheckBoxFlag(Z)V

    .line 421
    if-ne v1, v2, :cond_3

    .line 422
    iget-object v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-virtual {v0, v5}, Lcom/fiio/music/activity/MyMusicListActivity;->footSelectAllCheckBoxState(Z)V

    .line 426
    :goto_2
    iget-object v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-virtual {v0, v4}, Lcom/fiio/music/activity/MyMusicListActivity;->setItemAdapterCheckBoxFlag(Z)V

    goto :goto_1

    .line 424
    :cond_3
    iget-object v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-virtual {v0, v4}, Lcom/fiio/music/activity/MyMusicListActivity;->footSelectAllCheckBoxState(Z)V

    goto :goto_2
.end method

.method private updateUI()V
    .locals 0

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/fiio/music/adapter/SongItemAdapter;->notifyDataSetChanged()V

    .line 150
    return-void
.end method


# virtual methods
.method public cancelSelect()V
    .locals 2

    .prologue
    .line 836
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mShowCheckBox:Z

    .line 837
    iget-object v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mFootView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mFootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 838
    iget-object v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mFootView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 839
    iget-object v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mSelectedItem:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 840
    iget-object v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mSelectedName:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 841
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 842
    iget-object v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->interfaceFootView:Lcom/fiio/music/util/dc;

    if-eqz v0, :cond_0

    .line 843
    iget-object v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->interfaceFootView:Lcom/fiio/music/util/dc;

    invoke-interface {v0}, Lcom/fiio/music/util/dc;->a()V

    .line 845
    :cond_0
    return-void
.end method

.method public deleteForResetPlayerList(IILjava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 794
    iget-object v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->m()I

    move-result v0

    .line 795
    if-eqz v0, :cond_0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 818
    :cond_0
    :goto_0
    return-void

    .line 798
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->l()I

    move-result v0

    if-eqz v0, :cond_0

    .line 801
    iget-object v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->B()Ljava/lang/String;

    move-result-object v0

    .line 802
    if-nez v0, :cond_2

    const-string v0, ""

    .line 803
    :cond_2
    const/4 v1, 0x1

    if-eq p2, v1, :cond_3

    .line 804
    iget-object v1, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->l()I

    move-result v1

    if-ne v1, p2, :cond_0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 806
    :cond_3
    if-ne p1, v2, :cond_4

    .line 807
    iget-object v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0, v2}, Lcom/fiio/music/service/h;->d(I)V

    goto :goto_0

    .line 811
    :cond_4
    iget-object v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->i()I

    move-result v0

    if-ne p1, v0, :cond_5

    .line 812
    iget-object v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0, p1}, Lcom/fiio/music/service/h;->d(I)V

    .line 815
    :cond_5
    iget-object v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    iget-object v1, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->v()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/service/h;->a(Ljava/util/List;)V

    .line 816
    iget-object v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->x()V

    goto :goto_0
.end method

.method public deleteItem(I)V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 220
    invoke-virtual {p0}, Lcom/fiio/music/adapter/SongItemAdapter;->notifyDataSetChanged()V

    .line 221
    return-void
.end method

.method public footViewCanceAll()V
    .locals 2

    .prologue
    .line 851
    iget-object v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mSelectedItem:Ljava/util/List;

    iget-object v1, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mSelectedItem:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 852
    iget-object v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mSelectedName:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 853
    iget-object v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mUpdataInfoTitle:Lcom/fiio/music/adapter/SongItemAdapter$UpdataInfoTitle;

    if-eqz v0, :cond_0

    .line 854
    iget-object v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mUpdataInfoTitle:Lcom/fiio/music/adapter/SongItemAdapter$UpdataInfoTitle;

    iget-object v1, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mSelectedItem:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/fiio/music/adapter/SongItemAdapter$UpdataInfoTitle;->upDataTitle(I)V

    .line 855
    :cond_0
    invoke-virtual {p0}, Lcom/fiio/music/adapter/SongItemAdapter;->notifyDataSetChanged()V

    .line 856
    return-void
.end method

.method public footViewSelectAll()V
    .locals 3

    .prologue
    .line 859
    iget-object v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mItems:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 860
    iget-object v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mSelectedItem:Ljava/util/List;

    iget-object v1, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mSelectedItem:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 861
    iget-object v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mSelectedName:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 862
    iget-object v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mSelectedItem:Ljava/util/List;

    iget-object v1, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 863
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    .line 866
    iget-object v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mUpdataInfoTitle:Lcom/fiio/music/adapter/SongItemAdapter$UpdataInfoTitle;

    if-eqz v0, :cond_0

    .line 867
    iget-object v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mUpdataInfoTitle:Lcom/fiio/music/adapter/SongItemAdapter$UpdataInfoTitle;

    iget-object v1, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mSelectedItem:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/fiio/music/adapter/SongItemAdapter$UpdataInfoTitle;->upDataTitle(I)V

    .line 868
    :cond_0
    invoke-virtual {p0}, Lcom/fiio/music/adapter/SongItemAdapter;->notifyDataSetChanged()V

    .line 870
    :cond_1
    return-void

    .line 864
    :cond_2
    iget-object v2, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mSelectedName:Ljava/util/List;

    iget-object v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 863
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mItems:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 212
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
            "Lcom/fiio/music/entity/Song;",
            ">;"
        }
    .end annotation

    .prologue
    .line 216
    iget-object v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mItems:Ljava/util/List;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 229
    int-to-long v0, p1

    return-wide v0
.end method

.method public getPlayerId()I
    .locals 1

    .prologue
    .line 233
    iget v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->playerId:I

    return v0
.end method

.method public getShowCheckBoxState()Z
    .locals 1

    .prologue
    .line 832
    iget-boolean v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mShowCheckBox:Z

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v7, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v10, 0x0

    .line 237
    if-nez p2, :cond_9

    .line 241
    new-instance v1, Lcom/fiio/music/adapter/SongItemAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/fiio/music/adapter/SongItemAdapter$ViewHolder;-><init>(Lcom/fiio/music/adapter/SongItemAdapter;)V

    .line 243
    iget v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->STYLE_PARAMTER:I

    if-ne v0, v3, :cond_6

    .line 244
    iget-object v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f040128

    invoke-virtual {v0, v2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 252
    :cond_0
    :goto_0
    const v0, 0x7f0b0270

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    iput-object v0, v1, Lcom/fiio/music/adapter/SongItemAdapter$ViewHolder;->tv_song_list_item_top:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    .line 253
    const v0, 0x7f0b0271

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    iput-object v0, v1, Lcom/fiio/music/adapter/SongItemAdapter$ViewHolder;->tv_song_list_item_bottom:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    .line 254
    const v0, 0x7f0b0208

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/fiio/music/adapter/SongItemAdapter$ViewHolder;->current_play_image_view:Landroid/widget/ImageView;

    .line 255
    const v0, 0x7f0b0359

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/fiio/music/adapter/SongItemAdapter$ViewHolder;->listview_item_image:Landroid/widget/ImageView;

    .line 256
    const v0, 0x7f0b026d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lcom/fiio/music/adapter/SongItemAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    .line 257
    iget-object v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    .line 258
    iget-object v2, v1, Lcom/fiio/music/adapter/SongItemAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    .line 259
    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 260
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, v1

    .line 265
    :goto_1
    iget-object v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    .line 266
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getId_()I

    move-result v1

    iput v1, p0, Lcom/fiio/music/adapter/SongItemAdapter;->curSongId:I

    .line 267
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fiio/music/adapter/SongItemAdapter;->curSongName:Ljava/lang/String;

    .line 268
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getArtist()Lcom/fiio/music/entity/Artist;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/entity/Artist;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fiio/music/adapter/SongItemAdapter;->curArtName:Ljava/lang/String;

    .line 269
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fiio/music/adapter/SongItemAdapter;->curFilePath:Ljava/lang/String;

    .line 272
    iget-boolean v1, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mShowCheckBox:Z

    if-eqz v1, :cond_b

    .line 273
    iget-object v1, v2, Lcom/fiio/music/adapter/SongItemAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 274
    iget-object v1, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fiio/music/entity/Song;

    .line 275
    iget-object v5, v2, Lcom/fiio/music/adapter/SongItemAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5, v1}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 279
    iget-object v5, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mSelectedName:Ljava/util/List;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mSelectedName:Ljava/util/List;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-direct {p0, v1}, Lcom/fiio/music/adapter/SongItemAdapter;->checkSongIdIsSame(Lcom/fiio/music/entity/Song;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 280
    iget-object v1, v2, Lcom/fiio/music/adapter/SongItemAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 281
    invoke-direct {p0}, Lcom/fiio/music/adapter/SongItemAdapter;->isCheckAll()V

    .line 293
    :goto_2
    iget-object v1, p0, Lcom/fiio/music/adapter/SongItemAdapter;->curFilePath:Ljava/lang/String;

    iget-object v5, p0, Lcom/fiio/music/adapter/SongItemAdapter;->playerSongPath:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 294
    iget-object v1, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->h()Lcom/fiio/music/entity/Song;

    move-result-object v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/fiio/music/adapter/SongItemAdapter;->curSongName:Ljava/lang/String;

    iget-object v5, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v5}, Lcom/fiio/music/service/h;->h()Lcom/fiio/music/entity/Song;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->G()Z

    move-result v1

    if-nez v1, :cond_c

    move v1, v3

    .line 297
    :goto_3
    iget-object v5, p0, Lcom/fiio/music/adapter/SongItemAdapter;->curFilePath:Ljava/lang/String;

    iget-object v6, p0, Lcom/fiio/music/adapter/SongItemAdapter;->playerSongPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 298
    iget-object v5, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v5}, Lcom/fiio/music/service/h;->h()Lcom/fiio/music/entity/Song;

    move-result-object v5

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/fiio/music/adapter/SongItemAdapter;->curSongName:Ljava/lang/String;

    iget-object v6, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v6}, Lcom/fiio/music/service/h;->h()Lcom/fiio/music/entity/Song;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v5}, Lcom/fiio/music/service/h;->G()Z

    move-result v5

    if-nez v5, :cond_d

    move v5, v3

    .line 299
    :goto_4
    const/4 v6, -0x1

    .line 300
    iget-object v8, p0, Lcom/fiio/music/adapter/SongItemAdapter;->context:Landroid/content/Context;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "LocalMusicActivity"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_e

    move v6, v3

    .line 309
    :cond_1
    :goto_5
    packed-switch v6, :pswitch_data_0

    move v6, v4

    .line 315
    :goto_6
    if-eqz v6, :cond_f

    if-eqz v5, :cond_10

    .line 321
    :cond_2
    iget v1, p0, Lcom/fiio/music/adapter/SongItemAdapter;->playerState:I

    if-ne v1, v7, :cond_14

    .line 322
    iget v1, p0, Lcom/fiio/music/adapter/SongItemAdapter;->STYLE_PARAMTER:I

    if-ne v1, v3, :cond_11

    .line 323
    iget-object v1, v2, Lcom/fiio/music/adapter/SongItemAdapter$ViewHolder;->current_play_image_view:Landroid/widget/ImageView;

    const v4, 0x7f050002

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 331
    :cond_3
    :goto_7
    iget-object v1, v2, Lcom/fiio/music/adapter/SongItemAdapter$ViewHolder;->tv_song_list_item_top:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    invoke-virtual {v1, v10}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 332
    iget-object v1, v2, Lcom/fiio/music/adapter/SongItemAdapter$ViewHolder;->tv_song_list_item_bottom:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    invoke-virtual {v1, v10}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 333
    iget-object v1, v2, Lcom/fiio/music/adapter/SongItemAdapter$ViewHolder;->current_play_image_view:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v1, p0, Lcom/fiio/music/adapter/SongItemAdapter;->anim:Landroid/graphics/drawable/AnimationDrawable;

    .line 334
    iget-object v1, p0, Lcom/fiio/music/adapter/SongItemAdapter;->anim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 375
    :cond_4
    :goto_8
    iget v1, p0, Lcom/fiio/music/adapter/SongItemAdapter;->scrollStauts:I

    if-nez v1, :cond_1b

    .line 376
    iget v1, p0, Lcom/fiio/music/adapter/SongItemAdapter;->STYLE_PARAMTER:I

    iget-object v3, p0, Lcom/fiio/music/adapter/SongItemAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/fiio/music/adapter/SongItemAdapter;->imageLoader:Lcom/b/a/b/f;

    invoke-static {v0, v1, v3, v4}, Lcom/fiio/music/util/h;->a(Lcom/fiio/music/entity/Song;ILandroid/content/Context;Lcom/b/a/b/f;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->curAlbumPath:Ljava/lang/String;

    .line 384
    iget-object v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->imageLoader:Lcom/b/a/b/f;

    iget-object v1, p0, Lcom/fiio/music/adapter/SongItemAdapter;->curAlbumPath:Ljava/lang/String;

    .line 385
    iget-object v3, v2, Lcom/fiio/music/adapter/SongItemAdapter$ViewHolder;->listview_item_image:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/fiio/music/adapter/SongItemAdapter;->options:Lcom/b/a/b/d;

    .line 384
    invoke-virtual {v0, v1, v3, v4}, Lcom/b/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/b/a/b/d;)V

    .line 398
    :cond_5
    :goto_9
    iget-object v0, v2, Lcom/fiio/music/adapter/SongItemAdapter$ViewHolder;->tv_song_list_item_top:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    iget-object v1, p0, Lcom/fiio/music/adapter/SongItemAdapter;->curSongName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 399
    iget-object v0, v2, Lcom/fiio/music/adapter/SongItemAdapter$ViewHolder;->tv_song_list_item_top:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    iget-object v1, p0, Lcom/fiio/music/adapter/SongItemAdapter;->curFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setTag(Ljava/lang/Object;)V

    .line 400
    iget-object v0, v2, Lcom/fiio/music/adapter/SongItemAdapter$ViewHolder;->tv_song_list_item_bottom:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    iget-object v1, p0, Lcom/fiio/music/adapter/SongItemAdapter;->curArtName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    iget-object v0, v2, Lcom/fiio/music/adapter/SongItemAdapter$ViewHolder;->tv_song_list_item_bottom:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    iget v1, p0, Lcom/fiio/music/adapter/SongItemAdapter;->curSongId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setTag(Ljava/lang/Object;)V

    .line 404
    return-object p2

    .line 245
    :cond_6
    iget v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->STYLE_PARAMTER:I

    if-ne v0, v7, :cond_7

    .line 246
    iget-object v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f040129

    invoke-virtual {v0, v2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 247
    :cond_7
    iget v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->STYLE_PARAMTER:I

    if-ne v0, v11, :cond_8

    .line 248
    iget-object v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f04012a

    invoke-virtual {v0, v2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 249
    :cond_8
    iget v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->STYLE_PARAMTER:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 250
    iget-object v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f04012b

    invoke-virtual {v0, v2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 262
    :cond_9
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/adapter/SongItemAdapter$ViewHolder;

    move-object v2, v0

    goto/16 :goto_1

    .line 283
    :cond_a
    iget-object v1, v2, Lcom/fiio/music/adapter/SongItemAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 284
    invoke-direct {p0}, Lcom/fiio/music/adapter/SongItemAdapter;->isCheckAll()V

    goto/16 :goto_2

    .line 288
    :cond_b
    iget-object v1, v2, Lcom/fiio/music/adapter/SongItemAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_2

    :cond_c
    move v1, v4

    .line 293
    goto/16 :goto_3

    :cond_d
    move v5, v4

    .line 297
    goto/16 :goto_4

    .line 302
    :cond_e
    iget-object v8, p0, Lcom/fiio/music/adapter/SongItemAdapter;->context:Landroid/content/Context;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "MyMusicListActivity"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v6, v7

    .line 303
    goto/16 :goto_5

    :pswitch_0
    move v6, v3

    .line 312
    goto/16 :goto_6

    :pswitch_1
    move v6, v4

    .line 314
    goto/16 :goto_6

    .line 315
    :cond_f
    if-nez v1, :cond_2

    .line 357
    :cond_10
    iget-object v1, v2, Lcom/fiio/music/adapter/SongItemAdapter$ViewHolder;->tv_song_list_item_top:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v5}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 358
    iget-object v1, v2, Lcom/fiio/music/adapter/SongItemAdapter$ViewHolder;->tv_song_list_item_bottom:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    invoke-virtual {v1, v10}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 359
    iget-object v1, v2, Lcom/fiio/music/adapter/SongItemAdapter$ViewHolder;->current_play_image_view:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 360
    iget-object v1, p0, Lcom/fiio/music/adapter/SongItemAdapter;->anim:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_4

    iput-object v10, p0, Lcom/fiio/music/adapter/SongItemAdapter;->anim:Landroid/graphics/drawable/AnimationDrawable;

    goto/16 :goto_8

    .line 324
    :cond_11
    iget v1, p0, Lcom/fiio/music/adapter/SongItemAdapter;->STYLE_PARAMTER:I

    if-ne v1, v7, :cond_12

    .line 325
    iget-object v1, v2, Lcom/fiio/music/adapter/SongItemAdapter$ViewHolder;->current_play_image_view:Landroid/widget/ImageView;

    const v4, 0x7f050003

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_7

    .line 326
    :cond_12
    iget v1, p0, Lcom/fiio/music/adapter/SongItemAdapter;->STYLE_PARAMTER:I

    if-ne v1, v11, :cond_13

    .line 327
    iget-object v1, v2, Lcom/fiio/music/adapter/SongItemAdapter$ViewHolder;->current_play_image_view:Landroid/widget/ImageView;

    const v4, 0x7f050004

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_7

    .line 328
    :cond_13
    iget v1, p0, Lcom/fiio/music/adapter/SongItemAdapter;->STYLE_PARAMTER:I

    const/4 v4, 0x4

    if-ne v1, v4, :cond_3

    .line 329
    iget-object v1, v2, Lcom/fiio/music/adapter/SongItemAdapter$ViewHolder;->current_play_image_view:Landroid/widget/ImageView;

    const v4, 0x7f050004

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_7

    .line 335
    :cond_14
    iget v1, p0, Lcom/fiio/music/adapter/SongItemAdapter;->playerState:I

    if-eq v1, v11, :cond_15

    .line 336
    iget v1, p0, Lcom/fiio/music/adapter/SongItemAdapter;->playerState:I

    const/4 v5, 0x4

    if-ne v1, v5, :cond_1a

    .line 337
    :cond_15
    iget v1, p0, Lcom/fiio/music/adapter/SongItemAdapter;->STYLE_PARAMTER:I

    if-ne v1, v3, :cond_17

    .line 338
    iget-object v1, v2, Lcom/fiio/music/adapter/SongItemAdapter$ViewHolder;->current_play_image_view:Landroid/widget/ImageView;

    const v4, 0x7f050002

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 346
    :cond_16
    :goto_a
    iget-object v1, v2, Lcom/fiio/music/adapter/SongItemAdapter$ViewHolder;->tv_song_list_item_top:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v4}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 347
    iget-object v1, v2, Lcom/fiio/music/adapter/SongItemAdapter$ViewHolder;->tv_song_list_item_bottom:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v4}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 348
    iget-object v1, v2, Lcom/fiio/music/adapter/SongItemAdapter$ViewHolder;->current_play_image_view:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v1, p0, Lcom/fiio/music/adapter/SongItemAdapter;->anim:Landroid/graphics/drawable/AnimationDrawable;

    .line 349
    iget-object v1, p0, Lcom/fiio/music/adapter/SongItemAdapter;->anim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto/16 :goto_8

    .line 339
    :cond_17
    iget v1, p0, Lcom/fiio/music/adapter/SongItemAdapter;->STYLE_PARAMTER:I

    if-ne v1, v7, :cond_18

    .line 340
    iget-object v1, v2, Lcom/fiio/music/adapter/SongItemAdapter$ViewHolder;->current_play_image_view:Landroid/widget/ImageView;

    const v4, 0x7f050003

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_a

    .line 341
    :cond_18
    iget v1, p0, Lcom/fiio/music/adapter/SongItemAdapter;->STYLE_PARAMTER:I

    if-ne v1, v11, :cond_19

    .line 342
    iget-object v1, v2, Lcom/fiio/music/adapter/SongItemAdapter$ViewHolder;->current_play_image_view:Landroid/widget/ImageView;

    const v4, 0x7f050004

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_a

    .line 343
    :cond_19
    iget v1, p0, Lcom/fiio/music/adapter/SongItemAdapter;->STYLE_PARAMTER:I

    const/4 v4, 0x4

    if-ne v1, v4, :cond_16

    .line 344
    iget-object v1, v2, Lcom/fiio/music/adapter/SongItemAdapter$ViewHolder;->current_play_image_view:Landroid/widget/ImageView;

    const v4, 0x7f050004

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_a

    .line 350
    :cond_1a
    iget v1, p0, Lcom/fiio/music/adapter/SongItemAdapter;->playerState:I

    const/4 v5, 0x5

    if-ne v1, v5, :cond_4

    .line 351
    iget-object v1, v2, Lcom/fiio/music/adapter/SongItemAdapter$ViewHolder;->tv_song_list_item_top:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    invoke-virtual {v1, v10}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 352
    iget-object v1, v2, Lcom/fiio/music/adapter/SongItemAdapter$ViewHolder;->tv_song_list_item_bottom:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    invoke-virtual {v1, v10}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 353
    iget-object v1, v2, Lcom/fiio/music/adapter/SongItemAdapter$ViewHolder;->current_play_image_view:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 354
    iget-object v1, p0, Lcom/fiio/music/adapter/SongItemAdapter;->anim:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_4

    iput-object v10, p0, Lcom/fiio/music/adapter/SongItemAdapter;->anim:Landroid/graphics/drawable/AnimationDrawable;

    goto/16 :goto_8

    .line 388
    :cond_1b
    iget v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->STYLE_PARAMTER:I

    if-ne v0, v3, :cond_1c

    .line 389
    iget-object v0, v2, Lcom/fiio/music/adapter/SongItemAdapter$ViewHolder;->listview_item_image:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fiio/music/adapter/SongItemAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0203b0

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_9

    .line 390
    :cond_1c
    iget v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->STYLE_PARAMTER:I

    if-ne v0, v7, :cond_1d

    .line 391
    iget-object v0, v2, Lcom/fiio/music/adapter/SongItemAdapter$ViewHolder;->listview_item_image:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fiio/music/adapter/SongItemAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f020423

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_9

    .line 392
    :cond_1d
    iget v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->STYLE_PARAMTER:I

    if-ne v0, v11, :cond_1e

    .line 393
    iget-object v0, v2, Lcom/fiio/music/adapter/SongItemAdapter$ViewHolder;->listview_item_image:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fiio/music/adapter/SongItemAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f020424

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_9

    .line 394
    :cond_1e
    iget v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->STYLE_PARAMTER:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    .line 395
    iget-object v0, v2, Lcom/fiio/music/adapter/SongItemAdapter$ViewHolder;->listview_item_image:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fiio/music/adapter/SongItemAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f020424

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_9

    .line 309
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
            "Lcom/fiio/music/entity/Song;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 903
    iget-object v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mItems:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 904
    iget-object v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 905
    iget-object v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 912
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/fiio/music/adapter/SongItemAdapter;->notifyDataSetChanged()V

    .line 913
    return-void

    .line 907
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mItems:Ljava/util/List;

    .line 908
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 909
    iget-object v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public setFootView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 449
    iput-object p1, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mFootView:Landroid/view/View;

    .line 450
    invoke-direct {p0}, Lcom/fiio/music/adapter/SongItemAdapter;->initFootView()V

    .line 451
    return-void
.end method

.method public setFootViewItf(Lcom/fiio/music/util/dc;)V
    .locals 0

    .prologue
    .line 446
    iput-object p1, p0, Lcom/fiio/music/adapter/SongItemAdapter;->interfaceFootView:Lcom/fiio/music/util/dc;

    .line 447
    return-void
.end method

.method public setItemListener(Lcom/fiio/music/adapter/SongItemAdapter$ItemListener;)Lcom/fiio/music/adapter/SongItemAdapter;
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mItemListener:Lcom/fiio/music/adapter/SongItemAdapter$ItemListener;

    .line 195
    return-object p0
.end method

.method public setPlayerId(I)V
    .locals 0

    .prologue
    .line 199
    iput p1, p0, Lcom/fiio/music/adapter/SongItemAdapter;->playerId:I

    .line 200
    invoke-virtual {p0}, Lcom/fiio/music/adapter/SongItemAdapter;->notifyDataSetChanged()V

    .line 201
    return-void
.end method

.method public setPlayerManager(Lcom/fiio/music/service/h;)V
    .locals 1

    .prologue
    .line 916
    iput-object p1, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    .line 917
    invoke-virtual {p1}, Lcom/fiio/music/service/h;->m()I

    move-result v0

    iput v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->playerState:I

    .line 918
    invoke-virtual {p1}, Lcom/fiio/music/service/h;->i()I

    move-result v0

    iput v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->playerId:I

    .line 919
    invoke-virtual {p1}, Lcom/fiio/music/service/h;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->playerSongPath:Ljava/lang/String;

    .line 920
    invoke-virtual {p0}, Lcom/fiio/music/adapter/SongItemAdapter;->notifyDataSetChanged()V

    .line 921
    return-void
.end method

.method public setPlayerState(I)V
    .locals 0

    .prologue
    .line 204
    iput p1, p0, Lcom/fiio/music/adapter/SongItemAdapter;->playerState:I

    .line 205
    invoke-virtual {p0}, Lcom/fiio/music/adapter/SongItemAdapter;->notifyDataSetChanged()V

    .line 206
    return-void
.end method

.method public setUpdataInfoTitle(Lcom/fiio/music/adapter/SongItemAdapter$UpdataInfoTitle;)V
    .locals 0

    .prologue
    .line 847
    iput-object p1, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mUpdataInfoTitle:Lcom/fiio/music/adapter/SongItemAdapter$UpdataInfoTitle;

    .line 848
    return-void
.end method

.method public showCheckBox(Z)V
    .locals 0

    .prologue
    .line 829
    iput-boolean p1, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mShowCheckBox:Z

    .line 830
    return-void
.end method

.method public showFootView()V
    .locals 2

    .prologue
    .line 820
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/fiio/music/adapter/SongItemAdapter;->showCheckBox(Z)V

    .line 821
    invoke-virtual {p0}, Lcom/fiio/music/adapter/SongItemAdapter;->notifyDataSetChanged()V

    .line 823
    iget-object v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mFootView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 824
    iget-object v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mFootView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 825
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->interfaceFootView:Lcom/fiio/music/util/dc;

    if-eqz v0, :cond_1

    .line 826
    iget-object v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->interfaceFootView:Lcom/fiio/music/util/dc;

    invoke-interface {v0}, Lcom/fiio/music/util/dc;->b()V

    .line 827
    :cond_1
    return-void
.end method

.method public toggleCheckBox(I)V
    .locals 3

    .prologue
    .line 878
    iget-object v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    .line 879
    iget-object v1, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mSelectedName:Ljava/util/List;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/fiio/music/adapter/SongItemAdapter;->checkSongIdIsSame(Lcom/fiio/music/entity/Song;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 880
    iget-object v1, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mSelectedItem:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 881
    iget-object v1, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mSelectedName:Ljava/util/List;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 886
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mUpdataInfoTitle:Lcom/fiio/music/adapter/SongItemAdapter$UpdataInfoTitle;

    if-eqz v0, :cond_0

    .line 887
    iget-object v0, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mUpdataInfoTitle:Lcom/fiio/music/adapter/SongItemAdapter$UpdataInfoTitle;

    iget-object v1, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mSelectedName:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/fiio/music/adapter/SongItemAdapter$UpdataInfoTitle;->upDataTitle(I)V

    .line 888
    :cond_0
    invoke-virtual {p0}, Lcom/fiio/music/adapter/SongItemAdapter;->notifyDataSetChanged()V

    .line 889
    return-void

    .line 883
    :cond_1
    iget-object v1, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mSelectedItem:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 884
    iget-object v1, p0, Lcom/fiio/music/adapter/SongItemAdapter;->mSelectedName:Ljava/util/List;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
