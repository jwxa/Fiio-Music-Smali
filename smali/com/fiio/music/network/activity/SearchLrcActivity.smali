.class public Lcom/fiio/music/network/activity/SearchLrcActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "SearchLrcActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DEFAULTSIZE:I = 0x1

.field private static final FINDLRC:I = 0x3

.field private static final GONE:I = 0x8

.field private static final LESSDEFAULTSIZE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SearchLrcActivity"

.field private static final VISIBLE:I


# instance fields
.field private STYLE_PARAMTER:I

.field private coverUrls:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/fiio/music/network/bean/cloudmusic/lrc/Lrc;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ed_songArtist:Landroid/widget/EditText;

.field private ed_songTittle:Landroid/widget/EditText;

.field private iv_back:Landroid/widget/ImageView;

.field private listFragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private ll_pageNum:Landroid/widget/LinearLayout;

.field private lrcs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/network/bean/cloudmusic/lrc/Lrc;",
            ">;"
        }
    .end annotation
.end field

.field private mDownLatch:Ljava/util/concurrent/CountDownLatch;

.field private mHandler:Landroid/os/Handler;

.field private mViewPager:Lcom/fiio/music/network/widget/MySlideMoothViewpage;

.field private manager:Landroid/support/v4/app/FragmentManager;

.field private pb:Landroid/widget/ProgressBar;

.field private tv_curPage:Landroid/widget/TextView;

.field private tv_dividing_line:Landroid/widget/TextView;

.field private tv_findNothing:Landroid/widget/TextView;

.field private tv_searchlrc_search:Landroid/widget/TextView;

.field private tv_totalPage:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->listFragments:Ljava/util/List;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->lrcs:Ljava/util/List;

    .line 80
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->coverUrls:Ljava/util/Map;

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->mDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 84
    const/4 v0, 0x3

    iput v0, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->STYLE_PARAMTER:I

    .line 86
    invoke-virtual {p0}, Lcom/fiio/music/network/activity/SearchLrcActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->manager:Landroid/support/v4/app/FragmentManager;

    .line 88
    new-instance v0, Lcom/fiio/music/network/activity/b;

    invoke-direct {v0, p0}, Lcom/fiio/music/network/activity/b;-><init>(Lcom/fiio/music/network/activity/SearchLrcActivity;)V

    iput-object v0, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->mHandler:Landroid/os/Handler;

    .line 53
    return-void
.end method

.method static synthetic access$0(Lcom/fiio/music/network/activity/SearchLrcActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->listFragments:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lcom/fiio/music/network/activity/SearchLrcActivity;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->pb:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$10(Lcom/fiio/music/network/activity/SearchLrcActivity;)Ljava/util/concurrent/CountDownLatch;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->mDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$11(Lcom/fiio/music/network/activity/SearchLrcActivity;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->mDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method static synthetic access$12(Lcom/fiio/music/network/activity/SearchLrcActivity;Ljava/lang/String;Lcom/fiio/music/network/bean/cloudmusic/searchmusic/SearchMusicResult;Lcom/fiio/music/entity/Song;Z)V
    .locals 0

    .prologue
    .line 361
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/fiio/music/network/activity/SearchLrcActivity;->searchAndWriteLrcByHand(Ljava/lang/String;Lcom/fiio/music/network/bean/cloudmusic/searchmusic/SearchMusicResult;Lcom/fiio/music/entity/Song;Z)V

    return-void
.end method

.method static synthetic access$13(Lcom/fiio/music/network/activity/SearchLrcActivity;)V
    .locals 0

    .prologue
    .line 474
    invoke-direct {p0}, Lcom/fiio/music/network/activity/SearchLrcActivity;->countDown()V

    return-void
.end method

.method static synthetic access$14(Lcom/fiio/music/network/activity/SearchLrcActivity;Ljava/lang/String;Lcom/fiio/music/network/bean/cloudmusic/searchmusic/SearchMusicResult;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 577
    invoke-direct {p0, p1, p2}, Lcom/fiio/music/network/activity/SearchLrcActivity;->getCoverUrl(Ljava/lang/String;Lcom/fiio/music/network/bean/cloudmusic/searchmusic/SearchMusicResult;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$15(Lcom/fiio/music/network/activity/SearchLrcActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$16(Lcom/fiio/music/network/activity/SearchLrcActivity;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->coverUrls:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$17(Lcom/fiio/music/network/activity/SearchLrcActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->lrcs:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2(Lcom/fiio/music/network/activity/SearchLrcActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->tv_findNothing:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/fiio/music/network/activity/SearchLrcActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->ll_pageNum:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$4(Lcom/fiio/music/network/activity/SearchLrcActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->tv_curPage:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/fiio/music/network/activity/SearchLrcActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->tv_dividing_line:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/fiio/music/network/activity/SearchLrcActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->tv_totalPage:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/fiio/music/network/activity/SearchLrcActivity;)Landroid/support/v4/app/FragmentManager;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->manager:Landroid/support/v4/app/FragmentManager;

    return-object v0
.end method

.method static synthetic access$8(Lcom/fiio/music/network/activity/SearchLrcActivity;)Lcom/fiio/music/network/widget/MySlideMoothViewpage;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->mViewPager:Lcom/fiio/music/network/widget/MySlideMoothViewpage;

    return-object v0
.end method

.method static synthetic access$9(Lcom/fiio/music/network/activity/SearchLrcActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->tv_searchlrc_search:Landroid/widget/TextView;

    return-object v0
.end method

.method private countDown()V
    .locals 4

    .prologue
    .line 475
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->mDownLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->mDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 477
    const-string v0, "SearchLrcActivity"

    .line 478
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "countDown mDownLatch.countDown() = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 479
    iget-object v2, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->mDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 478
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 477
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->mDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 481
    invoke-direct {p0}, Lcom/fiio/music/network/activity/SearchLrcActivity;->searchLrcDefaultFinish()V

    .line 484
    :cond_0
    return-void
.end method

.method private getCoverUrl(Ljava/lang/String;Lcom/fiio/music/network/bean/cloudmusic/searchmusic/SearchMusicResult;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 579
    .line 584
    invoke-virtual {p2}, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/SearchMusicResult;->getResult()Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Result;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Result;->getSongs()Ljava/util/List;

    move-result-object v3

    .line 586
    if-nez v3, :cond_0

    .line 587
    const-string v0, "SearchLrcActivity"

    const-string v1, "searchCloudMusic searchSongs is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :goto_0
    return-object v2

    .line 593
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    move-object v0, v2

    .line 601
    :goto_2
    if-nez v0, :cond_3

    .line 602
    const-string v0, "SearchLrcActivity"

    const-string v1, "sendSearchCloudMusic onResponse songToGetAlbum is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 595
    :cond_1
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Song;

    invoke-virtual {v0}, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Song;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 596
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Song;

    goto :goto_2

    .line 593
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 605
    :cond_3
    invoke-virtual {v0}, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Song;->getAlbum()Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Album;

    move-result-object v0

    .line 607
    if-eqz v0, :cond_4

    .line 608
    invoke-virtual {v0}, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Album;->getPicUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 609
    invoke-virtual {v0}, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Album;->getPicUrl()Ljava/lang/String;

    move-result-object v0

    .line 610
    const-string v1, "SearchLrcActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getCoverUrl picUrl = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    move-object v2, v0

    .line 614
    goto :goto_0

    :cond_4
    move-object v0, v2

    goto :goto_3
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 158
    const v0, 0x7f0b02a5

    invoke-virtual {p0, v0}, Lcom/fiio/music/network/activity/SearchLrcActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->iv_back:Landroid/widget/ImageView;

    .line 159
    const v0, 0x7f0b02a8

    invoke-virtual {p0, v0}, Lcom/fiio/music/network/activity/SearchLrcActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->tv_searchlrc_search:Landroid/widget/TextView;

    .line 160
    const v0, 0x7f0b02a6

    invoke-virtual {p0, v0}, Lcom/fiio/music/network/activity/SearchLrcActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->ed_songTittle:Landroid/widget/EditText;

    .line 161
    const v0, 0x7f0b02a7

    invoke-virtual {p0, v0}, Lcom/fiio/music/network/activity/SearchLrcActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->ed_songArtist:Landroid/widget/EditText;

    .line 162
    const v0, 0x7f0b02ad

    invoke-virtual {p0, v0}, Lcom/fiio/music/network/activity/SearchLrcActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->pb:Landroid/widget/ProgressBar;

    .line 163
    const v0, 0x7f0b02ae

    invoke-virtual {p0, v0}, Lcom/fiio/music/network/activity/SearchLrcActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->tv_findNothing:Landroid/widget/TextView;

    .line 166
    const v0, 0x7f0b02a9

    invoke-virtual {p0, v0}, Lcom/fiio/music/network/activity/SearchLrcActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->ll_pageNum:Landroid/widget/LinearLayout;

    .line 167
    const v0, 0x7f0b02aa

    invoke-virtual {p0, v0}, Lcom/fiio/music/network/activity/SearchLrcActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->tv_curPage:Landroid/widget/TextView;

    .line 168
    const v0, 0x7f0b02ac

    invoke-virtual {p0, v0}, Lcom/fiio/music/network/activity/SearchLrcActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->tv_totalPage:Landroid/widget/TextView;

    .line 169
    const v0, 0x7f0b02ab

    invoke-virtual {p0, v0}, Lcom/fiio/music/network/activity/SearchLrcActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->tv_dividing_line:Landroid/widget/TextView;

    .line 172
    invoke-virtual {p0}, Lcom/fiio/music/network/activity/SearchLrcActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "playingSong"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    .line 173
    iget-object v1, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->ed_songTittle:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fiio/music/network/d/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v1, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->ed_songArtist:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getArtist()Lcom/fiio/music/entity/Artist;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/entity/Artist;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 176
    const v0, 0x7f0b02af

    invoke-virtual {p0, v0}, Lcom/fiio/music/network/activity/SearchLrcActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/network/widget/MySlideMoothViewpage;

    iput-object v0, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->mViewPager:Lcom/fiio/music/network/widget/MySlideMoothViewpage;

    .line 177
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->mViewPager:Lcom/fiio/music/network/widget/MySlideMoothViewpage;

    invoke-virtual {v0, p0}, Lcom/fiio/music/network/widget/MySlideMoothViewpage;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 179
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->iv_back:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->tv_searchlrc_search:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    return-void
.end method

.method private searchAndWriteLrcByHand(Ljava/lang/String;Lcom/fiio/music/network/bean/cloudmusic/searchmusic/SearchMusicResult;Lcom/fiio/music/entity/Song;Z)V
    .locals 4

    .prologue
    .line 364
    const-string v0, "pc"

    invoke-static {v0, p1}, Lcom/fiio/music/network/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 367
    const-string v1, "SearchLrcActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "searchAndWriteLrcByHand requestUrl = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    invoke-static {}, Lcom/fiio/music/network/b/a;->a()Lcom/fiio/music/network/b/a;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/fiio/music/network/b/a;->a(Z)V

    .line 371
    invoke-static {}, Lcom/fiio/music/network/b/a;->a()Lcom/fiio/music/network/b/a;

    .line 372
    new-instance v1, Lcom/fiio/music/network/activity/d;

    invoke-direct {v1, p0, p4, p1, p2}, Lcom/fiio/music/network/activity/d;-><init>(Lcom/fiio/music/network/activity/SearchLrcActivity;ZLjava/lang/String;Lcom/fiio/music/network/bean/cloudmusic/searchmusic/SearchMusicResult;)V

    .line 371
    invoke-static {v0, p1, v1}, Lcom/fiio/music/network/b/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/fiio/music/network/b/g;)Le/g;

    .line 472
    return-void
.end method

.method private searchCloudMusic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 220
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    const-string v0, "SearchLrcActivity"

    const-string v1, "songName is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :goto_0
    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->pb:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 228
    const/16 v0, 0x64

    .line 227
    invoke-static {p1, v0}, Lcom/fiio/music/network/a/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 230
    const-string v1, "SearchLrcActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "requestUrl = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-static {}, Lcom/fiio/music/network/b/a;->a()Lcom/fiio/music/network/b/a;

    .line 233
    new-instance v1, Lcom/fiio/music/network/activity/c;

    invoke-direct {v1, p0, p2}, Lcom/fiio/music/network/activity/c;-><init>(Lcom/fiio/music/network/activity/SearchLrcActivity;Ljava/lang/String;)V

    .line 232
    invoke-static {v0, p1, v1}, Lcom/fiio/music/network/b/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/fiio/music/network/b/g;)Le/g;

    goto :goto_0
.end method

.method private searchLrcDefaultFinish()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v3, 0x0

    const/16 v9, 0x8

    .line 487
    const-string v0, "SearchLrcActivity"

    const-string v1, "SearchLrcDefaultFinish"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    const-string v0, "SearchLrcActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "lrcs size = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->lrcs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->lrcs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 491
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->ll_pageNum:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 492
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->pb:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 493
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->tv_findNothing:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 494
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->mViewPager:Lcom/fiio/music/network/widget/MySlideMoothViewpage;

    invoke-virtual {v0, v9}, Lcom/fiio/music/network/widget/MySlideMoothViewpage;->setVisibility(I)V

    .line 495
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->tv_searchlrc_search:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setClickable(Z)V

    .line 554
    :cond_0
    :goto_0
    return-void

    .line 498
    :cond_1
    invoke-virtual {p0}, Lcom/fiio/music/network/activity/SearchLrcActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->lrcs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 500
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->listFragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    move v2, v3

    .line 501
    :goto_1
    if-lt v2, v4, :cond_2

    .line 522
    const-string v0, "SearchLrcActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "listFragments.size() = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->listFragments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->listFragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 525
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->pb:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 526
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->tv_findNothing:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 527
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->ll_pageNum:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 528
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->tv_totalPage:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->listFragments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 529
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->tv_dividing_line:Landroid/widget/TextView;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 531
    new-instance v0, Lcom/fiio/music/network/adapter/SearchLrcFragmentPageAdapter;

    .line 532
    iget-object v1, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->manager:Landroid/support/v4/app/FragmentManager;

    iget-object v2, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->listFragments:Ljava/util/List;

    .line 531
    invoke-direct {v0, v1, v2}, Lcom/fiio/music/network/adapter/SearchLrcFragmentPageAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Ljava/util/List;)V

    .line 533
    iget-object v1, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->mViewPager:Lcom/fiio/music/network/widget/MySlideMoothViewpage;

    invoke-virtual {v1, v0}, Lcom/fiio/music/network/widget/MySlideMoothViewpage;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 534
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->mViewPager:Lcom/fiio/music/network/widget/MySlideMoothViewpage;

    invoke-virtual {v0, v3}, Lcom/fiio/music/network/widget/MySlideMoothViewpage;->setVisibility(I)V

    .line 535
    const-string v0, "SearchLrcActivity"

    .line 536
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mViewPager.getCurrentItem() ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 537
    iget-object v2, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->mViewPager:Lcom/fiio/music/network/widget/MySlideMoothViewpage;

    invoke-virtual {v2}, Lcom/fiio/music/network/widget/MySlideMoothViewpage;->getCurrentItem()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 536
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 535
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->tv_curPage:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->mViewPager:Lcom/fiio/music/network/widget/MySlideMoothViewpage;

    invoke-virtual {v2}, Lcom/fiio/music/network/widget/MySlideMoothViewpage;->getCurrentItem()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 539
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->tv_searchlrc_search:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setClickable(Z)V

    goto/16 :goto_0

    .line 502
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->lrcs:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 503
    const-string v1, "SearchLrcActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v0, "lrcs.get(i).getLyric().length() = "

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->lrcs:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/network/bean/cloudmusic/lrc/Lrc;

    invoke-virtual {v0}, Lcom/fiio/music/network/bean/cloudmusic/lrc/Lrc;->getLyric()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->lrcs:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/network/bean/cloudmusic/lrc/Lrc;

    invoke-virtual {v0}, Lcom/fiio/music/network/bean/cloudmusic/lrc/Lrc;->getLyric()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 505
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->lrcs:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/network/bean/cloudmusic/lrc/Lrc;

    invoke-virtual {v0}, Lcom/fiio/music/network/bean/cloudmusic/lrc/Lrc;->getLyric()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 506
    const-string v1, "SearchLrcActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v0, "new Fragment lrc "

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 507
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->lrcs:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/network/bean/cloudmusic/lrc/Lrc;

    invoke-virtual {v0}, Lcom/fiio/music/network/bean/cloudmusic/lrc/Lrc;->getLyric()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 506
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    const-string v1, "SearchLrcActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v0, "new Fragment lrc "

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 509
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->lrcs:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/network/bean/cloudmusic/lrc/Lrc;

    invoke-virtual {v0}, Lcom/fiio/music/network/bean/cloudmusic/lrc/Lrc;->getLyric()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 508
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->coverUrls:Ljava/util/Map;

    iget-object v1, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->lrcs:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 511
    const-string v1, "SearchLrcActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "lrc ["

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "]="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->lrcs:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/network/bean/cloudmusic/lrc/Lrc;

    invoke-virtual {v0}, Lcom/fiio/music/network/bean/cloudmusic/lrc/Lrc;->getLyric()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    iget-object v5, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->listFragments:Ljava/util/List;

    new-instance v6, Lcom/fiio/music/network/fragment/SearchLrcFragment;

    .line 513
    invoke-virtual {p0}, Lcom/fiio/music/network/activity/SearchLrcActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->lrcs:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/network/bean/cloudmusic/lrc/Lrc;

    .line 514
    iget-object v1, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->coverUrls:Ljava/util/Map;

    iget-object v8, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->lrcs:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v6, v7, v0, v1}, Lcom/fiio/music/network/fragment/SearchLrcFragment;-><init>(Landroid/content/Context;Lcom/fiio/music/network/bean/cloudmusic/lrc/Lrc;Ljava/lang/String;)V

    .line 512
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 501
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_1

    .line 542
    :cond_4
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->ll_pageNum:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 543
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->pb:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 544
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->tv_findNothing:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 545
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->mViewPager:Lcom/fiio/music/network/widget/MySlideMoothViewpage;

    invoke-virtual {v0, v9}, Lcom/fiio/music/network/widget/MySlideMoothViewpage;->setVisibility(I)V

    .line 546
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->tv_searchlrc_search:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setClickable(Z)V

    goto/16 :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 185
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 210
    :goto_0
    :pswitch_0
    return-void

    .line 189
    :pswitch_1
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->tv_searchlrc_search:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 191
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->pb:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 192
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->tv_findNothing:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->ll_pageNum:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->mViewPager:Lcom/fiio/music/network/widget/MySlideMoothViewpage;

    invoke-virtual {v0, v1}, Lcom/fiio/music/network/widget/MySlideMoothViewpage;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->ed_songTittle:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 196
    iget-object v1, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->ed_songArtist:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 198
    const-string v2, "SearchLrcActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "To Search Music Lrc Name = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 199
    const-string v4, " : Artist = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 198
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v2, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->lrcs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 202
    iget-object v2, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->coverUrls:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 204
    invoke-direct {p0, v0, v1, v0}, Lcom/fiio/music/network/activity/SearchLrcActivity;->searchCloudMusic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 208
    :pswitch_2
    invoke-virtual {p0}, Lcom/fiio/music/network/activity/SearchLrcActivity;->finish()V

    goto :goto_0

    .line 185
    :pswitch_data_0
    .packed-switch 0x7f0b02a5
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const v2, 0x7f0400f1

    .line 141
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 142
    invoke-virtual {p0}, Lcom/fiio/music/network/activity/SearchLrcActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/a;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->STYLE_PARAMTER:I

    .line 143
    iget v0, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->STYLE_PARAMTER:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 144
    invoke-virtual {p0, v2}, Lcom/fiio/music/network/activity/SearchLrcActivity;->setContentView(I)V

    .line 153
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/fiio/music/network/activity/SearchLrcActivity;->initView()V

    .line 154
    return-void

    .line 145
    :cond_1
    iget v0, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->STYLE_PARAMTER:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 146
    invoke-virtual {p0, v2}, Lcom/fiio/music/network/activity/SearchLrcActivity;->setContentView(I)V

    goto :goto_0

    .line 147
    :cond_2
    iget v0, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->STYLE_PARAMTER:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 148
    const v0, 0x7f0400f2

    invoke-virtual {p0, v0}, Lcom/fiio/music/network/activity/SearchLrcActivity;->setContentView(I)V

    goto :goto_0

    .line 149
    :cond_3
    iget v0, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->STYLE_PARAMTER:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 150
    const v0, 0x7f0400f3

    invoke-virtual {p0, v0}, Lcom/fiio/music/network/activity/SearchLrcActivity;->setContentView(I)V

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 560
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .prologue
    .line 567
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    .prologue
    .line 572
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchLrcActivity;->tv_curPage:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v2, p1, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 573
    return-void
.end method
