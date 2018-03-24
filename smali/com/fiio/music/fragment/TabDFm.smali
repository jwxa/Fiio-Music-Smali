.class public Lcom/fiio/music/fragment/TabDFm;
.super Landroid/support/v4/app/Fragment;
.source "TabDFm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final COUNT_GET_FAIL:I = 0x0

.field private static final COUNT_GET_SUC:I = 0x1

.field private static final SONGLISTLOCATE:I = 0x1

.field private static final SORT_A_Z:I

.field private static final STYLELISTLOCATE:I


# instance fields
.field private ISBACKFLAG:Z

.field private STYLE_PARAMTER:I

.field private SourceDateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/i/d;",
            ">;"
        }
    .end annotation
.end field

.field private UI_IS_CHANGE:Z

.field private albumList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private antherPosition:I

.field private antherTop:I

.field private changestylesp:Landroid/content/SharedPreferences;

.field private characterParser:Lcom/fiio/music/util/f;

.field private condition:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private cueSheetManager:Lcom/fiio/music/util/j;

.field data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;"
        }
    .end annotation
.end field

.field private displayChange_songlistOrAlbumList:Z

.field private foldersongUtils:Lcom/fiio/music/util/an;

.field private initTask:Lcom/fiio/music/fragment/cg;

.field private inner_cur_album:Ljava/lang/String;

.field private inner_data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;"
        }
    .end annotation
.end field

.field private inner_mListItemAdapter:Lcom/fiio/music/adapter/ListItemAdapter;

.field private inner_mSongItemAdapter:Lcom/fiio/music/adapter/SongItemAdapter;

.field private inner_sytleId:Ljava/lang/String;

.field private jumpPageFlag:Z

.field private jumpPageFlagForAlbumList:Z

.field private jumpStyle:Z

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private listChangeFlag:Z

.field private mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mListItemAdapter:Lcom/fiio/music/adapter/ListItemAdapter;

.field private mPlayPos:I

.field private mPosition:I

.field private mSongItemAdapter:Lcom/fiio/music/adapter/SongItemAdapter;

.field private mTop:I

.field private mediaPlayerManager:Lcom/fiio/music/service/h;

.field private nPlayPos:I

.field private nPosition:I

.field private nTop:I

.field private needRelist:Z

.field private onPauseFlag:Z

.field private pageNumber:I

.field private pinyinComparator:Lcom/fiio/music/util/br;

.field private smlv_list_change_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

.field private smlv_list_change_content_listener:Landroid/widget/AdapterView$OnItemClickListener;

.field private songDao:Lcom/fiio/music/b/k;

.field private song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

.field private song_list_content_listener:Landroid/widget/AdapterView$OnItemClickListener;

.field private sortDataList:Lcom/fiio/music/util/cm;

.field private sortType:I

.field private sp:Landroid/content/SharedPreferences;

.field private styleDao:Lcom/fiio/music/b/l;

.field private styleJumpPreferences:Landroid/content/SharedPreferences;

.field private styleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/SongStyle;",
            ">;"
        }
    .end annotation
.end field

.field private tabSortType:Lcom/fiio/music/util/cr;

.field titleText:Ljava/lang/String;

.field private toast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 120
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 78
    iput-object v3, p0, Lcom/fiio/music/fragment/TabDFm;->data:Ljava/util/List;

    .line 81
    iput v1, p0, Lcom/fiio/music/fragment/TabDFm;->pageNumber:I

    .line 87
    iput-object v3, p0, Lcom/fiio/music/fragment/TabDFm;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 90
    iput-boolean v1, p0, Lcom/fiio/music/fragment/TabDFm;->onPauseFlag:Z

    .line 94
    iput-object v3, p0, Lcom/fiio/music/fragment/TabDFm;->condition:Ljava/lang/String;

    .line 102
    iput-boolean v1, p0, Lcom/fiio/music/fragment/TabDFm;->listChangeFlag:Z

    .line 106
    iput v2, p0, Lcom/fiio/music/fragment/TabDFm;->mPosition:I

    .line 107
    iput v2, p0, Lcom/fiio/music/fragment/TabDFm;->mTop:I

    .line 108
    iput v2, p0, Lcom/fiio/music/fragment/TabDFm;->nPosition:I

    .line 109
    iput v2, p0, Lcom/fiio/music/fragment/TabDFm;->nTop:I

    .line 110
    iput-boolean v1, p0, Lcom/fiio/music/fragment/TabDFm;->jumpPageFlag:Z

    .line 114
    iput-boolean v1, p0, Lcom/fiio/music/fragment/TabDFm;->jumpStyle:Z

    .line 118
    const/4 v0, 0x3

    iput v0, p0, Lcom/fiio/music/fragment/TabDFm;->STYLE_PARAMTER:I

    .line 259
    iput-boolean v1, p0, Lcom/fiio/music/fragment/TabDFm;->ISBACKFLAG:Z

    .line 261
    iput v2, p0, Lcom/fiio/music/fragment/TabDFm;->antherPosition:I

    .line 262
    iput v2, p0, Lcom/fiio/music/fragment/TabDFm;->antherTop:I

    .line 421
    new-instance v0, Lcom/fiio/music/fragment/cd;

    invoke-direct {v0, p0}, Lcom/fiio/music/fragment/cd;-><init>(Lcom/fiio/music/fragment/TabDFm;)V

    iput-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->smlv_list_change_content_listener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 444
    iput-boolean v1, p0, Lcom/fiio/music/fragment/TabDFm;->jumpPageFlagForAlbumList:Z

    .line 445
    iput-object v3, p0, Lcom/fiio/music/fragment/TabDFm;->inner_data:Ljava/util/List;

    .line 448
    new-instance v0, Lcom/fiio/music/fragment/ce;

    invoke-direct {v0, p0}, Lcom/fiio/music/fragment/ce;-><init>(Lcom/fiio/music/fragment/TabDFm;)V

    iput-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->song_list_content_listener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 982
    iput-boolean v1, p0, Lcom/fiio/music/fragment/TabDFm;->needRelist:Z

    .line 1009
    iput-boolean v1, p0, Lcom/fiio/music/fragment/TabDFm;->displayChange_songlistOrAlbumList:Z

    .line 120
    return-void
.end method

.method static synthetic access$0(Lcom/fiio/music/fragment/TabDFm;)I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/fiio/music/fragment/TabDFm;->pageNumber:I

    return v0
.end method

.method static synthetic access$1(Lcom/fiio/music/fragment/TabDFm;)Lcom/fiio/music/adapter/ListItemAdapter;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->mListItemAdapter:Lcom/fiio/music/adapter/ListItemAdapter;

    return-object v0
.end method

.method static synthetic access$10(Lcom/fiio/music/fragment/TabDFm;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->condition:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$11(Lcom/fiio/music/fragment/TabDFm;)Lcom/fiio/music/swipemenulistview/SwipeMenuListView;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    return-object v0
.end method

.method static synthetic access$12(Lcom/fiio/music/fragment/TabDFm;)Landroid/widget/Toast;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->toast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$13(Lcom/fiio/music/fragment/TabDFm;Landroid/widget/Toast;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/fiio/music/fragment/TabDFm;->toast:Landroid/widget/Toast;

    return-void
.end method

.method static synthetic access$14(Lcom/fiio/music/fragment/TabDFm;)Lcom/fiio/music/adapter/ListItemAdapter;
    .locals 1

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->inner_mListItemAdapter:Lcom/fiio/music/adapter/ListItemAdapter;

    return-object v0
.end method

.method static synthetic access$15(Lcom/fiio/music/fragment/TabDFm;Z)V
    .locals 0

    .prologue
    .line 444
    iput-boolean p1, p0, Lcom/fiio/music/fragment/TabDFm;->jumpPageFlagForAlbumList:Z

    return-void
.end method

.method static synthetic access$16(Lcom/fiio/music/fragment/TabDFm;)Ljava/util/List;
    .locals 1

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->albumList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$17(Lcom/fiio/music/fragment/TabDFm;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 443
    iput-object p1, p0, Lcom/fiio/music/fragment/TabDFm;->inner_cur_album:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$18(Lcom/fiio/music/fragment/TabDFm;)Lcom/fiio/music/b/k;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->songDao:Lcom/fiio/music/b/k;

    return-object v0
.end method

.method static synthetic access$19(Lcom/fiio/music/fragment/TabDFm;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->inner_cur_album:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/fiio/music/fragment/TabDFm;)Lcom/fiio/music/util/an;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->foldersongUtils:Lcom/fiio/music/util/an;

    return-object v0
.end method

.method static synthetic access$20(Lcom/fiio/music/fragment/TabDFm;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 445
    iput-object p1, p0, Lcom/fiio/music/fragment/TabDFm;->inner_data:Ljava/util/List;

    return-void
.end method

.method static synthetic access$21(Lcom/fiio/music/fragment/TabDFm;)Ljava/util/List;
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->inner_data:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$22(Lcom/fiio/music/fragment/TabDFm;)I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/fiio/music/fragment/TabDFm;->STYLE_PARAMTER:I

    return v0
.end method

.method static synthetic access$23(Lcom/fiio/music/fragment/TabDFm;Lcom/fiio/music/adapter/SongItemAdapter;)V
    .locals 0

    .prologue
    .line 446
    iput-object p1, p0, Lcom/fiio/music/fragment/TabDFm;->inner_mSongItemAdapter:Lcom/fiio/music/adapter/SongItemAdapter;

    return-void
.end method

.method static synthetic access$24(Lcom/fiio/music/fragment/TabDFm;)Lcom/fiio/music/adapter/SongItemAdapter;
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->inner_mSongItemAdapter:Lcom/fiio/music/adapter/SongItemAdapter;

    return-object v0
.end method

.method static synthetic access$25(Lcom/fiio/music/fragment/TabDFm;)Lcom/fiio/music/util/cr;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->tabSortType:Lcom/fiio/music/util/cr;

    return-object v0
.end method

.method static synthetic access$26(Lcom/fiio/music/fragment/TabDFm;I)V
    .locals 0

    .prologue
    .line 106
    iput p1, p0, Lcom/fiio/music/fragment/TabDFm;->mPosition:I

    return-void
.end method

.method static synthetic access$27(Lcom/fiio/music/fragment/TabDFm;I)V
    .locals 0

    .prologue
    .line 107
    iput p1, p0, Lcom/fiio/music/fragment/TabDFm;->mTop:I

    return-void
.end method

.method static synthetic access$3(Lcom/fiio/music/fragment/TabDFm;)Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/fiio/music/fragment/TabDFm;->jumpStyle:Z

    return v0
.end method

.method static synthetic access$4(Lcom/fiio/music/fragment/TabDFm;)Z
    .locals 1

    .prologue
    .line 1009
    iget-boolean v0, p0, Lcom/fiio/music/fragment/TabDFm;->displayChange_songlistOrAlbumList:Z

    return v0
.end method

.method static synthetic access$5(Lcom/fiio/music/fragment/TabDFm;)Lcom/fiio/music/adapter/SongItemAdapter;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->mSongItemAdapter:Lcom/fiio/music/adapter/SongItemAdapter;

    return-object v0
.end method

.method static synthetic access$6(Lcom/fiio/music/fragment/TabDFm;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$7(Lcom/fiio/music/fragment/TabDFm;)Lcom/fiio/music/service/h;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->mediaPlayerManager:Lcom/fiio/music/service/h;

    return-object v0
.end method

.method static synthetic access$8(Lcom/fiio/music/fragment/TabDFm;Lcom/fiio/music/util/j;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/fiio/music/fragment/TabDFm;->cueSheetManager:Lcom/fiio/music/util/j;

    return-void
.end method

.method static synthetic access$9(Lcom/fiio/music/fragment/TabDFm;)Lcom/fiio/music/util/j;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->cueSheetManager:Lcom/fiio/music/util/j;

    return-object v0
.end method


# virtual methods
.method public aKeyPlayer(Ljava/lang/String;I)V
    .locals 8

    .prologue
    const v7, 0x7f0c00f9

    const/16 v6, 0xa

    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 814
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->foldersongUtils:Lcom/fiio/music/util/an;

    iget-boolean v1, p0, Lcom/fiio/music/fragment/TabDFm;->jumpStyle:Z

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/an;->a(Z)V

    .line 815
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->foldersongUtils:Lcom/fiio/music/util/an;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/an;->a(I)V

    .line 816
    if-ne p2, v6, :cond_2

    .line 817
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->songDao:Lcom/fiio/music/b/k;

    invoke-virtual {v0, p1}, Lcom/fiio/music/b/k;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 820
    iget-object v1, p0, Lcom/fiio/music/fragment/TabDFm;->songDao:Lcom/fiio/music/b/k;

    invoke-virtual {v1, v0}, Lcom/fiio/music/b/k;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 821
    iput-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->condition:Ljava/lang/String;

    .line 822
    sget v0, Lcom/fiio/music/util/cn;->d:I

    .line 823
    iget-object v2, p0, Lcom/fiio/music/fragment/TabDFm;->tabSortType:Lcom/fiio/music/util/cr;

    const-string v3, "sortDFm"

    invoke-virtual {v2, v3}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    move-result v2

    .line 824
    invoke-static {v1, v2, v0}, Lcom/fiio/music/util/cn;->b(Ljava/util/List;II)Ljava/util/List;

    move-result-object v2

    .line 825
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 826
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->toast:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabDFm;->context:Landroid/content/Context;

    invoke-virtual {p0, v7}, Lcom/fiio/music/fragment/TabDFm;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->toast:Landroid/widget/Toast;

    .line 848
    :cond_0
    :goto_0
    return-void

    .line 828
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fiio/music/entity/Song;

    iget-object v3, p0, Lcom/fiio/music/fragment/TabDFm;->condition:Ljava/lang/String;

    invoke-virtual {v0, v1, v6, v3, v2}, Lcom/fiio/music/activity/LocalMusicActivity;->playerMusicByItem(Lcom/fiio/music/entity/Song;ILjava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 830
    :cond_2
    if-ne p2, v5, :cond_0

    .line 831
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->songDao:Lcom/fiio/music/b/k;

    invoke-virtual {v0, p1}, Lcom/fiio/music/b/k;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 835
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->songDao:Lcom/fiio/music/b/k;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabDFm;->titleText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fiio/music/b/k;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 836
    iput-object v2, p0, Lcom/fiio/music/fragment/TabDFm;->inner_cur_album:Ljava/lang/String;

    .line 837
    iput-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->inner_sytleId:Ljava/lang/String;

    .line 838
    iget-object v1, p0, Lcom/fiio/music/fragment/TabDFm;->songDao:Lcom/fiio/music/b/k;

    invoke-virtual {v1, v2, v0}, Lcom/fiio/music/b/k;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 841
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 842
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->toast:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabDFm;->context:Landroid/content/Context;

    invoke-virtual {p0, v7}, Lcom/fiio/music/fragment/TabDFm;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->toast:Landroid/widget/Toast;

    goto :goto_0

    .line 844
    :cond_3
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fiio/music/entity/Song;

    invoke-virtual {v0, v1, v5, v2, v3}, Lcom/fiio/music/activity/LocalMusicActivity;->playerMusicByItem(Lcom/fiio/music/entity/Song;ILjava/lang/String;Ljava/util/List;)V

    goto :goto_0
.end method

.method public afterDel()V
    .locals 1

    .prologue
    .line 937
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fiio/music/fragment/TabDFm;->listChangeFlag:Z

    .line 938
    return-void
.end method

.method public changeDisplayMode()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 1019
    iget-boolean v0, p0, Lcom/fiio/music/fragment/TabDFm;->displayChange_songlistOrAlbumList:Z

    if-eqz v0, :cond_1

    .line 1020
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabDFm;->song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    invoke-virtual {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->initSwipeListViewFour(Lcom/fiio/music/swipemenulistview/SwipeMenuListView;)V

    .line 1021
    new-instance v0, Lcom/fiio/music/adapter/SongItemAdapter;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabDFm;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/fiio/music/fragment/TabDFm;->data:Ljava/util/List;

    iget-object v3, p0, Lcom/fiio/music/fragment/TabDFm;->mediaPlayerManager:Lcom/fiio/music/service/h;

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/fiio/music/fragment/TabDFm;->song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    iget v6, p0, Lcom/fiio/music/fragment/TabDFm;->STYLE_PARAMTER:I

    invoke-direct/range {v0 .. v6}, Lcom/fiio/music/adapter/SongItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/fiio/music/service/h;ILcom/fiio/music/swipemenulistview/SwipeMenuListView;I)V

    iput-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->mSongItemAdapter:Lcom/fiio/music/adapter/SongItemAdapter;

    .line 1022
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabDFm;->mSongItemAdapter:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1023
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->initTask:Lcom/fiio/music/fragment/cg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->initTask:Lcom/fiio/music/fragment/cg;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/cg;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    .line 1024
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->initTask:Lcom/fiio/music/fragment/cg;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fiio/music/fragment/cg;->cancel(Z)Z

    .line 1026
    :cond_0
    new-instance v0, Lcom/fiio/music/fragment/cg;

    invoke-direct {v0, p0}, Lcom/fiio/music/fragment/cg;-><init>(Lcom/fiio/music/fragment/TabDFm;)V

    iput-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->initTask:Lcom/fiio/music/fragment/cg;

    .line 1027
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->initTask:Lcom/fiio/music/fragment/cg;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabDFm;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-array v2, v10, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/fragment/cg;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1044
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabDFm;->titleText:Ljava/lang/String;

    iget-object v2, p0, Lcom/fiio/music/fragment/TabDFm;->data:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2, v10}, Lcom/fiio/music/activity/LocalMusicActivity;->updateHeadBar(Ljava/lang/String;IZ)V

    .line 1046
    return-void

    .line 1030
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabDFm;->song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    invoke-virtual {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->initSwipeListView(Lcom/fiio/music/swipemenulistview/SwipeMenuListView;)V

    .line 1031
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->tabSortType:Lcom/fiio/music/util/cr;

    const-string v1, "sortDFm"

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    move-result v0

    .line 1032
    iget-object v1, p0, Lcom/fiio/music/fragment/TabDFm;->tabSortType:Lcom/fiio/music/util/cr;

    const-string v2, "tabDFm"

    invoke-virtual {v1, v2}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/fiio/music/fragment/TabDFm;->sortType:I

    .line 1033
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/fiio/music/fragment/TabDFm;->albumList:Ljava/util/List;

    .line 1034
    iget-object v1, p0, Lcom/fiio/music/fragment/TabDFm;->songDao:Lcom/fiio/music/b/k;

    invoke-virtual {p0}, Lcom/fiio/music/fragment/TabDFm;->getTitleString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fiio/music/b/k;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fiio/music/fragment/TabDFm;->inner_sytleId:Ljava/lang/String;

    .line 1037
    iget-object v1, p0, Lcom/fiio/music/fragment/TabDFm;->styleDao:Lcom/fiio/music/b/l;

    iget-object v2, p0, Lcom/fiio/music/fragment/TabDFm;->inner_sytleId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/fiio/music/b/l;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/fiio/music/fragment/TabDFm;->albumList:Ljava/util/List;

    .line 1039
    iget-object v1, p0, Lcom/fiio/music/fragment/TabDFm;->albumList:Ljava/util/List;

    iget v2, p0, Lcom/fiio/music/fragment/TabDFm;->sortType:I

    invoke-static {v1, v0, v2}, Lcom/fiio/music/util/cn;->f(Ljava/util/List;II)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->albumList:Ljava/util/List;

    .line 1040
    new-instance v0, Lcom/fiio/music/adapter/ListItemAdapter;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabDFm;->context:Landroid/content/Context;

    .line 1041
    iget-object v2, p0, Lcom/fiio/music/fragment/TabDFm;->albumList:Ljava/util/List;

    iget-object v3, p0, Lcom/fiio/music/fragment/TabDFm;->mediaPlayerManager:Lcom/fiio/music/service/h;

    const v4, 0x7f0203b0

    iget-object v5, p0, Lcom/fiio/music/fragment/TabDFm;->songDao:Lcom/fiio/music/b/k;

    const-string v6, "albumid"

    iget-object v8, p0, Lcom/fiio/music/fragment/TabDFm;->song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    iget v9, p0, Lcom/fiio/music/fragment/TabDFm;->STYLE_PARAMTER:I

    move-object v7, p0

    invoke-direct/range {v0 .. v9}, Lcom/fiio/music/adapter/ListItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/fiio/music/service/h;ILcom/fiio/music/b/k;Ljava/lang/String;Landroid/view/View$OnClickListener;Lcom/fiio/music/swipemenulistview/SwipeMenuListView;I)V

    .line 1040
    iput-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->inner_mListItemAdapter:Lcom/fiio/music/adapter/ListItemAdapter;

    .line 1042
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabDFm;->inner_mListItemAdapter:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public getAlbumListSize()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 913
    .line 914
    iget-object v1, p0, Lcom/fiio/music/fragment/TabDFm;->albumList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    move v1, v0

    move v2, v0

    .line 915
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->albumList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 919
    :goto_1
    return v2

    .line 916
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->albumList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v2, v0

    .line 915
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move v2, v0

    goto :goto_1
.end method

.method public getArtist(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 929
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getArtist()Lcom/fiio/music/entity/Artist;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/entity/Artist;->getName()Ljava/lang/String;

    move-result-object v0

    .line 931
    return-object v0
.end method

.method public getDateSize()I
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->data:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 367
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDisplayChange_playlistOrAlbumlist()Z
    .locals 1

    .prologue
    .line 586
    iget-boolean v0, p0, Lcom/fiio/music/fragment/TabDFm;->displayChange_songlistOrAlbumList:Z

    return v0
.end method

.method public getFirstSong()Lcom/fiio/music/entity/Song;
    .locals 2

    .prologue
    .line 380
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->data:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    return-object v0
.end method

.method public getFirstSongId()I
    .locals 2

    .prologue
    .line 377
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->data:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getId_()I

    move-result v0

    return v0
.end method

.method public getInnerAlbumId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 869
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->inner_cur_album:Ljava/lang/String;

    return-object v0
.end method

.method public getInnerAllAlbumSongList()Ljava/util/List;
    .locals 7
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
    const/4 v2, 0x0

    .line 873
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 874
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->tabSortType:Lcom/fiio/music/util/cr;

    const-string v1, "sortDFm"

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    move v1, v2

    .line 875
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->albumList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 880
    return-object v3

    .line 876
    :cond_0
    iget-object v4, p0, Lcom/fiio/music/fragment/TabDFm;->songDao:Lcom/fiio/music/b/k;

    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->albumList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v2

    iget-object v5, p0, Lcom/fiio/music/fragment/TabDFm;->songDao:Lcom/fiio/music/b/k;

    iget-object v6, p0, Lcom/fiio/music/fragment/TabDFm;->titleText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/fiio/music/b/k;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lcom/fiio/music/b/k;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 878
    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 875
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public getInnerCurFilePath(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 402
    const/4 v0, 0x0

    .line 403
    iget-object v1, p0, Lcom/fiio/music/fragment/TabDFm;->inner_data:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 404
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->inner_data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    .line 405
    :cond_0
    return-object v0
.end method

.method public getInnerListItemAdapter()Lcom/fiio/music/adapter/ListItemAdapter;
    .locals 1

    .prologue
    .line 1049
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->inner_mListItemAdapter:Lcom/fiio/music/adapter/ListItemAdapter;

    return-object v0
.end method

.method public getInnerName(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 409
    const/4 v0, 0x0

    .line 410
    iget-object v1, p0, Lcom/fiio/music/fragment/TabDFm;->inner_data:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 411
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->inner_data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v0

    .line 413
    :cond_0
    return-object v0
.end method

.method public getInnerSongId(I)I
    .locals 2

    .prologue
    .line 394
    const/4 v0, 0x0

    .line 395
    iget-object v1, p0, Lcom/fiio/music/fragment/TabDFm;->inner_data:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 396
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->inner_data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getId_()I

    move-result v0

    .line 397
    :cond_0
    return v0
.end method

.method public getInnerSongItemAdapter()Lcom/fiio/music/adapter/SongItemAdapter;
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->inner_mSongItemAdapter:Lcom/fiio/music/adapter/SongItemAdapter;

    return-object v0
.end method

.method public getInnerSongList()Ljava/util/List;
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
    .line 857
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->inner_data:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 860
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->inner_data:Ljava/util/List;

    .line 862
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInnerstyleId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 866
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->inner_sytleId:Ljava/lang/String;

    return-object v0
.end method

.method public getListItemAdapter()Lcom/fiio/music/adapter/ListItemAdapter;
    .locals 1

    .prologue
    .line 693
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->mListItemAdapter:Lcom/fiio/music/adapter/ListItemAdapter;

    return-object v0
.end method

.method public getListPositionByFirstChar(Ljava/lang/String;)I
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 956
    .line 957
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->list:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 958
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move v1, v2

    .line 966
    :cond_1
    return v1

    .line 958
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 959
    const/4 v4, 0x4

    aget-object v0, v0, v4

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 962
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public getListofItem()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 725
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->list:Ljava/util/List;

    return-object v0
.end method

.method public getName(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 924
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v0

    .line 926
    return-object v0
.end method

.method public getSong(I)Lcom/fiio/music/entity/Song;
    .locals 1

    .prologue
    .line 885
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->data:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 886
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    .line 889
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSongId(I)I
    .locals 1

    .prologue
    .line 893
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getId_()I

    move-result v0

    .line 895
    return v0
.end method

.method public getSongIsLike(I)I
    .locals 1

    .prologue
    .line 898
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getIsLike()I

    move-result v0

    .line 900
    return v0
.end method

.method public getSongItemAdapter()Lcom/fiio/music/adapter/SongItemAdapter;
    .locals 1

    .prologue
    .line 690
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->mSongItemAdapter:Lcom/fiio/music/adapter/SongItemAdapter;

    return-object v0
.end method

.method public getSongList()Ljava/util/List;
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
    .line 934
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->data:Ljava/util/List;

    return-object v0
.end method

.method public getSongPositionByFirstChar(Ljava/lang/String;)I
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 971
    .line 972
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    move v1, v2

    .line 979
    :cond_0
    return v1

    .line 972
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    .line 973
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getSortLetters()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getSortLetters()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 976
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public getTabFmPageNumber()I
    .locals 1

    .prologue
    .line 389
    iget v0, p0, Lcom/fiio/music/fragment/TabDFm;->pageNumber:I

    return v0
.end method

.method public getTitleString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->titleText:Ljava/lang/String;

    return-object v0
.end method

.method public getWhichAdapterInner()I
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 571
    .line 572
    iget v2, p0, Lcom/fiio/music/fragment/TabDFm;->pageNumber:I

    if-ne v2, v0, :cond_2

    invoke-virtual {p0}, Lcom/fiio/music/fragment/TabDFm;->getDisplayChange_playlistOrAlbumlist()Z

    move-result v2

    if-nez v2, :cond_2

    .line 573
    iget-object v2, p0, Lcom/fiio/music/fragment/TabDFm;->song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    if-eqz v2, :cond_2

    .line 574
    iget-object v2, p0, Lcom/fiio/music/fragment/TabDFm;->song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    invoke-virtual {v2}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ListItemAdapter"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 582
    :goto_0
    return v0

    .line 576
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    invoke-virtual {v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SongItemAdapter"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 577
    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 579
    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public getcurFilePath(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 904
    const/4 v0, 0x0

    .line 905
    iget-object v1, p0, Lcom/fiio/music/fragment/TabDFm;->data:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fiio/music/fragment/TabDFm;->data:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 906
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    .line 908
    :cond_0
    return-object v0
.end method

.method public getsongcondition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->condition:Ljava/lang/String;

    return-object v0
.end method

.method public initListItem()V
    .locals 1

    .prologue
    .line 940
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->styleList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->styleList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 942
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->styleDao:Lcom/fiio/music/b/l;

    invoke-virtual {v0}, Lcom/fiio/music/b/l;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->styleList:Ljava/util/List;

    .line 943
    :cond_1
    iget-boolean v0, p0, Lcom/fiio/music/fragment/TabDFm;->listChangeFlag:Z

    if-eqz v0, :cond_2

    .line 950
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->styleDao:Lcom/fiio/music/b/l;

    invoke-virtual {v0}, Lcom/fiio/music/b/l;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->styleList:Ljava/util/List;

    .line 953
    :cond_2
    return-void
.end method

.method public isNeedRelist()Z
    .locals 1

    .prologue
    .line 984
    iget-boolean v0, p0, Lcom/fiio/music/fragment/TabDFm;->needRelist:Z

    return v0
.end method

.method public jumpPage(IILjava/lang/String;Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 267
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->tabSortType:Lcom/fiio/music/util/cr;

    const-string v1, "tabDFm"

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/fiio/music/fragment/TabDFm;->sortType:I

    .line 268
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->tabSortType:Lcom/fiio/music/util/cr;

    const-string v1, "sortDFm"

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    move-result v1

    .line 269
    if-nez p1, :cond_6

    .line 270
    invoke-virtual {p0}, Lcom/fiio/music/fragment/TabDFm;->initListItem()V

    .line 271
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->sortDataList:Lcom/fiio/music/util/cm;

    iget v2, p0, Lcom/fiio/music/fragment/TabDFm;->sortType:I

    iget-object v3, p0, Lcom/fiio/music/fragment/TabDFm;->styleList:Ljava/util/List;

    invoke-virtual {v0, v2, v3, v1}, Lcom/fiio/music/util/cm;->e(ILjava/util/List;I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->list:Ljava/util/List;

    .line 272
    iget v0, p0, Lcom/fiio/music/fragment/TabDFm;->sortType:I

    if-nez v0, :cond_4

    .line 273
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->a_z_sideBar_show(Z)V

    .line 277
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->mListItemAdapter:Lcom/fiio/music/adapter/ListItemAdapter;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/fiio/music/fragment/TabDFm;->listChangeFlag:Z

    if-eqz v0, :cond_5

    .line 278
    :cond_0
    new-instance v0, Lcom/fiio/music/adapter/ListItemAdapter;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabDFm;->context:Landroid/content/Context;

    .line 279
    iget-object v2, p0, Lcom/fiio/music/fragment/TabDFm;->list:Ljava/util/List;

    iget-object v3, p0, Lcom/fiio/music/fragment/TabDFm;->mediaPlayerManager:Lcom/fiio/music/service/h;

    const v4, 0x7f0203b0

    iget-object v5, p0, Lcom/fiio/music/fragment/TabDFm;->songDao:Lcom/fiio/music/b/k;

    const-string v6, "styleid"

    iget-object v8, p0, Lcom/fiio/music/fragment/TabDFm;->smlv_list_change_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    iget v9, p0, Lcom/fiio/music/fragment/TabDFm;->STYLE_PARAMTER:I

    move-object v7, p0

    invoke-direct/range {v0 .. v9}, Lcom/fiio/music/adapter/ListItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/fiio/music/service/h;ILcom/fiio/music/b/k;Ljava/lang/String;Landroid/view/View$OnClickListener;Lcom/fiio/music/swipemenulistview/SwipeMenuListView;I)V

    .line 278
    iput-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->mListItemAdapter:Lcom/fiio/music/adapter/ListItemAdapter;

    .line 280
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fiio/music/fragment/TabDFm;->listChangeFlag:Z

    .line 286
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->smlv_list_change_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabDFm;->mListItemAdapter:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 287
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->smlv_list_change_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setVisibility(I)V

    .line 288
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setVisibility(I)V

    .line 290
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->context:Landroid/content/Context;

    const-string v1, "positiontop"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->sp:Landroid/content/SharedPreferences;

    .line 291
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->sp:Landroid/content/SharedPreferences;

    const-string v1, "positionD"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/fiio/music/fragment/TabDFm;->antherPosition:I

    .line 292
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->sp:Landroid/content/SharedPreferences;

    const-string v1, "topD"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/fiio/music/fragment/TabDFm;->antherTop:I

    .line 293
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->smlv_list_change_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    iget v1, p0, Lcom/fiio/music/fragment/TabDFm;->antherPosition:I

    iget v2, p0, Lcom/fiio/music/fragment/TabDFm;->antherTop:I

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setSelectionFromTop(II)V

    .line 294
    iget-boolean v0, p0, Lcom/fiio/music/fragment/TabDFm;->ISBACKFLAG:Z

    if-eqz v0, :cond_2

    .line 295
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->smlv_list_change_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    iget v1, p0, Lcom/fiio/music/fragment/TabDFm;->nPosition:I

    iget v2, p0, Lcom/fiio/music/fragment/TabDFm;->nTop:I

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setSelectionFromTop(II)V

    .line 296
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fiio/music/fragment/TabDFm;->ISBACKFLAG:Z

    .line 298
    :cond_2
    iput p1, p0, Lcom/fiio/music/fragment/TabDFm;->pageNumber:I

    .line 362
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->showOrHideHeadBar()V

    .line 363
    return-void

    .line 275
    :cond_4
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->a_z_sideBar_show(Z)V

    goto/16 :goto_0

    .line 281
    :cond_5
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->mListItemAdapter:Lcom/fiio/music/adapter/ListItemAdapter;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/fiio/music/fragment/TabDFm;->needRelist:Z

    if-eqz v0, :cond_1

    .line 282
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->mListItemAdapter:Lcom/fiio/music/adapter/ListItemAdapter;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabDFm;->list:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/ListItemAdapter;->setDate(Ljava/util/List;)V

    .line 283
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fiio/music/fragment/TabDFm;->needRelist:Z

    goto :goto_1

    .line 299
    :cond_6
    const/4 v0, 0x1

    if-ne p1, v0, :cond_c

    .line 300
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fiio/music/fragment/TabDFm;->jumpPageFlag:Z

    .line 301
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fiio/music/fragment/TabDFm;->jumpPageFlagForAlbumList:Z

    .line 303
    if-eqz p3, :cond_7

    .line 304
    iput-object p3, p0, Lcom/fiio/music/fragment/TabDFm;->condition:Ljava/lang/String;

    .line 305
    :cond_7
    if-eqz p4, :cond_8

    .line 306
    iput-object p4, p0, Lcom/fiio/music/fragment/TabDFm;->titleText:Ljava/lang/String;

    .line 308
    :cond_8
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v2, p0, Lcom/fiio/music/fragment/TabDFm;->song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    invoke-virtual {v0, v2}, Lcom/fiio/music/activity/LocalMusicActivity;->initSwipeListViewFour(Lcom/fiio/music/swipemenulistview/SwipeMenuListView;)V

    .line 315
    iget-boolean v0, p0, Lcom/fiio/music/fragment/TabDFm;->displayChange_songlistOrAlbumList:Z

    if-eqz v0, :cond_b

    .line 316
    new-instance v0, Lcom/fiio/music/adapter/SongItemAdapter;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabDFm;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/fiio/music/fragment/TabDFm;->data:Ljava/util/List;

    iget-object v3, p0, Lcom/fiio/music/fragment/TabDFm;->mediaPlayerManager:Lcom/fiio/music/service/h;

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/fiio/music/fragment/TabDFm;->song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    iget v6, p0, Lcom/fiio/music/fragment/TabDFm;->STYLE_PARAMTER:I

    invoke-direct/range {v0 .. v6}, Lcom/fiio/music/adapter/SongItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/fiio/music/service/h;ILcom/fiio/music/swipemenulistview/SwipeMenuListView;I)V

    iput-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->mSongItemAdapter:Lcom/fiio/music/adapter/SongItemAdapter;

    .line 317
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabDFm;->mSongItemAdapter:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 318
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->initTask:Lcom/fiio/music/fragment/cg;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->initTask:Lcom/fiio/music/fragment/cg;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/cg;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_9

    .line 319
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->initTask:Lcom/fiio/music/fragment/cg;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fiio/music/fragment/cg;->cancel(Z)Z

    .line 321
    :cond_9
    new-instance v0, Lcom/fiio/music/fragment/cg;

    invoke-direct {v0, p0}, Lcom/fiio/music/fragment/cg;-><init>(Lcom/fiio/music/fragment/TabDFm;)V

    iput-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->initTask:Lcom/fiio/music/fragment/cg;

    .line 322
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->initTask:Lcom/fiio/music/fragment/cg;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabDFm;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/fragment/cg;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 323
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->smlv_list_change_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setVisibility(I)V

    .line 324
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setVisibility(I)V

    .line 325
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->smlv_list_change_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 326
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->smlv_list_change_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lcom/fiio/music/fragment/TabDFm;->nTop:I

    .line 327
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->smlv_list_change_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    invoke-virtual {v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/fiio/music/fragment/TabDFm;->nPosition:I

    .line 328
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fiio/music/fragment/TabDFm;->ISBACKFLAG:Z

    .line 330
    :cond_a
    iput p1, p0, Lcom/fiio/music/fragment/TabDFm;->pageNumber:I

    goto/16 :goto_2

    .line 333
    :cond_b
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v2, p0, Lcom/fiio/music/fragment/TabDFm;->song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    invoke-virtual {v0, v2}, Lcom/fiio/music/activity/LocalMusicActivity;->initSwipeListView(Lcom/fiio/music/swipemenulistview/SwipeMenuListView;)V

    .line 336
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->albumList:Ljava/util/List;

    .line 337
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->styleDao:Lcom/fiio/music/b/l;

    invoke-virtual {v0, p3}, Lcom/fiio/music/b/l;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->albumList:Ljava/util/List;

    .line 339
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->albumList:Ljava/util/List;

    iget v2, p0, Lcom/fiio/music/fragment/TabDFm;->sortType:I

    invoke-static {v0, v1, v2}, Lcom/fiio/music/util/cn;->f(Ljava/util/List;II)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->albumList:Ljava/util/List;

    .line 341
    new-instance v0, Lcom/fiio/music/adapter/ListItemAdapter;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabDFm;->context:Landroid/content/Context;

    .line 342
    iget-object v2, p0, Lcom/fiio/music/fragment/TabDFm;->albumList:Ljava/util/List;

    iget-object v3, p0, Lcom/fiio/music/fragment/TabDFm;->mediaPlayerManager:Lcom/fiio/music/service/h;

    const v4, 0x7f0203b0

    iget-object v5, p0, Lcom/fiio/music/fragment/TabDFm;->songDao:Lcom/fiio/music/b/k;

    const-string v6, "albumid"

    iget-object v8, p0, Lcom/fiio/music/fragment/TabDFm;->song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    iget v9, p0, Lcom/fiio/music/fragment/TabDFm;->STYLE_PARAMTER:I

    move-object v7, p0

    invoke-direct/range {v0 .. v9}, Lcom/fiio/music/adapter/ListItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/fiio/music/service/h;ILcom/fiio/music/b/k;Ljava/lang/String;Landroid/view/View$OnClickListener;Lcom/fiio/music/swipemenulistview/SwipeMenuListView;I)V

    .line 341
    iput-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->inner_mListItemAdapter:Lcom/fiio/music/adapter/ListItemAdapter;

    .line 343
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabDFm;->inner_mListItemAdapter:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 346
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->smlv_list_change_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setVisibility(I)V

    .line 347
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setVisibility(I)V

    .line 350
    iput p1, p0, Lcom/fiio/music/fragment/TabDFm;->pageNumber:I

    goto/16 :goto_2

    .line 354
    :cond_c
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 355
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->smlv_list_change_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setVisibility(I)V

    .line 356
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setVisibility(I)V

    .line 357
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->songDao:Lcom/fiio/music/b/k;

    invoke-virtual {v0, p3}, Lcom/fiio/music/b/k;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->data:Ljava/util/List;

    .line 358
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->sortDataList:Lcom/fiio/music/util/cm;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabDFm;->data:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/cm;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->data:Ljava/util/List;

    .line 359
    new-instance v0, Lcom/fiio/music/adapter/SongItemAdapter;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabDFm;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/fiio/music/fragment/TabDFm;->data:Ljava/util/List;

    iget-object v3, p0, Lcom/fiio/music/fragment/TabDFm;->mediaPlayerManager:Lcom/fiio/music/service/h;

    const/4 v4, 0x4

    iget-object v5, p0, Lcom/fiio/music/fragment/TabDFm;->song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    iget v6, p0, Lcom/fiio/music/fragment/TabDFm;->STYLE_PARAMTER:I

    invoke-direct/range {v0 .. v6}, Lcom/fiio/music/adapter/SongItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/fiio/music/service/h;ILcom/fiio/music/swipemenulistview/SwipeMenuListView;I)V

    iput-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->mSongItemAdapter:Lcom/fiio/music/adapter/SongItemAdapter;

    .line 360
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabDFm;->mSongItemAdapter:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_2
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 598
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 599
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 123
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 124
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const v2, 0x7f0b00d4

    const/16 v1, 0xa

    .line 788
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 790
    if-ne v0, v2, :cond_0

    .line 791
    if-ne v0, v2, :cond_0

    .line 792
    iget v0, p0, Lcom/fiio/music/fragment/TabDFm;->pageNumber:I

    if-nez v0, :cond_1

    .line 793
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/fiio/music/fragment/TabDFm;->aKeyPlayer(Ljava/lang/String;I)V

    .line 806
    :cond_0
    :goto_0
    return-void

    .line 795
    :cond_1
    iget-boolean v0, p0, Lcom/fiio/music/fragment/TabDFm;->displayChange_songlistOrAlbumList:Z

    if-eqz v0, :cond_2

    .line 796
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/fiio/music/fragment/TabDFm;->aKeyPlayer(Ljava/lang/String;I)V

    goto :goto_0

    .line 799
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/fiio/music/fragment/TabDFm;->aKeyPlayer(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 128
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 129
    invoke-virtual {p0}, Lcom/fiio/music/fragment/TabDFm;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->context:Landroid/content/Context;

    .line 130
    new-instance v0, Lcom/fiio/music/b/l;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabDFm;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/fiio/music/b/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->styleDao:Lcom/fiio/music/b/l;

    .line 131
    new-instance v0, Lcom/fiio/music/b/k;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabDFm;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/fiio/music/b/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->songDao:Lcom/fiio/music/b/k;

    .line 132
    new-instance v0, Lcom/fiio/music/util/cr;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabDFm;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/fiio/music/util/cr;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->tabSortType:Lcom/fiio/music/util/cr;

    .line 136
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->context:Landroid/content/Context;

    const-string v1, "changestyle"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->changestylesp:Landroid/content/SharedPreferences;

    .line 138
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->context:Landroid/content/Context;

    const-string v1, "folderjump"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->styleJumpPreferences:Landroid/content/SharedPreferences;

    .line 139
    invoke-static {}, Lcom/fiio/music/util/an;->a()Lcom/fiio/music/util/an;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->foldersongUtils:Lcom/fiio/music/util/an;

    .line 140
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->styleJumpPreferences:Landroid/content/SharedPreferences;

    const-string v1, "FolderJump"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fiio/music/fragment/TabDFm;->jumpStyle:Z

    .line 142
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 146
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->changestylesp:Landroid/content/SharedPreferences;

    const-string v1, "styleChange"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fiio/music/fragment/TabDFm;->UI_IS_CHANGE:Z

    .line 148
    invoke-virtual {p0}, Lcom/fiio/music/fragment/TabDFm;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/a;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/fiio/music/fragment/TabDFm;->STYLE_PARAMTER:I

    .line 150
    const/4 v0, 0x0

    .line 151
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/fiio/music/fragment/TabDFm;->data:Ljava/util/List;

    .line 152
    invoke-static {}, Lcom/fiio/music/util/f;->a()Lcom/fiio/music/util/f;

    move-result-object v1

    iput-object v1, p0, Lcom/fiio/music/fragment/TabDFm;->characterParser:Lcom/fiio/music/util/f;

    .line 153
    new-instance v1, Lcom/fiio/music/util/br;

    invoke-direct {v1}, Lcom/fiio/music/util/br;-><init>()V

    iput-object v1, p0, Lcom/fiio/music/fragment/TabDFm;->pinyinComparator:Lcom/fiio/music/util/br;

    .line 154
    new-instance v1, Lcom/fiio/music/util/cm;

    iget-object v2, p0, Lcom/fiio/music/fragment/TabDFm;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/fiio/music/util/cm;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/fiio/music/fragment/TabDFm;->sortDataList:Lcom/fiio/music/util/cm;

    .line 156
    iget v1, p0, Lcom/fiio/music/fragment/TabDFm;->STYLE_PARAMTER:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 157
    const v0, 0x7f040147

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    .line 170
    :goto_0
    const v0, 0x7f0b0375

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    iput-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    .line 171
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    iget-object v2, p0, Lcom/fiio/music/fragment/TabDFm;->song_list_content_listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v2}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 172
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    new-instance v2, Lcom/fiio/music/fragment/cf;

    invoke-direct {v2, p0}, Lcom/fiio/music/fragment/cf;-><init>(Lcom/fiio/music/fragment/TabDFm;)V

    invoke-virtual {v0, v2}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 192
    const v0, 0x7f0b0376

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    iput-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->smlv_list_change_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    .line 193
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->smlv_list_change_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    iget-object v2, p0, Lcom/fiio/music/fragment/TabDFm;->smlv_list_change_content_listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v2}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 194
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v2, p0, Lcom/fiio/music/fragment/TabDFm;->smlv_list_change_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    invoke-virtual {v0, v2}, Lcom/fiio/music/activity/LocalMusicActivity;->initSwipeListView(Lcom/fiio/music/swipemenulistview/SwipeMenuListView;)V

    .line 195
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v2, p0, Lcom/fiio/music/fragment/TabDFm;->song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    invoke-virtual {v0, v2}, Lcom/fiio/music/activity/LocalMusicActivity;->initSwipeListViewFour(Lcom/fiio/music/swipemenulistview/SwipeMenuListView;)V

    .line 198
    return-object v1

    .line 158
    :cond_0
    iget v1, p0, Lcom/fiio/music/fragment/TabDFm;->STYLE_PARAMTER:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 159
    const v0, 0x7f040148

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    .line 160
    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/fiio/music/fragment/TabDFm;->STYLE_PARAMTER:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 161
    const v0, 0x7f040149

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    .line 162
    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/fiio/music/fragment/TabDFm;->STYLE_PARAMTER:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 163
    const v0, 0x7f04014a

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 667
    iput v2, p0, Lcom/fiio/music/fragment/TabDFm;->antherPosition:I

    .line 668
    iput v2, p0, Lcom/fiio/music/fragment/TabDFm;->antherTop:I

    .line 669
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->context:Landroid/content/Context;

    const-string v1, "positiontop"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->sp:Landroid/content/SharedPreferences;

    .line 670
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "positionD"

    iget v2, p0, Lcom/fiio/music/fragment/TabDFm;->antherPosition:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 671
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "topD"

    iget v2, p0, Lcom/fiio/music/fragment/TabDFm;->antherTop:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 672
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 673
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 662
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 663
    return-void
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 677
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 679
    :try_start_0
    const-class v0, Landroid/support/v4/app/Fragment;

    const-string v1, "mChildFragmentManager"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 680
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 681
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 683
    return-void

    :catch_0
    move-exception v0

    .line 684
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 685
    :catch_1
    move-exception v0

    .line 686
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onHiddenChanged(Z)V
    .locals 2

    .prologue
    .line 616
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onHiddenChanged(Z)V

    .line 617
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->tabSortType:Lcom/fiio/music/util/cr;

    if-eqz v0, :cond_0

    .line 618
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->tabSortType:Lcom/fiio/music/util/cr;

    const-string v1, "tabDFm"

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    move-result v0

    .line 620
    if-nez v0, :cond_1

    .line 622
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->a_z_sideBar_show(Z)V

    .line 631
    :cond_0
    :goto_0
    return-void

    .line 626
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->a_z_sideBar_show(Z)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 638
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 639
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fiio/music/fragment/TabDFm;->onPauseFlag:Z

    .line 640
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 604
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 605
    invoke-virtual {p0}, Lcom/fiio/music/fragment/TabDFm;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    .line 606
    iget v0, p0, Lcom/fiio/music/fragment/TabDFm;->pageNumber:I

    if-nez v0, :cond_0

    .line 607
    invoke-virtual {p0, v1, v1, v2, v2}, Lcom/fiio/music/fragment/TabDFm;->jumpPage(IILjava/lang/String;Ljava/lang/String;)V

    .line 610
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 202
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 203
    invoke-virtual {p0}, Lcom/fiio/music/fragment/TabDFm;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    const-string v0, "zxy--"

    const-string v1, "tabDfm"

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 206
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->getMediaPlayerManager()Lcom/fiio/music/service/h;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->mediaPlayerManager:Lcom/fiio/music/service/h;

    .line 208
    iget v0, p0, Lcom/fiio/music/fragment/TabDFm;->pageNumber:I

    if-nez v0, :cond_2

    .line 209
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->smlv_list_change_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    invoke-virtual {v0, v2}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    invoke-virtual {v0, v3}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setVisibility(I)V

    .line 211
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->tabSortType:Lcom/fiio/music/util/cr;

    const-string v1, "tabDFm"

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/fiio/music/fragment/TabDFm;->sortType:I

    .line 212
    iget v0, p0, Lcom/fiio/music/fragment/TabDFm;->sortType:I

    if-nez v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->a_z_sideBar_show(Z)V

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v0, v2}, Lcom/fiio/music/activity/LocalMusicActivity;->a_z_sideBar_show(Z)V

    goto :goto_0

    .line 218
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->smlv_list_change_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    invoke-virtual {v0, v3}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setVisibility(I)V

    .line 219
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    invoke-virtual {v0, v2}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 644
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->smlv_list_change_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->smlv_list_change_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    invoke-virtual {v0, v3}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 645
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->smlv_list_change_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    invoke-virtual {v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/fiio/music/fragment/TabDFm;->antherPosition:I

    .line 646
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->smlv_list_change_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    invoke-virtual {v0, v3}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lcom/fiio/music/fragment/TabDFm;->antherTop:I

    .line 648
    :cond_0
    invoke-virtual {p0}, Lcom/fiio/music/fragment/TabDFm;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "positiontop"

    invoke-virtual {p0}, Lcom/fiio/music/fragment/TabDFm;->getActivity()Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1, v3}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->sp:Landroid/content/SharedPreferences;

    .line 649
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "positionD"

    iget v2, p0, Lcom/fiio/music/fragment/TabDFm;->antherPosition:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 650
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "topD"

    iget v2, p0, Lcom/fiio/music/fragment/TabDFm;->antherTop:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 651
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 652
    iget-boolean v0, p0, Lcom/fiio/music/fragment/TabDFm;->onPauseFlag:Z

    if-eqz v0, :cond_1

    .line 653
    invoke-virtual {p0}, Lcom/fiio/music/fragment/TabDFm;->getTabFmPageNumber()I

    move-result v0

    iput v0, p0, Lcom/fiio/music/fragment/TabDFm;->pageNumber:I

    .line 657
    :goto_0
    iput-boolean v3, p0, Lcom/fiio/music/fragment/TabDFm;->onPauseFlag:Z

    .line 658
    return-void

    .line 655
    :cond_1
    iput v3, p0, Lcom/fiio/music/fragment/TabDFm;->pageNumber:I

    goto :goto_0
.end method

.method public orderBy(I)V
    .locals 2

    .prologue
    .line 698
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 699
    if-nez p1, :cond_1

    .line 700
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->a_z_sideBar_show(Z)V

    .line 704
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->sortDataList:Lcom/fiio/music/util/cm;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabDFm;->styleList:Ljava/util/List;

    invoke-virtual {v0, p1, v1}, Lcom/fiio/music/util/cm;->d(ILjava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 705
    iget-object v1, p0, Lcom/fiio/music/fragment/TabDFm;->mListItemAdapter:Lcom/fiio/music/adapter/ListItemAdapter;

    if-eqz v1, :cond_0

    .line 706
    iget-object v1, p0, Lcom/fiio/music/fragment/TabDFm;->mListItemAdapter:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-virtual {v1, v0}, Lcom/fiio/music/adapter/ListItemAdapter;->setDate(Ljava/util/List;)V

    .line 708
    :cond_0
    return-void

    .line 702
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->a_z_sideBar_show(Z)V

    goto :goto_0
.end method

.method public orderByASCDESC(III)V
    .locals 2

    .prologue
    .line 711
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 712
    if-nez p1, :cond_1

    .line 713
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->a_z_sideBar_show(Z)V

    .line 717
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->sortDataList:Lcom/fiio/music/util/cm;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabDFm;->styleList:Ljava/util/List;

    invoke-virtual {v0, p1, v1, p2}, Lcom/fiio/music/util/cm;->e(ILjava/util/List;I)Ljava/util/List;

    move-result-object v0

    .line 718
    iget-object v1, p0, Lcom/fiio/music/fragment/TabDFm;->mListItemAdapter:Lcom/fiio/music/adapter/ListItemAdapter;

    if-eqz v1, :cond_0

    .line 719
    iget-object v1, p0, Lcom/fiio/music/fragment/TabDFm;->mListItemAdapter:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-virtual {v1, v0}, Lcom/fiio/music/adapter/ListItemAdapter;->setDate(Ljava/util/List;)V

    .line 721
    :cond_0
    return-void

    .line 715
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->a_z_sideBar_show(Z)V

    goto :goto_0
.end method

.method public playCueFile(Ljava/io/File;II)V
    .locals 3

    .prologue
    .line 590
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->cueSheetManager:Lcom/fiio/music/util/j;

    invoke-static {p1}, Lcom/fiio/music/util/j;->b(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 591
    if-nez v0, :cond_0

    .line 593
    :goto_0
    return-void

    .line 592
    :cond_0
    iget-object v1, p0, Lcom/fiio/music/fragment/TabDFm;->cueSheetManager:Lcom/fiio/music/util/j;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p2, p3, v2}, Lcom/fiio/music/util/j;->a(Ljava/io/File;IILjava/util/List;)V

    goto :goto_0
.end method

.method public relist()V
    .locals 1

    .prologue
    .line 991
    new-instance v0, Lcom/fiio/music/fragment/TabDFm;

    invoke-direct {v0}, Lcom/fiio/music/fragment/TabDFm;-><init>()V

    .line 992
    return-void
.end method

.method public setDisplayChange_playlistOrAlbumlist(Z)V
    .locals 0

    .prologue
    .line 1015
    iput-boolean p1, p0, Lcom/fiio/music/fragment/TabDFm;->displayChange_songlistOrAlbumList:Z

    .line 1016
    return-void
.end method

.method public setNeedRelist(Z)V
    .locals 0

    .prologue
    .line 987
    iput-boolean p1, p0, Lcom/fiio/music/fragment/TabDFm;->needRelist:Z

    .line 989
    return-void
.end method

.method public setTabFmPageNumber(I)V
    .locals 0

    .prologue
    .line 419
    iput p1, p0, Lcom/fiio/music/fragment/TabDFm;->pageNumber:I

    .line 420
    return-void
.end method

.method public tabDFGetListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    return-object v0
.end method

.method public tabGetListView_0()Lcom/fiio/music/swipemenulistview/SwipeMenuListView;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->smlv_list_change_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    return-object v0
.end method

.method public tabGetSongListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 852
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    return-object v0
.end method

.method public updataDataAfterDel(Ljava/util/List;)V
    .locals 7
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
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 760
    iput-object p1, p0, Lcom/fiio/music/fragment/TabDFm;->data:Ljava/util/List;

    .line 761
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->mSongItemAdapter:Lcom/fiio/music/adapter/SongItemAdapter;

    if-eqz v0, :cond_0

    .line 762
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 763
    new-instance v0, Lcom/fiio/music/adapter/SongItemAdapter;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabDFm;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/fiio/music/fragment/TabDFm;->mediaPlayerManager:Lcom/fiio/music/service/h;

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/fiio/music/fragment/TabDFm;->song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    iget v6, p0, Lcom/fiio/music/fragment/TabDFm;->STYLE_PARAMTER:I

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/fiio/music/adapter/SongItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/fiio/music/service/h;ILcom/fiio/music/swipemenulistview/SwipeMenuListView;I)V

    iput-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->mSongItemAdapter:Lcom/fiio/music/adapter/SongItemAdapter;

    .line 764
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabDFm;->mSongItemAdapter:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 769
    :cond_0
    :goto_0
    return-void

    .line 766
    :cond_1
    invoke-virtual {p0, v1, v1, v2, v2}, Lcom/fiio/music/fragment/TabDFm;->jumpPage(IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updataDeSelectionView()V
    .locals 1

    .prologue
    .line 994
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->getMediaPlayerManager()Lcom/fiio/music/service/h;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->mediaPlayerManager:Lcom/fiio/music/service/h;

    .line 995
    return-void
.end method

.method public updataInnerDataAfterDel(Ljava/util/List;)V
    .locals 7
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
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 773
    iput-object p1, p0, Lcom/fiio/music/fragment/TabDFm;->inner_data:Ljava/util/List;

    .line 774
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->inner_mSongItemAdapter:Lcom/fiio/music/adapter/SongItemAdapter;

    if-eqz v0, :cond_0

    .line 775
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 776
    new-instance v0, Lcom/fiio/music/adapter/SongItemAdapter;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabDFm;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/fiio/music/fragment/TabDFm;->mediaPlayerManager:Lcom/fiio/music/service/h;

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/fiio/music/fragment/TabDFm;->song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    iget v6, p0, Lcom/fiio/music/fragment/TabDFm;->STYLE_PARAMTER:I

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/fiio/music/adapter/SongItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/fiio/music/service/h;ILcom/fiio/music/swipemenulistview/SwipeMenuListView;I)V

    iput-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->inner_mSongItemAdapter:Lcom/fiio/music/adapter/SongItemAdapter;

    .line 777
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabDFm;->inner_mSongItemAdapter:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 783
    :cond_0
    :goto_0
    return-void

    .line 779
    :cond_1
    invoke-virtual {p0, v1, v1, v2, v2}, Lcom/fiio/music/fragment/TabDFm;->jumpPage(IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateList()V
    .locals 3

    .prologue
    .line 728
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->styleDao:Lcom/fiio/music/b/l;

    invoke-virtual {v0}, Lcom/fiio/music/b/l;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->styleList:Ljava/util/List;

    .line 729
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->tabSortType:Lcom/fiio/music/util/cr;

    const-string v1, "tabDFm"

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/fiio/music/fragment/TabDFm;->sortType:I

    .line 730
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->sortDataList:Lcom/fiio/music/util/cm;

    iget v1, p0, Lcom/fiio/music/fragment/TabDFm;->sortType:I

    iget-object v2, p0, Lcom/fiio/music/fragment/TabDFm;->styleList:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/util/cm;->d(ILjava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->list:Ljava/util/List;

    .line 731
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->mListItemAdapter:Lcom/fiio/music/adapter/ListItemAdapter;

    if-eqz v0, :cond_0

    .line 732
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->mListItemAdapter:Lcom/fiio/music/adapter/ListItemAdapter;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabDFm;->list:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/ListItemAdapter;->setDate(Ljava/util/List;)V

    .line 734
    :cond_0
    return-void
.end method

.method public updateSongList()V
    .locals 4

    .prologue
    .line 741
    :try_start_0
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->songDao:Lcom/fiio/music/b/k;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabDFm;->condition:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fiio/music/b/k;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->data:Ljava/util/List;

    .line 742
    sget v0, Lcom/fiio/music/util/cn;->d:I

    .line 743
    iget-object v1, p0, Lcom/fiio/music/fragment/TabDFm;->tabSortType:Lcom/fiio/music/util/cr;

    const-string v2, "sortDFm"

    invoke-virtual {v1, v2}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    move-result v1

    .line 744
    iget-object v2, p0, Lcom/fiio/music/fragment/TabDFm;->data:Ljava/util/List;

    invoke-static {v2, v1, v0}, Lcom/fiio/music/util/cn;->a(Ljava/util/List;II)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->data:Ljava/util/List;

    .line 746
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->mSongItemAdapter:Lcom/fiio/music/adapter/SongItemAdapter;

    if-eqz v0, :cond_0

    .line 747
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 748
    iget-object v0, p0, Lcom/fiio/music/fragment/TabDFm;->mSongItemAdapter:Lcom/fiio/music/adapter/SongItemAdapter;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabDFm;->data:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/SongItemAdapter;->setData(Ljava/util/List;)V

    .line 757
    :cond_0
    :goto_0
    return-void

    .line 750
    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/fiio/music/fragment/TabDFm;->jumpPage(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
