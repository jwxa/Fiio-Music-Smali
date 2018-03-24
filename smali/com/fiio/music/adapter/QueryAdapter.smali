.class public Lcom/fiio/music/adapter/QueryAdapter;
.super Landroid/widget/BaseAdapter;
.source "QueryAdapter.java"


# static fields
.field private static final HANDLER_MULTIADDTOLIST:I = 0x5

.field private static final HANDLER_MULTIADDTOLIST_FAILURE:I = 0x6

.field private static final HANDLER_MULTIADDTOMYLOVE_FAILURE:I = 0x4

.field private static final HANDLER_MULTIDELETE:I = 0x7

.field private static final HANDLER_MULTIDELETE_FAILURE:I = 0x8

.field private static final HANDLER_MULTIPLAY:I = 0x1

.field private static final HANDLER_MULTIPLAY_FAILURE:I = 0x2

.field private static final HANDLER_MUTLIADDTOMYLOVE:I = 0x3

.field private static final LOG:Z = false

.field private static final PAGE_ONE:I = 0x0

.field private static final PAGE_TWO:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static final localMusicActivity:Ljava/lang/String; = "class com.fiio.music.activity.LocalMusicActivity"


# instance fields
.field private PAGE_NUMBER:I

.field private albumDao:Lcom/fiio/music/b/b;

.field private anim:Landroid/graphics/drawable/AnimationDrawable;

.field private bottomSelectorListener:Landroid/view/View$OnClickListener;

.field private checkBoxCollection:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private curAlbumPath:Ljava/lang/String;

.field public gridShow:Z

.field protected imageLoader:Lcom/b/a/b/f;

.field private interfaceFootView:Lcom/fiio/music/util/dc;

.field private mAdd_to_mylove:Landroid/widget/ImageView;

.field private mAdd_to_playlist:Landroid/widget/ImageView;

.field private mAsyncTask:Lcom/fiio/music/adapter/ae;

.field mContext:Landroid/content/Context;

.field private mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mFootView:Landroid/view/View;

.field private mFoot_delete:Landroid/widget/ImageView;

.field private mFoot_play:Landroid/widget/ImageView;

.field private mFoot_send:Landroid/widget/ImageView;

.field private mHandler:Landroid/os/Handler;

.field private mInitSuccessCallBack:Lcom/fiio/music/adapter/QueryAdapter$InitSuccessCallBack;

.field private mShowCheckBox:Z

.field mediaPlayerManager:Lcom/fiio/music/service/h;

.field onClickListener:Landroid/view/View$OnClickListener;

.field onScrollCallBack:Landroid/widget/AbsListView$OnScrollListener;

.field private options:Lcom/b/a/b/d;

.field parameter:Ljava/lang/String;

.field public parameterList:Ljava/util/List;

.field private scrollStauts:I

.field private songDao:Lcom/fiio/music/b/k;

.field public songList:Ljava/util/List;

.field style_parameter:I

.field private toast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-class v0, Lcom/fiio/music/adapter/QueryAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fiio/music/adapter/QueryAdapter;->TAG:Ljava/lang/String;

    .line 1003
    return-void
.end method

.method public varargs constructor <init>(Landroid/content/Context;Lcom/fiio/music/service/h;Lcom/fiio/music/adapter/QueryAdapter$InitSuccessCallBack;Ljava/util/concurrent/ExecutorService;Lcom/b/a/b/d;Landroid/view/View$OnClickListener;[Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/content/Context;",
            "Lcom/fiio/music/service/h;",
            "Lcom/fiio/music/adapter/QueryAdapter$InitSuccessCallBack;",
            "Ljava/util/concurrent/ExecutorService;",
            "Lcom/b/a/b/d;",
            "Landroid/view/View$OnClickListener;",
            "[TT;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 245
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 79
    iput-boolean v0, p0, Lcom/fiio/music/adapter/QueryAdapter;->mShowCheckBox:Z

    .line 90
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/fiio/music/adapter/QueryAdapter;->checkBoxCollection:Ljava/util/Set;

    .line 96
    iput v0, p0, Lcom/fiio/music/adapter/QueryAdapter;->PAGE_NUMBER:I

    .line 109
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/fiio/music/adapter/QueryAdapter;->gridShow:Z

    .line 119
    iput v0, p0, Lcom/fiio/music/adapter/QueryAdapter;->scrollStauts:I

    .line 129
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fiio/music/adapter/QueryAdapter;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 142
    const/4 v1, 0x3

    iput v1, p0, Lcom/fiio/music/adapter/QueryAdapter;->style_parameter:I

    .line 148
    new-instance v1, Lcom/fiio/music/adapter/w;

    invoke-direct {v1, p0}, Lcom/fiio/music/adapter/w;-><init>(Lcom/fiio/music/adapter/QueryAdapter;)V

    iput-object v1, p0, Lcom/fiio/music/adapter/QueryAdapter;->onScrollCallBack:Landroid/widget/AbsListView$OnScrollListener;

    .line 687
    new-instance v1, Lcom/fiio/music/adapter/x;

    invoke-direct {v1, p0}, Lcom/fiio/music/adapter/x;-><init>(Lcom/fiio/music/adapter/QueryAdapter;)V

    iput-object v1, p0, Lcom/fiio/music/adapter/QueryAdapter;->bottomSelectorListener:Landroid/view/View$OnClickListener;

    .line 1004
    new-instance v1, Landroid/os/Handler;

    new-instance v2, Lcom/fiio/music/adapter/y;

    invoke-direct {v2, p0}, Lcom/fiio/music/adapter/y;-><init>(Lcom/fiio/music/adapter/QueryAdapter;)V

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/fiio/music/adapter/QueryAdapter;->mHandler:Landroid/os/Handler;

    .line 248
    iput-object p1, p0, Lcom/fiio/music/adapter/QueryAdapter;->mContext:Landroid/content/Context;

    .line 249
    iput-object p2, p0, Lcom/fiio/music/adapter/QueryAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    .line 250
    iput-object p3, p0, Lcom/fiio/music/adapter/QueryAdapter;->mInitSuccessCallBack:Lcom/fiio/music/adapter/QueryAdapter$InitSuccessCallBack;

    .line 251
    iput-object p4, p0, Lcom/fiio/music/adapter/QueryAdapter;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 252
    iput-object p6, p0, Lcom/fiio/music/adapter/QueryAdapter;->onClickListener:Landroid/view/View$OnClickListener;

    .line 253
    iput-object p5, p0, Lcom/fiio/music/adapter/QueryAdapter;->options:Lcom/b/a/b/d;

    .line 254
    invoke-static {}, Lcom/b/a/b/f;->a()Lcom/b/a/b/f;

    move-result-object v1

    iput-object v1, p0, Lcom/fiio/music/adapter/QueryAdapter;->imageLoader:Lcom/b/a/b/f;

    .line 255
    array-length v2, p7

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 263
    new-instance v0, Lcom/fiio/music/b/k;

    iget-object v1, p0, Lcom/fiio/music/adapter/QueryAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/fiio/music/b/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fiio/music/adapter/QueryAdapter;->songDao:Lcom/fiio/music/b/k;

    .line 264
    new-instance v0, Lcom/fiio/music/b/b;

    iget-object v1, p0, Lcom/fiio/music/adapter/QueryAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/fiio/music/b/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fiio/music/adapter/QueryAdapter;->albumDao:Lcom/fiio/music/b/b;

    .line 265
    return-void

    .line 255
    :cond_0
    aget-object v0, p7, v1

    .line 256
    instance-of v3, v0, Landroid/widget/GridView;

    if-eqz v3, :cond_2

    .line 257
    check-cast v0, Landroid/widget/GridView;

    iget-object v3, p0, Lcom/fiio/music/adapter/QueryAdapter;->onScrollCallBack:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 255
    :cond_1
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 258
    :cond_2
    instance-of v3, v0, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    if-eqz v3, :cond_1

    .line 259
    check-cast v0, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    iget-object v3, p0, Lcom/fiio/music/adapter/QueryAdapter;->onScrollCallBack:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v3}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    goto :goto_1
.end method

.method static synthetic access$0(Lcom/fiio/music/adapter/QueryAdapter;I)V
    .locals 0

    .prologue
    .line 119
    iput p1, p0, Lcom/fiio/music/adapter/QueryAdapter;->scrollStauts:I

    return-void
.end method

.method static synthetic access$1(Lcom/fiio/music/adapter/QueryAdapter;)I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/fiio/music/adapter/QueryAdapter;->PAGE_NUMBER:I

    return v0
.end method

.method static synthetic access$10()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/fiio/music/adapter/QueryAdapter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$11(Lcom/fiio/music/adapter/QueryAdapter;)Lcom/fiio/music/b/b;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/fiio/music/adapter/QueryAdapter;->albumDao:Lcom/fiio/music/b/b;

    return-object v0
.end method

.method static synthetic access$12(Lcom/fiio/music/adapter/QueryAdapter;I)V
    .locals 0

    .prologue
    .line 96
    iput p1, p0, Lcom/fiio/music/adapter/QueryAdapter;->PAGE_NUMBER:I

    return-void
.end method

.method static synthetic access$13(Lcom/fiio/music/adapter/QueryAdapter;)Lcom/fiio/music/adapter/QueryAdapter$InitSuccessCallBack;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/fiio/music/adapter/QueryAdapter;->mInitSuccessCallBack:Lcom/fiio/music/adapter/QueryAdapter$InitSuccessCallBack;

    return-object v0
.end method

.method static synthetic access$14(Lcom/fiio/music/adapter/QueryAdapter;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/fiio/music/adapter/QueryAdapter;->checkBoxCollection:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$15(Lcom/fiio/music/adapter/QueryAdapter;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/fiio/music/adapter/QueryAdapter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(Lcom/fiio/music/adapter/QueryAdapter;)V
    .locals 0

    .prologue
    .line 750
    invoke-direct {p0}, Lcom/fiio/music/adapter/QueryAdapter;->multiPlayInPlayList()V

    return-void
.end method

.method static synthetic access$3(Lcom/fiio/music/adapter/QueryAdapter;)V
    .locals 0

    .prologue
    .line 719
    invoke-direct {p0}, Lcom/fiio/music/adapter/QueryAdapter;->multiPlayInSongList()V

    return-void
.end method

.method static synthetic access$4(Lcom/fiio/music/adapter/QueryAdapter;)V
    .locals 0

    .prologue
    .line 787
    invoke-direct {p0}, Lcom/fiio/music/adapter/QueryAdapter;->multiAddToMyLove()V

    return-void
.end method

.method static synthetic access$5(Lcom/fiio/music/adapter/QueryAdapter;)V
    .locals 0

    .prologue
    .line 868
    invoke-direct {p0}, Lcom/fiio/music/adapter/QueryAdapter;->multiAddToList()V

    return-void
.end method

.method static synthetic access$6(Lcom/fiio/music/adapter/QueryAdapter;)V
    .locals 0

    .prologue
    .line 933
    invoke-direct {p0}, Lcom/fiio/music/adapter/QueryAdapter;->multiDelete()V

    return-void
.end method

.method static synthetic access$7(Lcom/fiio/music/adapter/QueryAdapter;)Landroid/widget/Toast;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/fiio/music/adapter/QueryAdapter;->toast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$8(Lcom/fiio/music/adapter/QueryAdapter;Landroid/widget/Toast;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/fiio/music/adapter/QueryAdapter;->toast:Landroid/widget/Toast;

    return-void
.end method

.method static synthetic access$9(Lcom/fiio/music/adapter/QueryAdapter;)Lcom/fiio/music/b/k;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/fiio/music/adapter/QueryAdapter;->songDao:Lcom/fiio/music/b/k;

    return-object v0
.end method

.method private initFootView()V
    .locals 2

    .prologue
    .line 606
    iget-object v0, p0, Lcom/fiio/music/adapter/QueryAdapter;->mFootView:Landroid/view/View;

    const v1, 0x7f0b0062

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fiio/music/adapter/QueryAdapter;->mFoot_play:Landroid/widget/ImageView;

    .line 607
    iget-object v0, p0, Lcom/fiio/music/adapter/QueryAdapter;->mFootView:Landroid/view/View;

    const v1, 0x7f0b0063

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fiio/music/adapter/QueryAdapter;->mAdd_to_mylove:Landroid/widget/ImageView;

    .line 608
    iget-object v0, p0, Lcom/fiio/music/adapter/QueryAdapter;->mFootView:Landroid/view/View;

    const v1, 0x7f0b0064

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fiio/music/adapter/QueryAdapter;->mAdd_to_playlist:Landroid/widget/ImageView;

    .line 609
    iget-object v0, p0, Lcom/fiio/music/adapter/QueryAdapter;->mFootView:Landroid/view/View;

    const v1, 0x7f0b0065

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fiio/music/adapter/QueryAdapter;->mFoot_send:Landroid/widget/ImageView;

    .line 610
    iget-object v0, p0, Lcom/fiio/music/adapter/QueryAdapter;->mFootView:Landroid/view/View;

    const v1, 0x7f0b0066

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fiio/music/adapter/QueryAdapter;->mFoot_delete:Landroid/widget/ImageView;

    .line 611
    iget-object v0, p0, Lcom/fiio/music/adapter/QueryAdapter;->mFoot_play:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fiio/music/adapter/QueryAdapter;->bottomSelectorListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 612
    iget-object v0, p0, Lcom/fiio/music/adapter/QueryAdapter;->mAdd_to_mylove:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fiio/music/adapter/QueryAdapter;->bottomSelectorListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 613
    iget-object v0, p0, Lcom/fiio/music/adapter/QueryAdapter;->mAdd_to_playlist:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fiio/music/adapter/QueryAdapter;->bottomSelectorListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 614
    iget-object v0, p0, Lcom/fiio/music/adapter/QueryAdapter;->mFoot_send:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fiio/music/adapter/QueryAdapter;->bottomSelectorListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 615
    iget-object v0, p0, Lcom/fiio/music/adapter/QueryAdapter;->mFoot_delete:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fiio/music/adapter/QueryAdapter;->bottomSelectorListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 616
    return-void
.end method

.method private isCheckAll()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 673
    iget-object v0, p0, Lcom/fiio/music/adapter/QueryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "class com.fiio.music.activity.LocalMusicActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 674
    iget-object v0, p0, Lcom/fiio/music/adapter/QueryAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v0, v3}, Lcom/fiio/music/activity/LocalMusicActivity;->setItemAdapterCheckBoxFlag(Z)V

    .line 675
    invoke-virtual {p0}, Lcom/fiio/music/adapter/QueryAdapter;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/fiio/music/adapter/QueryAdapter;->checkBoxCollection:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 676
    iget-object v0, p0, Lcom/fiio/music/adapter/QueryAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v0, v3}, Lcom/fiio/music/activity/LocalMusicActivity;->footSelectAllCheckBoxState(Z)V

    .line 680
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/adapter/QueryAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v0, v2}, Lcom/fiio/music/activity/LocalMusicActivity;->setItemAdapterCheckBoxFlag(Z)V

    .line 682
    :cond_0
    return-void

    .line 678
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/adapter/QueryAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v0, v2}, Lcom/fiio/music/activity/LocalMusicActivity;->footSelectAllCheckBoxState(Z)V

    goto :goto_0
.end method

.method private multiAddToList()V
    .locals 2

    .prologue
    .line 869
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/fiio/music/adapter/ac;

    invoke-direct {v1, p0}, Lcom/fiio/music/adapter/ac;-><init>(Lcom/fiio/music/adapter/QueryAdapter;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 927
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 928
    return-void
.end method

.method private multiAddToMyLove()V
    .locals 2

    .prologue
    .line 788
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/fiio/music/adapter/ab;

    invoke-direct {v1, p0}, Lcom/fiio/music/adapter/ab;-><init>(Lcom/fiio/music/adapter/QueryAdapter;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 865
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 866
    return-void
.end method

.method private multiDelete()V
    .locals 2

    .prologue
    .line 934
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/fiio/music/adapter/ad;

    invoke-direct {v1, p0}, Lcom/fiio/music/adapter/ad;-><init>(Lcom/fiio/music/adapter/QueryAdapter;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 993
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 994
    return-void
.end method

.method private multiPlayInPlayList()V
    .locals 2

    .prologue
    .line 751
    new-instance v0, Ljava/lang/Thread;

    .line 752
    new-instance v1, Lcom/fiio/music/adapter/aa;

    invoke-direct {v1, p0}, Lcom/fiio/music/adapter/aa;-><init>(Lcom/fiio/music/adapter/QueryAdapter;)V

    .line 751
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 780
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 781
    return-void
.end method

.method private multiPlayInSongList()V
    .locals 2

    .prologue
    .line 720
    new-instance v0, Ljava/lang/Thread;

    .line 721
    new-instance v1, Lcom/fiio/music/adapter/z;

    invoke-direct {v1, p0}, Lcom/fiio/music/adapter/z;-><init>(Lcom/fiio/music/adapter/QueryAdapter;)V

    .line 720
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 744
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 745
    return-void
.end method


# virtual methods
.method public cancelSelect()V
    .locals 2

    .prologue
    .line 636
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fiio/music/adapter/QueryAdapter;->mShowCheckBox:Z

    .line 637
    iget-object v0, p0, Lcom/fiio/music/adapter/QueryAdapter;->mFootView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/adapter/QueryAdapter;->mFootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 638
    iget-object v0, p0, Lcom/fiio/music/adapter/QueryAdapter;->mFootView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 639
    invoke-virtual {p0}, Lcom/fiio/music/adapter/QueryAdapter;->footViewCanceAll()V

    .line 640
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 641
    iget-object v0, p0, Lcom/fiio/music/adapter/QueryAdapter;->interfaceFootView:Lcom/fiio/music/util/dc;

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lcom/fiio/music/adapter/QueryAdapter;->interfaceFootView:Lcom/fiio/music/util/dc;

    invoke-interface {v0}, Lcom/fiio/music/util/dc;->a()V

    .line 645
    :cond_0
    return-void
.end method

.method public footViewCanceAll()V
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Lcom/fiio/music/adapter/QueryAdapter;->checkBoxCollection:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 650
    invoke-virtual {p0}, Lcom/fiio/music/adapter/QueryAdapter;->notifyDataSetChanged()V

    .line 651
    return-void
.end method

.method public footViewSelectAll()V
    .locals 3

    .prologue
    .line 654
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/fiio/music/adapter/QueryAdapter;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 658
    invoke-virtual {p0}, Lcom/fiio/music/adapter/QueryAdapter;->notifyDataSetChanged()V

    .line 659
    return-void

    .line 655
    :cond_0
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 656
    iget-object v2, p0, Lcom/fiio/music/adapter/QueryAdapter;->checkBoxCollection:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 654
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getCount()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 269
    iget v1, p0, Lcom/fiio/music/adapter/QueryAdapter;->PAGE_NUMBER:I

    if-nez v1, :cond_2

    .line 271
    iget-object v1, p0, Lcom/fiio/music/adapter/QueryAdapter;->parameterList:Ljava/util/List;

    if-nez v1, :cond_1

    .line 279
    :cond_0
    :goto_0
    return v0

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/adapter/QueryAdapter;->parameterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 275
    :cond_2
    iget-object v1, p0, Lcom/fiio/music/adapter/QueryAdapter;->songList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 277
    iget-object v0, p0, Lcom/fiio/music/adapter/QueryAdapter;->songList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 284
    iget v0, p0, Lcom/fiio/music/adapter/QueryAdapter;->PAGE_NUMBER:I

    if-nez v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/fiio/music/adapter/QueryAdapter;->parameterList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 290
    :goto_0
    return-object v0

    .line 287
    :cond_0
    if-eqz p1, :cond_1

    .line 288
    iget-object v0, p0, Lcom/fiio/music/adapter/QueryAdapter;->songList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 290
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 295
    int-to-long v0, p1

    return-wide v0
.end method

.method public getParameter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/fiio/music/adapter/QueryAdapter;->parameter:Ljava/lang/String;

    return-object v0
.end method

.method public getQueryHandler()Lcom/fiio/music/adapter/ae;
    .locals 1

    .prologue
    .line 192
    new-instance v0, Lcom/fiio/music/adapter/ae;

    invoke-direct {v0, p0}, Lcom/fiio/music/adapter/ae;-><init>(Lcom/fiio/music/adapter/QueryAdapter;)V

    iput-object v0, p0, Lcom/fiio/music/adapter/QueryAdapter;->mAsyncTask:Lcom/fiio/music/adapter/ae;

    .line 193
    iget-object v0, p0, Lcom/fiio/music/adapter/QueryAdapter;->mAsyncTask:Lcom/fiio/music/adapter/ae;

    return-object v0
.end method

.method public getShowCheckBoxState()Z
    .locals 1

    .prologue
    .line 632
    iget-boolean v0, p0, Lcom/fiio/music/adapter/QueryAdapter;->mShowCheckBox:Z

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/16 v9, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 300
    iget-boolean v0, p0, Lcom/fiio/music/adapter/QueryAdapter;->gridShow:Z

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/fiio/music/adapter/QueryAdapter;->PAGE_NUMBER:I

    if-nez v0, :cond_a

    .line 302
    if-eqz p2, :cond_0

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    if-eqz v0, :cond_5

    .line 303
    :cond_0
    new-instance v1, Lcom/fiio/music/adapter/QueryAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/fiio/music/adapter/QueryAdapter$ViewHolder;-><init>(Lcom/fiio/music/adapter/QueryAdapter;)V

    .line 304
    iget-object v0, p0, Lcom/fiio/music/adapter/QueryAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget-object v2, Lcom/fiio/music/e/b;->f:[I

    iget v3, p0, Lcom/fiio/music/adapter/QueryAdapter;->style_parameter:I

    aget v2, v2, v3

    invoke-virtual {v0, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 305
    const v0, 0x7f0b018b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/fiio/music/adapter/QueryAdapter$ViewHolder;->gridview_item_image:Landroid/widget/ImageView;

    .line 306
    const v0, 0x7f0b018c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    iput-object v0, v1, Lcom/fiio/music/adapter/QueryAdapter$ViewHolder;->tv_song_list_item_top:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    .line 307
    const v0, 0x7f0b018d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    iput-object v0, v1, Lcom/fiio/music/adapter/QueryAdapter$ViewHolder;->tv_song_list_item_bottom:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    .line 308
    const v0, 0x7f0b018e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/fiio/music/adapter/QueryAdapter$ViewHolder;->gridview_play_image_view:Landroid/widget/ImageView;

    .line 309
    const v0, 0x7f0b018f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lcom/fiio/music/adapter/QueryAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    .line 310
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 311
    invoke-virtual {p2, v7}, Landroid/view/View;->setId(I)V

    .line 318
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/adapter/QueryAdapter;->parameterList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Album;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Album;->getName()Ljava/lang/String;

    move-result-object v2

    .line 320
    iget-object v0, v1, Lcom/fiio/music/adapter/QueryAdapter$ViewHolder;->tv_song_list_item_top:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    invoke-virtual {v0, v2}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    iget-object v3, v1, Lcom/fiio/music/adapter/QueryAdapter$ViewHolder;->tv_song_list_item_top:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    iget-object v0, p0, Lcom/fiio/music/adapter/QueryAdapter;->parameterList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Album;

    invoke-virtual {v3, v0}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setTag(Ljava/lang/Object;)V

    .line 326
    iget-object v0, p0, Lcom/fiio/music/adapter/QueryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0c00de

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 327
    iget-object v4, v1, Lcom/fiio/music/adapter/QueryAdapter$ViewHolder;->tv_song_list_item_bottom:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/fiio/music/adapter/QueryAdapter;->parameterList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Album;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Album;->getCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v7

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    iget-object v0, p0, Lcom/fiio/music/adapter/QueryAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->m()I

    move-result v0

    .line 333
    iget-object v3, p0, Lcom/fiio/music/adapter/QueryAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v3}, Lcom/fiio/music/service/h;->h()Lcom/fiio/music/entity/Song;

    move-result-object v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/fiio/music/adapter/QueryAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v3}, Lcom/fiio/music/service/h;->h()Lcom/fiio/music/entity/Song;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fiio/music/entity/Song;->getAlbum()Lcom/fiio/music/entity/Album;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fiio/music/entity/Album;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 334
    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    .line 335
    const/4 v2, 0x4

    if-ne v0, v2, :cond_6

    .line 339
    :cond_1
    iget-object v0, v1, Lcom/fiio/music/adapter/QueryAdapter$ViewHolder;->tv_song_list_item_top:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 340
    iget-object v0, v1, Lcom/fiio/music/adapter/QueryAdapter$ViewHolder;->tv_song_list_item_bottom:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 342
    iget-object v0, v1, Lcom/fiio/music/adapter/QueryAdapter$ViewHolder;->gridview_play_image_view:Landroid/widget/ImageView;

    const v2, 0x7f050001

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 343
    iget-object v0, v1, Lcom/fiio/music/adapter/QueryAdapter$ViewHolder;->gridview_play_image_view:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/fiio/music/adapter/QueryAdapter;->anim:Landroid/graphics/drawable/AnimationDrawable;

    .line 344
    iget-object v0, p0, Lcom/fiio/music/adapter/QueryAdapter;->anim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 370
    :cond_2
    :goto_1
    iget v0, p0, Lcom/fiio/music/adapter/QueryAdapter;->scrollStauts:I

    if-nez v0, :cond_9

    .line 371
    iget-object v0, p0, Lcom/fiio/music/adapter/QueryAdapter;->parameterList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Album;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Album;->getPicPath()Ljava/lang/String;

    move-result-object v0

    .line 372
    iget-object v2, p0, Lcom/fiio/music/adapter/QueryAdapter;->songDao:Lcom/fiio/music/b/k;

    invoke-virtual {v2, v0}, Lcom/fiio/music/b/k;->g(Ljava/lang/String;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    iget v2, p0, Lcom/fiio/music/adapter/QueryAdapter;->style_parameter:I

    iget-object v3, p0, Lcom/fiio/music/adapter/QueryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/b/a/b/f;->a()Lcom/b/a/b/f;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/fiio/music/util/h;->a(Lcom/fiio/music/entity/Song;ILandroid/content/Context;Lcom/b/a/b/f;)Ljava/lang/String;

    move-result-object v0

    .line 373
    iget-object v2, p0, Lcom/fiio/music/adapter/QueryAdapter;->imageLoader:Lcom/b/a/b/f;

    .line 374
    iget-object v3, v1, Lcom/fiio/music/adapter/QueryAdapter$ViewHolder;->gridview_item_image:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/fiio/music/adapter/QueryAdapter;->options:Lcom/b/a/b/d;

    .line 373
    invoke-virtual {v2, v0, v3, v4}, Lcom/b/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/b/a/b/d;)V

    move-object v2, v1

    .line 537
    :goto_2
    iget-boolean v0, p0, Lcom/fiio/music/adapter/QueryAdapter;->mShowCheckBox:Z

    if-eqz v0, :cond_1a

    .line 538
    iget-object v0, v2, Lcom/fiio/music/adapter/QueryAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 539
    iget v0, p0, Lcom/fiio/music/adapter/QueryAdapter;->PAGE_NUMBER:I

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/fiio/music/adapter/QueryAdapter;->gridShow:Z

    if-nez v0, :cond_3

    .line 540
    iget-object v0, v2, Lcom/fiio/music/adapter/QueryAdapter$ViewHolder;->listview_item_arrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 542
    :cond_3
    iget-object v0, v2, Lcom/fiio/music/adapter/QueryAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/fiio/music/adapter/QueryAdapter;->checkBoxCollection:Ljava/util/Set;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 543
    invoke-direct {p0}, Lcom/fiio/music/adapter/QueryAdapter;->isCheckAll()V

    .line 556
    :cond_4
    :goto_3
    return-object p2

    .line 313
    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/adapter/QueryAdapter$ViewHolder;

    move-object v1, v0

    goto/16 :goto_0

    .line 349
    :cond_6
    iget-object v2, v1, Lcom/fiio/music/adapter/QueryAdapter$ViewHolder;->tv_song_list_item_top:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 350
    iget-object v2, v1, Lcom/fiio/music/adapter/QueryAdapter$ViewHolder;->tv_song_list_item_bottom:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 351
    if-ne v0, v10, :cond_7

    .line 352
    iget-object v0, v1, Lcom/fiio/music/adapter/QueryAdapter$ViewHolder;->gridview_play_image_view:Landroid/widget/ImageView;

    const v2, 0x7f050001

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 353
    iget-object v0, v1, Lcom/fiio/music/adapter/QueryAdapter$ViewHolder;->gridview_play_image_view:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/fiio/music/adapter/QueryAdapter;->anim:Landroid/graphics/drawable/AnimationDrawable;

    .line 354
    iget-object v0, p0, Lcom/fiio/music/adapter/QueryAdapter;->anim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto/16 :goto_1

    .line 356
    :cond_7
    iget-object v0, v1, Lcom/fiio/music/adapter/QueryAdapter$ViewHolder;->gridview_play_image_view:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 357
    iget-object v0, p0, Lcom/fiio/music/adapter/QueryAdapter;->anim:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_2

    iput-object v6, p0, Lcom/fiio/music/adapter/QueryAdapter;->anim:Landroid/graphics/drawable/AnimationDrawable;

    goto/16 :goto_1

    .line 361
    :cond_8
    iget-object v0, v1, Lcom/fiio/music/adapter/QueryAdapter$ViewHolder;->tv_song_list_item_top:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 362
    iget-object v0, v1, Lcom/fiio/music/adapter/QueryAdapter$ViewHolder;->tv_song_list_item_bottom:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 363
    iget-object v0, v1, Lcom/fiio/music/adapter/QueryAdapter$ViewHolder;->gridview_play_image_view:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 364
    iget-object v0, p0, Lcom/fiio/music/adapter/QueryAdapter;->anim:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_2

    iput-object v6, p0, Lcom/fiio/music/adapter/QueryAdapter;->anim:Landroid/graphics/drawable/AnimationDrawable;

    goto/16 :goto_1

    .line 386
    :cond_9
    iget-object v0, v1, Lcom/fiio/music/adapter/QueryAdapter$ViewHolder;->gridview_item_image:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/fiio/music/adapter/QueryAdapter;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/fiio/music/e/b;->e:[I

    iget v4, p0, Lcom/fiio/music/adapter/QueryAdapter;->style_parameter:I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object v2, v1

    .line 390
    goto/16 :goto_2

    .line 392
    :cond_a
    if-eqz p2, :cond_b

    if-eqz p2, :cond_d

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    if-eq v0, v8, :cond_d

    .line 393
    :cond_b
    new-instance v1, Lcom/fiio/music/adapter/QueryAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/fiio/music/adapter/QueryAdapter$ViewHolder;-><init>(Lcom/fiio/music/adapter/QueryAdapter;)V

    .line 394
    iget-object v0, p0, Lcom/fiio/music/adapter/QueryAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget-object v2, Lcom/fiio/music/e/b;->b:[I

    iget v3, p0, Lcom/fiio/music/adapter/QueryAdapter;->style_parameter:I

    aget v2, v2, v3

    invoke-virtual {v0, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 395
    const v0, 0x7f0b00d9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    iput-object v0, v1, Lcom/fiio/music/adapter/QueryAdapter$ViewHolder;->tv_song_list_item_top:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    .line 396
    const v0, 0x7f0b00da

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    iput-object v0, v1, Lcom/fiio/music/adapter/QueryAdapter$ViewHolder;->tv_song_list_item_bottom:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    .line 397
    const v0, 0x7f0b01b2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/fiio/music/adapter/QueryAdapter$ViewHolder;->listview_item_image:Landroid/widget/ImageView;

    .line 398
    const v0, 0x7f0b00d4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/fiio/music/adapter/QueryAdapter$ViewHolder;->listview_item_arrow:Landroid/widget/ImageView;

    .line 399
    iget-object v0, v1, Lcom/fiio/music/adapter/QueryAdapter$ViewHolder;->listview_item_arrow:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/fiio/music/adapter/QueryAdapter;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 400
    iget-object v0, v1, Lcom/fiio/music/adapter/QueryAdapter$ViewHolder;->listview_item_arrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 401
    const v0, 0x7f0b00d6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lcom/fiio/music/adapter/QueryAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    .line 403
    const v0, 0x7f0b0208

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/fiio/music/adapter/QueryAdapter$ViewHolder;->current_play_image_view:Landroid/widget/ImageView;

    .line 404
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 405
    invoke-virtual {p2, v8}, Landroid/view/View;->setId(I)V

    move-object v2, v1

    .line 410
    :goto_4
    iget v0, p0, Lcom/fiio/music/adapter/QueryAdapter;->PAGE_NUMBER:I

    if-ne v0, v8, :cond_13

    .line 411
    iget-object v0, p0, Lcom/fiio/music/adapter/QueryAdapter;->songList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    .line 412
    iget-object v1, v2, Lcom/fiio/music/adapter/QueryAdapter$ViewHolder;->listview_item_arrow:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 414
    iget-object v1, v2, Lcom/fiio/music/adapter/QueryAdapter$ViewHolder;->tv_song_list_item_top:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 415
    iget-object v1, v2, Lcom/fiio/music/adapter/QueryAdapter$ViewHolder;->tv_song_list_item_bottom:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getArtist()Lcom/fiio/music/entity/Artist;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fiio/music/entity/Artist;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 420
    iget-object v1, p0, Lcom/fiio/music/adapter/QueryAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->m()I

    move-result v1

    .line 421
    iget-object v3, p0, Lcom/fiio/music/adapter/QueryAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v3}, Lcom/fiio/music/service/h;->h()Lcom/fiio/music/entity/Song;

    move-result-object v3

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/fiio/music/adapter/QueryAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v3}, Lcom/fiio/music/service/h;->h()Lcom/fiio/music/entity/Song;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 422
    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/fiio/music/adapter/QueryAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v3}, Lcom/fiio/music/service/h;->h()Lcom/fiio/music/entity/Song;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fiio/music/entity/Song;->getTrack()I

    move-result v3

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getTrack()I

    move-result v4

    if-ne v3, v4, :cond_11

    .line 424
    if-ne v1, v10, :cond_e

    .line 425
    iget-object v1, v2, Lcom/fiio/music/adapter/QueryAdapter$ViewHolder;->current_play_image_view:Landroid/widget/ImageView;

    sget-object v3, Lcom/fiio/music/e/b;->c:[I

    iget v4, p0, Lcom/fiio/music/adapter/QueryAdapter;->style_parameter:I

    aget v3, v3, v4

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 426
    iget-object v1, v2, Lcom/fiio/music/adapter/QueryAdapter$ViewHolder;->tv_song_list_item_top:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    invoke-virtual {v1, v6}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 427
    iget-object v1, v2, Lcom/fiio/music/adapter/QueryAdapter$ViewHolder;->tv_song_list_item_bottom:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    invoke-virtual {v1, v6}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 428
    iget-object v1, v2, Lcom/fiio/music/adapter/QueryAdapter$ViewHolder;->current_play_image_view:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v1, p0, Lcom/fiio/music/adapter/QueryAdapter;->anim:Landroid/graphics/drawable/AnimationDrawable;

    .line 429
    iget-object v1, p0, Lcom/fiio/music/adapter/QueryAdapter;->anim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 454
    :cond_c
    :goto_5
    iget v1, p0, Lcom/fiio/music/adapter/QueryAdapter;->scrollStauts:I

    if-nez v1, :cond_12

    .line 455
    iget v1, p0, Lcom/fiio/music/adapter/QueryAdapter;->style_parameter:I

    iget-object v3, p0, Lcom/fiio/music/adapter/QueryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/fiio/music/adapter/QueryAdapter;->imageLoader:Lcom/b/a/b/f;

    invoke-static {v0, v1, v3, v4}, Lcom/fiio/music/util/h;->a(Lcom/fiio/music/entity/Song;ILandroid/content/Context;Lcom/b/a/b/f;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/adapter/QueryAdapter;->curAlbumPath:Ljava/lang/String;

    .line 456
    iget-object v0, p0, Lcom/fiio/music/adapter/QueryAdapter;->imageLoader:Lcom/b/a/b/f;

    iget-object v1, p0, Lcom/fiio/music/adapter/QueryAdapter;->curAlbumPath:Ljava/lang/String;

    .line 457
    iget-object v3, v2, Lcom/fiio/music/adapter/QueryAdapter$ViewHolder;->listview_item_image:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/fiio/music/adapter/QueryAdapter;->options:Lcom/b/a/b/d;

    .line 456
    invoke-virtual {v0, v1, v3, v4}, Lcom/b/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/b/a/b/d;)V

    goto/16 :goto_2

    .line 407
    :cond_d
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/adapter/QueryAdapter$ViewHolder;

    move-object v2, v0

    goto/16 :goto_4

    .line 430
    :cond_e
    const/4 v3, 0x3

    if-eq v1, v3, :cond_f

    .line 431
    const/4 v3, 0x4

    if-ne v1, v3, :cond_10

    .line 432
    :cond_f
    iget-object v1, v2, Lcom/fiio/music/adapter/QueryAdapter$ViewHolder;->current_play_image_view:Landroid/widget/ImageView;

    sget-object v3, Lcom/fiio/music/e/b;->c:[I

    iget v4, p0, Lcom/fiio/music/adapter/QueryAdapter;->style_parameter:I

    aget v3, v3, v4

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 433
    iget-object v1, v2, Lcom/fiio/music/adapter/QueryAdapter$ViewHolder;->tv_song_list_item_top:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v3}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 434
    iget-object v1, v2, Lcom/fiio/music/adapter/QueryAdapter$ViewHolder;->tv_song_list_item_bottom:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v3}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 435
    iget-object v1, v2, Lcom/fiio/music/adapter/QueryAdapter$ViewHolder;->current_play_image_view:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v1, p0, Lcom/fiio/music/adapter/QueryAdapter;->anim:Landroid/graphics/drawable/AnimationDrawable;

    .line 436
    iget-object v1, p0, Lcom/fiio/music/adapter/QueryAdapter;->anim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_5

    .line 437
    :cond_10
    const/4 v3, 0x5

    if-ne v1, v3, :cond_c

    .line 438
    iget-object v1, v2, Lcom/fiio/music/adapter/QueryAdapter$ViewHolder;->tv_song_list_item_top:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    invoke-virtual {v1, v6}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 439
    iget-object v1, v2, Lcom/fiio/music/adapter/QueryAdapter$ViewHolder;->tv_song_list_item_bottom:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    invoke-virtual {v1, v6}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 440
    iget-object v1, v2, Lcom/fiio/music/adapter/QueryAdapter$ViewHolder;->current_play_image_view:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 441
    iget-object v1, p0, Lcom/fiio/music/adapter/QueryAdapter;->anim:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_c

    iput-object v6, p0, Lcom/fiio/music/adapter/QueryAdapter;->anim:Landroid/graphics/drawable/AnimationDrawable;

    goto :goto_5

    .line 444
    :cond_11
    iget-object v1, v2, Lcom/fiio/music/adapter/QueryAdapter$ViewHolder;->tv_song_list_item_top:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v3}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 445
    iget-object v1, v2, Lcom/fiio/music/adapter/QueryAdapter$ViewHolder;->tv_song_list_item_bottom:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    invoke-virtual {v1, v6}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 446
    iget-object v1, v2, Lcom/fiio/music/adapter/QueryAdapter$ViewHolder;->current_play_image_view:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 447
    iget-object v1, p0, Lcom/fiio/music/adapter/QueryAdapter;->anim:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_c

    iput-object v6, p0, Lcom/fiio/music/adapter/QueryAdapter;->anim:Landroid/graphics/drawable/AnimationDrawable;

    goto/16 :goto_5

    .line 468
    :cond_12
    iget-object v0, v2, Lcom/fiio/music/adapter/QueryAdapter$ViewHolder;->listview_item_image:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fiio/music/adapter/QueryAdapter;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/fiio/music/e/b;->e:[I

    iget v4, p0, Lcom/fiio/music/adapter/QueryAdapter;->style_parameter:I

    aget v3, v3, v4

    invoke-virtual {v1, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 473
    :cond_13
    iget-object v0, p0, Lcom/fiio/music/adapter/QueryAdapter;->parameterList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Album;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Album;->getName()Ljava/lang/String;

    move-result-object v1

    .line 474
    iget-object v0, v2, Lcom/fiio/music/adapter/QueryAdapter$ViewHolder;->listview_item_arrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 475
    iget-object v0, v2, Lcom/fiio/music/adapter/QueryAdapter$ViewHolder;->tv_song_list_item_top:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    invoke-virtual {v0, v1}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 476
    iget-object v0, p0, Lcom/fiio/music/adapter/QueryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0c00de

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 477
    iget-object v4, v2, Lcom/fiio/music/adapter/QueryAdapter$ViewHolder;->tv_song_list_item_bottom:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/fiio/music/adapter/QueryAdapter;->parameterList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Album;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Album;->getCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v7

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 483
    iget-object v0, p0, Lcom/fiio/music/adapter/QueryAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->m()I

    move-result v0

    .line 484
    iget-object v3, p0, Lcom/fiio/music/adapter/QueryAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v3}, Lcom/fiio/music/service/h;->h()Lcom/fiio/music/entity/Song;

    move-result-object v3

    if-eqz v3, :cond_18

    iget-object v3, p0, Lcom/fiio/music/adapter/QueryAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v3}, Lcom/fiio/music/service/h;->h()Lcom/fiio/music/entity/Song;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fiio/music/entity/Song;->getAlbum()Lcom/fiio/music/entity/Album;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fiio/music/entity/Album;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 486
    if-ne v0, v10, :cond_15

    .line 487
    iget-object v0, v2, Lcom/fiio/music/adapter/QueryAdapter$ViewHolder;->current_play_image_view:Landroid/widget/ImageView;

    sget-object v1, Lcom/fiio/music/e/b;->c:[I

    iget v3, p0, Lcom/fiio/music/adapter/QueryAdapter;->style_parameter:I

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 488
    iget-object v0, v2, Lcom/fiio/music/adapter/QueryAdapter$ViewHolder;->tv_song_list_item_top:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    invoke-virtual {v0, v6}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 489
    iget-object v0, v2, Lcom/fiio/music/adapter/QueryAdapter$ViewHolder;->tv_song_list_item_bottom:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    invoke-virtual {v0, v6}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 490
    iget-object v0, v2, Lcom/fiio/music/adapter/QueryAdapter$ViewHolder;->current_play_image_view:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/fiio/music/adapter/QueryAdapter;->anim:Landroid/graphics/drawable/AnimationDrawable;

    .line 491
    iget-object v0, p0, Lcom/fiio/music/adapter/QueryAdapter;->anim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 517
    :cond_14
    :goto_6
    iget v0, p0, Lcom/fiio/music/adapter/QueryAdapter;->scrollStauts:I

    if-nez v0, :cond_19

    .line 518
    iget-object v0, p0, Lcom/fiio/music/adapter/QueryAdapter;->parameterList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Album;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Album;->getPicPath()Ljava/lang/String;

    move-result-object v0

    .line 519
    iget-object v1, p0, Lcom/fiio/music/adapter/QueryAdapter;->songDao:Lcom/fiio/music/b/k;

    invoke-virtual {v1, v0}, Lcom/fiio/music/b/k;->g(Ljava/lang/String;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    iget v1, p0, Lcom/fiio/music/adapter/QueryAdapter;->style_parameter:I

    iget-object v3, p0, Lcom/fiio/music/adapter/QueryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/b/a/b/f;->a()Lcom/b/a/b/f;

    move-result-object v4

    invoke-static {v0, v1, v3, v4}, Lcom/fiio/music/util/h;->a(Lcom/fiio/music/entity/Song;ILandroid/content/Context;Lcom/b/a/b/f;)Ljava/lang/String;

    move-result-object v0

    .line 520
    iget-object v1, p0, Lcom/fiio/music/adapter/QueryAdapter;->imageLoader:Lcom/b/a/b/f;

    .line 521
    iget-object v3, v2, Lcom/fiio/music/adapter/QueryAdapter$ViewHolder;->listview_item_image:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/fiio/music/adapter/QueryAdapter;->options:Lcom/b/a/b/d;

    .line 520
    invoke-virtual {v1, v0, v3, v4}, Lcom/b/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/b/a/b/d;)V

    goto/16 :goto_2

    .line 492
    :cond_15
    const/4 v1, 0x3

    if-eq v0, v1, :cond_16

    .line 493
    const/4 v1, 0x4

    if-ne v0, v1, :cond_17

    .line 494
    :cond_16
    iget-object v0, v2, Lcom/fiio/music/adapter/QueryAdapter$ViewHolder;->current_play_image_view:Landroid/widget/ImageView;

    sget-object v1, Lcom/fiio/music/e/b;->c:[I

    iget v3, p0, Lcom/fiio/music/adapter/QueryAdapter;->style_parameter:I

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 495
    iget-object v0, v2, Lcom/fiio/music/adapter/QueryAdapter$ViewHolder;->tv_song_list_item_top:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 496
    iget-object v0, v2, Lcom/fiio/music/adapter/QueryAdapter$ViewHolder;->tv_song_list_item_bottom:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 497
    iget-object v0, v2, Lcom/fiio/music/adapter/QueryAdapter$ViewHolder;->current_play_image_view:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/fiio/music/adapter/QueryAdapter;->anim:Landroid/graphics/drawable/AnimationDrawable;

    .line 498
    iget-object v0, p0, Lcom/fiio/music/adapter/QueryAdapter;->anim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_6

    .line 499
    :cond_17
    const/4 v1, 0x5

    if-ne v0, v1, :cond_14

    .line 500
    iget-object v0, v2, Lcom/fiio/music/adapter/QueryAdapter$ViewHolder;->tv_song_list_item_top:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    invoke-virtual {v0, v6}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 501
    iget-object v0, v2, Lcom/fiio/music/adapter/QueryAdapter$ViewHolder;->tv_song_list_item_bottom:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    invoke-virtual {v0, v6}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 502
    iget-object v0, v2, Lcom/fiio/music/adapter/QueryAdapter$ViewHolder;->current_play_image_view:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 503
    iget-object v0, p0, Lcom/fiio/music/adapter/QueryAdapter;->anim:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_14

    iput-object v6, p0, Lcom/fiio/music/adapter/QueryAdapter;->anim:Landroid/graphics/drawable/AnimationDrawable;

    goto :goto_6

    .line 506
    :cond_18
    iget-object v0, v2, Lcom/fiio/music/adapter/QueryAdapter$ViewHolder;->tv_song_list_item_top:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 507
    iget-object v0, v2, Lcom/fiio/music/adapter/QueryAdapter$ViewHolder;->tv_song_list_item_bottom:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    invoke-virtual {v0, v6}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 508
    iget-object v0, v2, Lcom/fiio/music/adapter/QueryAdapter$ViewHolder;->current_play_image_view:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 509
    iget-object v0, p0, Lcom/fiio/music/adapter/QueryAdapter;->anim:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_14

    iput-object v6, p0, Lcom/fiio/music/adapter/QueryAdapter;->anim:Landroid/graphics/drawable/AnimationDrawable;

    goto/16 :goto_6

    .line 531
    :cond_19
    iget-object v0, v2, Lcom/fiio/music/adapter/QueryAdapter$ViewHolder;->listview_item_image:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fiio/music/adapter/QueryAdapter;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/fiio/music/e/b;->e:[I

    iget v4, p0, Lcom/fiio/music/adapter/QueryAdapter;->style_parameter:I

    aget v3, v3, v4

    invoke-virtual {v1, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 545
    :cond_1a
    iget-object v0, v2, Lcom/fiio/music/adapter/QueryAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v9}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 546
    iget-object v0, v2, Lcom/fiio/music/adapter/QueryAdapter$ViewHolder;->listview_item_arrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 547
    iget v0, p0, Lcom/fiio/music/adapter/QueryAdapter;->PAGE_NUMBER:I

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Lcom/fiio/music/adapter/QueryAdapter;->gridShow:Z

    if-nez v0, :cond_1b

    .line 548
    iget-object v0, v2, Lcom/fiio/music/adapter/QueryAdapter$ViewHolder;->listview_item_arrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 549
    iget-object v0, v2, Lcom/fiio/music/adapter/QueryAdapter$ViewHolder;->listview_item_arrow:Landroid/widget/ImageView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 550
    :cond_1b
    iget v0, p0, Lcom/fiio/music/adapter/QueryAdapter;->PAGE_NUMBER:I

    if-ne v0, v8, :cond_4

    .line 551
    iget-object v0, v2, Lcom/fiio/music/adapter/QueryAdapter$ViewHolder;->listview_item_arrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3
.end method

.method public setDisplayImageOptions(Lcom/b/a/b/d;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/fiio/music/adapter/QueryAdapter;->options:Lcom/b/a/b/d;

    .line 138
    return-void
.end method

.method public setFootView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 602
    iput-object p1, p0, Lcom/fiio/music/adapter/QueryAdapter;->mFootView:Landroid/view/View;

    .line 603
    invoke-direct {p0}, Lcom/fiio/music/adapter/QueryAdapter;->initFootView()V

    .line 604
    return-void
.end method

.method public setFootViewItf(Lcom/fiio/music/util/dc;)V
    .locals 0

    .prologue
    .line 599
    iput-object p1, p0, Lcom/fiio/music/adapter/QueryAdapter;->interfaceFootView:Lcom/fiio/music/util/dc;

    .line 600
    return-void
.end method

.method public setPAGE_NUMBER(I)V
    .locals 0

    .prologue
    .line 560
    iput p1, p0, Lcom/fiio/music/adapter/QueryAdapter;->PAGE_NUMBER:I

    .line 561
    return-void
.end method

.method public setParameter(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/fiio/music/adapter/QueryAdapter;->parameter:Ljava/lang/String;

    .line 202
    return-void
.end method

.method public setStyle_parameter(I)V
    .locals 0

    .prologue
    .line 592
    iput p1, p0, Lcom/fiio/music/adapter/QueryAdapter;->style_parameter:I

    .line 593
    return-void
.end method

.method public showCheckBox(Z)V
    .locals 0

    .prologue
    .line 629
    iput-boolean p1, p0, Lcom/fiio/music/adapter/QueryAdapter;->mShowCheckBox:Z

    .line 630
    return-void
.end method

.method public showFootView()V
    .locals 2

    .prologue
    .line 620
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/fiio/music/adapter/QueryAdapter;->showCheckBox(Z)V

    .line 621
    invoke-virtual {p0}, Lcom/fiio/music/adapter/QueryAdapter;->notifyDataSetChanged()V

    .line 623
    iget-object v0, p0, Lcom/fiio/music/adapter/QueryAdapter;->mFootView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/fiio/music/adapter/QueryAdapter;->mFootView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 625
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/adapter/QueryAdapter;->interfaceFootView:Lcom/fiio/music/util/dc;

    if-eqz v0, :cond_1

    .line 626
    iget-object v0, p0, Lcom/fiio/music/adapter/QueryAdapter;->interfaceFootView:Lcom/fiio/music/util/dc;

    invoke-interface {v0}, Lcom/fiio/music/util/dc;->b()V

    .line 627
    :cond_1
    return-void
.end method

.method public toggleCheckBox(I)V
    .locals 2

    .prologue
    .line 662
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 663
    iget-object v1, p0, Lcom/fiio/music/adapter/QueryAdapter;->checkBoxCollection:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 664
    iget-object v1, p0, Lcom/fiio/music/adapter/QueryAdapter;->checkBoxCollection:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 668
    :goto_0
    invoke-virtual {p0}, Lcom/fiio/music/adapter/QueryAdapter;->notifyDataSetChanged()V

    .line 669
    return-void

    .line 666
    :cond_0
    iget-object v1, p0, Lcom/fiio/music/adapter/QueryAdapter;->checkBoxCollection:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
