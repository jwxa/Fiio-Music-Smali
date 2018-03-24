.class public Lcom/fiio/music/adapter/ListItemAdapter;
.super Landroid/widget/BaseAdapter;
.source "ListItemAdapter.java"


# instance fields
.field public LISTS_FLAG:I

.field private STYLE_PARAMTER:I

.field private UI_IS_CHANGE:Z

.field private _idArray:[I

.field private _itemCount:I

.field private anim:Landroid/graphics/drawable/AnimationDrawable;

.field private bottomSelectorListener:Landroid/view/View$OnClickListener;

.field private context:Landroid/content/Context;

.field private curAlbumPath:Ljava/lang/String;

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

.field private defaultIcon:I

.field private idString:Ljava/lang/String;

.field protected imageLoader:Lcom/b/a/b/f;

.field private interfaceFootView:Lcom/fiio/music/util/dc;

.field isPlayListView:Z

.field private listView:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

.field private final localMusicActivity:Ljava/lang/String;

.field private mAdd_to_mylove:Landroid/widget/ImageView;

.field private mAdd_to_playlist:Landroid/widget/ImageView;

.field private mFootView:Landroid/view/View;

.field private mFoot_delete:Landroid/widget/ImageView;

.field private mFoot_play:Landroid/widget/ImageView;

.field private mFoot_send:Landroid/widget/ImageView;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mPlayMusic:Z

.field private mSelectedItem:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mShowCheckBox:Z

.field private mUpdataInfoTitle:Lcom/fiio/music/adapter/ListItemAdapter$UpdataInfoTitle;

.field private mediaPlayerManager:Lcom/fiio/music/service/h;

.field private myHandler:Landroid/os/Handler;

.field private options:Lcom/b/a/b/d;

.field private playListManager:Lcom/fiio/music/util/bw;

.field private playerId:I

.field private playerState:I

.field private scrollStauts:I

.field private songDao:Lcom/fiio/music/b/k;

.field private toast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/fiio/music/service/h;ILcom/fiio/music/b/k;Ljava/lang/String;Landroid/view/View$OnClickListener;Lcom/fiio/music/swipemenulistview/SwipeMenuListView;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;",
            "Lcom/fiio/music/service/h;",
            "I",
            "Lcom/fiio/music/b/k;",
            "Ljava/lang/String;",
            "Landroid/view/View$OnClickListener;",
            "Lcom/fiio/music/swipemenulistview/SwipeMenuListView;",
            "I)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 46
    const-string v0, "class com.fiio.music.activity.LocalMusicActivity"

    iput-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->localMusicActivity:Ljava/lang/String;

    .line 50
    iput-boolean v1, p0, Lcom/fiio/music/adapter/ListItemAdapter;->isPlayListView:Z

    .line 60
    iput-boolean v1, p0, Lcom/fiio/music/adapter/ListItemAdapter;->mShowCheckBox:Z

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->mSelectedItem:Ljava/util/List;

    .line 67
    iput-boolean v1, p0, Lcom/fiio/music/adapter/ListItemAdapter;->mPlayMusic:Z

    .line 77
    const/4 v0, 0x3

    iput v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->STYLE_PARAMTER:I

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->listView:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    .line 80
    iput v1, p0, Lcom/fiio/music/adapter/ListItemAdapter;->scrollStauts:I

    .line 414
    new-instance v0, Lcom/fiio/music/adapter/l;

    invoke-direct {v0, p0}, Lcom/fiio/music/adapter/l;-><init>(Lcom/fiio/music/adapter/ListItemAdapter;)V

    iput-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->bottomSelectorListener:Landroid/view/View$OnClickListener;

    .line 580
    const/4 v0, 0x2

    iput v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->LISTS_FLAG:I

    .line 582
    new-instance v0, Lcom/fiio/music/adapter/o;

    invoke-direct {v0, p0}, Lcom/fiio/music/adapter/o;-><init>(Lcom/fiio/music/adapter/ListItemAdapter;)V

    iput-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->myHandler:Landroid/os/Handler;

    .line 83
    iput-object p1, p0, Lcom/fiio/music/adapter/ListItemAdapter;->context:Landroid/content/Context;

    .line 84
    iput-object p2, p0, Lcom/fiio/music/adapter/ListItemAdapter;->data:Ljava/util/List;

    .line 85
    iput p4, p0, Lcom/fiio/music/adapter/ListItemAdapter;->defaultIcon:I

    .line 86
    iput-object p5, p0, Lcom/fiio/music/adapter/ListItemAdapter;->songDao:Lcom/fiio/music/b/k;

    .line 87
    iput-object p6, p0, Lcom/fiio/music/adapter/ListItemAdapter;->idString:Ljava/lang/String;

    .line 88
    iput-object p3, p0, Lcom/fiio/music/adapter/ListItemAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    .line 89
    invoke-virtual {p3}, Lcom/fiio/music/service/h;->m()I

    move-result v0

    iput v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->playerState:I

    .line 90
    invoke-virtual {p3}, Lcom/fiio/music/service/h;->i()I

    move-result v0

    iput v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->playerId:I

    .line 91
    iput-object p7, p0, Lcom/fiio/music/adapter/ListItemAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 92
    iput p9, p0, Lcom/fiio/music/adapter/ListItemAdapter;->STYLE_PARAMTER:I

    .line 93
    invoke-direct {p0}, Lcom/fiio/music/adapter/ListItemAdapter;->initImageLoader()V

    .line 94
    iput-object p8, p0, Lcom/fiio/music/adapter/ListItemAdapter;->listView:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    .line 96
    iget-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->listView:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    new-instance v1, Lcom/fiio/music/adapter/p;

    invoke-direct {v1, p0}, Lcom/fiio/music/adapter/p;-><init>(Lcom/fiio/music/adapter/ListItemAdapter;)V

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 127
    return-void
.end method

.method static synthetic access$0(Lcom/fiio/music/adapter/ListItemAdapter;)Ljava/util/List;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->mSelectedItem:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lcom/fiio/music/adapter/ListItemAdapter;)Lcom/fiio/music/b/k;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->songDao:Lcom/fiio/music/b/k;

    return-object v0
.end method

.method static synthetic access$10(Lcom/fiio/music/adapter/ListItemAdapter;I)V
    .locals 0

    .prologue
    .line 412
    iput p1, p0, Lcom/fiio/music/adapter/ListItemAdapter;->_itemCount:I

    return-void
.end method

.method static synthetic access$11(Lcom/fiio/music/adapter/ListItemAdapter;)I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->STYLE_PARAMTER:I

    return v0
.end method

.method static synthetic access$12(Lcom/fiio/music/adapter/ListItemAdapter;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->myHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$13(Lcom/fiio/music/adapter/ListItemAdapter;)[I
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->_idArray:[I

    return-object v0
.end method

.method static synthetic access$14(Lcom/fiio/music/adapter/ListItemAdapter;)I
    .locals 1

    .prologue
    .line 412
    iget v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->_itemCount:I

    return v0
.end method

.method static synthetic access$15(Lcom/fiio/music/adapter/ListItemAdapter;)Ljava/util/List;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->data:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$16(Lcom/fiio/music/adapter/ListItemAdapter;)V
    .locals 0

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/fiio/music/adapter/ListItemAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method static synthetic access$17(Lcom/fiio/music/adapter/ListItemAdapter;I)V
    .locals 0

    .prologue
    .line 80
    iput p1, p0, Lcom/fiio/music/adapter/ListItemAdapter;->scrollStauts:I

    return-void
.end method

.method static synthetic access$2(Lcom/fiio/music/adapter/ListItemAdapter;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->idString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/fiio/music/adapter/ListItemAdapter;)Lcom/fiio/music/service/h;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    return-object v0
.end method

.method static synthetic access$4(Lcom/fiio/music/adapter/ListItemAdapter;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5(Lcom/fiio/music/adapter/ListItemAdapter;)Landroid/widget/Toast;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->toast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$6(Lcom/fiio/music/adapter/ListItemAdapter;Landroid/widget/Toast;)V
    .locals 0

    .prologue
    .line 413
    iput-object p1, p0, Lcom/fiio/music/adapter/ListItemAdapter;->toast:Landroid/widget/Toast;

    return-void
.end method

.method static synthetic access$7(Lcom/fiio/music/adapter/ListItemAdapter;Lcom/fiio/music/util/bw;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/fiio/music/adapter/ListItemAdapter;->playListManager:Lcom/fiio/music/util/bw;

    return-void
.end method

.method static synthetic access$8(Lcom/fiio/music/adapter/ListItemAdapter;)Lcom/fiio/music/util/bw;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->playListManager:Lcom/fiio/music/util/bw;

    return-object v0
.end method

.method static synthetic access$9(Lcom/fiio/music/adapter/ListItemAdapter;[I)V
    .locals 0

    .prologue
    .line 411
    iput-object p1, p0, Lcom/fiio/music/adapter/ListItemAdapter;->_idArray:[I

    return-void
.end method

.method private initFootView()V
    .locals 2

    .prologue
    .line 400
    iget-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->mFootView:Landroid/view/View;

    const v1, 0x7f0b0062

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->mFoot_play:Landroid/widget/ImageView;

    .line 401
    iget-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->mFootView:Landroid/view/View;

    const v1, 0x7f0b0063

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->mAdd_to_mylove:Landroid/widget/ImageView;

    .line 402
    iget-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->mFootView:Landroid/view/View;

    const v1, 0x7f0b0064

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->mAdd_to_playlist:Landroid/widget/ImageView;

    .line 403
    iget-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->mFootView:Landroid/view/View;

    const v1, 0x7f0b0065

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->mFoot_send:Landroid/widget/ImageView;

    .line 404
    iget-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->mFootView:Landroid/view/View;

    const v1, 0x7f0b0066

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->mFoot_delete:Landroid/widget/ImageView;

    .line 405
    iget-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->mFoot_play:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fiio/music/adapter/ListItemAdapter;->bottomSelectorListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 406
    iget-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->mAdd_to_mylove:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fiio/music/adapter/ListItemAdapter;->bottomSelectorListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 407
    iget-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->mAdd_to_playlist:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fiio/music/adapter/ListItemAdapter;->bottomSelectorListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 408
    iget-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->mFoot_send:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fiio/music/adapter/ListItemAdapter;->bottomSelectorListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 409
    iget-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->mFoot_delete:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fiio/music/adapter/ListItemAdapter;->bottomSelectorListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 410
    return-void
.end method

.method private initImageLoader()V
    .locals 5

    .prologue
    const v4, 0x7f020424

    const v3, 0x7f020423

    const v1, 0x7f0203b0

    const/4 v2, 0x1

    .line 135
    invoke-static {}, Lcom/b/a/b/f;->a()Lcom/b/a/b/f;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->imageLoader:Lcom/b/a/b/f;

    .line 138
    iget v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->STYLE_PARAMTER:I

    if-ne v0, v2, :cond_1

    .line 139
    new-instance v0, Lcom/b/a/b/e;

    invoke-direct {v0}, Lcom/b/a/b/e;-><init>()V

    .line 140
    invoke-virtual {v0, v1}, Lcom/b/a/b/e;->a(I)Lcom/b/a/b/e;

    move-result-object v0

    .line 141
    invoke-virtual {v0, v1}, Lcom/b/a/b/e;->b(I)Lcom/b/a/b/e;

    move-result-object v0

    .line 142
    invoke-virtual {v0, v1}, Lcom/b/a/b/e;->c(I)Lcom/b/a/b/e;

    move-result-object v0

    .line 143
    invoke-virtual {v0, v2}, Lcom/b/a/b/e;->a(Z)Lcom/b/a/b/e;

    move-result-object v0

    .line 144
    invoke-virtual {v0, v2}, Lcom/b/a/b/e;->b(Z)Lcom/b/a/b/e;

    move-result-object v0

    .line 145
    new-instance v1, Lcom/b/a/b/c/c;

    invoke-direct {v1}, Lcom/b/a/b/c/c;-><init>()V

    invoke-virtual {v0, v1}, Lcom/b/a/b/e;->a(Lcom/b/a/b/c/a;)Lcom/b/a/b/e;

    move-result-object v0

    .line 146
    invoke-virtual {v0}, Lcom/b/a/b/e;->d()Lcom/b/a/b/d;

    move-result-object v0

    .line 139
    iput-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->options:Lcom/b/a/b/d;

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    iget v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->STYLE_PARAMTER:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 149
    new-instance v0, Lcom/b/a/b/e;

    invoke-direct {v0}, Lcom/b/a/b/e;-><init>()V

    .line 150
    invoke-virtual {v0, v3}, Lcom/b/a/b/e;->a(I)Lcom/b/a/b/e;

    move-result-object v0

    .line 151
    invoke-virtual {v0, v3}, Lcom/b/a/b/e;->b(I)Lcom/b/a/b/e;

    move-result-object v0

    .line 152
    invoke-virtual {v0, v3}, Lcom/b/a/b/e;->c(I)Lcom/b/a/b/e;

    move-result-object v0

    .line 153
    invoke-virtual {v0, v2}, Lcom/b/a/b/e;->a(Z)Lcom/b/a/b/e;

    move-result-object v0

    .line 154
    invoke-virtual {v0, v2}, Lcom/b/a/b/e;->b(Z)Lcom/b/a/b/e;

    move-result-object v0

    .line 155
    new-instance v1, Lcom/b/a/b/c/c;

    invoke-direct {v1}, Lcom/b/a/b/c/c;-><init>()V

    invoke-virtual {v0, v1}, Lcom/b/a/b/e;->a(Lcom/b/a/b/c/a;)Lcom/b/a/b/e;

    move-result-object v0

    .line 156
    invoke-virtual {v0}, Lcom/b/a/b/e;->d()Lcom/b/a/b/d;

    move-result-object v0

    .line 149
    iput-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->options:Lcom/b/a/b/d;

    goto :goto_0

    .line 158
    :cond_2
    iget v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->STYLE_PARAMTER:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->STYLE_PARAMTER:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 159
    :cond_3
    new-instance v0, Lcom/b/a/b/e;

    invoke-direct {v0}, Lcom/b/a/b/e;-><init>()V

    .line 160
    invoke-virtual {v0, v4}, Lcom/b/a/b/e;->a(I)Lcom/b/a/b/e;

    move-result-object v0

    .line 161
    invoke-virtual {v0, v4}, Lcom/b/a/b/e;->b(I)Lcom/b/a/b/e;

    move-result-object v0

    .line 162
    invoke-virtual {v0, v4}, Lcom/b/a/b/e;->c(I)Lcom/b/a/b/e;

    move-result-object v0

    .line 163
    invoke-virtual {v0, v2}, Lcom/b/a/b/e;->a(Z)Lcom/b/a/b/e;

    move-result-object v0

    .line 164
    invoke-virtual {v0, v2}, Lcom/b/a/b/e;->b(Z)Lcom/b/a/b/e;

    move-result-object v0

    .line 165
    new-instance v1, Lcom/b/a/b/c/c;

    invoke-direct {v1}, Lcom/b/a/b/c/c;-><init>()V

    invoke-virtual {v0, v1}, Lcom/b/a/b/e;->a(Lcom/b/a/b/c/a;)Lcom/b/a/b/e;

    move-result-object v0

    .line 166
    invoke-virtual {v0}, Lcom/b/a/b/e;->d()Lcom/b/a/b/d;

    move-result-object v0

    .line 159
    iput-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->options:Lcom/b/a/b/d;

    goto :goto_0
.end method

.method private isCheckAll(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 386
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 387
    iget-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 389
    iget-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "class com.fiio.music.activity.LocalMusicActivity"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v0, v5}, Lcom/fiio/music/activity/LocalMusicActivity;->setItemAdapterCheckBoxFlag(Z)V

    .line 391
    if-ne v1, v2, :cond_1

    .line 392
    iget-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v0, v5}, Lcom/fiio/music/activity/LocalMusicActivity;->footSelectAllCheckBoxState(Z)V

    .line 396
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v0, v4}, Lcom/fiio/music/activity/LocalMusicActivity;->setItemAdapterCheckBoxFlag(Z)V

    .line 398
    :cond_0
    return-void

    .line 394
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v0, v4}, Lcom/fiio/music/activity/LocalMusicActivity;->footSelectAllCheckBoxState(Z)V

    goto :goto_0
.end method

.method private updateUI()V
    .locals 0

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/fiio/music/adapter/ListItemAdapter;->notifyDataSetChanged()V

    .line 131
    return-void
.end method


# virtual methods
.method public cancelSelect()V
    .locals 2

    .prologue
    .line 624
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->mShowCheckBox:Z

    .line 625
    iget-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->mFootView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->mFootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 626
    iget-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->mFootView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 628
    iget-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->mSelectedItem:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 629
    iget-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->interfaceFootView:Lcom/fiio/music/util/dc;

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->interfaceFootView:Lcom/fiio/music/util/dc;

    invoke-interface {v0}, Lcom/fiio/music/util/dc;->a()V

    .line 631
    :cond_0
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 633
    :cond_1
    return-void
.end method

.method public footViewCanceAll()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 651
    iget-object v1, p0, Lcom/fiio/music/adapter/ListItemAdapter;->mSelectedItem:Ljava/util/List;

    iget-object v2, p0, Lcom/fiio/music/adapter/ListItemAdapter;->mSelectedItem:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 652
    iget-object v1, p0, Lcom/fiio/music/adapter/ListItemAdapter;->mUpdataInfoTitle:Lcom/fiio/music/adapter/ListItemAdapter$UpdataInfoTitle;

    if-eqz v1, :cond_0

    move v1, v0

    move v2, v0

    .line 654
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->mSelectedItem:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    .line 657
    iget-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->mUpdataInfoTitle:Lcom/fiio/music/adapter/ListItemAdapter$UpdataInfoTitle;

    invoke-interface {v0, v2}, Lcom/fiio/music/adapter/ListItemAdapter$UpdataInfoTitle;->upDataTitle(I)V

    .line 659
    :cond_0
    invoke-virtual {p0}, Lcom/fiio/music/adapter/ListItemAdapter;->notifyDataSetChanged()V

    .line 660
    return-void

    .line 655
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->mSelectedItem:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v2, v0

    .line 654
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public footViewSelectAll()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 663
    iget-object v1, p0, Lcom/fiio/music/adapter/ListItemAdapter;->mSelectedItem:Ljava/util/List;

    iget-object v2, p0, Lcom/fiio/music/adapter/ListItemAdapter;->mSelectedItem:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 664
    iget-object v1, p0, Lcom/fiio/music/adapter/ListItemAdapter;->mSelectedItem:Ljava/util/List;

    iget-object v2, p0, Lcom/fiio/music/adapter/ListItemAdapter;->data:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 665
    iget-object v1, p0, Lcom/fiio/music/adapter/ListItemAdapter;->mUpdataInfoTitle:Lcom/fiio/music/adapter/ListItemAdapter$UpdataInfoTitle;

    if-eqz v1, :cond_0

    move v1, v0

    move v2, v0

    .line 667
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->mSelectedItem:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    .line 670
    iget-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->mUpdataInfoTitle:Lcom/fiio/music/adapter/ListItemAdapter$UpdataInfoTitle;

    invoke-interface {v0, v2}, Lcom/fiio/music/adapter/ListItemAdapter$UpdataInfoTitle;->upDataTitle(I)V

    .line 672
    :cond_0
    invoke-virtual {p0}, Lcom/fiio/music/adapter/ListItemAdapter;->notifyDataSetChanged()V

    .line 673
    return-void

    .line 668
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->mSelectedItem:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v2, v0

    .line 667
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->data:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 176
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 184
    int-to-long v0, p1

    return-wide v0
.end method

.method public getShowCheckBoxState()Z
    .locals 1

    .prologue
    .line 681
    iget-boolean v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->mShowCheckBox:Z

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 188
    if-nez p2, :cond_7

    .line 192
    new-instance v1, Lcom/fiio/music/adapter/ListItemAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/fiio/music/adapter/ListItemAdapter$ViewHolder;-><init>(Lcom/fiio/music/adapter/ListItemAdapter;)V

    .line 194
    iget v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->STYLE_PARAMTER:I

    if-ne v0, v3, :cond_4

    .line 195
    iget-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v4, 0x7f040135

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 203
    :cond_0
    :goto_0
    const v0, 0x7f0b01b2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/fiio/music/adapter/ListItemAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 204
    const v0, 0x7f0b00d9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    iput-object v0, v1, Lcom/fiio/music/adapter/ListItemAdapter$ViewHolder;->textView:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    .line 205
    const v0, 0x7f0b00da

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    iput-object v0, v1, Lcom/fiio/music/adapter/ListItemAdapter$ViewHolder;->textCount:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    .line 206
    const v0, 0x7f0b00d4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/fiio/music/adapter/ListItemAdapter$ViewHolder;->imageView2:Landroid/widget/ImageView;

    .line 207
    const v0, 0x7f0b0208

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/fiio/music/adapter/ListItemAdapter$ViewHolder;->current_play_image_view:Landroid/widget/ImageView;

    .line 208
    const v0, 0x7f0b00d6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lcom/fiio/music/adapter/ListItemAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    .line 209
    iget-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 210
    iget-object v4, v1, Lcom/fiio/music/adapter/ListItemAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    .line 211
    invoke-virtual {v4, v0}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 212
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 216
    :goto_1
    iget-boolean v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->mShowCheckBox:Z

    if-eqz v0, :cond_9

    .line 217
    iget-object v0, v1, Lcom/fiio/music/adapter/ListItemAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 218
    iget-object v0, v1, Lcom/fiio/music/adapter/ListItemAdapter$ViewHolder;->imageView2:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 219
    iget-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 220
    iget-object v4, v1, Lcom/fiio/music/adapter/ListItemAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4, v0}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 222
    iget-object v4, p0, Lcom/fiio/music/adapter/ListItemAdapter;->mSelectedItem:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 223
    iget-object v0, v1, Lcom/fiio/music/adapter/ListItemAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 224
    iget-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->mSelectedItem:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/fiio/music/adapter/ListItemAdapter;->isCheckAll(Ljava/util/List;)V

    .line 237
    :goto_2
    iget-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v6, v0, v10

    .line 239
    iget-object v4, v1, Lcom/fiio/music/adapter/ListItemAdapter$ViewHolder;->textView:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    iget-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-virtual {v4, v0}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v4, v1, Lcom/fiio/music/adapter/ListItemAdapter$ViewHolder;->textView:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    iget-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {v4, v0}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setTag(Ljava/lang/Object;)V

    .line 241
    iget-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0c00de

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 242
    iget-object v7, v1, Lcom/fiio/music/adapter/ListItemAdapter$ViewHolder;->textCount:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    new-array v8, v3, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v9

    aput-object v0, v8, v2

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    iget-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v9

    invoke-static {v0}, Lcom/fiio/music/util/h;->a(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_a

    .line 244
    iget-object v0, v1, Lcom/fiio/music/adapter/ListItemAdapter$ViewHolder;->textCount:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setVisibility(I)V

    .line 251
    :goto_3
    iget-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->idString:Ljava/lang/String;

    const-string v4, "albumid"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->h()Lcom/fiio/music/entity/Song;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 252
    iget-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->getAlbumTabTitle()Ljava/lang/String;

    move-result-object v4

    .line 253
    if-eqz v4, :cond_1d

    .line 255
    iget-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->h()Lcom/fiio/music/entity/Song;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getArtist()Lcom/fiio/music/entity/Artist;

    move-result-object v0

    .line 258
    if-eqz v0, :cond_1e

    .line 259
    invoke-virtual {v0}, Lcom/fiio/music/entity/Artist;->getName()Ljava/lang/String;

    move-result-object v0

    .line 262
    :goto_4
    if-eqz v0, :cond_b

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v3

    .line 270
    :goto_5
    if-nez v0, :cond_d

    move v0, v2

    :goto_6
    move v4, v0

    .line 275
    :goto_7
    iget-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->idString:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->songDao:Lcom/fiio/music/b/k;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->G()Z

    move-result v0

    if-nez v0, :cond_2

    .line 276
    iget-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    iget-object v7, p0, Lcom/fiio/music/adapter/ListItemAdapter;->idString:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lcom/fiio/music/service/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 277
    if-eqz v7, :cond_18

    iget-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 278
    if-eqz v4, :cond_18

    iget-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->songDao:Lcom/fiio/music/b/k;

    iget-object v4, p0, Lcom/fiio/music/adapter/ListItemAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v4}, Lcom/fiio/music/service/h;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/fiio/music/b/k;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 279
    iget v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->playerState:I

    if-ne v0, v10, :cond_12

    .line 280
    iget v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->STYLE_PARAMTER:I

    if-ne v0, v3, :cond_f

    .line 281
    iget-object v0, v1, Lcom/fiio/music/adapter/ListItemAdapter$ViewHolder;->current_play_image_view:Landroid/widget/ImageView;

    const v2, 0x7f050002

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 289
    :cond_1
    :goto_8
    iget-object v0, v1, Lcom/fiio/music/adapter/ListItemAdapter$ViewHolder;->textView:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    invoke-virtual {v0, v5}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 290
    iget-object v0, v1, Lcom/fiio/music/adapter/ListItemAdapter$ViewHolder;->current_play_image_view:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->anim:Landroid/graphics/drawable/AnimationDrawable;

    .line 291
    iget-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->anim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 318
    :cond_2
    :goto_9
    iget v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->scrollStauts:I

    if-nez v0, :cond_19

    .line 319
    iget-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->songDao:Lcom/fiio/music/b/k;

    invoke-virtual {v0, v6}, Lcom/fiio/music/b/k;->g(Ljava/lang/String;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    iget v2, p0, Lcom/fiio/music/adapter/ListItemAdapter;->STYLE_PARAMTER:I

    iget-object v3, p0, Lcom/fiio/music/adapter/ListItemAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/fiio/music/adapter/ListItemAdapter;->imageLoader:Lcom/b/a/b/f;

    invoke-static {v0, v2, v3, v4}, Lcom/fiio/music/util/h;->a(Lcom/fiio/music/entity/Song;ILandroid/content/Context;Lcom/b/a/b/f;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->curAlbumPath:Ljava/lang/String;

    .line 327
    iget-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->imageLoader:Lcom/b/a/b/f;

    iget-object v2, p0, Lcom/fiio/music/adapter/ListItemAdapter;->curAlbumPath:Ljava/lang/String;

    .line 328
    iget-object v1, v1, Lcom/fiio/music/adapter/ListItemAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/fiio/music/adapter/ListItemAdapter;->options:Lcom/b/a/b/d;

    .line 327
    invoke-virtual {v0, v2, v1, v3}, Lcom/b/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/b/a/b/d;)V

    .line 344
    :cond_3
    :goto_a
    return-object p2

    .line 196
    :cond_4
    iget v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->STYLE_PARAMTER:I

    if-ne v0, v10, :cond_5

    .line 197
    iget-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v4, 0x7f040136

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 198
    :cond_5
    iget v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->STYLE_PARAMTER:I

    if-ne v0, v9, :cond_6

    .line 199
    iget-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v4, 0x7f040137

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 200
    :cond_6
    iget v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->STYLE_PARAMTER:I

    const/4 v4, 0x4

    if-ne v0, v4, :cond_0

    .line 201
    iget-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v4, 0x7f040138

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 214
    :cond_7
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/adapter/ListItemAdapter$ViewHolder;

    move-object v1, v0

    goto/16 :goto_1

    .line 226
    :cond_8
    iget-object v0, v1, Lcom/fiio/music/adapter/ListItemAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 227
    iget-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->mSelectedItem:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/fiio/music/adapter/ListItemAdapter;->isCheckAll(Ljava/util/List;)V

    goto/16 :goto_2

    .line 230
    :cond_9
    iget-object v0, v1, Lcom/fiio/music/adapter/ListItemAdapter$ViewHolder;->imageView2:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 233
    iget-object v4, v1, Lcom/fiio/music/adapter/ListItemAdapter$ViewHolder;->imageView2:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 234
    iget-object v0, v1, Lcom/fiio/music/adapter/ListItemAdapter$ViewHolder;->imageView2:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/fiio/music/adapter/ListItemAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    iget-object v0, v1, Lcom/fiio/music/adapter/ListItemAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_2

    .line 246
    :cond_a
    iget-object v0, v1, Lcom/fiio/music/adapter/ListItemAdapter$ViewHolder;->textCount:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    invoke-virtual {v0, v2}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 264
    :cond_b
    const-string v0, "#_tabCFm"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v3

    .line 266
    goto/16 :goto_5

    :cond_c
    iget-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->h()Lcom/fiio/music/entity/Song;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getStyle()Lcom/fiio/music/entity/SongStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/entity/SongStyle;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    move v0, v3

    .line 267
    goto/16 :goto_5

    :cond_d
    move v0, v3

    .line 270
    goto/16 :goto_6

    :cond_e
    move v4, v3

    .line 272
    goto/16 :goto_7

    .line 282
    :cond_f
    iget v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->STYLE_PARAMTER:I

    if-ne v0, v10, :cond_10

    .line 283
    iget-object v0, v1, Lcom/fiio/music/adapter/ListItemAdapter$ViewHolder;->current_play_image_view:Landroid/widget/ImageView;

    const v2, 0x7f050003

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_8

    .line 284
    :cond_10
    iget v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->STYLE_PARAMTER:I

    if-ne v0, v9, :cond_11

    .line 285
    iget-object v0, v1, Lcom/fiio/music/adapter/ListItemAdapter$ViewHolder;->current_play_image_view:Landroid/widget/ImageView;

    const v2, 0x7f050004

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_8

    .line 286
    :cond_11
    iget v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->STYLE_PARAMTER:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    .line 287
    iget-object v0, v1, Lcom/fiio/music/adapter/ListItemAdapter$ViewHolder;->current_play_image_view:Landroid/widget/ImageView;

    const v2, 0x7f050004

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_8

    .line 292
    :cond_12
    iget v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->playerState:I

    if-eq v0, v9, :cond_13

    .line 293
    iget v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->playerState:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    .line 294
    :cond_13
    iget v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->STYLE_PARAMTER:I

    if-ne v0, v3, :cond_15

    .line 295
    iget-object v0, v1, Lcom/fiio/music/adapter/ListItemAdapter$ViewHolder;->current_play_image_view:Landroid/widget/ImageView;

    const v2, 0x7f050002

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 303
    :cond_14
    :goto_b
    iget-object v0, v1, Lcom/fiio/music/adapter/ListItemAdapter$ViewHolder;->textView:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 304
    iget-object v0, v1, Lcom/fiio/music/adapter/ListItemAdapter$ViewHolder;->current_play_image_view:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->anim:Landroid/graphics/drawable/AnimationDrawable;

    .line 305
    iget-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->anim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto/16 :goto_9

    .line 296
    :cond_15
    iget v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->STYLE_PARAMTER:I

    if-ne v0, v10, :cond_16

    .line 297
    iget-object v0, v1, Lcom/fiio/music/adapter/ListItemAdapter$ViewHolder;->current_play_image_view:Landroid/widget/ImageView;

    const v2, 0x7f050003

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_b

    .line 298
    :cond_16
    iget v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->STYLE_PARAMTER:I

    if-ne v0, v9, :cond_17

    .line 299
    iget-object v0, v1, Lcom/fiio/music/adapter/ListItemAdapter$ViewHolder;->current_play_image_view:Landroid/widget/ImageView;

    const v2, 0x7f050004

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_b

    .line 300
    :cond_17
    iget v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->STYLE_PARAMTER:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_14

    .line 301
    iget-object v0, v1, Lcom/fiio/music/adapter/ListItemAdapter$ViewHolder;->current_play_image_view:Landroid/widget/ImageView;

    const v2, 0x7f050004

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_b

    .line 310
    :cond_18
    iget-object v0, v1, Lcom/fiio/music/adapter/ListItemAdapter$ViewHolder;->textView:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v4}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 311
    iget-object v0, v1, Lcom/fiio/music/adapter/ListItemAdapter$ViewHolder;->current_play_image_view:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_9

    .line 331
    :cond_19
    iget v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->STYLE_PARAMTER:I

    if-ne v0, v3, :cond_1a

    .line 332
    iget-object v0, v1, Lcom/fiio/music/adapter/ListItemAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fiio/music/adapter/ListItemAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0203b0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_a

    .line 333
    :cond_1a
    iget v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->STYLE_PARAMTER:I

    if-ne v0, v10, :cond_1b

    .line 334
    iget-object v0, v1, Lcom/fiio/music/adapter/ListItemAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fiio/music/adapter/ListItemAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020423

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_a

    .line 335
    :cond_1b
    iget v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->STYLE_PARAMTER:I

    if-ne v0, v9, :cond_1c

    .line 336
    iget-object v0, v1, Lcom/fiio/music/adapter/ListItemAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fiio/music/adapter/ListItemAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020424

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_a

    .line 337
    :cond_1c
    iget v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->STYLE_PARAMTER:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_3

    .line 338
    iget-object v0, v1, Lcom/fiio/music/adapter/ListItemAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fiio/music/adapter/ListItemAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020424

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_a

    :cond_1d
    move v0, v2

    goto/16 :goto_5

    :cond_1e
    move-object v0, v5

    goto/16 :goto_4
.end method

.method public setDate(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 359
    iget-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->data:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 361
    iget-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 363
    :cond_0
    invoke-virtual {p0}, Lcom/fiio/music/adapter/ListItemAdapter;->notifyDataSetChanged()V

    .line 364
    return-void
.end method

.method public setDate(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 368
    iput-boolean p2, p0, Lcom/fiio/music/adapter/ListItemAdapter;->isPlayListView:Z

    .line 369
    iget-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 370
    iget-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 371
    invoke-virtual {p0}, Lcom/fiio/music/adapter/ListItemAdapter;->notifyDataSetChanged()V

    .line 372
    return-void
.end method

.method public setFootView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 377
    iput-object p1, p0, Lcom/fiio/music/adapter/ListItemAdapter;->mFootView:Landroid/view/View;

    .line 378
    invoke-direct {p0}, Lcom/fiio/music/adapter/ListItemAdapter;->initFootView()V

    .line 379
    return-void
.end method

.method public setFootViewItf(Lcom/fiio/music/util/dc;)V
    .locals 0

    .prologue
    .line 374
    iput-object p1, p0, Lcom/fiio/music/adapter/ListItemAdapter;->interfaceFootView:Lcom/fiio/music/util/dc;

    .line 375
    return-void
.end method

.method public setPlayerManager(Lcom/fiio/music/service/h;)V
    .locals 1

    .prologue
    .line 693
    iput-object p1, p0, Lcom/fiio/music/adapter/ListItemAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    .line 694
    invoke-virtual {p1}, Lcom/fiio/music/service/h;->m()I

    move-result v0

    iput v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->playerState:I

    .line 695
    invoke-virtual {p1}, Lcom/fiio/music/service/h;->i()I

    move-result v0

    iput v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->playerId:I

    .line 696
    invoke-virtual {p0}, Lcom/fiio/music/adapter/ListItemAdapter;->notifyDataSetChanged()V

    .line 697
    return-void
.end method

.method public setPlayerState(I)V
    .locals 0

    .prologue
    .line 381
    iput p1, p0, Lcom/fiio/music/adapter/ListItemAdapter;->playerState:I

    .line 382
    invoke-virtual {p0}, Lcom/fiio/music/adapter/ListItemAdapter;->notifyDataSetChanged()V

    .line 383
    return-void
.end method

.method public setUpdataInfoTitle(Lcom/fiio/music/adapter/ListItemAdapter$UpdataInfoTitle;)V
    .locals 0

    .prologue
    .line 675
    iput-object p1, p0, Lcom/fiio/music/adapter/ListItemAdapter;->mUpdataInfoTitle:Lcom/fiio/music/adapter/ListItemAdapter$UpdataInfoTitle;

    .line 676
    return-void
.end method

.method public showCheckBox(Z)V
    .locals 0

    .prologue
    .line 678
    iput-boolean p1, p0, Lcom/fiio/music/adapter/ListItemAdapter;->mShowCheckBox:Z

    .line 679
    return-void
.end method

.method public showFootView()V
    .locals 2

    .prologue
    .line 684
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/fiio/music/adapter/ListItemAdapter;->showCheckBox(Z)V

    .line 685
    invoke-virtual {p0}, Lcom/fiio/music/adapter/ListItemAdapter;->notifyDataSetChanged()V

    .line 687
    iget-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->mFootView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 688
    iget-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->mFootView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 689
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->interfaceFootView:Lcom/fiio/music/util/dc;

    if-eqz v0, :cond_1

    .line 690
    iget-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->interfaceFootView:Lcom/fiio/music/util/dc;

    invoke-interface {v0}, Lcom/fiio/music/util/dc;->b()V

    .line 691
    :cond_1
    return-void
.end method

.method public toggleCheckBox(I)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 635
    iget-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 636
    iget-object v2, p0, Lcom/fiio/music/adapter/ListItemAdapter;->mSelectedItem:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 637
    iget-object v2, p0, Lcom/fiio/music/adapter/ListItemAdapter;->mSelectedItem:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 641
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->mUpdataInfoTitle:Lcom/fiio/music/adapter/ListItemAdapter$UpdataInfoTitle;

    if-eqz v0, :cond_0

    move v2, v1

    .line 643
    :goto_1
    iget-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->mSelectedItem:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    .line 646
    iget-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->mUpdataInfoTitle:Lcom/fiio/music/adapter/ListItemAdapter$UpdataInfoTitle;

    invoke-interface {v0, v2}, Lcom/fiio/music/adapter/ListItemAdapter$UpdataInfoTitle;->upDataTitle(I)V

    .line 648
    :cond_0
    invoke-virtual {p0}, Lcom/fiio/music/adapter/ListItemAdapter;->notifyDataSetChanged()V

    .line 649
    return-void

    .line 639
    :cond_1
    iget-object v2, p0, Lcom/fiio/music/adapter/ListItemAdapter;->mSelectedItem:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 644
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/adapter/ListItemAdapter;->mSelectedItem:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v2, v0

    .line 643
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method
