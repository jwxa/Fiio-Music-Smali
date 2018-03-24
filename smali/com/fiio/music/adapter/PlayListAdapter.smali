.class public Lcom/fiio/music/adapter/PlayListAdapter;
.super Landroid/widget/BaseAdapter;
.source "PlayListAdapter.java"


# static fields
.field private static final CANCEL_DELETE:I = 0x1

.field private static final START_DELETE:I


# instance fields
.field private STYLE_PARAMTER:I

.field private UI_IS_CHANGE:Z

.field private bottomSelectorListener:Landroid/view/View$OnClickListener;

.field private context:Landroid/content/Context;

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

.field private interfaceFootView:Lcom/fiio/music/util/dc;

.field isPlayListView:Z

.field private mAdd_to_mylove:Landroid/widget/ImageView;

.field private mAdd_to_playlist:Landroid/widget/ImageView;

.field private mFootView:Landroid/view/View;

.field private mFoot_delete:Landroid/widget/ImageView;

.field private mFoot_play:Landroid/widget/ImageView;

.field private mFoot_send:Landroid/widget/ImageView;

.field public mHandler:Landroid/os/Handler;

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

.field private mediaPlayerManager:Lcom/fiio/music/service/h;

.field private final myMusicListActivity:Ljava/lang/String;

.field private onClickListener:Landroid/view/View$OnClickListener;

.field private playListManager:Lcom/fiio/music/util/bw;

.field private playerList:Ljava/lang/String;

.field private playerState:I

.field private playingAnimation:Landroid/graphics/drawable/AnimationDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 51
    const-string v0, "class com.fiio.music.activity.MyMusicListActivity"

    iput-object v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->myMusicListActivity:Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->mSelectedItem:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->mSelectedName:Ljava/util/List;

    .line 59
    iput-boolean v1, p0, Lcom/fiio/music/adapter/PlayListAdapter;->isPlayListView:Z

    .line 67
    iput-boolean v1, p0, Lcom/fiio/music/adapter/PlayListAdapter;->mShowCheckBox:Z

    .line 77
    const/4 v0, 0x3

    iput v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->STYLE_PARAMTER:I

    .line 330
    new-instance v0, Lcom/fiio/music/adapter/s;

    invoke-direct {v0, p0}, Lcom/fiio/music/adapter/s;-><init>(Lcom/fiio/music/adapter/PlayListAdapter;)V

    iput-object v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->mHandler:Landroid/os/Handler;

    .line 367
    new-instance v0, Lcom/fiio/music/adapter/t;

    invoke-direct {v0, p0}, Lcom/fiio/music/adapter/t;-><init>(Lcom/fiio/music/adapter/PlayListAdapter;)V

    iput-object v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->bottomSelectorListener:Landroid/view/View$OnClickListener;

    .line 80
    iput-object p1, p0, Lcom/fiio/music/adapter/PlayListAdapter;->context:Landroid/content/Context;

    .line 81
    iput-object p2, p0, Lcom/fiio/music/adapter/PlayListAdapter;->data:Ljava/util/List;

    .line 82
    iput p3, p0, Lcom/fiio/music/adapter/PlayListAdapter;->defaultIcon:I

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 107
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 51
    const-string v0, "class com.fiio.music.activity.MyMusicListActivity"

    iput-object v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->myMusicListActivity:Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->mSelectedItem:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->mSelectedName:Ljava/util/List;

    .line 59
    iput-boolean v1, p0, Lcom/fiio/music/adapter/PlayListAdapter;->isPlayListView:Z

    .line 67
    iput-boolean v1, p0, Lcom/fiio/music/adapter/PlayListAdapter;->mShowCheckBox:Z

    .line 77
    const/4 v0, 0x3

    iput v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->STYLE_PARAMTER:I

    .line 330
    new-instance v0, Lcom/fiio/music/adapter/s;

    invoke-direct {v0, p0}, Lcom/fiio/music/adapter/s;-><init>(Lcom/fiio/music/adapter/PlayListAdapter;)V

    iput-object v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->mHandler:Landroid/os/Handler;

    .line 367
    new-instance v0, Lcom/fiio/music/adapter/t;

    invoke-direct {v0, p0}, Lcom/fiio/music/adapter/t;-><init>(Lcom/fiio/music/adapter/PlayListAdapter;)V

    iput-object v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->bottomSelectorListener:Landroid/view/View$OnClickListener;

    .line 108
    iput-object p1, p0, Lcom/fiio/music/adapter/PlayListAdapter;->context:Landroid/content/Context;

    .line 109
    iput-object p2, p0, Lcom/fiio/music/adapter/PlayListAdapter;->data:Ljava/util/List;

    .line 110
    iput p3, p0, Lcom/fiio/music/adapter/PlayListAdapter;->defaultIcon:I

    .line 111
    iput-boolean p4, p0, Lcom/fiio/music/adapter/PlayListAdapter;->isPlayListView:Z

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;IZLcom/fiio/music/service/h;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;IZ",
            "Lcom/fiio/music/service/h;",
            "I)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 51
    const-string v0, "class com.fiio.music.activity.MyMusicListActivity"

    iput-object v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->myMusicListActivity:Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->mSelectedItem:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->mSelectedName:Ljava/util/List;

    .line 59
    iput-boolean v1, p0, Lcom/fiio/music/adapter/PlayListAdapter;->isPlayListView:Z

    .line 67
    iput-boolean v1, p0, Lcom/fiio/music/adapter/PlayListAdapter;->mShowCheckBox:Z

    .line 77
    const/4 v0, 0x3

    iput v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->STYLE_PARAMTER:I

    .line 330
    new-instance v0, Lcom/fiio/music/adapter/s;

    invoke-direct {v0, p0}, Lcom/fiio/music/adapter/s;-><init>(Lcom/fiio/music/adapter/PlayListAdapter;)V

    iput-object v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->mHandler:Landroid/os/Handler;

    .line 367
    new-instance v0, Lcom/fiio/music/adapter/t;

    invoke-direct {v0, p0}, Lcom/fiio/music/adapter/t;-><init>(Lcom/fiio/music/adapter/PlayListAdapter;)V

    iput-object v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->bottomSelectorListener:Landroid/view/View$OnClickListener;

    .line 97
    iput-object p1, p0, Lcom/fiio/music/adapter/PlayListAdapter;->context:Landroid/content/Context;

    .line 98
    iput-object p2, p0, Lcom/fiio/music/adapter/PlayListAdapter;->data:Ljava/util/List;

    .line 99
    iput p3, p0, Lcom/fiio/music/adapter/PlayListAdapter;->defaultIcon:I

    .line 100
    iput-boolean p4, p0, Lcom/fiio/music/adapter/PlayListAdapter;->isPlayListView:Z

    .line 101
    iput-object p5, p0, Lcom/fiio/music/adapter/PlayListAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    .line 102
    invoke-virtual {p5}, Lcom/fiio/music/service/h;->m()I

    move-result v0

    iput v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->playerState:I

    .line 103
    iput p6, p0, Lcom/fiio/music/adapter/PlayListAdapter;->STYLE_PARAMTER:I

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;IZLcom/fiio/music/service/h;Landroid/view/View$OnClickListener;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;IZ",
            "Lcom/fiio/music/service/h;",
            "Landroid/view/View$OnClickListener;",
            "I)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 51
    const-string v0, "class com.fiio.music.activity.MyMusicListActivity"

    iput-object v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->myMusicListActivity:Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->mSelectedItem:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->mSelectedName:Ljava/util/List;

    .line 59
    iput-boolean v1, p0, Lcom/fiio/music/adapter/PlayListAdapter;->isPlayListView:Z

    .line 67
    iput-boolean v1, p0, Lcom/fiio/music/adapter/PlayListAdapter;->mShowCheckBox:Z

    .line 77
    const/4 v0, 0x3

    iput v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->STYLE_PARAMTER:I

    .line 330
    new-instance v0, Lcom/fiio/music/adapter/s;

    invoke-direct {v0, p0}, Lcom/fiio/music/adapter/s;-><init>(Lcom/fiio/music/adapter/PlayListAdapter;)V

    iput-object v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->mHandler:Landroid/os/Handler;

    .line 367
    new-instance v0, Lcom/fiio/music/adapter/t;

    invoke-direct {v0, p0}, Lcom/fiio/music/adapter/t;-><init>(Lcom/fiio/music/adapter/PlayListAdapter;)V

    iput-object v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->bottomSelectorListener:Landroid/view/View$OnClickListener;

    .line 87
    iput-object p1, p0, Lcom/fiio/music/adapter/PlayListAdapter;->context:Landroid/content/Context;

    .line 88
    iput-object p2, p0, Lcom/fiio/music/adapter/PlayListAdapter;->data:Ljava/util/List;

    .line 89
    iput p3, p0, Lcom/fiio/music/adapter/PlayListAdapter;->defaultIcon:I

    .line 90
    iput-boolean p4, p0, Lcom/fiio/music/adapter/PlayListAdapter;->isPlayListView:Z

    .line 91
    iput-object p6, p0, Lcom/fiio/music/adapter/PlayListAdapter;->onClickListener:Landroid/view/View$OnClickListener;

    .line 92
    iput-object p5, p0, Lcom/fiio/music/adapter/PlayListAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    .line 93
    invoke-virtual {p5}, Lcom/fiio/music/service/h;->m()I

    move-result v0

    iput v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->playerState:I

    .line 94
    iput p7, p0, Lcom/fiio/music/adapter/PlayListAdapter;->STYLE_PARAMTER:I

    .line 95
    return-void
.end method

.method static synthetic access$0(Lcom/fiio/music/adapter/PlayListAdapter;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/fiio/music/adapter/PlayListAdapter;)Ljava/util/List;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->mSelectedItem:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2(Lcom/fiio/music/adapter/PlayListAdapter;)Lcom/fiio/music/util/bw;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->playListManager:Lcom/fiio/music/util/bw;

    return-object v0
.end method

.method static synthetic access$3(Lcom/fiio/music/adapter/PlayListAdapter;)Ljava/util/List;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->data:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4(Lcom/fiio/music/adapter/PlayListAdapter;)Lcom/fiio/music/service/h;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    return-object v0
.end method

.method static synthetic access$5(Lcom/fiio/music/adapter/PlayListAdapter;)I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->STYLE_PARAMTER:I

    return v0
.end method

.method private initFootView()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 281
    iget-object v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->mFootView:Landroid/view/View;

    const v1, 0x7f0b0062

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->mFoot_play:Landroid/widget/ImageView;

    .line 282
    iget-object v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->mFootView:Landroid/view/View;

    const v1, 0x7f0b0063

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->mAdd_to_mylove:Landroid/widget/ImageView;

    .line 283
    iget-object v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->mFootView:Landroid/view/View;

    const v1, 0x7f0b0064

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->mAdd_to_playlist:Landroid/widget/ImageView;

    .line 284
    iget-object v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->mFootView:Landroid/view/View;

    const v1, 0x7f0b0065

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->mFoot_send:Landroid/widget/ImageView;

    .line 285
    iget-object v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->mFootView:Landroid/view/View;

    const v1, 0x7f0b0066

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->mFoot_delete:Landroid/widget/ImageView;

    .line 286
    iget-object v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->mAdd_to_mylove:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 287
    iget-object v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->mAdd_to_playlist:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 288
    iget-object v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->mFoot_play:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fiio/music/adapter/PlayListAdapter;->bottomSelectorListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    iget-object v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->mAdd_to_mylove:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fiio/music/adapter/PlayListAdapter;->bottomSelectorListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    iget-object v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->mAdd_to_playlist:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fiio/music/adapter/PlayListAdapter;->bottomSelectorListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    iget-object v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->mFoot_send:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fiio/music/adapter/PlayListAdapter;->bottomSelectorListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    iget-object v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->mFoot_delete:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fiio/music/adapter/PlayListAdapter;->bottomSelectorListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    return-void
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

    .line 315
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 316
    iget-object v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->mSelectedName:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 317
    iget-object v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 319
    iget-object v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "class com.fiio.music.activity.MyMusicListActivity"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-virtual {v0, v5}, Lcom/fiio/music/activity/MyMusicListActivity;->setItemAdapterCheckBoxFlag(Z)V

    .line 321
    if-ne v1, v2, :cond_1

    .line 322
    iget-object v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-virtual {v0, v5}, Lcom/fiio/music/activity/MyMusicListActivity;->footSelectAllCheckBoxState(Z)V

    .line 326
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-virtual {v0, v4}, Lcom/fiio/music/activity/MyMusicListActivity;->setItemAdapterCheckBoxFlag(Z)V

    .line 328
    :cond_0
    return-void

    .line 324
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-virtual {v0, v4}, Lcom/fiio/music/activity/MyMusicListActivity;->footSelectAllCheckBoxState(Z)V

    goto :goto_0
.end method


# virtual methods
.method public cancelSelect()V
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->mFootView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->mFootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->mFootView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 306
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->mShowCheckBox:Z

    .line 307
    iget-object v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->mSelectedItem:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 308
    iget-object v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->mSelectedName:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 309
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 310
    iget-object v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->interfaceFootView:Lcom/fiio/music/util/dc;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->interfaceFootView:Lcom/fiio/music/util/dc;

    invoke-interface {v0}, Lcom/fiio/music/util/dc;->a()V

    .line 313
    :cond_0
    return-void
.end method

.method public footViewCanceAll()V
    .locals 2

    .prologue
    .line 489
    iget-object v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->mSelectedItem:Ljava/util/List;

    iget-object v1, p0, Lcom/fiio/music/adapter/PlayListAdapter;->mSelectedItem:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 490
    iget-object v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->mSelectedName:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 491
    invoke-virtual {p0}, Lcom/fiio/music/adapter/PlayListAdapter;->notifyDataSetChanged()V

    .line 492
    return-void
.end method

.method public footViewSelectAll()V
    .locals 4

    .prologue
    .line 495
    iget-object v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->mSelectedItem:Ljava/util/List;

    iget-object v1, p0, Lcom/fiio/music/adapter/PlayListAdapter;->mSelectedItem:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 496
    iget-object v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->mSelectedName:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 497
    iget-object v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->mSelectedItem:Ljava/util/List;

    iget-object v1, p0, Lcom/fiio/music/adapter/PlayListAdapter;->data:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 498
    iget-object v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 503
    invoke-virtual {p0}, Lcom/fiio/music/adapter/PlayListAdapter;->notifyDataSetChanged()V

    .line 504
    return-void

    .line 499
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 500
    iget-object v2, p0, Lcom/fiio/music/adapter/PlayListAdapter;->mSelectedName:Ljava/util/List;

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 122
    int-to-long v0, p1

    return-wide v0
.end method

.method public getShowCheckBoxState()Z
    .locals 1

    .prologue
    .line 264
    iget-boolean v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->mShowCheckBox:Z

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 126
    if-nez p2, :cond_7

    .line 130
    new-instance v1, Lcom/fiio/music/adapter/PlayListAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/fiio/music/adapter/PlayListAdapter$ViewHolder;-><init>(Lcom/fiio/music/adapter/PlayListAdapter;)V

    .line 131
    const-string v0, "zengxy ---   "

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "UI_IS_CHANGE   : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/fiio/music/adapter/PlayListAdapter;->UI_IS_CHANGE:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/fiio/music/util/aw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->STYLE_PARAMTER:I

    if-ne v0, v7, :cond_4

    .line 133
    iget-object v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f04009f

    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 141
    :cond_0
    :goto_0
    const v0, 0x7f0b01b2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/fiio/music/adapter/PlayListAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 142
    const v0, 0x7f0b0209

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/fiio/music/adapter/PlayListAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    .line 144
    const v0, 0x7f0b00d4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/fiio/music/adapter/PlayListAdapter$ViewHolder;->imageView2:Landroid/widget/ImageView;

    .line 145
    const v0, 0x7f0b00d6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lcom/fiio/music/adapter/PlayListAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    .line 146
    iget-object v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 147
    iget-object v3, v1, Lcom/fiio/music/adapter/PlayListAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    .line 148
    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 149
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 154
    :goto_1
    iget-object v0, v1, Lcom/fiio/music/adapter/PlayListAdapter$ViewHolder;->imageView2:Landroid/widget/ImageView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 155
    iget-object v0, v1, Lcom/fiio/music/adapter/PlayListAdapter$ViewHolder;->imageView2:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/fiio/music/adapter/PlayListAdapter;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-boolean v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->mShowCheckBox:Z

    if-eqz v0, :cond_9

    .line 157
    iget-object v0, v1, Lcom/fiio/music/adapter/PlayListAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 158
    iget-object v0, v1, Lcom/fiio/music/adapter/PlayListAdapter$ViewHolder;->imageView2:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 160
    iget-object v3, v1, Lcom/fiio/music/adapter/PlayListAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 164
    iget-object v3, p0, Lcom/fiio/music/adapter/PlayListAdapter;->mSelectedName:Ljava/util/List;

    aget-object v0, v0, v7

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 165
    iget-object v0, v1, Lcom/fiio/music/adapter/PlayListAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 166
    iget-object v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->mSelectedItem:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/fiio/music/adapter/PlayListAdapter;->isCheckAll(Ljava/util/List;)V

    .line 175
    :goto_2
    iget-object v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->data:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v8

    .line 176
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 177
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 181
    if-eqz v0, :cond_a

    .line 182
    iget-object v3, v1, Lcom/fiio/music/adapter/PlayListAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 187
    :goto_3
    if-nez p1, :cond_e

    .line 189
    iget v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->STYLE_PARAMTER:I

    if-ne v0, v7, :cond_b

    .line 190
    iget-object v0, v1, Lcom/fiio/music/adapter/PlayListAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    const v3, 0x7f020418

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 199
    :cond_1
    :goto_4
    iget-object v0, v1, Lcom/fiio/music/adapter/PlayListAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    const v3, 0x7f0b0001

    iget-object v4, p0, Lcom/fiio/music/adapter/PlayListAdapter;->context:Landroid/content/Context;

    const v5, 0x7f0c0054

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 200
    iget-object v0, v1, Lcom/fiio/music/adapter/PlayListAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/fiio/music/adapter/PlayListAdapter;->context:Landroid/content/Context;

    const v4, 0x7f0c0055

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    :goto_5
    iget-object v3, v1, Lcom/fiio/music/adapter/PlayListAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v6

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 209
    iget v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->STYLE_PARAMTER:I

    if-ne v0, v7, :cond_f

    .line 210
    iget-object v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f050005

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 218
    :goto_6
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v4

    invoke-virtual {v0, v6, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 219
    iget-object v3, p0, Lcom/fiio/music/adapter/PlayListAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v3}, Lcom/fiio/music/service/h;->m()I

    move-result v3

    iput v3, p0, Lcom/fiio/music/adapter/PlayListAdapter;->playerState:I

    .line 229
    iget-object v3, p0, Lcom/fiio/music/adapter/PlayListAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v3}, Lcom/fiio/music/service/h;->k()Ljava/lang/String;

    move-result-object v3

    .line 230
    new-instance v4, Lcom/fiio/music/util/bw;

    iget-object v5, v1, Lcom/fiio/music/adapter/PlayListAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    const v6, 0x7f0b0001

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/fiio/music/util/bw;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/fiio/music/adapter/PlayListAdapter;->playListManager:Lcom/fiio/music/util/bw;

    .line 231
    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/fiio/music/adapter/PlayListAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v4}, Lcom/fiio/music/service/h;->G()Z

    move-result v4

    if-nez v4, :cond_2

    .line 232
    iget-object v4, p0, Lcom/fiio/music/adapter/PlayListAdapter;->playListManager:Lcom/fiio/music/util/bw;

    iget-object v4, p0, Lcom/fiio/music/adapter/PlayListAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v4}, Lcom/fiio/music/service/h;->h()Lcom/fiio/music/entity/Song;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/fiio/music/util/bw;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 233
    iget v3, p0, Lcom/fiio/music/adapter/PlayListAdapter;->playerState:I

    if-ne v3, v8, :cond_12

    .line 234
    iget-object v3, v1, Lcom/fiio/music/adapter/PlayListAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {v3, v2, v2, v0, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 235
    iget-object v0, v1, Lcom/fiio/music/adapter/PlayListAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, v8

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->playingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 236
    iget-object v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->playingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 247
    :cond_2
    :goto_7
    iget-boolean v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->UI_IS_CHANGE:Z

    if-eqz v0, :cond_3

    .line 248
    iget-object v0, v1, Lcom/fiio/music/adapter/PlayListAdapter$ViewHolder;->imageView2:Landroid/widget/ImageView;

    const v1, 0x7f02023c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 249
    :cond_3
    return-object p2

    .line 134
    :cond_4
    iget v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->STYLE_PARAMTER:I

    if-ne v0, v8, :cond_5

    .line 135
    iget-object v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f0400a0

    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 136
    :cond_5
    iget v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->STYLE_PARAMTER:I

    if-ne v0, v9, :cond_6

    .line 137
    iget-object v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f0400a1

    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 138
    :cond_6
    iget v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->STYLE_PARAMTER:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    .line 139
    iget-object v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f0400a2

    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 151
    :cond_7
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/adapter/PlayListAdapter$ViewHolder;

    move-object v1, v0

    goto/16 :goto_1

    .line 168
    :cond_8
    iget-object v0, v1, Lcom/fiio/music/adapter/PlayListAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 169
    iget-object v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->mSelectedItem:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/fiio/music/adapter/PlayListAdapter;->isCheckAll(Ljava/util/List;)V

    goto/16 :goto_2

    .line 172
    :cond_9
    iget-object v0, v1, Lcom/fiio/music/adapter/PlayListAdapter$ViewHolder;->imageView2:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 173
    iget-object v0, v1, Lcom/fiio/music/adapter/PlayListAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_2

    .line 184
    :cond_a
    iget-object v0, v1, Lcom/fiio/music/adapter/PlayListAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    iget v3, p0, Lcom/fiio/music/adapter/PlayListAdapter;->defaultIcon:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    .line 191
    :cond_b
    iget v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->STYLE_PARAMTER:I

    if-ne v0, v8, :cond_c

    .line 192
    iget-object v0, v1, Lcom/fiio/music/adapter/PlayListAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    const v3, 0x7f020419

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    .line 193
    :cond_c
    iget v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->STYLE_PARAMTER:I

    if-ne v0, v9, :cond_d

    .line 194
    iget-object v0, v1, Lcom/fiio/music/adapter/PlayListAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    const v3, 0x7f020419

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    .line 195
    :cond_d
    iget v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->STYLE_PARAMTER:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    .line 196
    iget-object v0, v1, Lcom/fiio/music/adapter/PlayListAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    const v3, 0x7f020419

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    .line 202
    :cond_e
    iget-object v3, v1, Lcom/fiio/music/adapter/PlayListAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    const v4, 0x7f0b0001

    iget-object v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v7

    invoke-virtual {v3, v4, v0}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 203
    iget-object v3, v1, Lcom/fiio/music/adapter/PlayListAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v7

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 211
    :cond_f
    iget v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->STYLE_PARAMTER:I

    if-ne v0, v8, :cond_10

    .line 212
    iget-object v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f050003

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_6

    .line 213
    :cond_10
    iget v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->STYLE_PARAMTER:I

    if-ne v0, v9, :cond_11

    .line 214
    iget-object v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f050008

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_6

    .line 215
    :cond_11
    iget v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->STYLE_PARAMTER:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_15

    .line 216
    iget-object v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f050008

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_6

    .line 237
    :cond_12
    iget v3, p0, Lcom/fiio/music/adapter/PlayListAdapter;->playerState:I

    if-eq v3, v9, :cond_13

    iget v3, p0, Lcom/fiio/music/adapter/PlayListAdapter;->playerState:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 238
    :cond_13
    iget-object v3, v1, Lcom/fiio/music/adapter/PlayListAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {v3, v2, v2, v0, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 239
    iget-object v0, v1, Lcom/fiio/music/adapter/PlayListAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, v8

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->playingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 240
    iget-object v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->playingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto/16 :goto_7

    .line 244
    :cond_14
    iget-object v0, v1, Lcom/fiio/music/adapter/PlayListAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_7

    :cond_15
    move-object v0, v2

    goto/16 :goto_6
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
    .line 267
    iput-boolean p2, p0, Lcom/fiio/music/adapter/PlayListAdapter;->isPlayListView:Z

    .line 268
    iget-object v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 269
    iget-object v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 270
    invoke-virtual {p0}, Lcom/fiio/music/adapter/PlayListAdapter;->notifyDataSetChanged()V

    .line 271
    return-void
.end method

.method public setFootView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lcom/fiio/music/adapter/PlayListAdapter;->mFootView:Landroid/view/View;

    .line 278
    invoke-direct {p0}, Lcom/fiio/music/adapter/PlayListAdapter;->initFootView()V

    .line 279
    return-void
.end method

.method public setFootViewItf(Lcom/fiio/music/util/dc;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lcom/fiio/music/adapter/PlayListAdapter;->interfaceFootView:Lcom/fiio/music/util/dc;

    .line 275
    return-void
.end method

.method public setPlayerManager(Lcom/fiio/music/service/h;)V
    .locals 1

    .prologue
    .line 506
    iput-object p1, p0, Lcom/fiio/music/adapter/PlayListAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    .line 507
    invoke-virtual {p1}, Lcom/fiio/music/service/h;->m()I

    move-result v0

    iput v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->playerState:I

    .line 508
    invoke-virtual {p0}, Lcom/fiio/music/adapter/PlayListAdapter;->notifyDataSetChanged()V

    .line 509
    return-void
.end method

.method public showCheckBox(Z)V
    .locals 0

    .prologue
    .line 261
    iput-boolean p1, p0, Lcom/fiio/music/adapter/PlayListAdapter;->mShowCheckBox:Z

    .line 262
    return-void
.end method

.method public showFootView()V
    .locals 2

    .prologue
    .line 295
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/fiio/music/adapter/PlayListAdapter;->showCheckBox(Z)V

    .line 296
    invoke-virtual {p0}, Lcom/fiio/music/adapter/PlayListAdapter;->notifyDataSetChanged()V

    .line 298
    iget-object v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->mFootView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->mFootView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->interfaceFootView:Lcom/fiio/music/util/dc;

    if-eqz v0, :cond_1

    .line 301
    iget-object v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->interfaceFootView:Lcom/fiio/music/util/dc;

    invoke-interface {v0}, Lcom/fiio/music/util/dc;->b()V

    .line 302
    :cond_1
    return-void
.end method

.method public toggleCheckBox(I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 478
    iget-object v0, p0, Lcom/fiio/music/adapter/PlayListAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 479
    iget-object v1, p0, Lcom/fiio/music/adapter/PlayListAdapter;->mSelectedItem:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/fiio/music/adapter/PlayListAdapter;->mSelectedName:Ljava/util/List;

    aget-object v2, v0, v3

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 480
    :cond_0
    iget-object v1, p0, Lcom/fiio/music/adapter/PlayListAdapter;->mSelectedItem:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 481
    iget-object v1, p0, Lcom/fiio/music/adapter/PlayListAdapter;->mSelectedName:Ljava/util/List;

    aget-object v0, v0, v3

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 486
    :goto_0
    invoke-virtual {p0}, Lcom/fiio/music/adapter/PlayListAdapter;->notifyDataSetChanged()V

    .line 487
    return-void

    .line 483
    :cond_1
    iget-object v1, p0, Lcom/fiio/music/adapter/PlayListAdapter;->mSelectedItem:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 484
    iget-object v1, p0, Lcom/fiio/music/adapter/PlayListAdapter;->mSelectedName:Ljava/util/List;

    aget-object v0, v0, v3

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
