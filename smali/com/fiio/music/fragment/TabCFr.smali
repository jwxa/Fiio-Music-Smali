.class public Lcom/fiio/music/fragment/TabCFr;
.super Landroid/support/v4/app/Fragment;
.source "TabCFr.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final HANDLER_MULTIADDTOLIST:I = 0x5

.field private static final HANDLER_MULTIADDTOLIST_FAILURE:I = 0x6

.field private static final HANDLER_MUTLIADDTOMYLOVE:I = 0x3

.field private static final HANDLER_ONE_KEY_PLAY:I = 0x10

.field private static final LOG:Z = false

.field private static final PAGE_ONE:I = 0x0

.field private static final PAGE_TWO:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private JumpPreferences:Landroid/content/SharedPreferences;

.field private PAGE_NUMBER:I

.field private UI_IS_CHANGE:Z

.field albumDao:Lcom/fiio/music/b/b;

.field changestylesp:Landroid/content/SharedPreferences;

.field private checkBoxCollection:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private gridShow:Z

.field private headerTitle:Ljava/lang/String;

.field private initSuccessCallBack:Lcom/fiio/music/adapter/QueryAdapter$InitSuccessCallBack;

.field private jump:Z

.field leftcCreator_pageOne:Lcom/fiio/music/swipemenulistview/c;

.field leftcCreator_pageTwo:Lcom/fiio/music/swipemenulistview/c;

.field private mAdapter:Lcom/fiio/music/adapter/QueryAdapter;

.field private mContext:Landroid/content/Context;

.field private mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mHandler:Landroid/os/Handler;

.field private mMediaPlayerBinder:Lcom/fiio/music/service/z;

.field private mediaPlayerManager:Lcom/fiio/music/service/h;

.field private my_list_grid_content:Landroid/widget/GridView;

.field private options:Lcom/b/a/b/d;

.field private parameter:Ljava/lang/String;

.field playHandler:Landroid/os/Handler;

.field private searchSong_albumId:I

.field private searchSong_flag:Z

.field private smlv_list_change_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

.field private smlv_song_list_content_listener:Landroid/widget/AdapterView$OnItemClickListener;

.field songDao:Lcom/fiio/music/b/k;

.field private song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

.field private sortDataList:Lcom/fiio/music/util/cm;

.field private sortType:I

.field style_parameter:I

.field private tabSortType:Lcom/fiio/music/util/cr;

.field private toast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const-class v0, Lcom/fiio/music/fragment/TabCFr;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fiio/music/fragment/TabCFr;->TAG:Ljava/lang/String;

    .line 851
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 80
    iput v2, p0, Lcom/fiio/music/fragment/TabCFr;->PAGE_NUMBER:I

    .line 83
    iput-object v1, p0, Lcom/fiio/music/fragment/TabCFr;->parameter:Ljava/lang/String;

    .line 94
    iput-object v1, p0, Lcom/fiio/music/fragment/TabCFr;->mContext:Landroid/content/Context;

    .line 98
    iput-object v1, p0, Lcom/fiio/music/fragment/TabCFr;->mAdapter:Lcom/fiio/music/adapter/QueryAdapter;

    .line 110
    iput-object v1, p0, Lcom/fiio/music/fragment/TabCFr;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 119
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->checkBoxCollection:Ljava/util/Set;

    .line 124
    iput-object v1, p0, Lcom/fiio/music/fragment/TabCFr;->albumDao:Lcom/fiio/music/b/b;

    .line 125
    iput-object v1, p0, Lcom/fiio/music/fragment/TabCFr;->songDao:Lcom/fiio/music/b/k;

    .line 131
    const/4 v0, 0x3

    iput v0, p0, Lcom/fiio/music/fragment/TabCFr;->style_parameter:I

    .line 136
    iput-object v1, p0, Lcom/fiio/music/fragment/TabCFr;->headerTitle:Ljava/lang/String;

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fiio/music/fragment/TabCFr;->gridShow:Z

    .line 289
    new-instance v0, Lcom/fiio/music/fragment/bn;

    invoke-direct {v0, p0}, Lcom/fiio/music/fragment/bn;-><init>(Lcom/fiio/music/fragment/TabCFr;)V

    iput-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->initSuccessCallBack:Lcom/fiio/music/adapter/QueryAdapter$InitSuccessCallBack;

    .line 345
    new-instance v0, Lcom/fiio/music/fragment/bv;

    invoke-direct {v0, p0}, Lcom/fiio/music/fragment/bv;-><init>(Lcom/fiio/music/fragment/TabCFr;)V

    iput-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->smlv_song_list_content_listener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 453
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/fiio/music/fragment/bw;

    invoke-direct {v1, p0}, Lcom/fiio/music/fragment/bw;-><init>(Lcom/fiio/music/fragment/TabCFr;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->playHandler:Landroid/os/Handler;

    .line 531
    new-instance v0, Lcom/fiio/music/fragment/bx;

    invoke-direct {v0, p0}, Lcom/fiio/music/fragment/bx;-><init>(Lcom/fiio/music/fragment/TabCFr;)V

    iput-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->leftcCreator_pageOne:Lcom/fiio/music/swipemenulistview/c;

    .line 552
    new-instance v0, Lcom/fiio/music/fragment/by;

    invoke-direct {v0, p0}, Lcom/fiio/music/fragment/by;-><init>(Lcom/fiio/music/fragment/TabCFr;)V

    iput-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->leftcCreator_pageTwo:Lcom/fiio/music/swipemenulistview/c;

    .line 852
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/fiio/music/fragment/bz;

    invoke-direct {v1, p0}, Lcom/fiio/music/fragment/bz;-><init>(Lcom/fiio/music/fragment/TabCFr;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->mHandler:Landroid/os/Handler;

    .line 969
    iput-boolean v2, p0, Lcom/fiio/music/fragment/TabCFr;->searchSong_flag:Z

    .line 970
    const/4 v0, -0x1

    iput v0, p0, Lcom/fiio/music/fragment/TabCFr;->searchSong_albumId:I

    .line 72
    return-void
.end method

.method static synthetic access$0(Lcom/fiio/music/fragment/TabCFr;)I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/fiio/music/fragment/TabCFr;->PAGE_NUMBER:I

    return v0
.end method

.method static synthetic access$1(Lcom/fiio/music/fragment/TabCFr;)Z
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/fiio/music/fragment/TabCFr;->gridShow:Z

    return v0
.end method

.method static synthetic access$10(Lcom/fiio/music/fragment/TabCFr;)I
    .locals 1

    .prologue
    .line 970
    iget v0, p0, Lcom/fiio/music/fragment/TabCFr;->searchSong_albumId:I

    return v0
.end method

.method static synthetic access$11(Lcom/fiio/music/fragment/TabCFr;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$12(Lcom/fiio/music/fragment/TabCFr;)Z
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/fiio/music/fragment/TabCFr;->jump:Z

    return v0
.end method

.method static synthetic access$13(Lcom/fiio/music/fragment/TabCFr;I)V
    .locals 0

    .prologue
    .line 80
    iput p1, p0, Lcom/fiio/music/fragment/TabCFr;->PAGE_NUMBER:I

    return-void
.end method

.method static synthetic access$14(Lcom/fiio/music/fragment/TabCFr;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/fiio/music/fragment/TabCFr;->parameter:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$15(Lcom/fiio/music/fragment/TabCFr;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/fiio/music/fragment/TabCFr;->headerTitle:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$16(Lcom/fiio/music/fragment/TabCFr;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->parameter:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$17(Lcom/fiio/music/fragment/TabCFr;Landroid/os/AsyncTask;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 271
    invoke-direct {p0, p1, p2}, Lcom/fiio/music/fragment/TabCFr;->getQueryCursor(Landroid/os/AsyncTask;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$18(Lcom/fiio/music/fragment/TabCFr;I)V
    .locals 0

    .prologue
    .line 419
    invoke-direct {p0, p1}, Lcom/fiio/music/fragment/TabCFr;->startPlay(I)V

    return-void
.end method

.method static synthetic access$19(Lcom/fiio/music/fragment/TabCFr;)Lcom/fiio/music/service/h;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->mediaPlayerManager:Lcom/fiio/music/service/h;

    return-object v0
.end method

.method static synthetic access$2(Lcom/fiio/music/fragment/TabCFr;)Landroid/widget/GridView;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->my_list_grid_content:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$20(Lcom/fiio/music/fragment/TabCFr;)Landroid/widget/Toast;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->toast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$21(Lcom/fiio/music/fragment/TabCFr;Landroid/widget/Toast;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/fiio/music/fragment/TabCFr;->toast:Landroid/widget/Toast;

    return-void
.end method

.method static synthetic access$22(Lcom/fiio/music/fragment/TabCFr;)Z
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/fiio/music/fragment/TabCFr;->UI_IS_CHANGE:Z

    return v0
.end method

.method static synthetic access$23(Lcom/fiio/music/fragment/TabCFr;I)I
    .locals 1

    .prologue
    .line 527
    invoke-direct {p0, p1}, Lcom/fiio/music/fragment/TabCFr;->dp2px(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$24(Lcom/fiio/music/fragment/TabCFr;I)V
    .locals 0

    .prologue
    .line 679
    invoke-direct {p0, p1}, Lcom/fiio/music/fragment/TabCFr;->swipListDelete(I)V

    return-void
.end method

.method static synthetic access$25(Lcom/fiio/music/fragment/TabCFr;I)V
    .locals 0

    .prologue
    .line 744
    invoke-direct {p0, p1}, Lcom/fiio/music/fragment/TabCFr;->swipListAddToMyLove(I)V

    return-void
.end method

.method static synthetic access$26(Lcom/fiio/music/fragment/TabCFr;I)V
    .locals 0

    .prologue
    .line 793
    invoke-direct {p0, p1}, Lcom/fiio/music/fragment/TabCFr;->swipListAddToList(I)V

    return-void
.end method

.method static synthetic access$27(Lcom/fiio/music/fragment/TabCFr;I)V
    .locals 0

    .prologue
    .line 727
    invoke-direct {p0, p1}, Lcom/fiio/music/fragment/TabCFr;->swipDeleteSong(I)V

    return-void
.end method

.method static synthetic access$28(Lcom/fiio/music/fragment/TabCFr;I)V
    .locals 0

    .prologue
    .line 839
    invoke-direct {p0, p1}, Lcom/fiio/music/fragment/TabCFr;->showSongInfo(I)V

    return-void
.end method

.method static synthetic access$29(Lcom/fiio/music/fragment/TabCFr;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 852
    iget-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3(Lcom/fiio/music/fragment/TabCFr;)Lcom/fiio/music/swipemenulistview/SwipeMenuListView;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->smlv_list_change_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/fiio/music/fragment/TabCFr;)Lcom/fiio/music/adapter/QueryAdapter;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->mAdapter:Lcom/fiio/music/adapter/QueryAdapter;

    return-object v0
.end method

.method static synthetic access$5(Lcom/fiio/music/fragment/TabCFr;)Lcom/fiio/music/util/cr;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->tabSortType:Lcom/fiio/music/util/cr;

    return-object v0
.end method

.method static synthetic access$6(Lcom/fiio/music/fragment/TabCFr;I)V
    .locals 0

    .prologue
    .line 144
    iput p1, p0, Lcom/fiio/music/fragment/TabCFr;->sortType:I

    return-void
.end method

.method static synthetic access$7(Lcom/fiio/music/fragment/TabCFr;)Lcom/fiio/music/util/cm;
    .locals 1

    .prologue
    .line 930
    iget-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->sortDataList:Lcom/fiio/music/util/cm;

    return-object v0
.end method

.method static synthetic access$8(Lcom/fiio/music/fragment/TabCFr;)I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/fiio/music/fragment/TabCFr;->sortType:I

    return v0
.end method

.method static synthetic access$9(Lcom/fiio/music/fragment/TabCFr;)Z
    .locals 1

    .prologue
    .line 969
    iget-boolean v0, p0, Lcom/fiio/music/fragment/TabCFr;->searchSong_flag:Z

    return v0
.end method

.method private dp2px(I)I
    .locals 3

    .prologue
    .line 528
    const/4 v0, 0x1

    int-to-float v1, p1

    .line 529
    invoke-virtual {p0}, Lcom/fiio/music/fragment/TabCFr;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 528
    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private getQueryCursor(Landroid/os/AsyncTask;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 272
    if-eqz p1, :cond_0

    .line 273
    iget-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->mAdapter:Lcom/fiio/music/adapter/QueryAdapter;

    invoke-virtual {v0, p2}, Lcom/fiio/music/adapter/QueryAdapter;->setParameter(Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 276
    :cond_0
    return-void
.end method

.method private initSongSwipeListView(Lcom/fiio/music/swipemenulistview/SwipeMenuListView;)V
    .locals 3

    .prologue
    .line 580
    new-instance v0, Lcom/fiio/music/fragment/cb;

    invoke-direct {v0, p0}, Lcom/fiio/music/fragment/cb;-><init>(Lcom/fiio/music/fragment/TabCFr;)V

    .line 596
    invoke-virtual {p1, v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setMenuCreator(Lcom/fiio/music/swipemenulistview/c;)V

    .line 598
    sget-object v0, Lcom/fiio/music/fragment/TabCFr;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "page number -- "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/fiio/music/fragment/TabCFr;->PAGE_NUMBER:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/fiio/music/e/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 600
    iget v0, p0, Lcom/fiio/music/fragment/TabCFr;->PAGE_NUMBER:I

    if-nez v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->leftcCreator_pageOne:Lcom/fiio/music/swipemenulistview/c;

    invoke-virtual {p1, v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setMenuLeftCreator(Lcom/fiio/music/swipemenulistview/c;)V

    .line 606
    :goto_0
    new-instance v0, Lcom/fiio/music/fragment/cc;

    invoke-direct {v0, p0}, Lcom/fiio/music/fragment/cc;-><init>(Lcom/fiio/music/fragment/TabCFr;)V

    invoke-virtual {p1, v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setOnMenuItemClickListener(Lcom/fiio/music/swipemenulistview/g;)V

    .line 653
    new-instance v0, Lcom/fiio/music/fragment/bo;

    invoke-direct {v0, p0}, Lcom/fiio/music/fragment/bo;-><init>(Lcom/fiio/music/fragment/TabCFr;)V

    invoke-virtual {p1, v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setOnSwipeListener(Lcom/fiio/music/swipemenulistview/i;)V

    .line 665
    new-instance v0, Lcom/fiio/music/fragment/bp;

    invoke-direct {v0, p0}, Lcom/fiio/music/fragment/bp;-><init>(Lcom/fiio/music/fragment/TabCFr;)V

    invoke-virtual {p1, v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setOnMenuStateChangeListener(Lcom/fiio/music/swipemenulistview/h;)V

    .line 673
    return-void

    .line 603
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->leftcCreator_pageTwo:Lcom/fiio/music/swipemenulistview/c;

    invoke-virtual {p1, v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setMenuLeftCreator(Lcom/fiio/music/swipemenulistview/c;)V

    goto :goto_0
.end method

.method private showSongInfo(I)V
    .locals 2

    .prologue
    .line 840
    iget-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->mAdapter:Lcom/fiio/music/adapter/QueryAdapter;

    iget-object v0, v0, Lcom/fiio/music/adapter/QueryAdapter;->songList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->mAdapter:Lcom/fiio/music/adapter/QueryAdapter;

    iget-object v0, v0, Lcom/fiio/music/adapter/QueryAdapter;->songList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 841
    iget-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->mAdapter:Lcom/fiio/music/adapter/QueryAdapter;

    iget-object v0, v0, Lcom/fiio/music/adapter/QueryAdapter;->songList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    .line 842
    if-eqz v0, :cond_0

    .line 843
    iget-object v1, p0, Lcom/fiio/music/fragment/TabCFr;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v1, v0}, Lcom/fiio/music/activity/LocalMusicActivity;->createSongDetailDialog(Lcom/fiio/music/entity/Song;)V

    .line 846
    :cond_0
    return-void
.end method

.method private startPlay(I)V
    .locals 2

    .prologue
    .line 420
    new-instance v0, Ljava/lang/Thread;

    .line 421
    new-instance v1, Lcom/fiio/music/fragment/ca;

    invoke-direct {v1, p0, p1}, Lcom/fiio/music/fragment/ca;-><init>(Lcom/fiio/music/fragment/TabCFr;I)V

    .line 420
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 450
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 451
    return-void
.end method

.method private swipDeleteSong(I)V
    .locals 3

    .prologue
    .line 728
    iget v0, p0, Lcom/fiio/music/fragment/TabCFr;->PAGE_NUMBER:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 729
    iget-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->mAdapter:Lcom/fiio/music/adapter/QueryAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->mAdapter:Lcom/fiio/music/adapter/QueryAdapter;

    iget-object v0, v0, Lcom/fiio/music/adapter/QueryAdapter;->songList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->mAdapter:Lcom/fiio/music/adapter/QueryAdapter;

    iget-object v0, v0, Lcom/fiio/music/adapter/QueryAdapter;->songList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 730
    iget-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->mAdapter:Lcom/fiio/music/adapter/QueryAdapter;

    iget-object v0, v0, Lcom/fiio/music/adapter/QueryAdapter;->songList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    .line 731
    if-eqz v0, :cond_0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 732
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->toast:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabCFr;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0219

    invoke-virtual {p0, v2}, Lcom/fiio/music/fragment/TabCFr;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->toast:Landroid/widget/Toast;

    .line 739
    :cond_1
    :goto_0
    return-void

    .line 735
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabCFr;->mAdapter:Lcom/fiio/music/adapter/QueryAdapter;

    iget-object v1, v1, Lcom/fiio/music/adapter/QueryAdapter;->songList:Ljava/util/List;

    invoke-virtual {v0, p1, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->tabCFrDeleteSong(ILjava/util/List;)V

    goto :goto_0
.end method

.method private swipListAddToList(I)V
    .locals 2

    .prologue
    .line 794
    new-instance v0, Ljava/lang/Thread;

    .line 795
    new-instance v1, Lcom/fiio/music/fragment/bt;

    invoke-direct {v1, p0, p1}, Lcom/fiio/music/fragment/bt;-><init>(Lcom/fiio/music/fragment/TabCFr;I)V

    .line 794
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 835
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 836
    return-void
.end method

.method private swipListAddToMyLove(I)V
    .locals 2

    .prologue
    .line 745
    new-instance v0, Ljava/lang/Thread;

    .line 746
    new-instance v1, Lcom/fiio/music/fragment/bs;

    invoke-direct {v1, p0, p1}, Lcom/fiio/music/fragment/bs;-><init>(Lcom/fiio/music/fragment/TabCFr;I)V

    .line 745
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 790
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 791
    return-void
.end method

.method private swipListDelete(I)V
    .locals 8

    .prologue
    .line 680
    new-instance v0, Lcom/fiio/music/custom/g;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabCFr;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/fiio/music/custom/g;-><init>(Landroid/content/Context;)V

    .line 681
    invoke-virtual {v0}, Lcom/fiio/music/custom/g;->a()Lcom/fiio/music/custom/f;

    move-result-object v4

    .line 682
    invoke-virtual {v4}, Lcom/fiio/music/custom/f;->show()V

    .line 683
    invoke-virtual {v4}, Lcom/fiio/music/custom/f;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget-object v1, Lcom/fiio/music/e/b;->d:[I

    iget v2, p0, Lcom/fiio/music/fragment/TabCFr;->style_parameter:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    .line 684
    const v0, 0x7f0b0079

    invoke-virtual {v4, v0}, Lcom/fiio/music/custom/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 685
    const v1, 0x7f0b007e

    invoke-virtual {v4, v1}, Lcom/fiio/music/custom/f;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 686
    const v2, 0x7f0b007d

    invoke-virtual {v4, v2}, Lcom/fiio/music/custom/f;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 687
    iget-object v3, p0, Lcom/fiio/music/fragment/TabCFr;->mAdapter:Lcom/fiio/music/adapter/QueryAdapter;

    iget-object v3, v3, Lcom/fiio/music/adapter/QueryAdapter;->parameterList:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/fiio/music/fragment/TabCFr;->mAdapter:Lcom/fiio/music/adapter/QueryAdapter;

    iget-object v3, v3, Lcom/fiio/music/adapter/QueryAdapter;->parameterList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 689
    iget-object v3, p0, Lcom/fiio/music/fragment/TabCFr;->mAdapter:Lcom/fiio/music/adapter/QueryAdapter;

    iget-object v3, v3, Lcom/fiio/music/adapter/QueryAdapter;->parameterList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fiio/music/entity/Album;

    invoke-virtual {v3}, Lcom/fiio/music/entity/Album;->getName()Ljava/lang/String;

    move-result-object v3

    .line 693
    :goto_0
    invoke-virtual {p0}, Lcom/fiio/music/fragment/TabCFr;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c00f2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 694
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 695
    new-instance v0, Lcom/fiio/music/fragment/bq;

    invoke-direct {v0, p0, p1, v4}, Lcom/fiio/music/fragment/bq;-><init>(Lcom/fiio/music/fragment/TabCFr;ILcom/fiio/music/custom/f;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 718
    new-instance v0, Lcom/fiio/music/fragment/br;

    invoke-direct {v0, p0, v4}, Lcom/fiio/music/fragment/br;-><init>(Lcom/fiio/music/fragment/TabCFr;Lcom/fiio/music/custom/f;)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 725
    return-void

    .line 691
    :cond_0
    const-string v3, ""

    goto :goto_0
.end method


# virtual methods
.method public findPositionByAlbumId(I)I
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 1006
    .line 1007
    iget-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->mAdapter:Lcom/fiio/music/adapter/QueryAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->mAdapter:Lcom/fiio/music/adapter/QueryAdapter;

    iget-object v0, v0, Lcom/fiio/music/adapter/QueryAdapter;->parameterList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->mAdapter:Lcom/fiio/music/adapter/QueryAdapter;

    iget-object v0, v0, Lcom/fiio/music/adapter/QueryAdapter;->parameterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v1, v2

    .line 1018
    :cond_1
    :goto_0
    return v1

    .line 1011
    :cond_2
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->mAdapter:Lcom/fiio/music/adapter/QueryAdapter;

    iget-object v0, v0, Lcom/fiio/music/adapter/QueryAdapter;->parameterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_3

    move v1, v2

    goto :goto_0

    .line 1012
    :cond_3
    iget-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->mAdapter:Lcom/fiio/music/adapter/QueryAdapter;

    iget-object v0, v0, Lcom/fiio/music/adapter/QueryAdapter;->parameterList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Album;

    .line 1013
    invoke-virtual {v0}, Lcom/fiio/music/entity/Album;->getId()I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 1011
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public getHeaderSize()I
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->mAdapter:Lcom/fiio/music/adapter/QueryAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->mAdapter:Lcom/fiio/music/adapter/QueryAdapter;

    iget-object v0, v0, Lcom/fiio/music/adapter/QueryAdapter;->songList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->mAdapter:Lcom/fiio/music/adapter/QueryAdapter;

    iget-object v0, v0, Lcom/fiio/music/adapter/QueryAdapter;->songList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 404
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->headerTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getIsGridShow()Z
    .locals 1

    .prologue
    .line 506
    iget-boolean v0, p0, Lcom/fiio/music/fragment/TabCFr;->gridShow:Z

    return v0
.end method

.method public getPageNumber()I
    .locals 1

    .prologue
    .line 385
    iget v0, p0, Lcom/fiio/music/fragment/TabCFr;->PAGE_NUMBER:I

    return v0
.end method

.method public getmAdapter()Lcom/fiio/music/adapter/QueryAdapter;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->mAdapter:Lcom/fiio/music/adapter/QueryAdapter;

    return-object v0
.end method

.method protected initImageLoader()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 331
    new-instance v0, Lcom/b/a/b/e;

    invoke-direct {v0}, Lcom/b/a/b/e;-><init>()V

    .line 332
    sget-object v1, Lcom/fiio/music/e/b;->e:[I

    iget v2, p0, Lcom/fiio/music/fragment/TabCFr;->style_parameter:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/b/a/b/e;->b(I)Lcom/b/a/b/e;

    move-result-object v0

    .line 333
    sget-object v1, Lcom/fiio/music/e/b;->e:[I

    iget v2, p0, Lcom/fiio/music/fragment/TabCFr;->style_parameter:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/b/a/b/e;->c(I)Lcom/b/a/b/e;

    move-result-object v0

    .line 334
    sget-object v1, Lcom/fiio/music/e/b;->e:[I

    iget v2, p0, Lcom/fiio/music/fragment/TabCFr;->style_parameter:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/b/a/b/e;->a(I)Lcom/b/a/b/e;

    move-result-object v0

    .line 335
    invoke-virtual {v0, v3}, Lcom/b/a/b/e;->b(Z)Lcom/b/a/b/e;

    move-result-object v0

    .line 336
    invoke-virtual {v0, v3}, Lcom/b/a/b/e;->a(Z)Lcom/b/a/b/e;

    move-result-object v0

    .line 337
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1}, Lcom/b/a/b/e;->a(Landroid/graphics/Bitmap$Config;)Lcom/b/a/b/e;

    move-result-object v0

    .line 338
    new-instance v1, Lcom/b/a/b/c/c;

    invoke-direct {v1}, Lcom/b/a/b/c/c;-><init>()V

    invoke-virtual {v0, v1}, Lcom/b/a/b/e;->a(Lcom/b/a/b/c/a;)Lcom/b/a/b/e;

    move-result-object v0

    .line 339
    invoke-virtual {v0}, Lcom/b/a/b/e;->d()Lcom/b/a/b/d;

    move-result-object v0

    .line 331
    iput-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->options:Lcom/b/a/b/d;

    .line 340
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 901
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b00d4

    if-ne v0, v1, :cond_0

    .line 902
    new-instance v0, Ljava/lang/Thread;

    .line 903
    new-instance v1, Lcom/fiio/music/fragment/bu;

    invoke-direct {v1, p0, p1}, Lcom/fiio/music/fragment/bu;-><init>(Lcom/fiio/music/fragment/TabCFr;Landroid/view/View;)V

    .line 902
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 922
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 924
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 150
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 151
    invoke-virtual {p0}, Lcom/fiio/music/fragment/TabCFr;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->mContext:Landroid/content/Context;

    .line 152
    new-instance v0, Lcom/fiio/music/b/b;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabCFr;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/fiio/music/b/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->albumDao:Lcom/fiio/music/b/b;

    .line 153
    new-instance v0, Lcom/fiio/music/b/k;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabCFr;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/fiio/music/b/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->songDao:Lcom/fiio/music/b/k;

    .line 155
    new-instance v0, Lcom/fiio/music/util/cr;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabCFr;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/fiio/music/util/cr;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->tabSortType:Lcom/fiio/music/util/cr;

    .line 157
    iget-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->mContext:Landroid/content/Context;

    const-string v1, "folderjump"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->JumpPreferences:Landroid/content/SharedPreferences;

    .line 158
    iget-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->JumpPreferences:Landroid/content/SharedPreferences;

    const-string v1, "FolderJump"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fiio/music/fragment/TabCFr;->jump:Z

    .line 160
    iget-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->mContext:Landroid/content/Context;

    const-string v1, "changestyle"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->changestylesp:Landroid/content/SharedPreferences;

    .line 161
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 166
    invoke-virtual {p0}, Lcom/fiio/music/fragment/TabCFr;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/a;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/fiio/music/fragment/TabCFr;->style_parameter:I

    .line 168
    iget v0, p0, Lcom/fiio/music/fragment/TabCFr;->style_parameter:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 169
    iput-boolean v2, p0, Lcom/fiio/music/fragment/TabCFr;->UI_IS_CHANGE:Z

    .line 174
    :goto_0
    sget-object v0, Lcom/fiio/music/e/b;->a:[I

    iget v1, p0, Lcom/fiio/music/fragment/TabCFr;->style_parameter:I

    aget v0, v0, v1

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 179
    const v0, 0x7f0b0377

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->my_list_grid_content:Landroid/widget/GridView;

    .line 180
    iget-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->my_list_grid_content:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->my_list_grid_content:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/fiio/music/fragment/TabCFr;->smlv_song_list_content_listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 186
    const v0, 0x7f0b0376

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    iput-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->smlv_list_change_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    .line 187
    iget-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->smlv_list_change_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    invoke-virtual {v0, v3}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->smlv_list_change_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    iget-object v2, p0, Lcom/fiio/music/fragment/TabCFr;->smlv_song_list_content_listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v2}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 192
    const v0, 0x7f0b0375

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    iput-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    .line 193
    iget-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    invoke-virtual {v0, v3}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setVisibility(I)V

    .line 195
    new-instance v0, Lcom/fiio/music/util/cm;

    iget-object v2, p0, Lcom/fiio/music/fragment/TabCFr;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/fiio/music/util/cm;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->sortDataList:Lcom/fiio/music/util/cm;

    .line 197
    return-object v1

    .line 171
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fiio/music/fragment/TabCFr;->UI_IS_CHANGE:Z

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 262
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 264
    return-void
.end method

.method public onKeyBack()V
    .locals 2

    .prologue
    .line 514
    sget-object v0, Lcom/fiio/music/fragment/TabCFr;->TAG:Ljava/lang/String;

    const-string v1, "onKeyBack 0000"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    iget v0, p0, Lcom/fiio/music/fragment/TabCFr;->PAGE_NUMBER:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 516
    const/4 v0, 0x0

    iput v0, p0, Lcom/fiio/music/fragment/TabCFr;->PAGE_NUMBER:I

    .line 518
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->parameter:Ljava/lang/String;

    .line 519
    iget-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->mAdapter:Lcom/fiio/music/adapter/QueryAdapter;

    invoke-virtual {v0}, Lcom/fiio/music/adapter/QueryAdapter;->getQueryHandler()Lcom/fiio/music/adapter/ae;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/fragment/TabCFr;->parameter:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/fiio/music/fragment/TabCFr;->getQueryCursor(Landroid/os/AsyncTask;Ljava/lang/String;)V

    .line 520
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 255
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 256
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fiio/music/fragment/TabCFr;->searchSong_flag:Z

    .line 257
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 238
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 241
    iget-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->mAdapter:Lcom/fiio/music/adapter/QueryAdapter;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->mAdapter:Lcom/fiio/music/adapter/QueryAdapter;

    invoke-virtual {v0}, Lcom/fiio/music/adapter/QueryAdapter;->notifyDataSetChanged()V

    .line 246
    :cond_0
    const-string v0, "zxy -- "

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onResume - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/fiio/music/fragment/TabCFr;->searchSong_flag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-boolean v0, p0, Lcom/fiio/music/fragment/TabCFr;->searchSong_flag:Z

    if-eqz v0, :cond_1

    .line 248
    iget v0, p0, Lcom/fiio/music/fragment/TabCFr;->searchSong_albumId:I

    invoke-virtual {p0, v0}, Lcom/fiio/music/fragment/TabCFr;->tabPerformClick(I)V

    .line 250
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 202
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 203
    invoke-virtual {p0}, Lcom/fiio/music/fragment/TabCFr;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/a;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/fiio/music/fragment/TabCFr;->style_parameter:I

    .line 204
    invoke-virtual {p0}, Lcom/fiio/music/fragment/TabCFr;->initImageLoader()V

    .line 206
    iget-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->getMediaPlayerManager()Lcom/fiio/music/service/h;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->mediaPlayerManager:Lcom/fiio/music/service/h;

    .line 208
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 210
    iget-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->mAdapter:Lcom/fiio/music/adapter/QueryAdapter;

    if-nez v0, :cond_0

    .line 211
    iput v8, p0, Lcom/fiio/music/fragment/TabCFr;->PAGE_NUMBER:I

    .line 213
    iget-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->tabSortType:Lcom/fiio/music/util/cr;

    const-string v1, "tabCFm"

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/fiio/music/fragment/TabCFr;->sortType:I

    .line 214
    iget v0, p0, Lcom/fiio/music/fragment/TabCFr;->sortType:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/fiio/music/fragment/TabCFr;->gridShow:Z

    if-nez v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v0, v9}, Lcom/fiio/music/activity/LocalMusicActivity;->a_z_sideBar_show(Z)V

    .line 220
    :goto_0
    new-instance v0, Lcom/fiio/music/adapter/QueryAdapter;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabCFr;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/fiio/music/fragment/TabCFr;->mediaPlayerManager:Lcom/fiio/music/service/h;

    iget-object v3, p0, Lcom/fiio/music/fragment/TabCFr;->initSuccessCallBack:Lcom/fiio/music/adapter/QueryAdapter$InitSuccessCallBack;

    iget-object v4, p0, Lcom/fiio/music/fragment/TabCFr;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    iget-object v5, p0, Lcom/fiio/music/fragment/TabCFr;->options:Lcom/b/a/b/d;

    .line 221
    const/4 v6, 0x2

    new-array v7, v6, [Landroid/widget/AbsListView;

    iget-object v6, p0, Lcom/fiio/music/fragment/TabCFr;->my_list_grid_content:Landroid/widget/GridView;

    aput-object v6, v7, v8

    iget-object v6, p0, Lcom/fiio/music/fragment/TabCFr;->smlv_list_change_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    aput-object v6, v7, v9

    move-object v6, p0

    invoke-direct/range {v0 .. v7}, Lcom/fiio/music/adapter/QueryAdapter;-><init>(Landroid/content/Context;Lcom/fiio/music/service/h;Lcom/fiio/music/adapter/QueryAdapter$InitSuccessCallBack;Ljava/util/concurrent/ExecutorService;Lcom/b/a/b/d;Landroid/view/View$OnClickListener;[Landroid/view/View;)V

    .line 220
    iput-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->mAdapter:Lcom/fiio/music/adapter/QueryAdapter;

    .line 222
    iget-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->mAdapter:Lcom/fiio/music/adapter/QueryAdapter;

    iget v1, p0, Lcom/fiio/music/fragment/TabCFr;->style_parameter:I

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/QueryAdapter;->setStyle_parameter(I)V

    .line 223
    iget-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->my_list_grid_content:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabCFr;->mAdapter:Lcom/fiio/music/adapter/QueryAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 224
    iget-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->smlv_list_change_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabCFr;->mAdapter:Lcom/fiio/music/adapter/QueryAdapter;

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 226
    iget-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->smlv_list_change_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    invoke-direct {p0, v0}, Lcom/fiio/music/fragment/TabCFr;->initSongSwipeListView(Lcom/fiio/music/swipemenulistview/SwipeMenuListView;)V

    .line 229
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->parameter:Ljava/lang/String;

    .line 230
    iget-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->mAdapter:Lcom/fiio/music/adapter/QueryAdapter;

    invoke-virtual {v0}, Lcom/fiio/music/adapter/QueryAdapter;->getQueryHandler()Lcom/fiio/music/adapter/ae;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/fragment/TabCFr;->parameter:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/fiio/music/fragment/TabCFr;->getQueryCursor(Landroid/os/AsyncTask;Ljava/lang/String;)V

    .line 233
    :cond_0
    return-void

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v0, v8}, Lcom/fiio/music/activity/LocalMusicActivity;->a_z_sideBar_show(Z)V

    goto :goto_0
.end method

.method public orderBy(I)V
    .locals 2

    .prologue
    .line 932
    iget-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->mAdapter:Lcom/fiio/music/adapter/QueryAdapter;

    iget-object v0, v0, Lcom/fiio/music/adapter/QueryAdapter;->parameterList:Ljava/util/List;

    if-nez v0, :cond_1

    .line 944
    :cond_0
    :goto_0
    return-void

    .line 933
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 934
    if-nez p1, :cond_2

    iget-boolean v0, p0, Lcom/fiio/music/fragment/TabCFr;->gridShow:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/fiio/music/fragment/TabCFr;->PAGE_NUMBER:I

    if-nez v0, :cond_2

    .line 935
    iget-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->a_z_sideBar_show(Z)V

    .line 939
    :goto_1
    iget-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->sortDataList:Lcom/fiio/music/util/cm;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabCFr;->mAdapter:Lcom/fiio/music/adapter/QueryAdapter;

    iget-object v1, v1, Lcom/fiio/music/adapter/QueryAdapter;->parameterList:Ljava/util/List;

    invoke-virtual {v0, p1, v1}, Lcom/fiio/music/util/cm;->c(ILjava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 940
    iget-object v1, p0, Lcom/fiio/music/fragment/TabCFr;->mAdapter:Lcom/fiio/music/adapter/QueryAdapter;

    if-eqz v1, :cond_0

    .line 941
    iget-object v1, p0, Lcom/fiio/music/fragment/TabCFr;->mAdapter:Lcom/fiio/music/adapter/QueryAdapter;

    iput-object v0, v1, Lcom/fiio/music/adapter/QueryAdapter;->parameterList:Ljava/util/List;

    .line 942
    iget-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->mAdapter:Lcom/fiio/music/adapter/QueryAdapter;

    invoke-virtual {v0}, Lcom/fiio/music/adapter/QueryAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 937
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->a_z_sideBar_show(Z)V

    goto :goto_1
.end method

.method public orderByASCOrDESC(III)V
    .locals 2

    .prologue
    .line 947
    iget-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->mAdapter:Lcom/fiio/music/adapter/QueryAdapter;

    iget-object v0, v0, Lcom/fiio/music/adapter/QueryAdapter;->parameterList:Ljava/util/List;

    if-nez v0, :cond_1

    .line 959
    :cond_0
    :goto_0
    return-void

    .line 948
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 949
    if-nez p1, :cond_2

    iget-boolean v0, p0, Lcom/fiio/music/fragment/TabCFr;->gridShow:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/fiio/music/fragment/TabCFr;->PAGE_NUMBER:I

    if-nez v0, :cond_2

    .line 950
    iget-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->a_z_sideBar_show(Z)V

    .line 954
    :goto_1
    iget-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->sortDataList:Lcom/fiio/music/util/cm;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabCFr;->mAdapter:Lcom/fiio/music/adapter/QueryAdapter;

    iget-object v1, v1, Lcom/fiio/music/adapter/QueryAdapter;->parameterList:Ljava/util/List;

    invoke-virtual {v0, p1, v1, p2}, Lcom/fiio/music/util/cm;->c(ILjava/util/List;I)Ljava/util/List;

    move-result-object v0

    .line 955
    iget-object v1, p0, Lcom/fiio/music/fragment/TabCFr;->mAdapter:Lcom/fiio/music/adapter/QueryAdapter;

    if-eqz v1, :cond_0

    .line 956
    iget-object v1, p0, Lcom/fiio/music/fragment/TabCFr;->mAdapter:Lcom/fiio/music/adapter/QueryAdapter;

    iput-object v0, v1, Lcom/fiio/music/adapter/QueryAdapter;->parameterList:Ljava/util/List;

    .line 957
    iget-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->mAdapter:Lcom/fiio/music/adapter/QueryAdapter;

    invoke-virtual {v0}, Lcom/fiio/music/adapter/QueryAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 952
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->a_z_sideBar_show(Z)V

    goto :goto_1
.end method

.method public reGetList()V
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->mAdapter:Lcom/fiio/music/adapter/QueryAdapter;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->mAdapter:Lcom/fiio/music/adapter/QueryAdapter;

    invoke-virtual {v0}, Lcom/fiio/music/adapter/QueryAdapter;->getQueryHandler()Lcom/fiio/music/adapter/ae;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/fragment/TabCFr;->parameter:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/fiio/music/fragment/TabCFr;->getQueryCursor(Landroid/os/AsyncTask;Ljava/lang/String;)V

    .line 284
    :cond_0
    return-void
.end method

.method public setSearchSong_flagAndId(ZI)V
    .locals 0

    .prologue
    .line 972
    iput-boolean p1, p0, Lcom/fiio/music/fragment/TabCFr;->searchSong_flag:Z

    .line 973
    iput p2, p0, Lcom/fiio/music/fragment/TabCFr;->searchSong_albumId:I

    .line 976
    return-void
.end method

.method public setSelection(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1028
    const/4 v0, 0x0

    .line 1029
    iget v1, p0, Lcom/fiio/music/fragment/TabCFr;->PAGE_NUMBER:I

    if-nez v1, :cond_0

    .line 1030
    iget-boolean v1, p0, Lcom/fiio/music/fragment/TabCFr;->gridShow:Z

    if-eqz v1, :cond_1

    .line 1042
    :cond_0
    :goto_0
    return-void

    .line 1032
    :cond_1
    iget-object v1, p0, Lcom/fiio/music/fragment/TabCFr;->mAdapter:Lcom/fiio/music/adapter/QueryAdapter;

    iget-object v1, v1, Lcom/fiio/music/adapter/QueryAdapter;->parameterList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1040
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->smlv_list_change_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setSelection(I)V

    goto :goto_0

    .line 1032
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1033
    check-cast v0, Lcom/fiio/music/entity/Album;

    .line 1034
    invoke-virtual {v0}, Lcom/fiio/music/entity/Album;->getSortLetters()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1035
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public switchGridAndList()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 487
    iget-boolean v0, p0, Lcom/fiio/music/fragment/TabCFr;->gridShow:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/fiio/music/fragment/TabCFr;->gridShow:Z

    .line 488
    iget-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->mAdapter:Lcom/fiio/music/adapter/QueryAdapter;

    iget-boolean v3, p0, Lcom/fiio/music/fragment/TabCFr;->gridShow:Z

    iput-boolean v3, v0, Lcom/fiio/music/adapter/QueryAdapter;->gridShow:Z

    .line 489
    iget-boolean v0, p0, Lcom/fiio/music/fragment/TabCFr;->gridShow:Z

    if-eqz v0, :cond_1

    .line 490
    iget-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->my_list_grid_content:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    .line 491
    iget-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->smlv_list_change_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    invoke-virtual {v0, v4}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setVisibility(I)V

    .line 496
    :goto_1
    iget v0, p0, Lcom/fiio/music/fragment/TabCFr;->sortType:I

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/fiio/music/fragment/TabCFr;->gridShow:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/fiio/music/fragment/TabCFr;->PAGE_NUMBER:I

    if-nez v0, :cond_2

    .line 497
    iget-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v0, v2}, Lcom/fiio/music/activity/LocalMusicActivity;->a_z_sideBar_show(Z)V

    .line 502
    :goto_2
    iget-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->mAdapter:Lcom/fiio/music/adapter/QueryAdapter;

    invoke-virtual {v0}, Lcom/fiio/music/adapter/QueryAdapter;->notifyDataSetChanged()V

    .line 503
    return-void

    :cond_0
    move v0, v2

    .line 487
    goto :goto_0

    .line 493
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->my_list_grid_content:Landroid/widget/GridView;

    invoke-virtual {v0, v4}, Landroid/widget/GridView;->setVisibility(I)V

    .line 494
    iget-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->smlv_list_change_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setVisibility(I)V

    goto :goto_1

    .line 499
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->a_z_sideBar_show(Z)V

    goto :goto_2
.end method

.method public tabPerformClick(I)V
    .locals 3

    .prologue
    .line 981
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/fiio/music/fragment/TabCFr;->findPositionByAlbumId(I)I

    move-result v1

    .line 984
    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->smlv_list_change_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    if-eqz v0, :cond_0

    .line 985
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fiio/music/fragment/TabCFr;->searchSong_flag:Z

    .line 986
    const/4 v0, 0x1

    iput v0, p0, Lcom/fiio/music/fragment/TabCFr;->PAGE_NUMBER:I

    .line 987
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->mAdapter:Lcom/fiio/music/adapter/QueryAdapter;

    iget-object v0, v0, Lcom/fiio/music/adapter/QueryAdapter;->parameterList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Album;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Album;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->parameter:Ljava/lang/String;

    .line 988
    iget-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->mAdapter:Lcom/fiio/music/adapter/QueryAdapter;

    iget-object v0, v0, Lcom/fiio/music/adapter/QueryAdapter;->parameterList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Album;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Album;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->headerTitle:Ljava/lang/String;

    .line 989
    iget-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->mAdapter:Lcom/fiio/music/adapter/QueryAdapter;

    invoke-virtual {v0}, Lcom/fiio/music/adapter/QueryAdapter;->getQueryHandler()Lcom/fiio/music/adapter/ae;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/fragment/TabCFr;->parameter:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/fiio/music/fragment/TabCFr;->getQueryCursor(Landroid/os/AsyncTask;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 997
    :cond_0
    :goto_0
    return-void

    .line 995
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public updataDeSelectionView()V
    .locals 1

    .prologue
    .line 962
    iget-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->getMediaPlayerManager()Lcom/fiio/music/service/h;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabCFr;->mediaPlayerManager:Lcom/fiio/music/service/h;

    .line 963
    return-void
.end method
