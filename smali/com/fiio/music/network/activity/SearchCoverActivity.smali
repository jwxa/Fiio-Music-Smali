.class public Lcom/fiio/music/network/activity/SearchCoverActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "SearchCoverActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private GONE:I

.field private STYLE_PARAMTER:I

.field private VISIBLE:I

.field private defaultUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ed_search_cover_album_name:Landroid/widget/EditText;

.field private ed_search_cover_song_tittle:Landroid/widget/EditText;

.field private exactMatchUlr:Ljava/lang/String;

.field private iv_search_cover_back:Landroid/widget/ImageView;

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

.field private ll_page_num:Landroid/widget/LinearLayout;

.field private mViewpage:Lcom/fiio/music/network/widget/MySlideMoothViewpage;

.field private manager:Landroid/support/v4/app/FragmentManager;

.field private pb_search_cover:Landroid/widget/ProgressBar;

.field private song:Lcom/fiio/music/entity/Song;

.field private tv_cur_page:Landroid/widget/TextView;

.field private tv_dividing_line:Landroid/widget/TextView;

.field private tv_find_nothing:Landroid/widget/TextView;

.field private tv_search_cover__search:Landroid/widget/TextView;

.field private tv_total_page:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/fiio/music/network/activity/SearchCoverActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fiio/music/network/activity/SearchCoverActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->VISIBLE:I

    .line 53
    const/16 v0, 0x8

    iput v0, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->GONE:I

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->exactMatchUlr:Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->defaultUrls:Ljava/util/List;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->listFragments:Ljava/util/List;

    .line 60
    invoke-virtual {p0}, Lcom/fiio/music/network/activity/SearchCoverActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->manager:Landroid/support/v4/app/FragmentManager;

    .line 62
    const/4 v0, 0x3

    iput v0, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->STYLE_PARAMTER:I

    .line 37
    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/fiio/music/network/activity/SearchCoverActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/fiio/music/network/activity/SearchCoverActivity;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->pb_search_cover:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$2(Lcom/fiio/music/network/activity/SearchCoverActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->tv_find_nothing:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/fiio/music/network/activity/SearchCoverActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->tv_search_cover__search:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/fiio/music/network/activity/SearchCoverActivity;)Lcom/fiio/music/entity/Song;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->song:Lcom/fiio/music/entity/Song;

    return-object v0
.end method

.method static synthetic access$5(Lcom/fiio/music/network/activity/SearchCoverActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->defaultUrls:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$6(Lcom/fiio/music/network/activity/SearchCoverActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->exactMatchUlr:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$7(Lcom/fiio/music/network/activity/SearchCoverActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->exactMatchUlr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lcom/fiio/music/network/activity/SearchCoverActivity;)V
    .locals 0

    .prologue
    .line 309
    invoke-direct {p0}, Lcom/fiio/music/network/activity/SearchCoverActivity;->loadDataFinish()V

    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 111
    const v0, 0x7f0b0294

    invoke-virtual {p0, v0}, Lcom/fiio/music/network/activity/SearchCoverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->iv_search_cover_back:Landroid/widget/ImageView;

    .line 112
    const v0, 0x7f0b0296

    invoke-virtual {p0, v0}, Lcom/fiio/music/network/activity/SearchCoverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->ed_search_cover_song_tittle:Landroid/widget/EditText;

    .line 113
    const v0, 0x7f0b0297

    invoke-virtual {p0, v0}, Lcom/fiio/music/network/activity/SearchCoverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->ed_search_cover_album_name:Landroid/widget/EditText;

    .line 114
    const v0, 0x7f0b029e

    invoke-virtual {p0, v0}, Lcom/fiio/music/network/activity/SearchCoverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->tv_find_nothing:Landroid/widget/TextView;

    .line 115
    const v0, 0x7f0b0298

    invoke-virtual {p0, v0}, Lcom/fiio/music/network/activity/SearchCoverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->tv_search_cover__search:Landroid/widget/TextView;

    .line 116
    const v0, 0x7f0b029d

    invoke-virtual {p0, v0}, Lcom/fiio/music/network/activity/SearchCoverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->pb_search_cover:Landroid/widget/ProgressBar;

    .line 117
    const v0, 0x7f0b029f

    invoke-virtual {p0, v0}, Lcom/fiio/music/network/activity/SearchCoverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/network/widget/MySlideMoothViewpage;

    iput-object v0, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->mViewpage:Lcom/fiio/music/network/widget/MySlideMoothViewpage;

    .line 119
    const v0, 0x7f0b0299

    invoke-virtual {p0, v0}, Lcom/fiio/music/network/activity/SearchCoverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->ll_page_num:Landroid/widget/LinearLayout;

    .line 120
    const v0, 0x7f0b029a

    invoke-virtual {p0, v0}, Lcom/fiio/music/network/activity/SearchCoverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->tv_cur_page:Landroid/widget/TextView;

    .line 121
    const v0, 0x7f0b029b

    invoke-virtual {p0, v0}, Lcom/fiio/music/network/activity/SearchCoverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->tv_dividing_line:Landroid/widget/TextView;

    .line 122
    const v0, 0x7f0b029c

    invoke-virtual {p0, v0}, Lcom/fiio/music/network/activity/SearchCoverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->tv_total_page:Landroid/widget/TextView;

    .line 124
    invoke-virtual {p0}, Lcom/fiio/music/network/activity/SearchCoverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "playingSong"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    iput-object v0, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->song:Lcom/fiio/music/entity/Song;

    .line 126
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->song:Lcom/fiio/music/entity/Song;

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->song:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->ed_search_cover_song_tittle:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->song:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fiio/music/network/d/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->song:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getAlbum()Lcom/fiio/music/entity/Album;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->song:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getAlbum()Lcom/fiio/music/entity/Album;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/entity/Album;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->ed_search_cover_album_name:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->song:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getAlbum()Lcom/fiio/music/entity/Album;

    move-result-object v1

    .line 133
    invoke-virtual {v1}, Lcom/fiio/music/entity/Album;->getName()Ljava/lang/String;

    move-result-object v1

    .line 132
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->iv_search_cover_back:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->tv_search_cover__search:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->mViewpage:Lcom/fiio/music/network/widget/MySlideMoothViewpage;

    invoke-virtual {v0, p0}, Lcom/fiio/music/network/widget/MySlideMoothViewpage;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 141
    return-void
.end method

.method private loadDataFinish()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 310
    sget-object v0, Lcom/fiio/music/network/activity/SearchCoverActivity;->TAG:Ljava/lang/String;

    const-string v1, "loadDataFinish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    sget-object v0, Lcom/fiio/music/network/activity/SearchCoverActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "defaultUrs size = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->defaultUrls:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->defaultUrls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 314
    if-gtz v2, :cond_1

    .line 315
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->ll_page_num:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->GONE:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 316
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->pb_search_cover:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->GONE:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 317
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->tv_find_nothing:Landroid/widget/TextView;

    iget v1, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->VISIBLE:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 318
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->mViewpage:Lcom/fiio/music/network/widget/MySlideMoothViewpage;

    iget v1, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->GONE:I

    invoke-virtual {v0, v1}, Lcom/fiio/music/network/widget/MySlideMoothViewpage;->setVisibility(I)V

    .line 319
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->tv_search_cover__search:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setClickable(Z)V

    .line 358
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    invoke-virtual {p0}, Lcom/fiio/music/network/activity/SearchCoverActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->listFragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 325
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-lt v1, v2, :cond_2

    .line 330
    sget-object v0, Lcom/fiio/music/network/activity/SearchCoverActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "listFragments.size() = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->listFragments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->listFragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 332
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->pb_search_cover:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->GONE:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 333
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->tv_find_nothing:Landroid/widget/TextView;

    iget v1, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->GONE:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 334
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->ll_page_num:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->VISIBLE:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 335
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->tv_total_page:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->listFragments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->tv_dividing_line:Landroid/widget/TextView;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    new-instance v0, Lcom/fiio/music/network/adapter/SearchCoverFragmentPageAdapter;

    .line 339
    iget-object v1, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->manager:Landroid/support/v4/app/FragmentManager;

    iget-object v2, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->listFragments:Ljava/util/List;

    .line 338
    invoke-direct {v0, v1, v2}, Lcom/fiio/music/network/adapter/SearchCoverFragmentPageAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Ljava/util/List;)V

    .line 340
    iget-object v1, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->mViewpage:Lcom/fiio/music/network/widget/MySlideMoothViewpage;

    invoke-virtual {v1, v0}, Lcom/fiio/music/network/widget/MySlideMoothViewpage;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 341
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->mViewpage:Lcom/fiio/music/network/widget/MySlideMoothViewpage;

    iget v1, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->VISIBLE:I

    invoke-virtual {v0, v1}, Lcom/fiio/music/network/widget/MySlideMoothViewpage;->setVisibility(I)V

    .line 342
    sget-object v0, Lcom/fiio/music/network/activity/SearchCoverActivity;->TAG:Ljava/lang/String;

    .line 343
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mViewPager.getCurrentItem() ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 344
    iget-object v2, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->mViewpage:Lcom/fiio/music/network/widget/MySlideMoothViewpage;

    invoke-virtual {v2}, Lcom/fiio/music/network/widget/MySlideMoothViewpage;->getCurrentItem()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 343
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 342
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->tv_cur_page:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->mViewpage:Lcom/fiio/music/network/widget/MySlideMoothViewpage;

    invoke-virtual {v2}, Lcom/fiio/music/network/widget/MySlideMoothViewpage;->getCurrentItem()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->tv_search_cover__search:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setClickable(Z)V

    goto/16 :goto_0

    .line 326
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->defaultUrls:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 327
    iget-object v3, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->listFragments:Ljava/util/List;

    new-instance v4, Lcom/fiio/music/network/fragment/SearchCoverFragment;

    invoke-virtual {p0}, Lcom/fiio/music/network/activity/SearchCoverActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->defaultUrls:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v4, v5, v0}, Lcom/fiio/music/network/fragment/SearchCoverFragment;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    .line 349
    :cond_4
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->ll_page_num:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->GONE:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 350
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->pb_search_cover:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->GONE:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 351
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->tv_find_nothing:Landroid/widget/TextView;

    iget v1, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->VISIBLE:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 352
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->mViewpage:Lcom/fiio/music/network/widget/MySlideMoothViewpage;

    iget v1, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->GONE:I

    invoke-virtual {v0, v1}, Lcom/fiio/music/network/widget/MySlideMoothViewpage;->setVisibility(I)V

    .line 353
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->tv_search_cover__search:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setClickable(Z)V

    goto/16 :goto_0
.end method

.method private searchCloudMusic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 146
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    sget-object v0, Lcom/fiio/music/network/activity/SearchCoverActivity;->TAG:Ljava/lang/String;

    const-string v1, "songName is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->pb_search_cover:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->GONE:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->ll_page_num:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->GONE:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->tv_find_nothing:Landroid/widget/TextView;

    iget v1, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->GONE:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->mViewpage:Lcom/fiio/music/network/widget/MySlideMoothViewpage;

    iget v1, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->GONE:I

    invoke-virtual {v0, v1}, Lcom/fiio/music/network/widget/MySlideMoothViewpage;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->tv_search_cover__search:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 307
    :goto_0
    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->pb_search_cover:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 159
    const/16 v0, 0x64

    .line 158
    invoke-static {p1, v0}, Lcom/fiio/music/network/a/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 161
    sget-object v1, Lcom/fiio/music/network/activity/SearchCoverActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "requestUrl = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-static {}, Lcom/fiio/music/network/b/a;->a()Lcom/fiio/music/network/b/a;

    .line 164
    new-instance v1, Lcom/fiio/music/network/activity/a;

    invoke-direct {v1, p0, p2}, Lcom/fiio/music/network/activity/a;-><init>(Lcom/fiio/music/network/activity/SearchCoverActivity;Ljava/lang/String;)V

    .line 163
    invoke-static {v0, p1, v1}, Lcom/fiio/music/network/b/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/fiio/music/network/b/g;)Le/g;

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 107
    :goto_0
    return-void

    .line 88
    :sswitch_0
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->ll_page_num:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->GONE:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->pb_search_cover:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->VISIBLE:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->tv_search_cover__search:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 91
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->tv_find_nothing:Landroid/widget/TextView;

    iget v1, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->GONE:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->mViewpage:Lcom/fiio/music/network/widget/MySlideMoothViewpage;

    iget v1, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->GONE:I

    invoke-virtual {v0, v1}, Lcom/fiio/music/network/widget/MySlideMoothViewpage;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->ed_search_cover_song_tittle:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->ed_search_cover_album_name:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 95
    iget-object v2, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->defaultUrls:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 96
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->exactMatchUlr:Ljava/lang/String;

    .line 97
    iget-object v2, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->song:Lcom/fiio/music/entity/Song;

    invoke-virtual {v2}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/fiio/music/network/activity/SearchCoverActivity;->searchCloudMusic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :sswitch_1
    invoke-virtual {p0}, Lcom/fiio/music/network/activity/SearchCoverActivity;->finish()V

    goto :goto_0

    .line 86
    :sswitch_data_0
    .sparse-switch
        0x7f0b0294 -> :sswitch_1
        0x7f0b0298 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0}, Lcom/fiio/music/network/activity/SearchCoverActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/a;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->STYLE_PARAMTER:I

    .line 71
    iget v0, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->STYLE_PARAMTER:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 72
    const v0, 0x7f0400e5

    invoke-virtual {p0, v0}, Lcom/fiio/music/network/activity/SearchCoverActivity;->setContentView(I)V

    .line 81
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/fiio/music/network/activity/SearchCoverActivity;->initView()V

    .line 82
    return-void

    .line 73
    :cond_1
    iget v0, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->STYLE_PARAMTER:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 74
    const v0, 0x7f0400e6

    invoke-virtual {p0, v0}, Lcom/fiio/music/network/activity/SearchCoverActivity;->setContentView(I)V

    goto :goto_0

    .line 75
    :cond_2
    iget v0, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->STYLE_PARAMTER:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 76
    const v0, 0x7f0400e7

    invoke-virtual {p0, v0}, Lcom/fiio/music/network/activity/SearchCoverActivity;->setContentView(I)V

    goto :goto_0

    .line 77
    :cond_3
    iget v0, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->STYLE_PARAMTER:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 78
    const v0, 0x7f0400e8

    invoke-virtual {p0, v0}, Lcom/fiio/music/network/activity/SearchCoverActivity;->setContentView(I)V

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 364
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .prologue
    .line 370
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    .prologue
    .line 375
    iget-object v0, p0, Lcom/fiio/music/network/activity/SearchCoverActivity;->tv_cur_page:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v2, p1, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    return-void
.end method
