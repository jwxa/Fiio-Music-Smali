.class public Lcom/fiio/music/test/simpleCursorSongAdapter;
.super Landroid/support/v4/widget/SimpleCursorAdapter;
.source "simpleCursorSongAdapter.java"


# instance fields
.field private STYLE_PARAMTER:I

.field private UI_IS_CHANGE:Z

.field private adapterFlag:I

.field private anim:Landroid/graphics/drawable/AnimationDrawable;

.field private bottomSelectorListener:Landroid/view/View$OnClickListener;

.field private context:Landroid/content/Context;

.field private curAlbumPath:Ljava/lang/String;

.field private curArtName:Ljava/lang/String;

.field private curFilePath:Ljava/lang/String;

.field private curSongName:Ljava/lang/String;

.field protected imageLoader:Lcom/b/a/b/f;

.field private interfaceFootView:Lcom/fiio/music/util/dc;

.field private listView:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

.field private mAdd_to_mylove:Landroid/widget/ImageView;

.field private mAdd_to_playlist:Landroid/widget/ImageView;

.field private mFootView:Landroid/view/View;

.field private mFoot_delete:Landroid/widget/ImageView;

.field private mFoot_play:Landroid/widget/ImageView;

.field private mFoot_send:Landroid/widget/ImageView;

.field private mOnAddMyLoveListCallBack:Lcom/fiio/music/test/j;

.field private mOnAddPlayListCallBack:Lcom/fiio/music/test/k;

.field private mOnBatchPlayerCallBack:Lcom/fiio/music/test/l;

.field private mOnDeleteCallBack:Lcom/fiio/music/test/m;

.field private mSelectedPosition:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mShowCheckBox:Z

.field private mUpdataInfoTitle:Lcom/fiio/music/test/h;

.field mediaPlayerManager:Lcom/fiio/music/service/h;

.field onScrollCallBack:Landroid/widget/AbsListView$OnScrollListener;

.field private options:Lcom/b/a/b/d;

.field private playerState:I

.field private scrollStauts:I

.field private songDao:Lcom/fiio/music/b/k;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[IILcom/fiio/music/service/h;Lcom/fiio/music/swipemenulistview/SwipeMenuListView;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 98
    invoke-direct/range {p0 .. p6}, Landroid/support/v4/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    .line 51
    iput v1, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->adapterFlag:I

    .line 59
    iput-boolean v1, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->mShowCheckBox:Z

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->mSelectedPosition:Ljava/util/List;

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->listView:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    .line 78
    iput v1, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->scrollStauts:I

    .line 81
    const/4 v0, 0x3

    iput v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->STYLE_PARAMTER:I

    .line 281
    new-instance v0, Lcom/fiio/music/test/f;

    invoke-direct {v0, p0}, Lcom/fiio/music/test/f;-><init>(Lcom/fiio/music/test/simpleCursorSongAdapter;)V

    iput-object v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->onScrollCallBack:Landroid/widget/AbsListView$OnScrollListener;

    .line 503
    new-instance v0, Lcom/fiio/music/test/g;

    invoke-direct {v0, p0}, Lcom/fiio/music/test/g;-><init>(Lcom/fiio/music/test/simpleCursorSongAdapter;)V

    iput-object v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->bottomSelectorListener:Landroid/view/View$OnClickListener;

    .line 99
    iput-object p1, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->context:Landroid/content/Context;

    .line 100
    iput-object p7, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    .line 101
    iput-object p8, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->listView:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    .line 103
    invoke-virtual {p0, p3}, Lcom/fiio/music/test/simpleCursorSongAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 104
    iput p9, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->STYLE_PARAMTER:I

    .line 105
    new-instance v0, Lcom/fiio/music/b/k;

    iget-object v1, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/fiio/music/b/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->songDao:Lcom/fiio/music/b/k;

    .line 106
    iget-object v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->listView:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    iget-object v1, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->onScrollCallBack:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 107
    invoke-direct {p0}, Lcom/fiio/music/test/simpleCursorSongAdapter;->initImageLoader()V

    .line 108
    return-void
.end method

.method static synthetic access$0(Lcom/fiio/music/test/simpleCursorSongAdapter;I)V
    .locals 0

    .prologue
    .line 78
    iput p1, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->scrollStauts:I

    return-void
.end method

.method static synthetic access$1(Lcom/fiio/music/test/simpleCursorSongAdapter;)Lcom/fiio/music/test/l;
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->mOnBatchPlayerCallBack:Lcom/fiio/music/test/l;

    return-object v0
.end method

.method static synthetic access$2(Lcom/fiio/music/test/simpleCursorSongAdapter;)Ljava/util/List;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->mSelectedPosition:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3(Lcom/fiio/music/test/simpleCursorSongAdapter;)Lcom/fiio/music/test/j;
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->mOnAddMyLoveListCallBack:Lcom/fiio/music/test/j;

    return-object v0
.end method

.method static synthetic access$4(Lcom/fiio/music/test/simpleCursorSongAdapter;)Lcom/fiio/music/test/k;
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->mOnAddPlayListCallBack:Lcom/fiio/music/test/k;

    return-object v0
.end method

.method static synthetic access$5(Lcom/fiio/music/test/simpleCursorSongAdapter;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6(Lcom/fiio/music/test/simpleCursorSongAdapter;)Lcom/fiio/music/test/m;
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->mOnDeleteCallBack:Lcom/fiio/music/test/m;

    return-object v0
.end method

.method private initFootView()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 411
    iget-object v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->mFootView:Landroid/view/View;

    const v1, 0x7f0b0062

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->mFoot_play:Landroid/widget/ImageView;

    .line 412
    iget-object v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->mFootView:Landroid/view/View;

    const v1, 0x7f0b0063

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->mAdd_to_mylove:Landroid/widget/ImageView;

    .line 413
    iget-object v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->mFootView:Landroid/view/View;

    const v1, 0x7f0b0064

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->mAdd_to_playlist:Landroid/widget/ImageView;

    .line 414
    iget-object v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->mFootView:Landroid/view/View;

    const v1, 0x7f0b0065

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->mFoot_send:Landroid/widget/ImageView;

    .line 415
    iget-object v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->mFootView:Landroid/view/View;

    const v1, 0x7f0b0066

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->mFoot_delete:Landroid/widget/ImageView;

    .line 416
    iget-object v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->mFoot_play:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->bottomSelectorListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 417
    iget-object v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->mAdd_to_mylove:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->bottomSelectorListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 418
    iget-object v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->mAdd_to_playlist:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->bottomSelectorListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 419
    iget-object v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->mFoot_send:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->bottomSelectorListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 420
    iget-object v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->mFoot_delete:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->bottomSelectorListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 421
    iget v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->adapterFlag:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 422
    iget-object v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->mAdd_to_mylove:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 423
    iget-object v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->mAdd_to_playlist:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 425
    :cond_0
    return-void
.end method

.method private initImageLoader()V
    .locals 5

    .prologue
    const v4, 0x7f020423

    const v1, 0x7f0203b0

    const v3, 0x7f020424

    const/4 v2, 0x1

    .line 111
    invoke-static {}, Lcom/b/a/b/f;->a()Lcom/b/a/b/f;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->imageLoader:Lcom/b/a/b/f;

    .line 113
    iget v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->STYLE_PARAMTER:I

    if-ne v0, v2, :cond_1

    .line 115
    new-instance v0, Lcom/b/a/b/e;

    invoke-direct {v0}, Lcom/b/a/b/e;-><init>()V

    .line 116
    invoke-virtual {v0, v1}, Lcom/b/a/b/e;->a(I)Lcom/b/a/b/e;

    move-result-object v0

    .line 117
    invoke-virtual {v0, v1}, Lcom/b/a/b/e;->b(I)Lcom/b/a/b/e;

    move-result-object v0

    .line 118
    invoke-virtual {v0, v1}, Lcom/b/a/b/e;->c(I)Lcom/b/a/b/e;

    move-result-object v0

    .line 119
    invoke-virtual {v0, v2}, Lcom/b/a/b/e;->a(Z)Lcom/b/a/b/e;

    move-result-object v0

    .line 120
    invoke-virtual {v0, v2}, Lcom/b/a/b/e;->b(Z)Lcom/b/a/b/e;

    move-result-object v0

    .line 121
    new-instance v1, Lcom/b/a/b/c/c;

    invoke-direct {v1}, Lcom/b/a/b/c/c;-><init>()V

    invoke-virtual {v0, v1}, Lcom/b/a/b/e;->a(Lcom/b/a/b/c/a;)Lcom/b/a/b/e;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Lcom/b/a/b/e;->d()Lcom/b/a/b/d;

    move-result-object v0

    .line 115
    iput-object v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->options:Lcom/b/a/b/d;

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    iget v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->STYLE_PARAMTER:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 126
    new-instance v0, Lcom/b/a/b/e;

    invoke-direct {v0}, Lcom/b/a/b/e;-><init>()V

    .line 127
    invoke-virtual {v0, v4}, Lcom/b/a/b/e;->a(I)Lcom/b/a/b/e;

    move-result-object v0

    .line 128
    invoke-virtual {v0, v4}, Lcom/b/a/b/e;->b(I)Lcom/b/a/b/e;

    move-result-object v0

    .line 129
    invoke-virtual {v0, v4}, Lcom/b/a/b/e;->c(I)Lcom/b/a/b/e;

    move-result-object v0

    .line 130
    invoke-virtual {v0, v2}, Lcom/b/a/b/e;->a(Z)Lcom/b/a/b/e;

    move-result-object v0

    .line 131
    invoke-virtual {v0, v2}, Lcom/b/a/b/e;->b(Z)Lcom/b/a/b/e;

    move-result-object v0

    .line 132
    new-instance v1, Lcom/b/a/b/c/c;

    invoke-direct {v1}, Lcom/b/a/b/c/c;-><init>()V

    invoke-virtual {v0, v1}, Lcom/b/a/b/e;->a(Lcom/b/a/b/c/a;)Lcom/b/a/b/e;

    move-result-object v0

    .line 133
    invoke-virtual {v0}, Lcom/b/a/b/e;->d()Lcom/b/a/b/d;

    move-result-object v0

    .line 126
    iput-object v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->options:Lcom/b/a/b/d;

    goto :goto_0

    .line 135
    :cond_2
    iget v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->STYLE_PARAMTER:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 136
    new-instance v0, Lcom/b/a/b/e;

    invoke-direct {v0}, Lcom/b/a/b/e;-><init>()V

    .line 137
    invoke-virtual {v0, v3}, Lcom/b/a/b/e;->a(I)Lcom/b/a/b/e;

    move-result-object v0

    .line 138
    invoke-virtual {v0, v3}, Lcom/b/a/b/e;->b(I)Lcom/b/a/b/e;

    move-result-object v0

    .line 139
    invoke-virtual {v0, v3}, Lcom/b/a/b/e;->c(I)Lcom/b/a/b/e;

    move-result-object v0

    .line 140
    invoke-virtual {v0, v2}, Lcom/b/a/b/e;->a(Z)Lcom/b/a/b/e;

    move-result-object v0

    .line 141
    invoke-virtual {v0, v2}, Lcom/b/a/b/e;->b(Z)Lcom/b/a/b/e;

    move-result-object v0

    .line 142
    new-instance v1, Lcom/b/a/b/c/c;

    invoke-direct {v1}, Lcom/b/a/b/c/c;-><init>()V

    invoke-virtual {v0, v1}, Lcom/b/a/b/e;->a(Lcom/b/a/b/c/a;)Lcom/b/a/b/e;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Lcom/b/a/b/e;->d()Lcom/b/a/b/d;

    move-result-object v0

    .line 136
    iput-object v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->options:Lcom/b/a/b/d;

    goto :goto_0

    .line 145
    :cond_3
    iget v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->STYLE_PARAMTER:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 146
    new-instance v0, Lcom/b/a/b/e;

    invoke-direct {v0}, Lcom/b/a/b/e;-><init>()V

    .line 147
    invoke-virtual {v0, v3}, Lcom/b/a/b/e;->a(I)Lcom/b/a/b/e;

    move-result-object v0

    .line 148
    invoke-virtual {v0, v3}, Lcom/b/a/b/e;->b(I)Lcom/b/a/b/e;

    move-result-object v0

    .line 149
    invoke-virtual {v0, v3}, Lcom/b/a/b/e;->c(I)Lcom/b/a/b/e;

    move-result-object v0

    .line 150
    invoke-virtual {v0, v2}, Lcom/b/a/b/e;->a(Z)Lcom/b/a/b/e;

    move-result-object v0

    .line 151
    invoke-virtual {v0, v2}, Lcom/b/a/b/e;->b(Z)Lcom/b/a/b/e;

    move-result-object v0

    .line 152
    new-instance v1, Lcom/b/a/b/c/c;

    invoke-direct {v1}, Lcom/b/a/b/c/c;-><init>()V

    invoke-virtual {v0, v1}, Lcom/b/a/b/e;->a(Lcom/b/a/b/c/a;)Lcom/b/a/b/e;

    move-result-object v0

    .line 153
    invoke-virtual {v0}, Lcom/b/a/b/e;->d()Lcom/b/a/b/d;

    move-result-object v0

    .line 146
    iput-object v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->options:Lcom/b/a/b/d;

    goto/16 :goto_0
.end method

.method private isCheckAll()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 482
    iget-object v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->listView:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->listView:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    invoke-virtual {v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->getCount()I

    move-result v1

    .line 484
    iget-object v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->mSelectedPosition:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 486
    iget-object v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-class v3, Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v0, v5}, Lcom/fiio/music/activity/LocalMusicActivity;->setItemAdapterCheckBoxFlag(Z)V

    .line 488
    if-ne v1, v2, :cond_1

    .line 489
    iget-object v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v0, v5}, Lcom/fiio/music/activity/LocalMusicActivity;->footSelectAllCheckBoxState(Z)V

    .line 493
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v0, v4}, Lcom/fiio/music/activity/LocalMusicActivity;->setItemAdapterCheckBoxFlag(Z)V

    .line 498
    :cond_0
    return-void

    .line 491
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v0, v4}, Lcom/fiio/music/activity/LocalMusicActivity;->footSelectAllCheckBoxState(Z)V

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 163
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    .line 165
    const v3, 0x7f0b0208

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 166
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 168
    new-instance v4, Lcom/fiio/music/test/i;

    invoke-direct {v4, p0}, Lcom/fiio/music/test/i;-><init>(Lcom/fiio/music/test/simpleCursorSongAdapter;)V

    .line 169
    const v0, 0x7f0b0270

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    iput-object v0, v4, Lcom/fiio/music/test/i;->a:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    .line 170
    const v0, 0x7f0b0271

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    iput-object v0, v4, Lcom/fiio/music/test/i;->b:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    .line 171
    const v0, 0x7f0b0208

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v4, Lcom/fiio/music/test/i;->c:Landroid/widget/ImageView;

    .line 172
    const v0, 0x7f0b0359

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v4, Lcom/fiio/music/test/i;->d:Landroid/widget/ImageView;

    .line 173
    const v0, 0x7f0b026d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v4, Lcom/fiio/music/test/i;->e:Landroid/widget/CheckBox;

    .line 174
    invoke-virtual {p1, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 176
    const-string v0, "_id"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 177
    const v0, 0x7f0b0270

    invoke-virtual {p1, v0, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 178
    const-string v0, "Aname"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->curSongName:Ljava/lang/String;

    .line 179
    const-string v0, "Bname"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->curArtName:Ljava/lang/String;

    .line 180
    const-string v0, "filePath"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->curFilePath:Ljava/lang/String;

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "file://"

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "albumPath"

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->curAlbumPath:Ljava/lang/String;

    .line 185
    iget-object v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->h()Lcom/fiio/music/entity/Song;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 186
    iget-object v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->curFilePath:Ljava/lang/String;

    iget-object v6, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v6}, Lcom/fiio/music/service/h;->k()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 187
    iget-object v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->curSongName:Ljava/lang/String;

    iget-object v6, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v6}, Lcom/fiio/music/service/h;->h()Lcom/fiio/music/entity/Song;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 188
    :goto_0
    if-eqz v0, :cond_e

    .line 190
    iget-object v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->m()I

    move-result v0

    iput v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->playerState:I

    .line 191
    iget v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->playerState:I

    if-ne v0, v8, :cond_7

    .line 192
    iget v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->STYLE_PARAMTER:I

    if-ne v0, v1, :cond_4

    .line 193
    iget-object v0, v4, Lcom/fiio/music/test/i;->c:Landroid/widget/ImageView;

    const v6, 0x7f050002

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 202
    :cond_0
    :goto_1
    iget-object v0, v4, Lcom/fiio/music/test/i;->a:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    invoke-virtual {v0, v7}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 203
    iget-object v0, v4, Lcom/fiio/music/test/i;->b:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    invoke-virtual {v0, v7}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 204
    iget-object v0, v4, Lcom/fiio/music/test/i;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->anim:Landroid/graphics/drawable/AnimationDrawable;

    .line 205
    iget-object v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->anim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 237
    :cond_1
    :goto_2
    iget-boolean v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->mShowCheckBox:Z

    if-eqz v0, :cond_10

    .line 238
    iget-object v0, v4, Lcom/fiio/music/test/i;->e:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 240
    iget-object v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->mSelectedPosition:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 241
    iget-object v0, v4, Lcom/fiio/music/test/i;->e:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 245
    :goto_3
    invoke-direct {p0}, Lcom/fiio/music/test/simpleCursorSongAdapter;->isCheckAll()V

    .line 251
    :goto_4
    iget v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->scrollStauts:I

    if-nez v0, :cond_11

    .line 252
    iget-object v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->songDao:Lcom/fiio/music/b/k;

    invoke-virtual {v0, v5}, Lcom/fiio/music/b/k;->g(Ljava/lang/String;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    .line 253
    iget v1, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->STYLE_PARAMTER:I

    iget-object v2, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->imageLoader:Lcom/b/a/b/f;

    invoke-static {v0, v1, v2, v3}, Lcom/fiio/music/util/h;->a(Lcom/fiio/music/entity/Song;ILandroid/content/Context;Lcom/b/a/b/f;)Ljava/lang/String;

    move-result-object v0

    .line 254
    iget-object v1, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->imageLoader:Lcom/b/a/b/f;

    .line 255
    iget-object v2, v4, Lcom/fiio/music/test/i;->d:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->options:Lcom/b/a/b/d;

    .line 254
    invoke-virtual {v1, v0, v2, v3}, Lcom/b/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/b/a/b/d;)V

    .line 270
    :cond_2
    :goto_5
    iget-object v0, v4, Lcom/fiio/music/test/i;->a:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    const-string v1, "Aname"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    iget-object v0, v4, Lcom/fiio/music/test/i;->a:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    const-string v1, "filePath"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setTag(Ljava/lang/Object;)V

    .line 272
    iget-object v0, v4, Lcom/fiio/music/test/i;->b:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    const-string v1, "Bname"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    iget-object v0, v4, Lcom/fiio/music/test/i;->b:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    const-string v1, "_id"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setTag(Ljava/lang/Object;)V

    .line 275
    return-void

    :cond_3
    move v0, v2

    .line 185
    goto/16 :goto_0

    .line 194
    :cond_4
    iget v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->STYLE_PARAMTER:I

    if-ne v0, v8, :cond_5

    .line 195
    iget-object v0, v4, Lcom/fiio/music/test/i;->c:Landroid/widget/ImageView;

    const v6, 0x7f050003

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 196
    :cond_5
    iget v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->STYLE_PARAMTER:I

    if-ne v0, v9, :cond_6

    .line 197
    iget-object v0, v4, Lcom/fiio/music/test/i;->c:Landroid/widget/ImageView;

    const v6, 0x7f050004

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 198
    :cond_6
    iget v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->STYLE_PARAMTER:I

    const/4 v6, 0x4

    if-ne v0, v6, :cond_0

    .line 199
    iget-object v0, v4, Lcom/fiio/music/test/i;->c:Landroid/widget/ImageView;

    const v6, 0x7f050004

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 206
    :cond_7
    iget v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->playerState:I

    if-eq v0, v9, :cond_8

    .line 207
    iget v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->playerState:I

    const/4 v6, 0x4

    if-ne v0, v6, :cond_d

    .line 209
    :cond_8
    iget v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->STYLE_PARAMTER:I

    if-ne v0, v1, :cond_a

    .line 210
    iget-object v0, v4, Lcom/fiio/music/test/i;->c:Landroid/widget/ImageView;

    const v6, 0x7f050002

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 219
    :cond_9
    :goto_6
    iget-object v0, v4, Lcom/fiio/music/test/i;->a:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v6}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 220
    iget-object v0, v4, Lcom/fiio/music/test/i;->b:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v6}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 221
    iget-object v0, v4, Lcom/fiio/music/test/i;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->anim:Landroid/graphics/drawable/AnimationDrawable;

    .line 222
    iget-object v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->anim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto/16 :goto_2

    .line 211
    :cond_a
    iget v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->STYLE_PARAMTER:I

    if-ne v0, v8, :cond_b

    .line 212
    iget-object v0, v4, Lcom/fiio/music/test/i;->c:Landroid/widget/ImageView;

    const v6, 0x7f050003

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_6

    .line 213
    :cond_b
    iget v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->STYLE_PARAMTER:I

    if-ne v0, v9, :cond_c

    .line 214
    iget-object v0, v4, Lcom/fiio/music/test/i;->c:Landroid/widget/ImageView;

    const v6, 0x7f050004

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_6

    .line 215
    :cond_c
    iget v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->STYLE_PARAMTER:I

    const/4 v6, 0x4

    if-ne v0, v6, :cond_9

    .line 216
    iget-object v0, v4, Lcom/fiio/music/test/i;->c:Landroid/widget/ImageView;

    const v6, 0x7f050004

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_6

    .line 223
    :cond_d
    iget v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->playerState:I

    const/4 v6, 0x5

    if-ne v0, v6, :cond_1

    .line 224
    iget-object v0, v4, Lcom/fiio/music/test/i;->a:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    invoke-virtual {v0, v7}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 225
    iget-object v0, v4, Lcom/fiio/music/test/i;->b:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    invoke-virtual {v0, v7}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 226
    iget-object v0, v4, Lcom/fiio/music/test/i;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_2

    .line 229
    :cond_e
    iget-object v0, v4, Lcom/fiio/music/test/i;->a:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v6}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 230
    iget-object v0, v4, Lcom/fiio/music/test/i;->b:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    invoke-virtual {v0, v7}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 231
    iget-object v0, v4, Lcom/fiio/music/test/i;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_2

    .line 243
    :cond_f
    iget-object v0, v4, Lcom/fiio/music/test/i;->e:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_3

    .line 247
    :cond_10
    iget-object v0, v4, Lcom/fiio/music/test/i;->e:Landroid/widget/CheckBox;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_4

    .line 257
    :cond_11
    iget v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->STYLE_PARAMTER:I

    if-ne v0, v1, :cond_12

    .line 258
    iget-object v0, v4, Lcom/fiio/music/test/i;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0203b0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5

    .line 259
    :cond_12
    iget v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->STYLE_PARAMTER:I

    if-ne v0, v8, :cond_13

    .line 260
    iget-object v0, v4, Lcom/fiio/music/test/i;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020423

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5

    .line 261
    :cond_13
    iget v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->STYLE_PARAMTER:I

    if-ne v0, v9, :cond_14

    .line 262
    iget-object v0, v4, Lcom/fiio/music/test/i;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020424

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5

    .line 263
    :cond_14
    iget v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->STYLE_PARAMTER:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 264
    iget-object v0, v4, Lcom/fiio/music/test/i;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020424

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5
.end method

.method public cancelSelect()V
    .locals 2

    .prologue
    .line 470
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->mShowCheckBox:Z

    .line 471
    iget-object v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->mFootView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->mFootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->mFootView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 473
    iget-object v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->mSelectedPosition:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 474
    invoke-super {p0}, Landroid/support/v4/widget/SimpleCursorAdapter;->notifyDataSetChanged()V

    .line 475
    iget-object v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->interfaceFootView:Lcom/fiio/music/util/dc;

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->interfaceFootView:Lcom/fiio/music/util/dc;

    invoke-interface {v0}, Lcom/fiio/music/util/dc;->a()V

    .line 479
    :cond_0
    return-void
.end method

.method public footViewCanceAll()V
    .locals 2

    .prologue
    .line 431
    iget-object v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->mSelectedPosition:Ljava/util/List;

    iget-object v1, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->mSelectedPosition:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 432
    iget-object v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->mSelectedPosition:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 433
    iget-object v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->mUpdataInfoTitle:Lcom/fiio/music/test/h;

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->mUpdataInfoTitle:Lcom/fiio/music/test/h;

    iget-object v1, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->mSelectedPosition:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/fiio/music/test/h;->a(I)V

    .line 436
    :cond_0
    invoke-virtual {p0}, Lcom/fiio/music/test/simpleCursorSongAdapter;->notifyDataSetChanged()V

    .line 437
    return-void
.end method

.method public footViewSelectAll()V
    .locals 4

    .prologue
    .line 443
    iget-object v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->listView:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->mSelectedPosition:Ljava/util/List;

    iget-object v1, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->mSelectedPosition:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 445
    iget-object v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->mSelectedPosition:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 447
    iget-object v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->listView:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    invoke-virtual {v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->getCount()I

    move-result v1

    .line 448
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_1

    .line 451
    iget-object v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->mUpdataInfoTitle:Lcom/fiio/music/test/h;

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->mUpdataInfoTitle:Lcom/fiio/music/test/h;

    iget-object v1, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->mSelectedPosition:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/fiio/music/test/h;->a(I)V

    .line 455
    :cond_0
    invoke-virtual {p0}, Lcom/fiio/music/test/simpleCursorSongAdapter;->notifyDataSetChanged()V

    .line 456
    return-void

    .line 449
    :cond_1
    iget-object v2, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->mSelectedPosition:Ljava/util/List;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 448
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getShowCheckBoxState()Z
    .locals 1

    .prologue
    .line 463
    iget-boolean v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->mShowCheckBox:Z

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 327
    iget v1, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->STYLE_PARAMTER:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 328
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040128

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 336
    :cond_0
    :goto_0
    return-object v0

    .line 329
    :cond_1
    iget v1, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->STYLE_PARAMTER:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 330
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040129

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 331
    :cond_2
    iget v1, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->STYLE_PARAMTER:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 332
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04012a

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 333
    :cond_3
    iget v1, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->STYLE_PARAMTER:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 334
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04012b

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public setFootView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 404
    iput-object p1, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->mFootView:Landroid/view/View;

    .line 405
    invoke-direct {p0}, Lcom/fiio/music/test/simpleCursorSongAdapter;->initFootView()V

    .line 406
    return-void
.end method

.method public setFootViewItf(Lcom/fiio/music/util/dc;)V
    .locals 0

    .prologue
    .line 401
    iput-object p1, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->interfaceFootView:Lcom/fiio/music/util/dc;

    .line 402
    return-void
.end method

.method public setOnAddMyLoveListCallBack(Lcom/fiio/music/test/j;)V
    .locals 0

    .prologue
    .line 570
    iput-object p1, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->mOnAddMyLoveListCallBack:Lcom/fiio/music/test/j;

    .line 571
    return-void
.end method

.method public setOnAddPlayListCallBack(Lcom/fiio/music/test/k;)V
    .locals 0

    .prologue
    .line 556
    iput-object p1, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->mOnAddPlayListCallBack:Lcom/fiio/music/test/k;

    .line 557
    return-void
.end method

.method public setOnBatchPlayerCallBack(Lcom/fiio/music/test/l;)V
    .locals 0

    .prologue
    .line 598
    iput-object p1, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->mOnBatchPlayerCallBack:Lcom/fiio/music/test/l;

    .line 599
    return-void
.end method

.method public setOnDeleteCallBack(Lcom/fiio/music/test/m;)V
    .locals 0

    .prologue
    .line 585
    iput-object p1, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->mOnDeleteCallBack:Lcom/fiio/music/test/m;

    .line 586
    return-void
.end method

.method public setPlayerManager(Lcom/fiio/music/service/h;)V
    .locals 1

    .prologue
    .line 341
    iput-object p1, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    .line 342
    invoke-virtual {p1}, Lcom/fiio/music/service/h;->m()I

    move-result v0

    iput v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->playerState:I

    .line 343
    invoke-virtual {p0}, Lcom/fiio/music/test/simpleCursorSongAdapter;->notifyDataSetChanged()V

    .line 344
    return-void
.end method

.method public setPlayerState(I)V
    .locals 0

    .prologue
    .line 347
    iput p1, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->playerState:I

    .line 348
    invoke-virtual {p0}, Lcom/fiio/music/test/simpleCursorSongAdapter;->notifyDataSetChanged()V

    .line 350
    return-void
.end method

.method public setUpdataInfoTitle(Lcom/fiio/music/test/h;)V
    .locals 0

    .prologue
    .line 377
    iput-object p1, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->mUpdataInfoTitle:Lcom/fiio/music/test/h;

    .line 378
    return-void
.end method

.method public showCheckBox(Z)V
    .locals 0

    .prologue
    .line 397
    iput-boolean p1, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->mShowCheckBox:Z

    .line 398
    return-void
.end method

.method public showFootView()V
    .locals 2

    .prologue
    .line 384
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/fiio/music/test/simpleCursorSongAdapter;->showCheckBox(Z)V

    .line 385
    invoke-virtual {p0}, Lcom/fiio/music/test/simpleCursorSongAdapter;->notifyDataSetChanged()V

    .line 386
    iget-object v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->mFootView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->mFootView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->interfaceFootView:Lcom/fiio/music/util/dc;

    if-eqz v0, :cond_1

    .line 389
    iget-object v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->interfaceFootView:Lcom/fiio/music/util/dc;

    invoke-interface {v0}, Lcom/fiio/music/util/dc;->b()V

    .line 390
    :cond_1
    return-void
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 321
    invoke-super {p0, p1}, Landroid/support/v4/widget/SimpleCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public toggleCheckBox(I)V
    .locals 2

    .prologue
    .line 357
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 358
    iget-object v1, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->mSelectedPosition:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 359
    iget-object v1, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->mSelectedPosition:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 363
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->mUpdataInfoTitle:Lcom/fiio/music/test/h;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->mUpdataInfoTitle:Lcom/fiio/music/test/h;

    iget-object v1, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->mSelectedPosition:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/fiio/music/test/h;->a(I)V

    .line 365
    :cond_0
    invoke-virtual {p0}, Lcom/fiio/music/test/simpleCursorSongAdapter;->notifyDataSetChanged()V

    .line 366
    return-void

    .line 361
    :cond_1
    iget-object v1, p0, Lcom/fiio/music/test/simpleCursorSongAdapter;->mSelectedPosition:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
