.class public Lcom/fiio/music/fragment/TabBFm;
.super Landroid/support/v4/app/Fragment;
.source "TabBFm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final ARTISTLISTLCOATE:I = 0x1

.field private static final INNER_ALBUMLISTLOCATE:I = 0x16

.field private static final INNER_SONGLISTLOCATE:I = 0x3

.field private static final SONGLISTLOCATE:I = 0x15

.field private static final SORT_A_Z:I


# instance fields
.field private ISBACKFLAG:Z

.field private STYLE_PARAMTER:I

.field private UI_IS_CHANGE:Z

.field private albumDao:Lcom/fiio/music/b/b;

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

.field private artistDao:Lcom/fiio/music/b/c;

.field private artistJumpPreferences:Landroid/content/SharedPreferences;

.field private artistList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Artist;",
            ">;"
        }
    .end annotation
.end field

.field private changestylesp:Landroid/content/SharedPreferences;

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

.field private initTask:Lcom/fiio/music/fragment/bm;

.field private inner_artistid:Ljava/lang/String;

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

.field private jumpArtist:Z

.field private jumpPageFlagForAlbumList:Z

.field private jumpPageFlagForArtistList:Z

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

.field private oPlayPos:I

.field private oPosition:I

.field private oTop:I

.field private onPauseFlag:Z

.field private pPlayPos:I

.field private pPosition:I

.field private pTop:I

.field private pageNumber:I

.field private searchSong_artistId:I

.field private searchSong_flag:Z

.field private smlv_list_change_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

.field private smlv_list_change_content_listener:Landroid/widget/AdapterView$OnItemClickListener;

.field private songDao:Lcom/fiio/music/b/k;

.field private song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

.field private song_list_content_listener:Landroid/widget/AdapterView$OnItemClickListener;

.field private sortDataList:Lcom/fiio/music/util/cm;

.field private sortType:I

.field private sp:Landroid/content/SharedPreferences;

.field private tabSortType:Lcom/fiio/music/util/cr;

.field titleText:Ljava/lang/String;

.field private toast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 109
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 77
    iput-boolean v1, p0, Lcom/fiio/music/fragment/TabBFm;->onPauseFlag:Z

    .line 78
    iput-object v2, p0, Lcom/fiio/music/fragment/TabBFm;->data:Ljava/util/List;

    .line 80
    iput v1, p0, Lcom/fiio/music/fragment/TabBFm;->pageNumber:I

    .line 84
    iput-object v2, p0, Lcom/fiio/music/fragment/TabBFm;->condition:Ljava/lang/String;

    .line 93
    iput-boolean v1, p0, Lcom/fiio/music/fragment/TabBFm;->listChangeFlag:Z

    .line 95
    iput v3, p0, Lcom/fiio/music/fragment/TabBFm;->pTop:I

    .line 96
    iput-object v2, p0, Lcom/fiio/music/fragment/TabBFm;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 97
    iput-boolean v1, p0, Lcom/fiio/music/fragment/TabBFm;->jumpPageFlagForArtistList:Z

    .line 98
    iput-boolean v1, p0, Lcom/fiio/music/fragment/TabBFm;->jumpPageFlagForAlbumList:Z

    .line 102
    iput-boolean v1, p0, Lcom/fiio/music/fragment/TabBFm;->jumpArtist:Z

    .line 106
    const/4 v0, 0x3

    iput v0, p0, Lcom/fiio/music/fragment/TabBFm;->STYLE_PARAMTER:I

    .line 315
    iput-boolean v1, p0, Lcom/fiio/music/fragment/TabBFm;->ISBACKFLAG:Z

    .line 317
    iput v3, p0, Lcom/fiio/music/fragment/TabBFm;->antherPosition:I

    .line 318
    iput v3, p0, Lcom/fiio/music/fragment/TabBFm;->antherTop:I

    .line 501
    new-instance v0, Lcom/fiio/music/fragment/bj;

    invoke-direct {v0, p0}, Lcom/fiio/music/fragment/bj;-><init>(Lcom/fiio/music/fragment/TabBFm;)V

    iput-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->smlv_list_change_content_listener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 527
    new-instance v0, Lcom/fiio/music/fragment/bk;

    invoke-direct {v0, p0}, Lcom/fiio/music/fragment/bk;-><init>(Lcom/fiio/music/fragment/TabBFm;)V

    iput-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->song_list_content_listener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1168
    iput-boolean v1, p0, Lcom/fiio/music/fragment/TabBFm;->displayChange_songlistOrAlbumList:Z

    .line 1169
    iput-object v2, p0, Lcom/fiio/music/fragment/TabBFm;->inner_data:Ljava/util/List;

    .line 1170
    iput-object v2, p0, Lcom/fiio/music/fragment/TabBFm;->inner_cur_album:Ljava/lang/String;

    .line 1171
    iput-object v2, p0, Lcom/fiio/music/fragment/TabBFm;->inner_artistid:Ljava/lang/String;

    .line 1241
    iput-boolean v1, p0, Lcom/fiio/music/fragment/TabBFm;->needRelist:Z

    .line 1258
    iput-boolean v1, p0, Lcom/fiio/music/fragment/TabBFm;->searchSong_flag:Z

    .line 1259
    iput v3, p0, Lcom/fiio/music/fragment/TabBFm;->searchSong_artistId:I

    .line 109
    return-void
.end method

.method static synthetic access$0(Lcom/fiio/music/fragment/TabBFm;)I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/fiio/music/fragment/TabBFm;->pageNumber:I

    return v0
.end method

.method static synthetic access$1(Lcom/fiio/music/fragment/TabBFm;)Lcom/fiio/music/adapter/ListItemAdapter;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->mListItemAdapter:Lcom/fiio/music/adapter/ListItemAdapter;

    return-object v0
.end method

.method static synthetic access$10(Lcom/fiio/music/fragment/TabBFm;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->condition:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$11(Lcom/fiio/music/fragment/TabBFm;)Lcom/fiio/music/swipemenulistview/SwipeMenuListView;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    return-object v0
.end method

.method static synthetic access$12(Lcom/fiio/music/fragment/TabBFm;)Landroid/widget/Toast;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->toast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$13(Lcom/fiio/music/fragment/TabBFm;Landroid/widget/Toast;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/fiio/music/fragment/TabBFm;->toast:Landroid/widget/Toast;

    return-void
.end method

.method static synthetic access$14(Lcom/fiio/music/fragment/TabBFm;)Lcom/fiio/music/adapter/ListItemAdapter;
    .locals 1

    .prologue
    .line 1167
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->inner_mListItemAdapter:Lcom/fiio/music/adapter/ListItemAdapter;

    return-object v0
.end method

.method static synthetic access$15(Lcom/fiio/music/fragment/TabBFm;Z)V
    .locals 0

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/fiio/music/fragment/TabBFm;->jumpPageFlagForAlbumList:Z

    return-void
.end method

.method static synthetic access$16(Lcom/fiio/music/fragment/TabBFm;)Ljava/util/List;
    .locals 1

    .prologue
    .line 1165
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->albumList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$17(Lcom/fiio/music/fragment/TabBFm;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1170
    iput-object p1, p0, Lcom/fiio/music/fragment/TabBFm;->inner_cur_album:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$18(Lcom/fiio/music/fragment/TabBFm;)Lcom/fiio/music/b/k;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->songDao:Lcom/fiio/music/b/k;

    return-object v0
.end method

.method static synthetic access$19(Lcom/fiio/music/fragment/TabBFm;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1170
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->inner_cur_album:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/fiio/music/fragment/TabBFm;)Lcom/fiio/music/util/an;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->foldersongUtils:Lcom/fiio/music/util/an;

    return-object v0
.end method

.method static synthetic access$20(Lcom/fiio/music/fragment/TabBFm;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1169
    iput-object p1, p0, Lcom/fiio/music/fragment/TabBFm;->inner_data:Ljava/util/List;

    return-void
.end method

.method static synthetic access$21(Lcom/fiio/music/fragment/TabBFm;I)V
    .locals 0

    .prologue
    .line 95
    iput p1, p0, Lcom/fiio/music/fragment/TabBFm;->oPosition:I

    return-void
.end method

.method static synthetic access$22(Lcom/fiio/music/fragment/TabBFm;I)V
    .locals 0

    .prologue
    .line 95
    iput p1, p0, Lcom/fiio/music/fragment/TabBFm;->oTop:I

    return-void
.end method

.method static synthetic access$23(Lcom/fiio/music/fragment/TabBFm;)Ljava/util/List;
    .locals 1

    .prologue
    .line 1169
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->inner_data:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$24(Lcom/fiio/music/fragment/TabBFm;)I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/fiio/music/fragment/TabBFm;->STYLE_PARAMTER:I

    return v0
.end method

.method static synthetic access$25(Lcom/fiio/music/fragment/TabBFm;Lcom/fiio/music/adapter/SongItemAdapter;)V
    .locals 0

    .prologue
    .line 1166
    iput-object p1, p0, Lcom/fiio/music/fragment/TabBFm;->inner_mSongItemAdapter:Lcom/fiio/music/adapter/SongItemAdapter;

    return-void
.end method

.method static synthetic access$26(Lcom/fiio/music/fragment/TabBFm;)Lcom/fiio/music/adapter/SongItemAdapter;
    .locals 1

    .prologue
    .line 1166
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->inner_mSongItemAdapter:Lcom/fiio/music/adapter/SongItemAdapter;

    return-object v0
.end method

.method static synthetic access$27(Lcom/fiio/music/fragment/TabBFm;)Lcom/fiio/music/util/cr;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->tabSortType:Lcom/fiio/music/util/cr;

    return-object v0
.end method

.method static synthetic access$28(Lcom/fiio/music/fragment/TabBFm;Ljava/util/List;Ljava/lang/String;II)Ljava/util/List;
    .locals 1

    .prologue
    .line 261
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/fiio/music/fragment/TabBFm;->getTheSongs(Ljava/util/List;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$29(Lcom/fiio/music/fragment/TabBFm;I)V
    .locals 0

    .prologue
    .line 95
    iput p1, p0, Lcom/fiio/music/fragment/TabBFm;->mPosition:I

    return-void
.end method

.method static synthetic access$3(Lcom/fiio/music/fragment/TabBFm;)Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/fiio/music/fragment/TabBFm;->jumpArtist:Z

    return v0
.end method

.method static synthetic access$30(Lcom/fiio/music/fragment/TabBFm;I)V
    .locals 0

    .prologue
    .line 95
    iput p1, p0, Lcom/fiio/music/fragment/TabBFm;->mTop:I

    return-void
.end method

.method static synthetic access$31(Lcom/fiio/music/fragment/TabBFm;I)V
    .locals 0

    .prologue
    .line 95
    iput p1, p0, Lcom/fiio/music/fragment/TabBFm;->pPosition:I

    return-void
.end method

.method static synthetic access$32(Lcom/fiio/music/fragment/TabBFm;I)V
    .locals 0

    .prologue
    .line 95
    iput p1, p0, Lcom/fiio/music/fragment/TabBFm;->pTop:I

    return-void
.end method

.method static synthetic access$4(Lcom/fiio/music/fragment/TabBFm;)Z
    .locals 1

    .prologue
    .line 1168
    iget-boolean v0, p0, Lcom/fiio/music/fragment/TabBFm;->displayChange_songlistOrAlbumList:Z

    return v0
.end method

.method static synthetic access$5(Lcom/fiio/music/fragment/TabBFm;)Lcom/fiio/music/adapter/SongItemAdapter;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->mSongItemAdapter:Lcom/fiio/music/adapter/SongItemAdapter;

    return-object v0
.end method

.method static synthetic access$6(Lcom/fiio/music/fragment/TabBFm;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$7(Lcom/fiio/music/fragment/TabBFm;)Lcom/fiio/music/service/h;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->mediaPlayerManager:Lcom/fiio/music/service/h;

    return-object v0
.end method

.method static synthetic access$8(Lcom/fiio/music/fragment/TabBFm;Lcom/fiio/music/util/j;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/fiio/music/fragment/TabBFm;->cueSheetManager:Lcom/fiio/music/util/j;

    return-void
.end method

.method static synthetic access$9(Lcom/fiio/music/fragment/TabBFm;)Lcom/fiio/music/util/j;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->cueSheetManager:Lcom/fiio/music/util/j;

    return-object v0
.end method

.method private getSongListByArtistIdAndAlbumId(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;"
        }
    .end annotation

    .prologue
    .line 977
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->songDao:Lcom/fiio/music/b/k;

    invoke-virtual {v0, p1, p2}, Lcom/fiio/music/b/k;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getTheSongs(Ljava/util/List;Ljava/lang/String;II)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;"
        }
    .end annotation

    .prologue
    .line 262
    sget v0, Lcom/fiio/music/util/cn;->e:I

    if-ne p3, v0, :cond_2

    .line 263
    sget v0, Lcom/fiio/music/util/cn;->a:I

    if-ne p4, v0, :cond_1

    .line 264
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->songDao:Lcom/fiio/music/b/k;

    const-string v1, " ASC"

    invoke-virtual {v0, p2, v1}, Lcom/fiio/music/b/k;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 277
    :cond_0
    :goto_0
    return-object p1

    .line 266
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->songDao:Lcom/fiio/music/b/k;

    const-string v1, " DESC"

    invoke-virtual {v0, p2, v1}, Lcom/fiio/music/b/k;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 268
    :cond_2
    sget v0, Lcom/fiio/music/util/cn;->d:I

    if-ne p3, v0, :cond_4

    .line 269
    sget v0, Lcom/fiio/music/util/cn;->a:I

    if-ne p4, v0, :cond_3

    .line 270
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->songDao:Lcom/fiio/music/b/k;

    const-string v1, " ASC"

    invoke-virtual {v0, p2, v1}, Lcom/fiio/music/b/k;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 272
    :cond_3
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->songDao:Lcom/fiio/music/b/k;

    const-string v1, " DESC"

    invoke-virtual {v0, p2, v1}, Lcom/fiio/music/b/k;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 274
    :cond_4
    if-nez p3, :cond_0

    .line 275
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->songDao:Lcom/fiio/music/b/k;

    const-string v1, " ASC"

    invoke-virtual {v0, p2, v1}, Lcom/fiio/music/b/k;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    goto :goto_0
.end method

.method private sortAlbumInTabB(IILjava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 917
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 918
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 919
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 922
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 923
    sget v0, Lcom/fiio/music/util/cn;->e:I

    if-ne p1, v0, :cond_3

    .line 924
    invoke-static {v1, p2}, Lcom/fiio/music/util/cn;->a(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    .line 930
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    move-object p3, v3

    .line 939
    :cond_1
    return-object p3

    .line 919
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 920
    aget-object v0, v0, v5

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 925
    :cond_3
    sget v0, Lcom/fiio/music/util/cn;->d:I

    if-ne p1, v0, :cond_4

    .line 926
    invoke-static {v1, p2}, Lcom/fiio/music/util/cn;->c(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 927
    :cond_4
    if-nez p1, :cond_7

    .line 928
    invoke-static {v1, p2}, Lcom/fiio/music/util/cn;->c(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 930
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 931
    const/4 v1, 0x0

    move v2, v1

    :goto_2
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 932
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v5

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 933
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 931
    :cond_6
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    :cond_7
    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method public aKeyPlayer(Ljava/lang/String;I)V
    .locals 8

    .prologue
    const v7, 0x7f0c00f9

    const/4 v4, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 995
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->foldersongUtils:Lcom/fiio/music/util/an;

    iget-boolean v1, p0, Lcom/fiio/music/fragment/TabBFm;->jumpArtist:Z

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/an;->a(Z)V

    .line 996
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->foldersongUtils:Lcom/fiio/music/util/an;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/an;->a(I)V

    .line 997
    if-ne p2, v6, :cond_3

    .line 998
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->songDao:Lcom/fiio/music/b/k;

    invoke-virtual {v0, p1}, Lcom/fiio/music/b/k;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1001
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->songDao:Lcom/fiio/music/b/k;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/fiio/music/b/k;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1002
    iget-object v1, p0, Lcom/fiio/music/fragment/TabBFm;->tabSortType:Lcom/fiio/music/util/cr;

    const-string v3, "tabBfmFir"

    invoke-virtual {v1, v3}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    move-result v1

    .line 1003
    iget-object v3, p0, Lcom/fiio/music/fragment/TabBFm;->tabSortType:Lcom/fiio/music/util/cr;

    const-string v4, "sortBFm"

    invoke-virtual {v3, v4}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    move-result v3

    .line 1004
    invoke-direct {p0, v0, v2, v1, v3}, Lcom/fiio/music/fragment/TabBFm;->getTheSongs(Ljava/util/List;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v3

    .line 1006
    iget v0, p0, Lcom/fiio/music/fragment/TabBFm;->pageNumber:I

    if-nez v0, :cond_0

    iput-object v2, p0, Lcom/fiio/music/fragment/TabBFm;->condition:Ljava/lang/String;

    .line 1007
    :cond_0
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1008
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->toast:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabBFm;->context:Landroid/content/Context;

    invoke-virtual {p0, v7}, Lcom/fiio/music/fragment/TabBFm;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->toast:Landroid/widget/Toast;

    .line 1031
    :cond_1
    :goto_0
    return-void

    .line 1011
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fiio/music/entity/Song;

    invoke-virtual {v0, v1, v6, v2, v3}, Lcom/fiio/music/activity/LocalMusicActivity;->playerMusicByItem(Lcom/fiio/music/entity/Song;ILjava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 1013
    :cond_3
    if-ne p2, v4, :cond_1

    .line 1014
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->songDao:Lcom/fiio/music/b/k;

    invoke-virtual {v0, p1}, Lcom/fiio/music/b/k;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1018
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->songDao:Lcom/fiio/music/b/k;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabBFm;->titleText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fiio/music/b/k;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1019
    iput-object v2, p0, Lcom/fiio/music/fragment/TabBFm;->inner_cur_album:Ljava/lang/String;

    .line 1020
    iput-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->inner_artistid:Ljava/lang/String;

    .line 1021
    invoke-direct {p0, v2, v0}, Lcom/fiio/music/fragment/TabBFm;->getSongListByArtistIdAndAlbumId(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 1024
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1025
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->toast:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabBFm;->context:Landroid/content/Context;

    invoke-virtual {p0, v7}, Lcom/fiio/music/fragment/TabBFm;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->toast:Landroid/widget/Toast;

    goto :goto_0

    .line 1027
    :cond_4
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fiio/music/entity/Song;

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/fiio/music/activity/LocalMusicActivity;->playerMusicByItem(Lcom/fiio/music/entity/Song;ILjava/lang/String;Ljava/util/List;)V

    .line 1028
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0, v3}, Lcom/fiio/music/service/h;->b(Ljava/util/List;)V

    goto :goto_0
.end method

.method public afterDel()V
    .locals 1

    .prologue
    .line 1114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fiio/music/fragment/TabBFm;->listChangeFlag:Z

    .line 1115
    return-void
.end method

.method public changeDisplayMode()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 1174
    iget-boolean v0, p0, Lcom/fiio/music/fragment/TabBFm;->displayChange_songlistOrAlbumList:Z

    if-eqz v0, :cond_1

    .line 1175
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabBFm;->song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    invoke-virtual {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->initSwipeListViewFour(Lcom/fiio/music/swipemenulistview/SwipeMenuListView;)V

    .line 1176
    new-instance v0, Lcom/fiio/music/adapter/SongItemAdapter;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabBFm;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/fiio/music/fragment/TabBFm;->data:Ljava/util/List;

    iget-object v3, p0, Lcom/fiio/music/fragment/TabBFm;->mediaPlayerManager:Lcom/fiio/music/service/h;

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/fiio/music/fragment/TabBFm;->song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    iget v6, p0, Lcom/fiio/music/fragment/TabBFm;->STYLE_PARAMTER:I

    invoke-direct/range {v0 .. v6}, Lcom/fiio/music/adapter/SongItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/fiio/music/service/h;ILcom/fiio/music/swipemenulistview/SwipeMenuListView;I)V

    iput-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->mSongItemAdapter:Lcom/fiio/music/adapter/SongItemAdapter;

    .line 1177
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabBFm;->mSongItemAdapter:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1178
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->initTask:Lcom/fiio/music/fragment/bm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->initTask:Lcom/fiio/music/fragment/bm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/bm;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    .line 1179
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->initTask:Lcom/fiio/music/fragment/bm;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fiio/music/fragment/bm;->cancel(Z)Z

    .line 1181
    :cond_0
    new-instance v0, Lcom/fiio/music/fragment/bm;

    invoke-direct {v0, p0}, Lcom/fiio/music/fragment/bm;-><init>(Lcom/fiio/music/fragment/TabBFm;)V

    iput-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->initTask:Lcom/fiio/music/fragment/bm;

    .line 1182
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->initTask:Lcom/fiio/music/fragment/bm;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabBFm;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-array v2, v10, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/fragment/bm;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1200
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabBFm;->titleText:Ljava/lang/String;

    iget-object v2, p0, Lcom/fiio/music/fragment/TabBFm;->data:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2, v10}, Lcom/fiio/music/activity/LocalMusicActivity;->updateHeadBar(Ljava/lang/String;IZ)V

    .line 1201
    return-void

    .line 1185
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabBFm;->song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    invoke-virtual {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->initSwipeListView(Lcom/fiio/music/swipemenulistview/SwipeMenuListView;)V

    .line 1186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->albumList:Ljava/util/List;

    .line 1187
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->songDao:Lcom/fiio/music/b/k;

    invoke-virtual {p0}, Lcom/fiio/music/fragment/TabBFm;->getTitleString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/b/k;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->inner_artistid:Ljava/lang/String;

    .line 1188
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->artistDao:Lcom/fiio/music/b/c;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabBFm;->inner_artistid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fiio/music/b/c;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->albumList:Ljava/util/List;

    .line 1190
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->tabSortType:Lcom/fiio/music/util/cr;

    const-string v1, "tabBFm"

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/fiio/music/fragment/TabBFm;->sortType:I

    .line 1191
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->tabSortType:Lcom/fiio/music/util/cr;

    const-string v1, "sortBFm"

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    move-result v0

    .line 1192
    iget-object v1, p0, Lcom/fiio/music/fragment/TabBFm;->albumList:Ljava/util/List;

    iget v2, p0, Lcom/fiio/music/fragment/TabBFm;->sortType:I

    invoke-static {v1, v0, v2}, Lcom/fiio/music/util/cn;->f(Ljava/util/List;II)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->albumList:Ljava/util/List;

    .line 1194
    iput v10, p0, Lcom/fiio/music/fragment/TabBFm;->oPosition:I

    .line 1195
    iput v10, p0, Lcom/fiio/music/fragment/TabBFm;->oTop:I

    .line 1196
    new-instance v0, Lcom/fiio/music/adapter/ListItemAdapter;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabBFm;->context:Landroid/content/Context;

    .line 1197
    iget-object v2, p0, Lcom/fiio/music/fragment/TabBFm;->albumList:Ljava/util/List;

    iget-object v3, p0, Lcom/fiio/music/fragment/TabBFm;->mediaPlayerManager:Lcom/fiio/music/service/h;

    const v4, 0x7f0203b0

    iget-object v5, p0, Lcom/fiio/music/fragment/TabBFm;->songDao:Lcom/fiio/music/b/k;

    const-string v6, "albumid"

    iget-object v8, p0, Lcom/fiio/music/fragment/TabBFm;->song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    iget v9, p0, Lcom/fiio/music/fragment/TabBFm;->STYLE_PARAMTER:I

    move-object v7, p0

    invoke-direct/range {v0 .. v9}, Lcom/fiio/music/adapter/ListItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/fiio/music/service/h;ILcom/fiio/music/b/k;Ljava/lang/String;Landroid/view/View$OnClickListener;Lcom/fiio/music/swipemenulistview/SwipeMenuListView;I)V

    .line 1196
    iput-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->inner_mListItemAdapter:Lcom/fiio/music/adapter/ListItemAdapter;

    .line 1198
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabBFm;->inner_mListItemAdapter:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public findPositionByArtistId(I)I
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 1293
    .line 1294
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->list:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->list:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v1, v3

    .line 1304
    :cond_1
    :goto_0
    return v1

    :cond_2
    move v1, v2

    .line 1297
    :goto_1
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_3

    move v1, v3

    goto :goto_0

    .line 1298
    :cond_3
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->list:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 1299
    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 1297
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public getAlbumListSize()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 468
    .line 469
    iget-object v1, p0, Lcom/fiio/music/fragment/TabBFm;->albumList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    move v1, v0

    move v2, v0

    .line 470
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->albumList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 474
    :goto_1
    return v2

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->albumList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v2, v0

    .line 470
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
    .line 1105
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getArtist()Lcom/fiio/music/entity/Artist;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/entity/Artist;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1107
    return-object v0
.end method

.method public getArtistID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1160
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->condition:Ljava/lang/String;

    return-object v0
.end method

.method public getDateSize()I
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->data:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 460
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDisplayChange_playlistOrAlbumlist()Z
    .locals 1

    .prologue
    .line 1237
    iget-boolean v0, p0, Lcom/fiio/music/fragment/TabBFm;->displayChange_songlistOrAlbumList:Z

    return v0
.end method

.method public getFirstSong()Lcom/fiio/music/entity/Song;
    .locals 2

    .prologue
    .line 480
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->data:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    return-object v0
.end method

.method public getFirstSongId()I
    .locals 2

    .prologue
    .line 477
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->data:Ljava/util/List;

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
    .line 1213
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->inner_cur_album:Ljava/lang/String;

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

    .line 1221
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 1222
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->albumList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 1229
    return-object v3

    .line 1224
    :cond_0
    iget-object v4, p0, Lcom/fiio/music/fragment/TabBFm;->songDao:Lcom/fiio/music/b/k;

    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->albumList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v2

    iget-object v5, p0, Lcom/fiio/music/fragment/TabBFm;->songDao:Lcom/fiio/music/b/k;

    iget-object v6, p0, Lcom/fiio/music/fragment/TabBFm;->titleText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/fiio/music/b/k;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lcom/fiio/music/b/k;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1227
    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1222
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public getInnerArtistId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1210
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->inner_artistid:Ljava/lang/String;

    return-object v0
.end method

.method public getInnerCurFilePath(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1084
    const/4 v0, 0x0

    .line 1085
    iget-object v1, p0, Lcom/fiio/music/fragment/TabBFm;->inner_data:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 1086
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->inner_data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    .line 1087
    :cond_0
    return-object v0
.end method

.method public getInnerListItemAdapter()Lcom/fiio/music/adapter/ListItemAdapter;
    .locals 1

    .prologue
    .line 756
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->inner_mListItemAdapter:Lcom/fiio/music/adapter/ListItemAdapter;

    return-object v0
.end method

.method public getInnerName(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1097
    const/4 v0, 0x0

    .line 1098
    iget-object v1, p0, Lcom/fiio/music/fragment/TabBFm;->inner_data:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 1099
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->inner_data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1101
    :cond_0
    return-object v0
.end method

.method public getInnerSong(I)Lcom/fiio/music/entity/Song;
    .locals 2

    .prologue
    .line 1051
    const/4 v0, 0x0

    .line 1052
    iget-object v1, p0, Lcom/fiio/music/fragment/TabBFm;->inner_data:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 1053
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->inner_data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    .line 1055
    :cond_0
    return-object v0
.end method

.method public getInnerSongId(I)I
    .locals 2

    .prologue
    .line 1060
    const/4 v0, 0x0

    .line 1061
    iget-object v1, p0, Lcom/fiio/music/fragment/TabBFm;->inner_data:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 1062
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->inner_data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getId_()I

    move-result v0

    .line 1063
    :cond_0
    return v0
.end method

.method public getInnerSongItemAdapter()Lcom/fiio/music/adapter/SongItemAdapter;
    .locals 1

    .prologue
    .line 750
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->inner_mSongItemAdapter:Lcom/fiio/music/adapter/SongItemAdapter;

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
    .line 1204
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->inner_data:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1205
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->inner_data:Ljava/util/List;

    .line 1207
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getListItemAdapter()Lcom/fiio/music/adapter/ListItemAdapter;
    .locals 1

    .prologue
    .line 753
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->mListItemAdapter:Lcom/fiio/music/adapter/ListItemAdapter;

    return-object v0
.end method

.method public getListOfItemInPageNumber1()Ljava/util/List;
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
    .line 454
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->albumList:Ljava/util/List;

    return-object v0
.end method

.method public getListPositionByFirstChar(Ljava/lang/String;)I
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1133
    .line 1134
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->list:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1135
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move v1, v2

    .line 1143
    :cond_1
    return v1

    .line 1135
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 1136
    const/4 v4, 0x4

    aget-object v0, v0, v4

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1139
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
    .line 450
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->list:Ljava/util/List;

    return-object v0
.end method

.method public getName(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1091
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1093
    return-object v0
.end method

.method public getSong(I)Lcom/fiio/music/entity/Song;
    .locals 1

    .prologue
    .line 1035
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->data:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1036
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    .line 1039
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSongId(I)I
    .locals 1

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getId_()I

    move-result v0

    .line 1046
    return v0
.end method

.method public getSongIsLike(I)I
    .locals 1

    .prologue
    .line 1067
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getIsLike()I

    move-result v0

    .line 1069
    return v0
.end method

.method public getSongItemAdapter()Lcom/fiio/music/adapter/SongItemAdapter;
    .locals 1

    .prologue
    .line 747
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->mSongItemAdapter:Lcom/fiio/music/adapter/SongItemAdapter;

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
    .line 1111
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->data:Ljava/util/List;

    return-object v0
.end method

.method public getSongListByArtistAndAlbum(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;"
        }
    .end annotation

    .prologue
    .line 980
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->songDao:Lcom/fiio/music/b/k;

    invoke-virtual {v0, p1}, Lcom/fiio/music/b/k;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 984
    iget-object v1, p0, Lcom/fiio/music/fragment/TabBFm;->songDao:Lcom/fiio/music/b/k;

    invoke-virtual {v1, p2}, Lcom/fiio/music/b/k;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 985
    invoke-direct {p0, v0, v1}, Lcom/fiio/music/fragment/TabBFm;->getSongListByArtistIdAndAlbumId(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 986
    return-object v0
.end method

.method public getSongPositionByFirstChar(Ljava/lang/String;)I
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1148
    .line 1149
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    move v1, v2

    .line 1156
    :cond_0
    return v1

    .line 1149
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    .line 1150
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getSortLetters()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getSortLetters()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1153
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public getTabFmPageNumber()I
    .locals 1

    .prologue
    .line 495
    iget v0, p0, Lcom/fiio/music/fragment/TabBFm;->pageNumber:I

    return v0
.end method

.method public getTitleString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->titleText:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1217
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->titleText:Ljava/lang/String;

    return-object v0
.end method

.method public getWhichAdapterInner()I
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 759
    .line 760
    iget v2, p0, Lcom/fiio/music/fragment/TabBFm;->pageNumber:I

    if-ne v2, v0, :cond_2

    invoke-virtual {p0}, Lcom/fiio/music/fragment/TabBFm;->getDisplayChange_playlistOrAlbumlist()Z

    move-result v2

    if-nez v2, :cond_2

    .line 761
    iget-object v2, p0, Lcom/fiio/music/fragment/TabBFm;->song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    if-eqz v2, :cond_2

    .line 762
    iget-object v2, p0, Lcom/fiio/music/fragment/TabBFm;->song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    invoke-virtual {v2}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ListItemAdapter"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 770
    :goto_0
    return v0

    .line 764
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    invoke-virtual {v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SongItemAdapter"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 765
    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 767
    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public getcurFilePath(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1073
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->data:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1075
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    .line 1078
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getsongcondition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->condition:Ljava/lang/String;

    return-object v0
.end method

.method public initListItem()V
    .locals 1

    .prologue
    .line 1117
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->artistList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->artistList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1119
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->artistDao:Lcom/fiio/music/b/c;

    invoke-virtual {v0}, Lcom/fiio/music/b/c;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->artistList:Ljava/util/List;

    .line 1120
    :cond_1
    iget-boolean v0, p0, Lcom/fiio/music/fragment/TabBFm;->listChangeFlag:Z

    if-eqz v0, :cond_2

    .line 1127
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->artistDao:Lcom/fiio/music/b/c;

    invoke-virtual {v0}, Lcom/fiio/music/b/c;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->artistList:Ljava/util/List;

    .line 1130
    :cond_2
    return-void
.end method

.method public isNeedRelist()Z
    .locals 1

    .prologue
    .line 1243
    iget-boolean v0, p0, Lcom/fiio/music/fragment/TabBFm;->needRelist:Z

    return v0
.end method

.method public jumpPage(IILjava/lang/String;Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 323
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->tabSortType:Lcom/fiio/music/util/cr;

    const-string v1, "tabBFm"

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/fiio/music/fragment/TabBFm;->sortType:I

    .line 324
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->tabSortType:Lcom/fiio/music/util/cr;

    const-string v1, "sortBFm"

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    move-result v1

    .line 325
    if-nez p1, :cond_8

    .line 326
    invoke-virtual {p0}, Lcom/fiio/music/fragment/TabBFm;->initListItem()V

    .line 327
    iget v0, p0, Lcom/fiio/music/fragment/TabBFm;->sortType:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/fiio/music/fragment/TabBFm;->sortType:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->sortDataList:Lcom/fiio/music/util/cm;

    iget v2, p0, Lcom/fiio/music/fragment/TabBFm;->sortType:I

    iget-object v3, p0, Lcom/fiio/music/fragment/TabBFm;->artistList:Ljava/util/List;

    invoke-virtual {v0, v2, v3, v1}, Lcom/fiio/music/util/cm;->a(ILjava/util/List;I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->list:Ljava/util/List;

    .line 332
    :goto_0
    iget v0, p0, Lcom/fiio/music/fragment/TabBFm;->sortType:I

    if-nez v0, :cond_5

    .line 333
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->a_z_sideBar_show(Z)V

    .line 337
    :goto_1
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->mListItemAdapter:Lcom/fiio/music/adapter/ListItemAdapter;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/fiio/music/fragment/TabBFm;->listChangeFlag:Z

    if-eqz v0, :cond_6

    .line 338
    :cond_1
    new-instance v0, Lcom/fiio/music/adapter/ListItemAdapter;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabBFm;->context:Landroid/content/Context;

    .line 339
    iget-object v2, p0, Lcom/fiio/music/fragment/TabBFm;->list:Ljava/util/List;

    iget-object v3, p0, Lcom/fiio/music/fragment/TabBFm;->mediaPlayerManager:Lcom/fiio/music/service/h;

    const v4, 0x7f0203b0

    iget-object v5, p0, Lcom/fiio/music/fragment/TabBFm;->songDao:Lcom/fiio/music/b/k;

    const-string v6, "artistid"

    iget-object v8, p0, Lcom/fiio/music/fragment/TabBFm;->smlv_list_change_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    iget v9, p0, Lcom/fiio/music/fragment/TabBFm;->STYLE_PARAMTER:I

    move-object v7, p0

    invoke-direct/range {v0 .. v9}, Lcom/fiio/music/adapter/ListItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/fiio/music/service/h;ILcom/fiio/music/b/k;Ljava/lang/String;Landroid/view/View$OnClickListener;Lcom/fiio/music/swipemenulistview/SwipeMenuListView;I)V

    .line 338
    iput-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->mListItemAdapter:Lcom/fiio/music/adapter/ListItemAdapter;

    .line 340
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fiio/music/fragment/TabBFm;->listChangeFlag:Z

    .line 346
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->smlv_list_change_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabBFm;->mListItemAdapter:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 348
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->smlv_list_change_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setVisibility(I)V

    .line 349
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setVisibility(I)V

    .line 350
    iget-boolean v0, p0, Lcom/fiio/music/fragment/TabBFm;->ISBACKFLAG:Z

    if-eqz v0, :cond_7

    .line 351
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->smlv_list_change_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    iget v1, p0, Lcom/fiio/music/fragment/TabBFm;->nPosition:I

    iget v2, p0, Lcom/fiio/music/fragment/TabBFm;->nTop:I

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setSelectionFromTop(II)V

    .line 352
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fiio/music/fragment/TabBFm;->ISBACKFLAG:Z

    .line 360
    :goto_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/fiio/music/fragment/TabBFm;->oPosition:I

    .line 361
    const/4 v0, 0x0

    iput v0, p0, Lcom/fiio/music/fragment/TabBFm;->oTop:I

    .line 362
    iput p1, p0, Lcom/fiio/music/fragment/TabBFm;->pageNumber:I

    .line 445
    :cond_3
    :goto_4
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->showOrHideHeadBar()V

    .line 448
    return-void

    .line 330
    :cond_4
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->sortDataList:Lcom/fiio/music/util/cm;

    iget v1, p0, Lcom/fiio/music/fragment/TabBFm;->sortType:I

    iget-object v2, p0, Lcom/fiio/music/fragment/TabBFm;->artistList:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/util/cm;->b(ILjava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->list:Ljava/util/List;

    goto :goto_0

    .line 335
    :cond_5
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->a_z_sideBar_show(Z)V

    goto :goto_1

    .line 342
    :cond_6
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->mListItemAdapter:Lcom/fiio/music/adapter/ListItemAdapter;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/fiio/music/fragment/TabBFm;->needRelist:Z

    if-eqz v0, :cond_2

    .line 343
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->mListItemAdapter:Lcom/fiio/music/adapter/ListItemAdapter;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabBFm;->list:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/ListItemAdapter;->setDate(Ljava/util/List;)V

    .line 344
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fiio/music/fragment/TabBFm;->needRelist:Z

    goto :goto_2

    .line 355
    :cond_7
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->context:Landroid/content/Context;

    const-string v1, "positiontop"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->sp:Landroid/content/SharedPreferences;

    .line 356
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->sp:Landroid/content/SharedPreferences;

    const-string v1, "positionB"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/fiio/music/fragment/TabBFm;->antherPosition:I

    .line 357
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->sp:Landroid/content/SharedPreferences;

    const-string v1, "topB"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/fiio/music/fragment/TabBFm;->antherTop:I

    .line 358
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->smlv_list_change_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    iget v1, p0, Lcom/fiio/music/fragment/TabBFm;->antherPosition:I

    iget v2, p0, Lcom/fiio/music/fragment/TabBFm;->antherTop:I

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setSelectionFromTop(II)V

    goto :goto_3

    .line 367
    :cond_8
    const/4 v0, 0x1

    if-ne p1, v0, :cond_f

    .line 368
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fiio/music/fragment/TabBFm;->jumpPageFlagForArtistList:Z

    .line 369
    if-eqz p3, :cond_9

    .line 370
    iput-object p3, p0, Lcom/fiio/music/fragment/TabBFm;->condition:Ljava/lang/String;

    .line 373
    :cond_9
    if-eqz p4, :cond_a

    .line 374
    iput-object p4, p0, Lcom/fiio/music/fragment/TabBFm;->titleText:Ljava/lang/String;

    .line 378
    :cond_a
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v2, p0, Lcom/fiio/music/fragment/TabBFm;->song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    invoke-virtual {v0, v2}, Lcom/fiio/music/activity/LocalMusicActivity;->initSwipeListViewFour(Lcom/fiio/music/swipemenulistview/SwipeMenuListView;)V

    .line 380
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->tabSortType:Lcom/fiio/music/util/cr;

    const-string v2, "tabBfmFir"

    invoke-virtual {v0, v2}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/fiio/music/fragment/TabBFm;->sortType:I

    .line 382
    iget v0, p0, Lcom/fiio/music/fragment/TabBFm;->sortType:I

    sget v2, Lcom/fiio/music/util/cn;->d:I

    if-eq v0, v2, :cond_b

    iget v0, p0, Lcom/fiio/music/fragment/TabBFm;->sortType:I

    if-nez v0, :cond_d

    .line 383
    :cond_b
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/fiio/music/activity/LocalMusicActivity;->a_z_sideBar_show(Z)V

    .line 389
    :goto_5
    iget-boolean v0, p0, Lcom/fiio/music/fragment/TabBFm;->displayChange_songlistOrAlbumList:Z

    if-eqz v0, :cond_e

    .line 390
    new-instance v0, Lcom/fiio/music/adapter/SongItemAdapter;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabBFm;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/fiio/music/fragment/TabBFm;->data:Ljava/util/List;

    iget-object v3, p0, Lcom/fiio/music/fragment/TabBFm;->mediaPlayerManager:Lcom/fiio/music/service/h;

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/fiio/music/fragment/TabBFm;->song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    iget v6, p0, Lcom/fiio/music/fragment/TabBFm;->STYLE_PARAMTER:I

    invoke-direct/range {v0 .. v6}, Lcom/fiio/music/adapter/SongItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/fiio/music/service/h;ILcom/fiio/music/swipemenulistview/SwipeMenuListView;I)V

    iput-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->mSongItemAdapter:Lcom/fiio/music/adapter/SongItemAdapter;

    .line 391
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabBFm;->mSongItemAdapter:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 392
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->initTask:Lcom/fiio/music/fragment/bm;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->initTask:Lcom/fiio/music/fragment/bm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/bm;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_c

    .line 393
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->initTask:Lcom/fiio/music/fragment/bm;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fiio/music/fragment/bm;->cancel(Z)Z

    .line 395
    :cond_c
    new-instance v0, Lcom/fiio/music/fragment/bm;

    invoke-direct {v0, p0}, Lcom/fiio/music/fragment/bm;-><init>(Lcom/fiio/music/fragment/TabBFm;)V

    iput-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->initTask:Lcom/fiio/music/fragment/bm;

    .line 396
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->initTask:Lcom/fiio/music/fragment/bm;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabBFm;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/fragment/bm;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 397
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->smlv_list_change_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setVisibility(I)V

    .line 398
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setVisibility(I)V

    .line 399
    iput p1, p0, Lcom/fiio/music/fragment/TabBFm;->pageNumber:I

    .line 417
    :goto_6
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->smlv_list_change_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 418
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->smlv_list_change_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lcom/fiio/music/fragment/TabBFm;->nTop:I

    .line 419
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->smlv_list_change_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    invoke-virtual {v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/fiio/music/fragment/TabBFm;->nPosition:I

    .line 420
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fiio/music/fragment/TabBFm;->ISBACKFLAG:Z

    goto/16 :goto_4

    .line 386
    :cond_d
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/fiio/music/activity/LocalMusicActivity;->a_z_sideBar_show(Z)V

    goto :goto_5

    .line 401
    :cond_e
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v2, p0, Lcom/fiio/music/fragment/TabBFm;->song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    invoke-virtual {v0, v2}, Lcom/fiio/music/activity/LocalMusicActivity;->initSwipeListView(Lcom/fiio/music/swipemenulistview/SwipeMenuListView;)V

    .line 402
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->albumList:Ljava/util/List;

    .line 404
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->artistDao:Lcom/fiio/music/b/c;

    invoke-virtual {v0, p3}, Lcom/fiio/music/b/c;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->albumList:Ljava/util/List;

    .line 406
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->albumList:Ljava/util/List;

    iget v2, p0, Lcom/fiio/music/fragment/TabBFm;->sortType:I

    invoke-static {v0, v1, v2}, Lcom/fiio/music/util/cn;->f(Ljava/util/List;II)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->albumList:Ljava/util/List;

    .line 408
    new-instance v0, Lcom/fiio/music/adapter/ListItemAdapter;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabBFm;->context:Landroid/content/Context;

    .line 409
    iget-object v2, p0, Lcom/fiio/music/fragment/TabBFm;->albumList:Ljava/util/List;

    iget-object v3, p0, Lcom/fiio/music/fragment/TabBFm;->mediaPlayerManager:Lcom/fiio/music/service/h;

    const v4, 0x7f0203b0

    iget-object v5, p0, Lcom/fiio/music/fragment/TabBFm;->songDao:Lcom/fiio/music/b/k;

    const-string v6, "albumid"

    iget-object v8, p0, Lcom/fiio/music/fragment/TabBFm;->song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    iget v9, p0, Lcom/fiio/music/fragment/TabBFm;->STYLE_PARAMTER:I

    move-object v7, p0

    invoke-direct/range {v0 .. v9}, Lcom/fiio/music/adapter/ListItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/fiio/music/service/h;ILcom/fiio/music/b/k;Ljava/lang/String;Landroid/view/View$OnClickListener;Lcom/fiio/music/swipemenulistview/SwipeMenuListView;I)V

    .line 408
    iput-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->inner_mListItemAdapter:Lcom/fiio/music/adapter/ListItemAdapter;

    .line 410
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabBFm;->inner_mListItemAdapter:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 411
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->smlv_list_change_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setVisibility(I)V

    .line 412
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setVisibility(I)V

    .line 414
    iput p1, p0, Lcom/fiio/music/fragment/TabBFm;->pageNumber:I

    .line 415
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    iget v1, p0, Lcom/fiio/music/fragment/TabBFm;->oPosition:I

    iget v2, p0, Lcom/fiio/music/fragment/TabBFm;->oTop:I

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setSelectionFromTop(II)V

    goto/16 :goto_6

    .line 422
    :cond_f
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 423
    iget v0, p0, Lcom/fiio/music/fragment/TabBFm;->pageNumber:I

    if-nez v0, :cond_10

    .line 424
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->smlv_list_change_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setVisibility(I)V

    .line 425
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setVisibility(I)V

    .line 426
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->songDao:Lcom/fiio/music/b/k;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-virtual {v0, v1}, Lcom/fiio/music/b/k;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->data:Ljava/util/List;

    .line 428
    new-instance v0, Lcom/fiio/music/adapter/SongItemAdapter;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabBFm;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/fiio/music/fragment/TabBFm;->data:Ljava/util/List;

    iget-object v3, p0, Lcom/fiio/music/fragment/TabBFm;->mediaPlayerManager:Lcom/fiio/music/service/h;

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/fiio/music/fragment/TabBFm;->song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    iget v6, p0, Lcom/fiio/music/fragment/TabBFm;->STYLE_PARAMTER:I

    invoke-direct/range {v0 .. v6}, Lcom/fiio/music/adapter/SongItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/fiio/music/service/h;ILcom/fiio/music/swipemenulistview/SwipeMenuListView;I)V

    iput-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->mSongItemAdapter:Lcom/fiio/music/adapter/SongItemAdapter;

    .line 429
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabBFm;->mSongItemAdapter:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_4

    .line 432
    :cond_10
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->songDao:Lcom/fiio/music/b/k;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/fiio/music/fragment/TabBFm;->inner_cur_album:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/fiio/music/fragment/TabBFm;->inner_artistid:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/fiio/music/b/k;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->inner_data:Ljava/util/List;

    .line 434
    new-instance v0, Lcom/fiio/music/adapter/SongItemAdapter;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabBFm;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/fiio/music/fragment/TabBFm;->inner_data:Ljava/util/List;

    iget-object v3, p0, Lcom/fiio/music/fragment/TabBFm;->mediaPlayerManager:Lcom/fiio/music/service/h;

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/fiio/music/fragment/TabBFm;->song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    iget v6, p0, Lcom/fiio/music/fragment/TabBFm;->STYLE_PARAMTER:I

    invoke-direct/range {v0 .. v6}, Lcom/fiio/music/adapter/SongItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/fiio/music/service/h;ILcom/fiio/music/swipemenulistview/SwipeMenuListView;I)V

    iput-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->inner_mSongItemAdapter:Lcom/fiio/music/adapter/SongItemAdapter;

    .line 436
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->smlv_list_change_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 437
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->smlv_list_change_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lcom/fiio/music/fragment/TabBFm;->nTop:I

    .line 438
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->smlv_list_change_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    invoke-virtual {v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/fiio/music/fragment/TabBFm;->nPosition:I

    .line 439
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fiio/music/fragment/TabBFm;->ISBACKFLAG:Z

    goto/16 :goto_4
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 662
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 664
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 112
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 113
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 958
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 960
    const v1, 0x7f0b00d4

    if-ne v0, v1, :cond_0

    .line 961
    iget v0, p0, Lcom/fiio/music/fragment/TabBFm;->pageNumber:I

    if-nez v0, :cond_1

    .line 962
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/fiio/music/fragment/TabBFm;->aKeyPlayer(Ljava/lang/String;I)V

    .line 974
    :cond_0
    :goto_0
    return-void

    .line 964
    :cond_1
    iget-boolean v0, p0, Lcom/fiio/music/fragment/TabBFm;->displayChange_songlistOrAlbumList:Z

    if-eqz v0, :cond_2

    .line 965
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/fiio/music/fragment/TabBFm;->aKeyPlayer(Ljava/lang/String;I)V

    goto :goto_0

    .line 968
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/fiio/music/fragment/TabBFm;->aKeyPlayer(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 117
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 118
    invoke-virtual {p0}, Lcom/fiio/music/fragment/TabBFm;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->context:Landroid/content/Context;

    .line 119
    new-instance v0, Lcom/fiio/music/b/c;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabBFm;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/fiio/music/b/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->artistDao:Lcom/fiio/music/b/c;

    .line 120
    new-instance v0, Lcom/fiio/music/b/b;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabBFm;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/fiio/music/b/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->albumDao:Lcom/fiio/music/b/b;

    .line 121
    new-instance v0, Lcom/fiio/music/b/k;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabBFm;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/fiio/music/b/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->songDao:Lcom/fiio/music/b/k;

    .line 122
    new-instance v0, Lcom/fiio/music/util/cr;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabBFm;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/fiio/music/util/cr;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->tabSortType:Lcom/fiio/music/util/cr;

    .line 123
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->context:Landroid/content/Context;

    const-string v1, "changestyle"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->changestylesp:Landroid/content/SharedPreferences;

    .line 125
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->context:Landroid/content/Context;

    const-string v1, "folderjump"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->artistJumpPreferences:Landroid/content/SharedPreferences;

    .line 126
    invoke-static {}, Lcom/fiio/music/util/an;->a()Lcom/fiio/music/util/an;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->foldersongUtils:Lcom/fiio/music/util/an;

    .line 127
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->artistJumpPreferences:Landroid/content/SharedPreferences;

    const-string v1, "FolderJump"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fiio/music/fragment/TabBFm;->jumpArtist:Z

    .line 128
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 133
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->changestylesp:Landroid/content/SharedPreferences;

    const-string v1, "styleChange"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fiio/music/fragment/TabBFm;->UI_IS_CHANGE:Z

    .line 134
    invoke-virtual {p0}, Lcom/fiio/music/fragment/TabBFm;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/a;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/fiio/music/fragment/TabBFm;->STYLE_PARAMTER:I

    .line 136
    const/4 v1, 0x0

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->data:Ljava/util/List;

    .line 138
    new-instance v0, Lcom/fiio/music/util/cm;

    invoke-virtual {p0}, Lcom/fiio/music/fragment/TabBFm;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/fiio/music/util/cm;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->sortDataList:Lcom/fiio/music/util/cm;

    .line 139
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 140
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->getMediaPlayerManager()Lcom/fiio/music/service/h;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->mediaPlayerManager:Lcom/fiio/music/service/h;

    .line 142
    iget v0, p0, Lcom/fiio/music/fragment/TabBFm;->STYLE_PARAMTER:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 143
    const v0, 0x7f04013f

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    .line 156
    :cond_0
    :goto_0
    const v0, 0x7f0b0375

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    iput-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    .line 157
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    iget-object v2, p0, Lcom/fiio/music/fragment/TabBFm;->song_list_content_listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v2}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 158
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    new-instance v2, Lcom/fiio/music/fragment/bl;

    invoke-direct {v2, p0}, Lcom/fiio/music/fragment/bl;-><init>(Lcom/fiio/music/fragment/TabBFm;)V

    invoke-virtual {v0, v2}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 186
    const v0, 0x7f0b0376

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    iput-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->smlv_list_change_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    .line 187
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->smlv_list_change_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    iget-object v2, p0, Lcom/fiio/music/fragment/TabBFm;->smlv_list_change_content_listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v2}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 188
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v2, p0, Lcom/fiio/music/fragment/TabBFm;->smlv_list_change_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    invoke-virtual {v0, v2}, Lcom/fiio/music/activity/LocalMusicActivity;->initSwipeListView(Lcom/fiio/music/swipemenulistview/SwipeMenuListView;)V

    .line 189
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v2, p0, Lcom/fiio/music/fragment/TabBFm;->song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    invoke-virtual {v0, v2}, Lcom/fiio/music/activity/LocalMusicActivity;->initSwipeListViewFour(Lcom/fiio/music/swipemenulistview/SwipeMenuListView;)V

    .line 192
    return-object v1

    .line 144
    :cond_1
    iget v0, p0, Lcom/fiio/music/fragment/TabBFm;->STYLE_PARAMTER:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 145
    const v0, 0x7f040140

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    .line 146
    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/fiio/music/fragment/TabBFm;->STYLE_PARAMTER:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 147
    const v0, 0x7f040141

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    .line 148
    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/fiio/music/fragment/TabBFm;->STYLE_PARAMTER:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 149
    const v0, 0x7f040142

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 721
    iput v2, p0, Lcom/fiio/music/fragment/TabBFm;->antherPosition:I

    .line 722
    iput v2, p0, Lcom/fiio/music/fragment/TabBFm;->antherTop:I

    .line 723
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->context:Landroid/content/Context;

    const-string v1, "positiontop"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->sp:Landroid/content/SharedPreferences;

    .line 724
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "positionB"

    iget v2, p0, Lcom/fiio/music/fragment/TabBFm;->antherPosition:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 725
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "topB"

    iget v2, p0, Lcom/fiio/music/fragment/TabBFm;->antherTop:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 726
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 727
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 716
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 717
    return-void
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 731
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 733
    :try_start_0
    const-class v0, Landroid/support/v4/app/Fragment;

    const-string v1, "mChildFragmentManager"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 734
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 735
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 737
    return-void

    :catch_0
    move-exception v0

    .line 738
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 739
    :catch_1
    move-exception v0

    .line 740
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onHiddenChanged(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 221
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onHiddenChanged(Z)V

    .line 223
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->tabSortType:Lcom/fiio/music/util/cr;

    if-eqz v0, :cond_0

    .line 224
    iget v0, p0, Lcom/fiio/music/fragment/TabBFm;->pageNumber:I

    if-nez v0, :cond_2

    .line 226
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->tabSortType:Lcom/fiio/music/util/cr;

    const-string v1, "tabBFm"

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    move-result v0

    .line 228
    if-nez v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v0, v2}, Lcom/fiio/music/activity/LocalMusicActivity;->a_z_sideBar_show(Z)V

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v0, v3}, Lcom/fiio/music/activity/LocalMusicActivity;->a_z_sideBar_show(Z)V

    goto :goto_0

    .line 236
    :cond_2
    iget v0, p0, Lcom/fiio/music/fragment/TabBFm;->pageNumber:I

    if-ne v0, v2, :cond_0

    .line 237
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->tabSortType:Lcom/fiio/music/util/cr;

    const-string v1, "tabBfmFir"

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    move-result v0

    .line 239
    sget v1, Lcom/fiio/music/util/cn;->d:I

    if-eq v0, v1, :cond_3

    if-nez v0, :cond_4

    .line 240
    :cond_3
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v0, v2}, Lcom/fiio/music/activity/LocalMusicActivity;->a_z_sideBar_show(Z)V

    goto :goto_0

    .line 243
    :cond_4
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v0, v3}, Lcom/fiio/music/activity/LocalMusicActivity;->a_z_sideBar_show(Z)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 688
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 689
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fiio/music/fragment/TabBFm;->onPauseFlag:Z

    .line 691
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 669
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 670
    invoke-virtual {p0}, Lcom/fiio/music/fragment/TabBFm;->isHidden()Z

    move-result v0

    if-nez v0, :cond_1

    .line 671
    iget v0, p0, Lcom/fiio/music/fragment/TabBFm;->pageNumber:I

    if-nez v0, :cond_0

    .line 672
    invoke-virtual {p0, v1, v1, v2, v2}, Lcom/fiio/music/fragment/TabBFm;->jumpPage(IILjava/lang/String;Ljava/lang/String;)V

    .line 674
    :cond_0
    iget-boolean v0, p0, Lcom/fiio/music/fragment/TabBFm;->searchSong_flag:Z

    if-eqz v0, :cond_1

    .line 676
    iput-boolean v1, p0, Lcom/fiio/music/fragment/TabBFm;->searchSong_flag:Z

    .line 678
    iget v0, p0, Lcom/fiio/music/fragment/TabBFm;->searchSong_artistId:I

    invoke-virtual {p0, v0}, Lcom/fiio/music/fragment/TabBFm;->tabPerformClick(I)V

    .line 684
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 196
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 197
    invoke-virtual {p0}, Lcom/fiio/music/fragment/TabBFm;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    iget v0, p0, Lcom/fiio/music/fragment/TabBFm;->pageNumber:I

    if-nez v0, :cond_2

    .line 200
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->smlv_list_change_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    invoke-virtual {v0, v2}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setVisibility(I)V

    .line 201
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setVisibility(I)V

    .line 202
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->tabSortType:Lcom/fiio/music/util/cr;

    const-string v1, "tabBFm"

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/fiio/music/fragment/TabBFm;->sortType:I

    .line 203
    iget v0, p0, Lcom/fiio/music/fragment/TabBFm;->sortType:I

    if-nez v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->a_z_sideBar_show(Z)V

    .line 209
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->mListItemAdapter:Lcom/fiio/music/adapter/ListItemAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->smlv_list_change_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabBFm;->mListItemAdapter:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 216
    :cond_0
    :goto_1
    return-void

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v0, v2}, Lcom/fiio/music/activity/LocalMusicActivity;->a_z_sideBar_show(Z)V

    goto :goto_0

    .line 212
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->smlv_list_change_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    invoke-virtual {v0, v2}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setVisibility(I)V

    goto :goto_1
.end method

.method public onStop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 695
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->smlv_list_change_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->smlv_list_change_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    invoke-virtual {v0, v3}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 696
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->smlv_list_change_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    invoke-virtual {v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/fiio/music/fragment/TabBFm;->antherPosition:I

    .line 697
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->smlv_list_change_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    invoke-virtual {v0, v3}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lcom/fiio/music/fragment/TabBFm;->antherTop:I

    .line 699
    :cond_0
    invoke-virtual {p0}, Lcom/fiio/music/fragment/TabBFm;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "positiontop"

    invoke-virtual {p0}, Lcom/fiio/music/fragment/TabBFm;->getActivity()Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1, v3}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->sp:Landroid/content/SharedPreferences;

    .line 700
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "positionB"

    iget v2, p0, Lcom/fiio/music/fragment/TabBFm;->antherPosition:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 701
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "topB"

    iget v2, p0, Lcom/fiio/music/fragment/TabBFm;->antherTop:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 703
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 705
    iget-boolean v0, p0, Lcom/fiio/music/fragment/TabBFm;->onPauseFlag:Z

    if-eqz v0, :cond_1

    .line 706
    invoke-virtual {p0}, Lcom/fiio/music/fragment/TabBFm;->getTabFmPageNumber()I

    move-result v0

    iput v0, p0, Lcom/fiio/music/fragment/TabBFm;->pageNumber:I

    .line 710
    :goto_0
    iput-boolean v3, p0, Lcom/fiio/music/fragment/TabBFm;->onPauseFlag:Z

    .line 711
    return-void

    .line 708
    :cond_1
    iput v3, p0, Lcom/fiio/music/fragment/TabBFm;->pageNumber:I

    goto :goto_0
.end method

.method public orderBy(I)V
    .locals 2

    .prologue
    .line 839
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 840
    if-nez p1, :cond_1

    .line 841
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->a_z_sideBar_show(Z)V

    .line 845
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->sortDataList:Lcom/fiio/music/util/cm;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabBFm;->artistList:Ljava/util/List;

    invoke-virtual {v0, p1, v1}, Lcom/fiio/music/util/cm;->b(ILjava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 846
    iget-object v1, p0, Lcom/fiio/music/fragment/TabBFm;->mListItemAdapter:Lcom/fiio/music/adapter/ListItemAdapter;

    if-eqz v1, :cond_0

    .line 847
    iget-object v1, p0, Lcom/fiio/music/fragment/TabBFm;->mListItemAdapter:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-virtual {v1, v0}, Lcom/fiio/music/adapter/ListItemAdapter;->setDate(Ljava/util/List;)V

    .line 849
    :cond_0
    return-void

    .line 843
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->a_z_sideBar_show(Z)V

    goto :goto_0
.end method

.method public orderByAscOrDESC(II)V
    .locals 2

    .prologue
    .line 852
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 853
    if-nez p1, :cond_1

    .line 854
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->a_z_sideBar_show(Z)V

    .line 858
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->sortDataList:Lcom/fiio/music/util/cm;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabBFm;->artistList:Ljava/util/List;

    invoke-virtual {v0, p1, v1, p2}, Lcom/fiio/music/util/cm;->a(ILjava/util/List;I)Ljava/util/List;

    move-result-object v0

    .line 859
    iget-object v1, p0, Lcom/fiio/music/fragment/TabBFm;->mListItemAdapter:Lcom/fiio/music/adapter/ListItemAdapter;

    if-eqz v1, :cond_0

    .line 860
    iget-object v1, p0, Lcom/fiio/music/fragment/TabBFm;->mListItemAdapter:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-virtual {v1, v0}, Lcom/fiio/music/adapter/ListItemAdapter;->setDate(Ljava/util/List;)V

    .line 862
    :cond_0
    return-void

    .line 856
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->a_z_sideBar_show(Z)V

    goto :goto_0
.end method

.method public orderSong(II)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 865
    iget-boolean v0, p0, Lcom/fiio/music/fragment/TabBFm;->displayChange_songlistOrAlbumList:Z

    if-eqz v0, :cond_7

    .line 867
    sget v0, Lcom/fiio/music/util/cn;->e:I

    if-ne p1, v0, :cond_4

    .line 868
    sget v0, Lcom/fiio/music/util/cn;->a:I

    if-ne p2, v0, :cond_3

    .line 869
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->songDao:Lcom/fiio/music/b/k;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabBFm;->condition:Ljava/lang/String;

    const-string v2, " ASC"

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/b/k;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->data:Ljava/util/List;

    .line 882
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->mSongItemAdapter:Lcom/fiio/music/adapter/SongItemAdapter;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabBFm;->data:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/SongItemAdapter;->setData(Ljava/util/List;)V

    .line 883
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->mediaPlayerManager:Lcom/fiio/music/service/h;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->k()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->m()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 884
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->data:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 885
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->mediaPlayerManager:Lcom/fiio/music/service/h;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabBFm;->data:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/fiio/music/service/h;->b(Ljava/util/List;)V

    .line 893
    :cond_1
    :goto_1
    iget v0, p0, Lcom/fiio/music/fragment/TabBFm;->pageNumber:I

    if-nez v0, :cond_9

    .line 894
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->tabSortType:Lcom/fiio/music/util/cr;

    const-string v1, "tabBFm"

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    move-result v0

    .line 896
    if-nez v0, :cond_8

    .line 897
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v0, v3}, Lcom/fiio/music/activity/LocalMusicActivity;->a_z_sideBar_show(Z)V

    .line 915
    :cond_2
    :goto_2
    return-void

    .line 871
    :cond_3
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->songDao:Lcom/fiio/music/b/k;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabBFm;->condition:Ljava/lang/String;

    const-string v2, " DESC"

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/b/k;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->data:Ljava/util/List;

    goto :goto_0

    .line 873
    :cond_4
    sget v0, Lcom/fiio/music/util/cn;->d:I

    if-ne p1, v0, :cond_6

    .line 874
    sget v0, Lcom/fiio/music/util/cn;->a:I

    if-ne p2, v0, :cond_5

    .line 875
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->songDao:Lcom/fiio/music/b/k;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabBFm;->condition:Ljava/lang/String;

    const-string v2, " ASC"

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/b/k;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->data:Ljava/util/List;

    goto :goto_0

    .line 877
    :cond_5
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->songDao:Lcom/fiio/music/b/k;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabBFm;->condition:Ljava/lang/String;

    const-string v2, " DESC"

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/b/k;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->data:Ljava/util/List;

    goto :goto_0

    .line 879
    :cond_6
    if-nez p1, :cond_0

    .line 880
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->songDao:Lcom/fiio/music/b/k;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabBFm;->condition:Ljava/lang/String;

    const-string v2, " ASC"

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/b/k;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->data:Ljava/util/List;

    goto/16 :goto_0

    .line 889
    :cond_7
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->albumList:Ljava/util/List;

    invoke-direct {p0, p1, p2, v0}, Lcom/fiio/music/fragment/TabBFm;->sortAlbumInTabB(IILjava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->albumList:Ljava/util/List;

    .line 890
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->inner_mListItemAdapter:Lcom/fiio/music/adapter/ListItemAdapter;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabBFm;->albumList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/ListItemAdapter;->setDate(Ljava/util/List;)V

    goto :goto_1

    .line 900
    :cond_8
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v0, v4}, Lcom/fiio/music/activity/LocalMusicActivity;->a_z_sideBar_show(Z)V

    goto :goto_2

    .line 904
    :cond_9
    iget v0, p0, Lcom/fiio/music/fragment/TabBFm;->pageNumber:I

    if-ne v0, v3, :cond_2

    .line 905
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->tabSortType:Lcom/fiio/music/util/cr;

    const-string v1, "tabBfmFir"

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    move-result v0

    .line 907
    sget v1, Lcom/fiio/music/util/cn;->d:I

    if-eq v0, v1, :cond_a

    if-nez v0, :cond_b

    .line 908
    :cond_a
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v0, v3}, Lcom/fiio/music/activity/LocalMusicActivity;->a_z_sideBar_show(Z)V

    goto :goto_2

    .line 911
    :cond_b
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v0, v4}, Lcom/fiio/music/activity/LocalMusicActivity;->a_z_sideBar_show(Z)V

    goto :goto_2
.end method

.method public playCueFile(Ljava/io/File;II)V
    .locals 3

    .prologue
    .line 654
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->cueSheetManager:Lcom/fiio/music/util/j;

    invoke-static {p1}, Lcom/fiio/music/util/j;->b(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 655
    if-nez v0, :cond_0

    .line 657
    :goto_0
    return-void

    .line 656
    :cond_0
    iget-object v1, p0, Lcom/fiio/music/fragment/TabBFm;->cueSheetManager:Lcom/fiio/music/util/j;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p2, p3, v2}, Lcom/fiio/music/util/j;->a(Ljava/io/File;IILjava/util/List;)V

    goto :goto_0
.end method

.method public relist()V
    .locals 1

    .prologue
    .line 1250
    new-instance v0, Lcom/fiio/music/fragment/TabBFm;

    invoke-direct {v0}, Lcom/fiio/music/fragment/TabBFm;-><init>()V

    .line 1251
    return-void
.end method

.method public setDisplayChange_playlistOrAlbumlist(Z)V
    .locals 0

    .prologue
    .line 1234
    iput-boolean p1, p0, Lcom/fiio/music/fragment/TabBFm;->displayChange_songlistOrAlbumList:Z

    .line 1235
    return-void
.end method

.method public setNeedRelist(Z)V
    .locals 0

    .prologue
    .line 1246
    iput-boolean p1, p0, Lcom/fiio/music/fragment/TabBFm;->needRelist:Z

    .line 1248
    return-void
.end method

.method public setSearchSong_flagAndId(ZI)V
    .locals 0

    .prologue
    .line 1262
    iput-boolean p1, p0, Lcom/fiio/music/fragment/TabBFm;->searchSong_flag:Z

    .line 1263
    iput p2, p0, Lcom/fiio/music/fragment/TabBFm;->searchSong_artistId:I

    .line 1265
    return-void
.end method

.method public setTabFmPageNumber(I)V
    .locals 0

    .prologue
    .line 498
    iput p1, p0, Lcom/fiio/music/fragment/TabBFm;->pageNumber:I

    .line 499
    return-void
.end method

.method public sortForSongByCD(I)V
    .locals 2

    .prologue
    .line 944
    invoke-virtual {p0}, Lcom/fiio/music/fragment/TabBFm;->getWhichAdapterInner()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 945
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->inner_data:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->inner_data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 947
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->inner_mSongItemAdapter:Lcom/fiio/music/adapter/SongItemAdapter;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabBFm;->inner_data:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/SongItemAdapter;->setData(Ljava/util/List;)V

    .line 948
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->mediaPlayerManager:Lcom/fiio/music/service/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->k()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->m()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 949
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->inner_data:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->inner_data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 950
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->mediaPlayerManager:Lcom/fiio/music/service/h;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabBFm;->inner_data:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/fiio/music/service/h;->b(Ljava/util/List;)V

    .line 955
    :cond_0
    return-void
.end method

.method public tabGetListView_0()Lcom/fiio/music/swipemenulistview/SwipeMenuListView;
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->smlv_list_change_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    return-object v0
.end method

.method public tabGetSongListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    return-object v0
.end method

.method public tabPerformClick(I)V
    .locals 4

    .prologue
    .line 1268
    const-string v0, "zxy"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "performClick - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1270
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/fiio/music/fragment/TabBFm;->findPositionByArtistId(I)I

    move-result v1

    .line 1271
    const-string v0, "zxy"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "performClick - position : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1273
    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->smlv_list_change_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    if-eqz v0, :cond_0

    .line 1276
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->list:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    .line 1277
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 1278
    const/4 v3, 0x1

    invoke-virtual {p0, v3, v1, v2, v0}, Lcom/fiio/music/fragment/TabBFm;->jumpPage(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1284
    :cond_0
    :goto_0
    return-void

    .line 1280
    :catch_0
    move-exception v0

    .line 1281
    const-string v1, "sin"

    const-string v2, "tab c tab perform click error below"

    invoke-static {v1, v2}, Lcom/fiio/music/util/aw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1282
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public updataAlbumList(IZ)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 806
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->albumList:Ljava/util/List;

    .line 807
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->artistDao:Lcom/fiio/music/b/c;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabBFm;->condition:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fiio/music/b/c;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->albumList:Ljava/util/List;

    .line 808
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->inner_mListItemAdapter:Lcom/fiio/music/adapter/ListItemAdapter;

    if-eqz v0, :cond_0

    .line 809
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->albumList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 810
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->inner_mListItemAdapter:Lcom/fiio/music/adapter/ListItemAdapter;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabBFm;->albumList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/ListItemAdapter;->setDate(Ljava/util/List;)V

    .line 811
    if-eqz p2, :cond_0

    .line 812
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabBFm;->data:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->updateHeadBar(I)V

    .line 817
    :cond_0
    :goto_0
    return-void

    .line 814
    :cond_1
    invoke-virtual {p0, v2, v2, v3, v3}, Lcom/fiio/music/fragment/TabBFm;->jumpPage(IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
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

    .line 782
    iput-object p1, p0, Lcom/fiio/music/fragment/TabBFm;->data:Ljava/util/List;

    .line 783
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->mSongItemAdapter:Lcom/fiio/music/adapter/SongItemAdapter;

    if-eqz v0, :cond_0

    .line 784
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 785
    new-instance v0, Lcom/fiio/music/adapter/SongItemAdapter;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabBFm;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/fiio/music/fragment/TabBFm;->mediaPlayerManager:Lcom/fiio/music/service/h;

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/fiio/music/fragment/TabBFm;->song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    iget v6, p0, Lcom/fiio/music/fragment/TabBFm;->STYLE_PARAMTER:I

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/fiio/music/adapter/SongItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/fiio/music/service/h;ILcom/fiio/music/swipemenulistview/SwipeMenuListView;I)V

    iput-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->mSongItemAdapter:Lcom/fiio/music/adapter/SongItemAdapter;

    .line 786
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabBFm;->mSongItemAdapter:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 791
    :cond_0
    :goto_0
    return-void

    .line 788
    :cond_1
    invoke-virtual {p0, v1, v1, v2, v2}, Lcom/fiio/music/fragment/TabBFm;->jumpPage(IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updataDeSelectionView()V
    .locals 1

    .prologue
    .line 1254
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->getMediaPlayerManager()Lcom/fiio/music/service/h;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->mediaPlayerManager:Lcom/fiio/music/service/h;

    .line 1255
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

    .line 794
    iput-object p1, p0, Lcom/fiio/music/fragment/TabBFm;->inner_data:Ljava/util/List;

    .line 795
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->inner_mSongItemAdapter:Lcom/fiio/music/adapter/SongItemAdapter;

    if-eqz v0, :cond_0

    .line 796
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 797
    new-instance v0, Lcom/fiio/music/adapter/SongItemAdapter;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabBFm;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/fiio/music/fragment/TabBFm;->mediaPlayerManager:Lcom/fiio/music/service/h;

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/fiio/music/fragment/TabBFm;->song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    iget v6, p0, Lcom/fiio/music/fragment/TabBFm;->STYLE_PARAMTER:I

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/fiio/music/adapter/SongItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/fiio/music/service/h;ILcom/fiio/music/swipemenulistview/SwipeMenuListView;I)V

    iput-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->inner_mSongItemAdapter:Lcom/fiio/music/adapter/SongItemAdapter;

    .line 798
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabBFm;->inner_mSongItemAdapter:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 804
    :cond_0
    :goto_0
    return-void

    .line 800
    :cond_1
    invoke-virtual {p0, v1, v1, v2, v2}, Lcom/fiio/music/fragment/TabBFm;->jumpPage(IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updataList()V
    .locals 3

    .prologue
    .line 773
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->artistDao:Lcom/fiio/music/b/c;

    invoke-virtual {v0}, Lcom/fiio/music/b/c;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->artistList:Ljava/util/List;

    .line 774
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->tabSortType:Lcom/fiio/music/util/cr;

    const-string v1, "tabBFm"

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/fiio/music/fragment/TabBFm;->sortType:I

    .line 775
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->sortDataList:Lcom/fiio/music/util/cm;

    iget v1, p0, Lcom/fiio/music/fragment/TabBFm;->sortType:I

    iget-object v2, p0, Lcom/fiio/music/fragment/TabBFm;->artistList:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/util/cm;->b(ILjava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->list:Ljava/util/List;

    .line 776
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->mListItemAdapter:Lcom/fiio/music/adapter/ListItemAdapter;

    if-eqz v0, :cond_0

    .line 777
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->mListItemAdapter:Lcom/fiio/music/adapter/ListItemAdapter;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabBFm;->list:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/ListItemAdapter;->setDate(Ljava/util/List;)V

    .line 779
    :cond_0
    return-void
.end method

.method public updataSongList()V
    .locals 4

    .prologue
    .line 824
    :try_start_0
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->tabSortType:Lcom/fiio/music/util/cr;

    const-string v1, "tabBfmFir"

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    move-result v0

    .line 825
    iget-object v1, p0, Lcom/fiio/music/fragment/TabBFm;->tabSortType:Lcom/fiio/music/util/cr;

    const-string v2, "sortBFm"

    invoke-virtual {v1, v2}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    move-result v1

    .line 826
    iget-object v2, p0, Lcom/fiio/music/fragment/TabBFm;->data:Ljava/util/List;

    iget-object v3, p0, Lcom/fiio/music/fragment/TabBFm;->condition:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/fiio/music/fragment/TabBFm;->getTheSongs(Ljava/util/List;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->data:Ljava/util/List;

    .line 827
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->mSongItemAdapter:Lcom/fiio/music/adapter/SongItemAdapter;

    if-eqz v0, :cond_0

    .line 828
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 829
    iget-object v0, p0, Lcom/fiio/music/fragment/TabBFm;->mSongItemAdapter:Lcom/fiio/music/adapter/SongItemAdapter;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabBFm;->data:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/SongItemAdapter;->setData(Ljava/util/List;)V

    .line 836
    :cond_0
    :goto_0
    return-void

    .line 831
    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/fiio/music/fragment/TabBFm;->jumpPage(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
