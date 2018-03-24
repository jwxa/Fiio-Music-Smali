.class public Lcom/fiio/music/adapter/FileListAdapter;
.super Landroid/widget/BaseAdapter;
.source "FileListAdapter.java"


# static fields
.field private static final suffixs:Ljava/lang/String;


# instance fields
.field PlayPositionInShowListener:Lcom/fiio/music/adapter/FileListAdapter$onPlayPositionInShowListener;

.field private STYLE_PARAMTER:I

.field private UI_IS_CHANGE:Z

.field private bottomSelectorListener:Landroid/view/View$OnClickListener;

.field private context:Landroid/content/Context;

.field private curAlbumPath:Ljava/lang/String;

.field private curPlayPosition:I

.field private displayPosition:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private external_count:I

.field file:Ljava/io/File;

.field fileItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/FileItem;",
            ">;"
        }
    .end annotation
.end field

.field filesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field protected imageLoader:Lcom/b/a/b/f;

.field private inflater:Landroid/view/LayoutInflater;

.field private interfaceFootView:Lcom/fiio/music/util/dc;

.field private internal_count:I

.field itemViews:[Landroid/view/View;

.field private listMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field listhhArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final localMusicActivity:Ljava/lang/String;

.field private mAdd_to_mylove:Landroid/widget/ImageView;

.field private mAdd_to_playlist:Landroid/widget/ImageView;

.field private mFootView:Landroid/view/View;

.field private mFoot_delete:Landroid/widget/ImageView;

.field private mFoot_play:Landroid/widget/ImageView;

.field private mFoot_send:Landroid/widget/ImageView;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mSelectedFileItem:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/FileItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedItem:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedItemName:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedPos:Ljava/util/List;
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

.field private mUpdataInfoTitle:Lcom/fiio/music/adapter/ListItemAdapter$UpdataInfoTitle;

.field private mediaPlayerManager:Lcom/fiio/music/service/h;

.field private options:Lcom/b/a/b/d;

.field private pageFlag:I

.field playListManager:Lcom/fiio/music/util/bw;

.field private playerId:I

.field private playerState:I

.field private playingAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private playingSongName:Ljava/lang/String;

.field private playingSongPath:Ljava/lang/String;

.field selectItem:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private songDao:Lcom/fiio/music/b/k;

.field songsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;"
        }
    .end annotation
.end field

.field private sortType:Lcom/fiio/music/util/cr;

.field private toast:Landroid/widget/Toast;

.field private viewHolder:Lcom/fiio/music/adapter/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    invoke-static {}, Lcom/fiio/music/util/bl;->d()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fiio/music/adapter/FileListAdapter;->suffixs:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroid/content/Context;ILcom/fiio/music/service/h;Landroid/view/View$OnClickListener;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/FileItem;",
            ">;",
            "Landroid/content/Context;",
            "I",
            "Lcom/fiio/music/service/h;",
            "Landroid/view/View$OnClickListener;",
            "I)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 55
    const-string v0, "class com.fiio.music.activity.LocalMusicActivity"

    iput-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->localMusicActivity:Ljava/lang/String;

    .line 75
    iput v1, p0, Lcom/fiio/music/adapter/FileListAdapter;->internal_count:I

    .line 76
    iput v1, p0, Lcom/fiio/music/adapter/FileListAdapter;->external_count:I

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->listMap:Ljava/util/HashMap;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->mSelectedPos:Ljava/util/List;

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->curPlayPosition:I

    .line 85
    const/4 v0, 0x3

    iput v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->STYLE_PARAMTER:I

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->mSelectedItem:Ljava/util/List;

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->mSelectedItemName:Ljava/util/List;

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->mSelectedFileItem:Ljava/util/List;

    .line 471
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->displayPosition:Ljava/util/List;

    .line 507
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->PlayPositionInShowListener:Lcom/fiio/music/adapter/FileListAdapter$onPlayPositionInShowListener;

    .line 588
    new-instance v0, Lcom/fiio/music/adapter/f;

    invoke-direct {v0, p0}, Lcom/fiio/music/adapter/f;-><init>(Lcom/fiio/music/adapter/FileListAdapter;)V

    iput-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->bottomSelectorListener:Landroid/view/View$OnClickListener;

    .line 861
    iput-boolean v1, p0, Lcom/fiio/music/adapter/FileListAdapter;->mShowCheckBox:Z

    .line 89
    iput-object p2, p0, Lcom/fiio/music/adapter/FileListAdapter;->context:Landroid/content/Context;

    .line 92
    iput-object p1, p0, Lcom/fiio/music/adapter/FileListAdapter;->fileItemList:Ljava/util/List;

    .line 93
    iput-object p4, p0, Lcom/fiio/music/adapter/FileListAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    .line 94
    invoke-virtual {p4}, Lcom/fiio/music/service/h;->m()I

    move-result v0

    iput v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->playerState:I

    .line 95
    invoke-virtual {p4}, Lcom/fiio/music/service/h;->i()I

    move-result v0

    iput v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->playerId:I

    .line 96
    invoke-virtual {p4}, Lcom/fiio/music/service/h;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->playingSongPath:Ljava/lang/String;

    .line 97
    iput p3, p0, Lcom/fiio/music/adapter/FileListAdapter;->pageFlag:I

    .line 98
    iput p6, p0, Lcom/fiio/music/adapter/FileListAdapter;->STYLE_PARAMTER:I

    .line 99
    new-instance v0, Lcom/fiio/music/b/k;

    invoke-direct {v0, p2}, Lcom/fiio/music/b/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->songDao:Lcom/fiio/music/b/k;

    .line 100
    iput-object p5, p0, Lcom/fiio/music/adapter/FileListAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 101
    invoke-direct {p0}, Lcom/fiio/music/adapter/FileListAdapter;->initImageLoader()V

    .line 102
    return-void
.end method

.method static synthetic access$0(Lcom/fiio/music/adapter/FileListAdapter;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/fiio/music/adapter/FileListAdapter;Lcom/fiio/music/util/cr;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/fiio/music/adapter/FileListAdapter;->sortType:Lcom/fiio/music/util/cr;

    return-void
.end method

.method static synthetic access$2(Lcom/fiio/music/adapter/FileListAdapter;)Ljava/util/List;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->mSelectedItem:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3(Lcom/fiio/music/adapter/FileListAdapter;)Ljava/util/List;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->mSelectedFileItem:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4(Lcom/fiio/music/adapter/FileListAdapter;)Lcom/fiio/music/service/h;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    return-object v0
.end method

.method static synthetic access$5(Lcom/fiio/music/adapter/FileListAdapter;)Lcom/fiio/music/util/cr;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->sortType:Lcom/fiio/music/util/cr;

    return-object v0
.end method

.method static synthetic access$6(Lcom/fiio/music/adapter/FileListAdapter;)I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->STYLE_PARAMTER:I

    return v0
.end method

.method static synthetic access$7()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/fiio/music/adapter/FileListAdapter;->suffixs:Ljava/lang/String;

    return-object v0
.end method

.method private deletefile(Ljava/io/File;)V
    .locals 4

    .prologue
    .line 825
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 826
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 842
    :goto_0
    return-void

    .line 829
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 830
    if-eqz v1, :cond_1

    array-length v0, v1

    if-nez v0, :cond_2

    .line 831
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->listhhArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 832
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 835
    :cond_2
    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-lt v0, v2, :cond_3

    .line 839
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->listhhArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 840
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 835
    :cond_3
    aget-object v3, v1, v0

    .line 836
    invoke-direct {p0, v3}, Lcom/fiio/music/adapter/FileListAdapter;->deletefile(Ljava/io/File;)V

    .line 835
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private initFootView()V
    .locals 2

    .prologue
    .line 567
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->mFootView:Landroid/view/View;

    const v1, 0x7f0b0062

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->mFoot_play:Landroid/widget/ImageView;

    .line 568
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->mFootView:Landroid/view/View;

    const v1, 0x7f0b0063

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->mAdd_to_mylove:Landroid/widget/ImageView;

    .line 569
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->mFootView:Landroid/view/View;

    const v1, 0x7f0b0064

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->mAdd_to_playlist:Landroid/widget/ImageView;

    .line 570
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->mFootView:Landroid/view/View;

    const v1, 0x7f0b0065

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->mFoot_send:Landroid/widget/ImageView;

    .line 571
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->mFootView:Landroid/view/View;

    const v1, 0x7f0b0066

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->mFoot_delete:Landroid/widget/ImageView;

    .line 572
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->mFoot_play:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fiio/music/adapter/FileListAdapter;->bottomSelectorListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 573
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->mAdd_to_mylove:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fiio/music/adapter/FileListAdapter;->bottomSelectorListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 574
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->mAdd_to_playlist:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fiio/music/adapter/FileListAdapter;->bottomSelectorListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 575
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->mFoot_send:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fiio/music/adapter/FileListAdapter;->bottomSelectorListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 576
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->mFoot_delete:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fiio/music/adapter/FileListAdapter;->bottomSelectorListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 577
    return-void
.end method

.method private initImageLoader()V
    .locals 6

    .prologue
    const v5, 0x7f02044b

    const v4, 0x7f02044a

    const v3, 0x7f020449

    const v1, 0x7f0203c9

    const/4 v2, 0x1

    .line 105
    invoke-static {}, Lcom/b/a/b/f;->a()Lcom/b/a/b/f;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->imageLoader:Lcom/b/a/b/f;

    .line 108
    iget v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->STYLE_PARAMTER:I

    if-ne v0, v2, :cond_1

    .line 109
    new-instance v0, Lcom/b/a/b/e;

    invoke-direct {v0}, Lcom/b/a/b/e;-><init>()V

    .line 110
    invoke-virtual {v0, v1}, Lcom/b/a/b/e;->a(I)Lcom/b/a/b/e;

    move-result-object v0

    .line 111
    invoke-virtual {v0, v1}, Lcom/b/a/b/e;->b(I)Lcom/b/a/b/e;

    move-result-object v0

    .line 112
    invoke-virtual {v0, v1}, Lcom/b/a/b/e;->c(I)Lcom/b/a/b/e;

    move-result-object v0

    .line 113
    invoke-virtual {v0, v2}, Lcom/b/a/b/e;->a(Z)Lcom/b/a/b/e;

    move-result-object v0

    .line 114
    invoke-virtual {v0, v2}, Lcom/b/a/b/e;->b(Z)Lcom/b/a/b/e;

    move-result-object v0

    .line 116
    new-instance v1, Lcom/b/a/b/c/c;

    invoke-direct {v1}, Lcom/b/a/b/c/c;-><init>()V

    invoke-virtual {v0, v1}, Lcom/b/a/b/e;->a(Lcom/b/a/b/c/a;)Lcom/b/a/b/e;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Lcom/b/a/b/e;->d()Lcom/b/a/b/d;

    move-result-object v0

    .line 109
    iput-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->options:Lcom/b/a/b/d;

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    iget v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->STYLE_PARAMTER:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 120
    new-instance v0, Lcom/b/a/b/e;

    invoke-direct {v0}, Lcom/b/a/b/e;-><init>()V

    .line 121
    invoke-virtual {v0, v3}, Lcom/b/a/b/e;->a(I)Lcom/b/a/b/e;

    move-result-object v0

    .line 122
    invoke-virtual {v0, v3}, Lcom/b/a/b/e;->b(I)Lcom/b/a/b/e;

    move-result-object v0

    .line 123
    invoke-virtual {v0, v3}, Lcom/b/a/b/e;->c(I)Lcom/b/a/b/e;

    move-result-object v0

    .line 124
    invoke-virtual {v0, v2}, Lcom/b/a/b/e;->a(Z)Lcom/b/a/b/e;

    move-result-object v0

    .line 125
    invoke-virtual {v0, v2}, Lcom/b/a/b/e;->b(Z)Lcom/b/a/b/e;

    move-result-object v0

    .line 127
    new-instance v1, Lcom/b/a/b/c/c;

    invoke-direct {v1}, Lcom/b/a/b/c/c;-><init>()V

    invoke-virtual {v0, v1}, Lcom/b/a/b/e;->a(Lcom/b/a/b/c/a;)Lcom/b/a/b/e;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Lcom/b/a/b/e;->d()Lcom/b/a/b/d;

    move-result-object v0

    .line 120
    iput-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->options:Lcom/b/a/b/d;

    goto :goto_0

    .line 130
    :cond_2
    iget v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->STYLE_PARAMTER:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 131
    new-instance v0, Lcom/b/a/b/e;

    invoke-direct {v0}, Lcom/b/a/b/e;-><init>()V

    .line 132
    invoke-virtual {v0, v4}, Lcom/b/a/b/e;->a(I)Lcom/b/a/b/e;

    move-result-object v0

    .line 133
    invoke-virtual {v0, v4}, Lcom/b/a/b/e;->b(I)Lcom/b/a/b/e;

    move-result-object v0

    .line 134
    invoke-virtual {v0, v4}, Lcom/b/a/b/e;->c(I)Lcom/b/a/b/e;

    move-result-object v0

    .line 135
    invoke-virtual {v0, v2}, Lcom/b/a/b/e;->a(Z)Lcom/b/a/b/e;

    move-result-object v0

    .line 136
    invoke-virtual {v0, v2}, Lcom/b/a/b/e;->b(Z)Lcom/b/a/b/e;

    move-result-object v0

    .line 138
    new-instance v1, Lcom/b/a/b/c/c;

    invoke-direct {v1}, Lcom/b/a/b/c/c;-><init>()V

    invoke-virtual {v0, v1}, Lcom/b/a/b/e;->a(Lcom/b/a/b/c/a;)Lcom/b/a/b/e;

    move-result-object v0

    .line 139
    invoke-virtual {v0}, Lcom/b/a/b/e;->d()Lcom/b/a/b/d;

    move-result-object v0

    .line 131
    iput-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->options:Lcom/b/a/b/d;

    goto :goto_0

    .line 141
    :cond_3
    iget v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->STYLE_PARAMTER:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 142
    new-instance v0, Lcom/b/a/b/e;

    invoke-direct {v0}, Lcom/b/a/b/e;-><init>()V

    .line 143
    invoke-virtual {v0, v5}, Lcom/b/a/b/e;->a(I)Lcom/b/a/b/e;

    move-result-object v0

    .line 144
    invoke-virtual {v0, v5}, Lcom/b/a/b/e;->b(I)Lcom/b/a/b/e;

    move-result-object v0

    .line 145
    invoke-virtual {v0, v5}, Lcom/b/a/b/e;->c(I)Lcom/b/a/b/e;

    move-result-object v0

    .line 146
    invoke-virtual {v0, v2}, Lcom/b/a/b/e;->a(Z)Lcom/b/a/b/e;

    move-result-object v0

    .line 147
    invoke-virtual {v0, v2}, Lcom/b/a/b/e;->b(Z)Lcom/b/a/b/e;

    move-result-object v0

    .line 148
    new-instance v1, Lcom/b/a/b/c/c;

    invoke-direct {v1}, Lcom/b/a/b/c/c;-><init>()V

    invoke-virtual {v0, v1}, Lcom/b/a/b/e;->a(Lcom/b/a/b/c/a;)Lcom/b/a/b/e;

    move-result-object v0

    .line 149
    invoke-virtual {v0}, Lcom/b/a/b/e;->d()Lcom/b/a/b/d;

    move-result-object v0

    .line 142
    iput-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->options:Lcom/b/a/b/d;

    goto/16 :goto_0
.end method

.method private isCheckAll()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 845
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->mSelectedPos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 847
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->fileItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 849
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "class com.fiio.music.activity.LocalMusicActivity"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 850
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v0, v5}, Lcom/fiio/music/activity/LocalMusicActivity;->setItemAdapterCheckBoxFlag(Z)V

    .line 851
    if-ne v1, v2, :cond_1

    .line 852
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v0, v5}, Lcom/fiio/music/activity/LocalMusicActivity;->footSelectAllCheckBoxState(Z)V

    .line 856
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v0, v4}, Lcom/fiio/music/activity/LocalMusicActivity;->setItemAdapterCheckBoxFlag(Z)V

    .line 858
    :cond_0
    return-void

    .line 854
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v0, v4}, Lcom/fiio/music/activity/LocalMusicActivity;->footSelectAllCheckBoxState(Z)V

    goto :goto_0
.end method

.method private putPositionIn(I)V
    .locals 5

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x0

    .line 474
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->displayPosition:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v4, :cond_1

    .line 475
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->displayPosition:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 498
    :cond_0
    :goto_0
    return-void

    .line 477
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->displayPosition:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->displayPosition:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/fiio/music/util/h;->a(ILjava/util/List;)I

    move-result v0

    .line 479
    packed-switch v0, :pswitch_data_0

    .line 490
    iget-object v1, p0, Lcom/fiio/music/adapter/FileListAdapter;->displayPosition:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 491
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->displayPosition:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 482
    :pswitch_0
    iget-object v1, p0, Lcom/fiio/music/adapter/FileListAdapter;->displayPosition:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 483
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->displayPosition:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 486
    :pswitch_1
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->displayPosition:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 487
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->displayPosition:Ljava/util/List;

    const/4 v1, 0x5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 479
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public cancelSelect()V
    .locals 2

    .prologue
    .line 863
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->mShowCheckBox:Z

    .line 864
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->mFootView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->mFootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 865
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->mFootView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 866
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->interfaceFootView:Lcom/fiio/music/util/dc;

    if-eqz v0, :cond_0

    .line 867
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->interfaceFootView:Lcom/fiio/music/util/dc;

    invoke-interface {v0}, Lcom/fiio/music/util/dc;->a()V

    .line 868
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->mSelectedItem:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 869
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->mSelectedItemName:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 870
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->mSelectedFileItem:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 871
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 873
    :cond_1
    return-void
.end method

.method public footViewCanceAll()V
    .locals 2

    .prologue
    .line 892
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->mSelectedItem:Ljava/util/List;

    iget-object v1, p0, Lcom/fiio/music/adapter/FileListAdapter;->mSelectedItem:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 894
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->mSelectedItemName:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 895
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->mSelectedFileItem:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 896
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->mSelectedPos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 897
    invoke-virtual {p0}, Lcom/fiio/music/adapter/FileListAdapter;->notifyDataSetChanged()V

    .line 898
    return-void
.end method

.method public footViewSelectAll()V
    .locals 3

    .prologue
    .line 901
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->fileItemList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->fileItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 906
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->fileItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    .line 915
    invoke-virtual {p0}, Lcom/fiio/music/adapter/FileListAdapter;->notifyDataSetChanged()V

    .line 917
    :cond_0
    return-void

    .line 907
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->mSelectedPos:Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 908
    iget-object v2, p0, Lcom/fiio/music/adapter/FileListAdapter;->mSelectedItem:Ljava/util/List;

    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->fileItemList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/FileItem;

    invoke-virtual {v0}, Lcom/fiio/music/entity/FileItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 909
    iget-object v2, p0, Lcom/fiio/music/adapter/FileListAdapter;->mSelectedItemName:Ljava/util/List;

    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->fileItemList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/FileItem;

    invoke-virtual {v0}, Lcom/fiio/music/entity/FileItem;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 910
    iget-object v2, p0, Lcom/fiio/music/adapter/FileListAdapter;->mSelectedFileItem:Ljava/util/List;

    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->fileItemList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/FileItem;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 911
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->mSelectedPos:Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 906
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->fileItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCurPlayPosition()I
    .locals 1

    .prologue
    .line 469
    iget v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->curPlayPosition:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->fileItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 166
    int-to-long v0, p1

    return-wide v0
.end method

.method public getList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 940
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->displayPosition:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 941
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->displayPosition:Ljava/util/List;

    iget-object v1, p0, Lcom/fiio/music/adapter/FileListAdapter;->displayPosition:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 943
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->displayPosition:Ljava/util/List;

    return-object v0
.end method

.method public getPageFlag()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->pageFlag:I

    return v0
.end method

.method public getShowCheckBoxState()Z
    .locals 1

    .prologue
    .line 926
    iget-boolean v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->mShowCheckBox:Z

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .prologue
    .line 180
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->fileItemList:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->fileItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 181
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->fileItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/FileItem;

    invoke-virtual {v0}, Lcom/fiio/music/entity/FileItem;->getFilePath()Ljava/lang/String;

    move-result-object v2

    .line 182
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->fileItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/FileItem;

    invoke-virtual {v0}, Lcom/fiio/music/entity/FileItem;->getFileName()Ljava/lang/String;

    move-result-object v3

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 185
    const/4 v1, -0x1

    .line 187
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->fileItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/FileItem;

    invoke-virtual {v0}, Lcom/fiio/music/entity/FileItem;->isCue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->fileItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/FileItem;

    invoke-virtual {v0}, Lcom/fiio/music/entity/FileItem;->getTrack()I

    move-result v0

    move v1, v0

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 191
    invoke-direct {p0, p1}, Lcom/fiio/music/adapter/FileListAdapter;->putPositionIn(I)V

    .line 196
    if-nez p2, :cond_8

    .line 197
    new-instance v0, Lcom/fiio/music/adapter/i;

    const/4 v6, 0x0

    invoke-direct {v0, p0, v6}, Lcom/fiio/music/adapter/i;-><init>(Lcom/fiio/music/adapter/FileListAdapter;B)V

    iput-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->viewHolder:Lcom/fiio/music/adapter/i;

    .line 199
    iget v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->STYLE_PARAMTER:I

    const/4 v6, 0x1

    if-ne v0, v6, :cond_5

    .line 200
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v6, 0x7f04005d

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 208
    :cond_1
    :goto_0
    iget-object v6, p0, Lcom/fiio/music/adapter/FileListAdapter;->viewHolder:Lcom/fiio/music/adapter/i;

    const v0, 0x7f0b00d7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v6, Lcom/fiio/music/adapter/i;->b:Landroid/widget/ImageView;

    .line 209
    iget-object v6, p0, Lcom/fiio/music/adapter/FileListAdapter;->viewHolder:Lcom/fiio/music/adapter/i;

    const v0, 0x7f0b00d8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v6, Lcom/fiio/music/adapter/i;->a:Landroid/widget/ImageView;

    .line 210
    iget-object v6, p0, Lcom/fiio/music/adapter/FileListAdapter;->viewHolder:Lcom/fiio/music/adapter/i;

    const v0, 0x7f0b00d9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    iput-object v0, v6, Lcom/fiio/music/adapter/i;->c:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    .line 211
    iget-object v6, p0, Lcom/fiio/music/adapter/FileListAdapter;->viewHolder:Lcom/fiio/music/adapter/i;

    const v0, 0x7f0b00d4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v6, Lcom/fiio/music/adapter/i;->e:Landroid/widget/ImageView;

    .line 212
    iget-object v6, p0, Lcom/fiio/music/adapter/FileListAdapter;->viewHolder:Lcom/fiio/music/adapter/i;

    const v0, 0x7f0b00da

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    iput-object v0, v6, Lcom/fiio/music/adapter/i;->d:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    .line 213
    iget-object v6, p0, Lcom/fiio/music/adapter/FileListAdapter;->viewHolder:Lcom/fiio/music/adapter/i;

    const v0, 0x7f0b00d6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v6, Lcom/fiio/music/adapter/i;->f:Landroid/widget/CheckBox;

    .line 214
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->fileItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/FileItem;

    invoke-virtual {v0}, Lcom/fiio/music/entity/FileItem;->getFilePath()Ljava/lang/String;

    move-result-object v6

    .line 215
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->fileItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/FileItem;

    invoke-virtual {v0}, Lcom/fiio/music/entity/FileItem;->getFileName()Ljava/lang/String;

    .line 216
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->viewHolder:Lcom/fiio/music/adapter/i;

    iget-object v0, v0, Lcom/fiio/music/adapter/i;->f:Landroid/widget/CheckBox;

    .line 217
    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 218
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->viewHolder:Lcom/fiio/music/adapter/i;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 222
    :goto_1
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->viewHolder:Lcom/fiio/music/adapter/i;

    iget-object v0, v0, Lcom/fiio/music/adapter/i;->e:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->viewHolder:Lcom/fiio/music/adapter/i;

    iget-object v0, v0, Lcom/fiio/music/adapter/i;->e:Landroid/widget/ImageView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 224
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->viewHolder:Lcom/fiio/music/adapter/i;

    iget-object v0, v0, Lcom/fiio/music/adapter/i;->e:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/fiio/music/adapter/FileListAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    iget-boolean v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->mShowCheckBox:Z

    if-eqz v0, :cond_a

    .line 227
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->viewHolder:Lcom/fiio/music/adapter/i;

    iget-object v0, v0, Lcom/fiio/music/adapter/i;->f:Landroid/widget/CheckBox;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 228
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->viewHolder:Lcom/fiio/music/adapter/i;

    iget-object v0, v0, Lcom/fiio/music/adapter/i;->e:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->viewHolder:Lcom/fiio/music/adapter/i;

    iget-object v6, p0, Lcom/fiio/music/adapter/FileListAdapter;->viewHolder:Lcom/fiio/music/adapter/i;

    iget-object v6, v6, Lcom/fiio/music/adapter/i;->f:Landroid/widget/CheckBox;

    iput-object v6, v0, Lcom/fiio/music/adapter/i;->f:Landroid/widget/CheckBox;

    .line 230
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->fileItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/FileItem;

    invoke-virtual {v0}, Lcom/fiio/music/entity/FileItem;->getFilePath()Ljava/lang/String;

    move-result-object v6

    .line 231
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->fileItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/FileItem;

    invoke-virtual {v0}, Lcom/fiio/music/entity/FileItem;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 232
    iget-object v7, p0, Lcom/fiio/music/adapter/FileListAdapter;->viewHolder:Lcom/fiio/music/adapter/i;

    iget-object v8, p0, Lcom/fiio/music/adapter/FileListAdapter;->viewHolder:Lcom/fiio/music/adapter/i;

    iget-object v8, v8, Lcom/fiio/music/adapter/i;->f:Landroid/widget/CheckBox;

    iput-object v8, v7, Lcom/fiio/music/adapter/i;->f:Landroid/widget/CheckBox;

    .line 233
    iget-object v7, p0, Lcom/fiio/music/adapter/FileListAdapter;->viewHolder:Lcom/fiio/music/adapter/i;

    iget-object v7, v7, Lcom/fiio/music/adapter/i;->f:Landroid/widget/CheckBox;

    invoke-virtual {v7, v6}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 234
    iget-object v7, p0, Lcom/fiio/music/adapter/FileListAdapter;->mSelectedItem:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/fiio/music/adapter/FileListAdapter;->mSelectedItemName:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 235
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->viewHolder:Lcom/fiio/music/adapter/i;

    iget-object v0, v0, Lcom/fiio/music/adapter/i;->f:Landroid/widget/CheckBox;

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 236
    invoke-direct {p0}, Lcom/fiio/music/adapter/FileListAdapter;->isCheckAll()V

    .line 249
    :goto_2
    iget v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->pageFlag:I

    if-nez v0, :cond_16

    .line 250
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->fileItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v6, 0x1

    if-ne v0, v6, :cond_e

    .line 251
    iget v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->STYLE_PARAMTER:I

    const/4 v6, 0x1

    if-ne v0, v6, :cond_b

    .line 252
    const-string v0, "drawable://2130838491"

    iput-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->curAlbumPath:Ljava/lang/String;

    .line 309
    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->imageLoader:Lcom/b/a/b/f;

    iget-object v6, p0, Lcom/fiio/music/adapter/FileListAdapter;->curAlbumPath:Ljava/lang/String;

    .line 310
    iget-object v7, p0, Lcom/fiio/music/adapter/FileListAdapter;->viewHolder:Lcom/fiio/music/adapter/i;

    iget-object v7, v7, Lcom/fiio/music/adapter/i;->b:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/fiio/music/adapter/FileListAdapter;->options:Lcom/b/a/b/d;

    .line 309
    invoke-virtual {v0, v6, v7, v8}, Lcom/b/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/b/a/b/d;)V

    .line 312
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->fileItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/FileItem;

    invoke-virtual {v0}, Lcom/fiio/music/entity/FileItem;->isCue()Z

    move-result v0

    if-nez v0, :cond_28

    .line 313
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->playingSongPath:Ljava/lang/String;

    .line 314
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->playingSongPath:Ljava/lang/String;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->G()Z

    move-result v0

    if-nez v0, :cond_27

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/fiio/music/adapter/FileListAdapter;->playingSongPath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 317
    iget v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->STYLE_PARAMTER:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_20

    .line 319
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 320
    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v6

    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 321
    iget v1, p0, Lcom/fiio/music/adapter/FileListAdapter;->playerState:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1e

    .line 322
    iget-object v1, p0, Lcom/fiio/music/adapter/FileListAdapter;->viewHolder:Lcom/fiio/music/adapter/i;

    iget-object v1, v1, Lcom/fiio/music/adapter/i;->c:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v0, v4, v5, v6}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 323
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->viewHolder:Lcom/fiio/music/adapter/i;

    iget-object v0, v0, Lcom/fiio/music/adapter/i;->c:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    invoke-virtual {v0}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->playingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 324
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->viewHolder:Lcom/fiio/music/adapter/i;

    iget-object v0, v0, Lcom/fiio/music/adapter/i;->c:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 325
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->playingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 437
    :cond_3
    :goto_4
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->viewHolder:Lcom/fiio/music/adapter/i;

    iget-object v0, v0, Lcom/fiio/music/adapter/i;->c:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    invoke-virtual {v0, v3}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->viewHolder:Lcom/fiio/music/adapter/i;

    iget-object v0, v0, Lcom/fiio/music/adapter/i;->c:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    invoke-virtual {v0, v2}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setTag(Ljava/lang/Object;)V

    .line 441
    iget v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->pageFlag:I

    if-nez v0, :cond_35

    .line 442
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->fileItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_33

    .line 443
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->viewHolder:Lcom/fiio/music/adapter/i;

    iget-object v0, v0, Lcom/fiio/music/adapter/i;->c:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    invoke-virtual {v0}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fiio/music/adapter/FileListAdapter;->setSongCount(Ljava/lang/String;)V

    .line 455
    :cond_4
    :goto_5
    return-object p2

    .line 201
    :cond_5
    iget v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->STYLE_PARAMTER:I

    const/4 v6, 0x2

    if-ne v0, v6, :cond_6

    .line 202
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v6, 0x7f04005e

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 203
    :cond_6
    iget v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->STYLE_PARAMTER:I

    const/4 v6, 0x3

    if-ne v0, v6, :cond_7

    .line 204
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v6, 0x7f04005f

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 205
    :cond_7
    iget v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->STYLE_PARAMTER:I

    const/4 v6, 0x4

    if-ne v0, v6, :cond_1

    .line 206
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v6, 0x7f040060

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 220
    :cond_8
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/adapter/i;

    iput-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->viewHolder:Lcom/fiio/music/adapter/i;

    goto/16 :goto_1

    .line 238
    :cond_9
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->viewHolder:Lcom/fiio/music/adapter/i;

    iget-object v0, v0, Lcom/fiio/music/adapter/i;->f:Landroid/widget/CheckBox;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 239
    invoke-direct {p0}, Lcom/fiio/music/adapter/FileListAdapter;->isCheckAll()V

    goto/16 :goto_2

    .line 242
    :cond_a
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->viewHolder:Lcom/fiio/music/adapter/i;

    iget-object v0, v0, Lcom/fiio/music/adapter/i;->f:Landroid/widget/CheckBox;

    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_2

    .line 253
    :cond_b
    iget v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->STYLE_PARAMTER:I

    const/4 v6, 0x2

    if-ne v0, v6, :cond_c

    .line 254
    const-string v0, "drawable://2130838492"

    iput-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->curAlbumPath:Ljava/lang/String;

    goto/16 :goto_3

    .line 255
    :cond_c
    iget v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->STYLE_PARAMTER:I

    const/4 v6, 0x3

    if-ne v0, v6, :cond_d

    .line 256
    const-string v0, "drawable://2130838493"

    iput-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->curAlbumPath:Ljava/lang/String;

    goto/16 :goto_3

    .line 257
    :cond_d
    iget v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->STYLE_PARAMTER:I

    const/4 v6, 0x4

    if-ne v0, v6, :cond_2

    .line 258
    const-string v0, "drawable://2130838494"

    iput-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->curAlbumPath:Ljava/lang/String;

    goto/16 :goto_3

    .line 262
    :cond_e
    if-nez p1, :cond_12

    .line 263
    iget v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->STYLE_PARAMTER:I

    const/4 v6, 0x1

    if-ne v0, v6, :cond_f

    .line 264
    const-string v0, "drawable://2130838491"

    iput-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->curAlbumPath:Ljava/lang/String;

    goto/16 :goto_3

    .line 265
    :cond_f
    iget v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->STYLE_PARAMTER:I

    const/4 v6, 0x2

    if-ne v0, v6, :cond_10

    .line 266
    const-string v0, "drawable://2130838492"

    iput-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->curAlbumPath:Ljava/lang/String;

    goto/16 :goto_3

    .line 267
    :cond_10
    iget v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->STYLE_PARAMTER:I

    const/4 v6, 0x3

    if-ne v0, v6, :cond_11

    .line 268
    const-string v0, "drawable://2130838493"

    iput-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->curAlbumPath:Ljava/lang/String;

    goto/16 :goto_3

    .line 269
    :cond_11
    iget v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->STYLE_PARAMTER:I

    const/4 v6, 0x4

    if-ne v0, v6, :cond_2

    .line 270
    const-string v0, "drawable://2130838494"

    iput-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->curAlbumPath:Ljava/lang/String;

    goto/16 :goto_3

    .line 274
    :cond_12
    iget v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->STYLE_PARAMTER:I

    const/4 v6, 0x1

    if-ne v0, v6, :cond_13

    .line 275
    const-string v0, "drawable://2130838468"

    iput-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->curAlbumPath:Ljava/lang/String;

    goto/16 :goto_3

    .line 276
    :cond_13
    iget v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->STYLE_PARAMTER:I

    const/4 v6, 0x2

    if-ne v0, v6, :cond_14

    .line 277
    const-string v0, "drawable://2130838469"

    iput-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->curAlbumPath:Ljava/lang/String;

    goto/16 :goto_3

    .line 278
    :cond_14
    iget v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->STYLE_PARAMTER:I

    const/4 v6, 0x3

    if-ne v0, v6, :cond_15

    .line 279
    const-string v0, "drawable://2130838470"

    iput-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->curAlbumPath:Ljava/lang/String;

    goto/16 :goto_3

    .line 280
    :cond_15
    iget v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->STYLE_PARAMTER:I

    const/4 v6, 0x4

    if-ne v0, v6, :cond_2

    .line 281
    const-string v0, "drawable://2130838471"

    iput-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->curAlbumPath:Ljava/lang/String;

    goto/16 :goto_3

    .line 286
    :cond_16
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->fileItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/FileItem;

    invoke-virtual {v0}, Lcom/fiio/music/entity/FileItem;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 287
    iget v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->STYLE_PARAMTER:I

    const/4 v6, 0x1

    if-ne v0, v6, :cond_17

    .line 288
    const-string v0, "drawable://2130838473"

    iput-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->curAlbumPath:Ljava/lang/String;

    goto/16 :goto_3

    .line 289
    :cond_17
    iget v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->STYLE_PARAMTER:I

    const/4 v6, 0x2

    if-ne v0, v6, :cond_18

    .line 290
    const-string v0, "drawable://2130838474"

    iput-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->curAlbumPath:Ljava/lang/String;

    goto/16 :goto_3

    .line 291
    :cond_18
    iget v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->STYLE_PARAMTER:I

    const/4 v6, 0x3

    if-ne v0, v6, :cond_19

    .line 292
    const-string v0, "drawable://2130838475"

    iput-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->curAlbumPath:Ljava/lang/String;

    goto/16 :goto_3

    .line 293
    :cond_19
    iget v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->STYLE_PARAMTER:I

    const/4 v6, 0x4

    if-ne v0, v6, :cond_2

    .line 294
    const-string v0, "drawable://2130838476"

    iput-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->curAlbumPath:Ljava/lang/String;

    goto/16 :goto_3

    .line 297
    :cond_1a
    iget v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->STYLE_PARAMTER:I

    const/4 v6, 0x1

    if-ne v0, v6, :cond_1b

    .line 298
    const-string v0, "drawable://2130838600"

    iput-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->curAlbumPath:Ljava/lang/String;

    goto/16 :goto_3

    .line 299
    :cond_1b
    iget v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->STYLE_PARAMTER:I

    const/4 v6, 0x2

    if-ne v0, v6, :cond_1c

    .line 300
    const-string v0, "drawable://2130838601"

    iput-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->curAlbumPath:Ljava/lang/String;

    goto/16 :goto_3

    .line 301
    :cond_1c
    iget v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->STYLE_PARAMTER:I

    const/4 v6, 0x3

    if-ne v0, v6, :cond_1d

    .line 302
    const-string v0, "drawable://2130838602"

    iput-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->curAlbumPath:Ljava/lang/String;

    goto/16 :goto_3

    .line 303
    :cond_1d
    iget v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->STYLE_PARAMTER:I

    const/4 v6, 0x4

    if-ne v0, v6, :cond_2

    .line 304
    const-string v0, "drawable://2130838603"

    iput-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->curAlbumPath:Ljava/lang/String;

    goto/16 :goto_3

    .line 326
    :cond_1e
    iget v1, p0, Lcom/fiio/music/adapter/FileListAdapter;->playerState:I

    const/4 v4, 0x3

    if-eq v1, v4, :cond_1f

    .line 327
    iget v1, p0, Lcom/fiio/music/adapter/FileListAdapter;->playerState:I

    const/4 v4, 0x4

    if-ne v1, v4, :cond_3

    .line 328
    :cond_1f
    iget-object v1, p0, Lcom/fiio/music/adapter/FileListAdapter;->viewHolder:Lcom/fiio/music/adapter/i;

    iget-object v1, v1, Lcom/fiio/music/adapter/i;->c:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v0, v4, v5, v6}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 329
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->viewHolder:Lcom/fiio/music/adapter/i;

    iget-object v0, v0, Lcom/fiio/music/adapter/i;->c:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    invoke-virtual {v0}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->playingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 330
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->viewHolder:Lcom/fiio/music/adapter/i;

    iget-object v0, v0, Lcom/fiio/music/adapter/i;->c:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 331
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->playingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto/16 :goto_4

    .line 335
    :cond_20
    iget v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->STYLE_PARAMTER:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_23

    .line 336
    iget v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->playerState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_21

    .line 337
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->viewHolder:Lcom/fiio/music/adapter/i;

    iget-object v0, v0, Lcom/fiio/music/adapter/i;->a:Landroid/widget/ImageView;

    const v1, 0x7f050003

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 338
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->viewHolder:Lcom/fiio/music/adapter/i;

    iget-object v0, v0, Lcom/fiio/music/adapter/i;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->playingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 339
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->viewHolder:Lcom/fiio/music/adapter/i;

    iget-object v0, v0, Lcom/fiio/music/adapter/i;->c:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 340
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->playingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto/16 :goto_4

    .line 341
    :cond_21
    iget v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->playerState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_22

    .line 342
    iget v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->playerState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 343
    :cond_22
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->viewHolder:Lcom/fiio/music/adapter/i;

    iget-object v0, v0, Lcom/fiio/music/adapter/i;->a:Landroid/widget/ImageView;

    const v1, 0x7f050003

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 344
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->viewHolder:Lcom/fiio/music/adapter/i;

    iget-object v0, v0, Lcom/fiio/music/adapter/i;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->playingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 345
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->viewHolder:Lcom/fiio/music/adapter/i;

    iget-object v0, v0, Lcom/fiio/music/adapter/i;->c:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 346
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->playingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto/16 :goto_4

    .line 350
    :cond_23
    iget v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->STYLE_PARAMTER:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_24

    iget v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->STYLE_PARAMTER:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 351
    :cond_24
    iget v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->playerState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_25

    .line 352
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->viewHolder:Lcom/fiio/music/adapter/i;

    iget-object v0, v0, Lcom/fiio/music/adapter/i;->a:Landroid/widget/ImageView;

    const v1, 0x7f050004

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 353
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->viewHolder:Lcom/fiio/music/adapter/i;

    iget-object v0, v0, Lcom/fiio/music/adapter/i;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->playingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 354
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->viewHolder:Lcom/fiio/music/adapter/i;

    iget-object v0, v0, Lcom/fiio/music/adapter/i;->c:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 355
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->playingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto/16 :goto_4

    .line 356
    :cond_25
    iget v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->playerState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_26

    .line 357
    iget v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->playerState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 358
    :cond_26
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->viewHolder:Lcom/fiio/music/adapter/i;

    iget-object v0, v0, Lcom/fiio/music/adapter/i;->a:Landroid/widget/ImageView;

    const v1, 0x7f050004

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 359
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->viewHolder:Lcom/fiio/music/adapter/i;

    iget-object v0, v0, Lcom/fiio/music/adapter/i;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->playingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 360
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->viewHolder:Lcom/fiio/music/adapter/i;

    iget-object v0, v0, Lcom/fiio/music/adapter/i;->c:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 361
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->playingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto/16 :goto_4

    .line 367
    :cond_27
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->viewHolder:Lcom/fiio/music/adapter/i;

    iget-object v0, v0, Lcom/fiio/music/adapter/i;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 368
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->viewHolder:Lcom/fiio/music/adapter/i;

    iget-object v0, v0, Lcom/fiio/music/adapter/i;->c:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v4, v5, v6}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 369
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->viewHolder:Lcom/fiio/music/adapter/i;

    iget-object v0, v0, Lcom/fiio/music/adapter/i;->c:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_4

    .line 372
    :cond_28
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->k()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->h()Lcom/fiio/music/entity/Song;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/fiio/music/adapter/FileListAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v5}, Lcom/fiio/music/service/h;->k()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/fiio/music/util/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".cue"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->playingSongPath:Ljava/lang/String;

    .line 374
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->h()Lcom/fiio/music/entity/Song;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->playingSongName:Ljava/lang/String;

    .line 375
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->playingSongPath:Ljava/lang/String;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->G()Z

    move-result v0

    if-nez v0, :cond_32

    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/fiio/music/adapter/FileListAdapter;->playingSongPath:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->h()Lcom/fiio/music/entity/Song;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getTrack()I

    move-result v0

    if-ne v1, v0, :cond_32

    .line 378
    iget v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->STYLE_PARAMTER:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2b

    .line 380
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 381
    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v6

    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 382
    iget v1, p0, Lcom/fiio/music/adapter/FileListAdapter;->playerState:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_29

    .line 383
    iget-object v1, p0, Lcom/fiio/music/adapter/FileListAdapter;->viewHolder:Lcom/fiio/music/adapter/i;

    iget-object v1, v1, Lcom/fiio/music/adapter/i;->c:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v0, v4, v5, v6}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 384
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->viewHolder:Lcom/fiio/music/adapter/i;

    iget-object v0, v0, Lcom/fiio/music/adapter/i;->c:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    invoke-virtual {v0}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->playingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 385
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->viewHolder:Lcom/fiio/music/adapter/i;

    iget-object v0, v0, Lcom/fiio/music/adapter/i;->c:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 386
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->playingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto/16 :goto_4

    .line 387
    :cond_29
    iget v1, p0, Lcom/fiio/music/adapter/FileListAdapter;->playerState:I

    const/4 v4, 0x3

    if-eq v1, v4, :cond_2a

    .line 388
    iget v1, p0, Lcom/fiio/music/adapter/FileListAdapter;->playerState:I

    const/4 v4, 0x4

    if-ne v1, v4, :cond_3

    .line 389
    :cond_2a
    iget-object v1, p0, Lcom/fiio/music/adapter/FileListAdapter;->viewHolder:Lcom/fiio/music/adapter/i;

    iget-object v1, v1, Lcom/fiio/music/adapter/i;->c:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v0, v4, v5, v6}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 390
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->viewHolder:Lcom/fiio/music/adapter/i;

    iget-object v0, v0, Lcom/fiio/music/adapter/i;->c:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    invoke-virtual {v0}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->playingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 391
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->viewHolder:Lcom/fiio/music/adapter/i;

    iget-object v0, v0, Lcom/fiio/music/adapter/i;->c:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 392
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->playingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto/16 :goto_4

    .line 396
    :cond_2b
    iget v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->STYLE_PARAMTER:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2e

    .line 397
    iget v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->playerState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2c

    .line 398
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->viewHolder:Lcom/fiio/music/adapter/i;

    iget-object v0, v0, Lcom/fiio/music/adapter/i;->a:Landroid/widget/ImageView;

    const v1, 0x7f050003

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 399
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->viewHolder:Lcom/fiio/music/adapter/i;

    iget-object v0, v0, Lcom/fiio/music/adapter/i;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->playingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 400
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->viewHolder:Lcom/fiio/music/adapter/i;

    iget-object v0, v0, Lcom/fiio/music/adapter/i;->c:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 401
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->playingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto/16 :goto_4

    .line 402
    :cond_2c
    iget v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->playerState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2d

    .line 403
    iget v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->playerState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 404
    :cond_2d
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->viewHolder:Lcom/fiio/music/adapter/i;

    iget-object v0, v0, Lcom/fiio/music/adapter/i;->a:Landroid/widget/ImageView;

    const v1, 0x7f050003

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 405
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->viewHolder:Lcom/fiio/music/adapter/i;

    iget-object v0, v0, Lcom/fiio/music/adapter/i;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->playingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 406
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->viewHolder:Lcom/fiio/music/adapter/i;

    iget-object v0, v0, Lcom/fiio/music/adapter/i;->c:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 407
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->playingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto/16 :goto_4

    .line 411
    :cond_2e
    iget v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->STYLE_PARAMTER:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2f

    iget v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->STYLE_PARAMTER:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 412
    :cond_2f
    iget v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->playerState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_30

    .line 413
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->viewHolder:Lcom/fiio/music/adapter/i;

    iget-object v0, v0, Lcom/fiio/music/adapter/i;->a:Landroid/widget/ImageView;

    const v1, 0x7f050004

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 414
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->viewHolder:Lcom/fiio/music/adapter/i;

    iget-object v0, v0, Lcom/fiio/music/adapter/i;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->playingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 415
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->viewHolder:Lcom/fiio/music/adapter/i;

    iget-object v0, v0, Lcom/fiio/music/adapter/i;->c:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 416
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->playingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto/16 :goto_4

    .line 417
    :cond_30
    iget v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->playerState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_31

    .line 418
    iget v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->playerState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 419
    :cond_31
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->viewHolder:Lcom/fiio/music/adapter/i;

    iget-object v0, v0, Lcom/fiio/music/adapter/i;->a:Landroid/widget/ImageView;

    const v1, 0x7f050004

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 420
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->viewHolder:Lcom/fiio/music/adapter/i;

    iget-object v0, v0, Lcom/fiio/music/adapter/i;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->playingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 421
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->viewHolder:Lcom/fiio/music/adapter/i;

    iget-object v0, v0, Lcom/fiio/music/adapter/i;->c:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 422
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->playingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto/16 :goto_4

    .line 429
    :cond_32
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->viewHolder:Lcom/fiio/music/adapter/i;

    iget-object v0, v0, Lcom/fiio/music/adapter/i;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 430
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->viewHolder:Lcom/fiio/music/adapter/i;

    iget-object v0, v0, Lcom/fiio/music/adapter/i;->c:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v4, v5, v6}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 431
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->viewHolder:Lcom/fiio/music/adapter/i;

    iget-object v0, v0, Lcom/fiio/music/adapter/i;->c:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_4

    .line 445
    :cond_33
    if-nez p1, :cond_34

    .line 446
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->viewHolder:Lcom/fiio/music/adapter/i;

    iget-object v0, v0, Lcom/fiio/music/adapter/i;->c:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    invoke-virtual {v0}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fiio/music/adapter/FileListAdapter;->setSongCount(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 448
    :cond_34
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->viewHolder:Lcom/fiio/music/adapter/i;

    iget-object v0, v0, Lcom/fiio/music/adapter/i;->c:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    invoke-virtual {v0}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fiio/music/adapter/FileListAdapter;->setSongCount(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 452
    :cond_35
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->viewHolder:Lcom/fiio/music/adapter/i;

    iget-object v0, v0, Lcom/fiio/music/adapter/i;->d:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setVisibility(I)V

    goto/16 :goto_5
.end method

.method public setData(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/FileItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 520
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->fileItemList:Ljava/util/List;

    .line 521
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->fileItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 522
    iput p2, p0, Lcom/fiio/music/adapter/FileListAdapter;->pageFlag:I

    .line 523
    invoke-virtual {p0}, Lcom/fiio/music/adapter/FileListAdapter;->notifyDataSetChanged()V

    .line 524
    return-void
.end method

.method public setFootView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 554
    iput-object p1, p0, Lcom/fiio/music/adapter/FileListAdapter;->mFootView:Landroid/view/View;

    .line 555
    invoke-direct {p0}, Lcom/fiio/music/adapter/FileListAdapter;->initFootView()V

    .line 556
    return-void
.end method

.method public setFootViewItf(Lcom/fiio/music/util/dc;)V
    .locals 0

    .prologue
    .line 550
    iput-object p1, p0, Lcom/fiio/music/adapter/FileListAdapter;->interfaceFootView:Lcom/fiio/music/util/dc;

    .line 551
    return-void
.end method

.method public setOnPlayPositionInShowListener(Lcom/fiio/music/adapter/FileListAdapter$onPlayPositionInShowListener;)V
    .locals 0

    .prologue
    .line 509
    iput-object p1, p0, Lcom/fiio/music/adapter/FileListAdapter;->PlayPositionInShowListener:Lcom/fiio/music/adapter/FileListAdapter$onPlayPositionInShowListener;

    .line 510
    return-void
.end method

.method public setPlayerManager(Lcom/fiio/music/service/h;)V
    .locals 1

    .prologue
    .line 526
    iput-object p1, p0, Lcom/fiio/music/adapter/FileListAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    .line 527
    invoke-virtual {p1}, Lcom/fiio/music/service/h;->m()I

    move-result v0

    iput v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->playerState:I

    .line 528
    invoke-virtual {p1}, Lcom/fiio/music/service/h;->i()I

    move-result v0

    iput v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->playerId:I

    .line 529
    invoke-virtual {p1}, Lcom/fiio/music/service/h;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->playingSongPath:Ljava/lang/String;

    .line 530
    invoke-virtual {p0}, Lcom/fiio/music/adapter/FileListAdapter;->notifyDataSetChanged()V

    .line 531
    return-void
.end method

.method public setPlayerState(I)V
    .locals 0

    .prologue
    .line 169
    iput p1, p0, Lcom/fiio/music/adapter/FileListAdapter;->playerState:I

    .line 170
    invoke-virtual {p0}, Lcom/fiio/music/adapter/FileListAdapter;->notifyDataSetChanged()V

    .line 171
    return-void
.end method

.method public setSongCount(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 534
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c00de

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 536
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    .line 537
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->listMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->listMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->listMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 540
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    .line 541
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->viewHolder:Lcom/fiio/music/adapter/i;

    iget-object v0, v0, Lcom/fiio/music/adapter/i;->d:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 542
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->viewHolder:Lcom/fiio/music/adapter/i;

    iget-object v0, v0, Lcom/fiio/music/adapter/i;->d:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    invoke-virtual {v0, v1}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setVisibility(I)V

    .line 543
    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public setUpdataInfoTitle(Lcom/fiio/music/adapter/ListItemAdapter$UpdataInfoTitle;)V
    .locals 0

    .prologue
    .line 920
    iput-object p1, p0, Lcom/fiio/music/adapter/FileListAdapter;->mUpdataInfoTitle:Lcom/fiio/music/adapter/ListItemAdapter$UpdataInfoTitle;

    .line 921
    return-void
.end method

.method public showCheckBox(Z)V
    .locals 0

    .prologue
    .line 923
    iput-boolean p1, p0, Lcom/fiio/music/adapter/FileListAdapter;->mShowCheckBox:Z

    .line 924
    return-void
.end method

.method public showFootView()V
    .locals 2

    .prologue
    .line 929
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/fiio/music/adapter/FileListAdapter;->showCheckBox(Z)V

    .line 930
    invoke-virtual {p0}, Lcom/fiio/music/adapter/FileListAdapter;->notifyDataSetChanged()V

    .line 932
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->mFootView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 933
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->mFootView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 934
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->interfaceFootView:Lcom/fiio/music/util/dc;

    if-eqz v0, :cond_1

    .line 935
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->interfaceFootView:Lcom/fiio/music/util/dc;

    invoke-interface {v0}, Lcom/fiio/music/util/dc;->b()V

    .line 936
    :cond_1
    return-void
.end method

.method public toggleCheckBox(I)V
    .locals 4

    .prologue
    .line 875
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->fileItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/FileItem;

    invoke-virtual {v0}, Lcom/fiio/music/entity/FileItem;->getFilePath()Ljava/lang/String;

    move-result-object v1

    .line 876
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->fileItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/FileItem;

    invoke-virtual {v0}, Lcom/fiio/music/entity/FileItem;->getFileName()Ljava/lang/String;

    move-result-object v2

    .line 877
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->fileItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/FileItem;

    .line 878
    iget-object v3, p0, Lcom/fiio/music/adapter/FileListAdapter;->mSelectedItem:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/fiio/music/adapter/FileListAdapter;->mSelectedItemName:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 879
    iget-object v3, p0, Lcom/fiio/music/adapter/FileListAdapter;->mSelectedItem:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 880
    iget-object v1, p0, Lcom/fiio/music/adapter/FileListAdapter;->mSelectedItemName:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 881
    iget-object v1, p0, Lcom/fiio/music/adapter/FileListAdapter;->mSelectedFileItem:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 882
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->mSelectedPos:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 889
    :goto_0
    invoke-virtual {p0}, Lcom/fiio/music/adapter/FileListAdapter;->notifyDataSetChanged()V

    .line 890
    return-void

    .line 884
    :cond_0
    iget-object v3, p0, Lcom/fiio/music/adapter/FileListAdapter;->mSelectedItem:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 885
    iget-object v1, p0, Lcom/fiio/music/adapter/FileListAdapter;->mSelectedItemName:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 886
    iget-object v1, p0, Lcom/fiio/music/adapter/FileListAdapter;->mSelectedFileItem:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 887
    iget-object v0, p0, Lcom/fiio/music/adapter/FileListAdapter;->mSelectedPos:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public upDateSongCount(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 545
    iput-object p1, p0, Lcom/fiio/music/adapter/FileListAdapter;->listMap:Ljava/util/HashMap;

    .line 546
    invoke-virtual {p0}, Lcom/fiio/music/adapter/FileListAdapter;->notifyDataSetChanged()V

    .line 547
    return-void
.end method
