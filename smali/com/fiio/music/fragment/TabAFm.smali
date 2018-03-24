.class public Lcom/fiio/music/fragment/TabAFm;
.super Landroid/support/v4/app/Fragment;
.source "TabAFm.java"


# static fields
.field protected static final SEARCH_ALL_FAIL:I = 0x1

.field protected static final SEARCH_ALL_SUC:I = 0x0

.field protected static final TAG:Ljava/lang/String; = "xyz-TabAFm"


# instance fields
.field private IdLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private STYLE_PARAMTER:I

.field private UI_IS_CHANGE:Z

.field private addMyLoveListCallBack:Lcom/fiio/music/test/j;

.field private addPlayListCallBack:Lcom/fiio/music/test/k;

.field public afterDel:Z

.field private batchPlayerCallBack:Lcom/fiio/music/test/l;

.field private changestylesp:Landroid/content/SharedPreferences;

.field private context:Landroid/content/Context;

.field private cr:Landroid/database/Cursor;

.field private cueSheetManager:Lcom/fiio/music/util/j;

.field private cursorSongAdapter:Lcom/fiio/music/test/simpleCursorSongAdapter;

.field private deleteCallBack:Lcom/fiio/music/test/m;

.field public deleteHandler:Landroid/os/Handler;

.field private deleteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public isPause:Z

.field private mExecutorService:Ljava/util/concurrent/ExecutorService;

.field public mHandler:Landroid/os/Handler;

.field private mPosition:I

.field final mSemaphore:Ljava/util/concurrent/Semaphore;

.field private mTop:I

.field private mediaPlayerManager:Lcom/fiio/music/service/h;

.field private params:Landroid/view/ViewGroup$LayoutParams;

.field private playListManager:Lcom/fiio/music/util/bw;

.field searchAllRunnable:Ljava/lang/Runnable;

.field searchAllThread:Ljava/lang/Thread;

.field private smlv_song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

.field private smlv_song_list_content_listener:Landroid/widget/AdapterView$OnItemClickListener;

.field private songDao:Lcom/fiio/music/b/k;

.field private songItemAdapter:Lcom/fiio/music/adapter/SongItemAdapter;

.field private songList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;"
        }
    .end annotation
.end field

.field private sortDataList:Lcom/fiio/music/util/cm;

.field private sortType:I

.field private sortTypeString:Ljava/lang/String;

.field private sp:Landroid/content/SharedPreferences;

.field private tabSortType:Lcom/fiio/music/util/cr;

.field private tempList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;"
        }
    .end annotation
.end field

.field private toast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 110
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabAFm;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 99
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/fiio/music/fragment/TabAFm;->mSemaphore:Ljava/util/concurrent/Semaphore;

    .line 104
    const-string v0, " SortsongFirst ASC"

    iput-object v0, p0, Lcom/fiio/music/fragment/TabAFm;->sortTypeString:Ljava/lang/String;

    .line 106
    iput-boolean v2, p0, Lcom/fiio/music/fragment/TabAFm;->UI_IS_CHANGE:Z

    .line 108
    const/4 v0, 0x3

    iput v0, p0, Lcom/fiio/music/fragment/TabAFm;->STYLE_PARAMTER:I

    .line 152
    iput-boolean v2, p0, Lcom/fiio/music/fragment/TabAFm;->afterDel:Z

    .line 187
    new-instance v0, Lcom/fiio/music/fragment/ar;

    invoke-direct {v0, p0}, Lcom/fiio/music/fragment/ar;-><init>(Lcom/fiio/music/fragment/TabAFm;)V

    iput-object v0, p0, Lcom/fiio/music/fragment/TabAFm;->smlv_song_list_content_listener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 226
    iput v2, p0, Lcom/fiio/music/fragment/TabAFm;->mPosition:I

    .line 227
    iput v2, p0, Lcom/fiio/music/fragment/TabAFm;->mTop:I

    .line 231
    new-instance v0, Lcom/fiio/music/fragment/ay;

    invoke-direct {v0, p0}, Lcom/fiio/music/fragment/ay;-><init>(Lcom/fiio/music/fragment/TabAFm;)V

    iput-object v0, p0, Lcom/fiio/music/fragment/TabAFm;->mHandler:Landroid/os/Handler;

    .line 271
    new-instance v0, Lcom/fiio/music/fragment/az;

    invoke-direct {v0, p0}, Lcom/fiio/music/fragment/az;-><init>(Lcom/fiio/music/fragment/TabAFm;)V

    iput-object v0, p0, Lcom/fiio/music/fragment/TabAFm;->searchAllRunnable:Ljava/lang/Runnable;

    .line 323
    new-instance v0, Lcom/fiio/music/fragment/ba;

    invoke-direct {v0, p0}, Lcom/fiio/music/fragment/ba;-><init>(Lcom/fiio/music/fragment/TabAFm;)V

    iput-object v0, p0, Lcom/fiio/music/fragment/TabAFm;->addPlayListCallBack:Lcom/fiio/music/test/k;

    .line 346
    new-instance v0, Lcom/fiio/music/fragment/bb;

    invoke-direct {v0, p0}, Lcom/fiio/music/fragment/bb;-><init>(Lcom/fiio/music/fragment/TabAFm;)V

    iput-object v0, p0, Lcom/fiio/music/fragment/TabAFm;->addMyLoveListCallBack:Lcom/fiio/music/test/j;

    .line 392
    new-instance v0, Lcom/fiio/music/fragment/bc;

    invoke-direct {v0, p0}, Lcom/fiio/music/fragment/bc;-><init>(Lcom/fiio/music/fragment/TabAFm;)V

    iput-object v0, p0, Lcom/fiio/music/fragment/TabAFm;->deleteCallBack:Lcom/fiio/music/test/m;

    .line 434
    new-instance v0, Lcom/fiio/music/fragment/bf;

    invoke-direct {v0, p0}, Lcom/fiio/music/fragment/bf;-><init>(Lcom/fiio/music/fragment/TabAFm;)V

    iput-object v0, p0, Lcom/fiio/music/fragment/TabAFm;->batchPlayerCallBack:Lcom/fiio/music/test/l;

    .line 459
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/fragment/TabAFm;->deleteList:Ljava/util/List;

    .line 460
    new-instance v0, Lcom/fiio/music/fragment/bg;

    invoke-direct {v0, p0}, Lcom/fiio/music/fragment/bg;-><init>(Lcom/fiio/music/fragment/TabAFm;)V

    iput-object v0, p0, Lcom/fiio/music/fragment/TabAFm;->deleteHandler:Landroid/os/Handler;

    .line 917
    iput-boolean v2, p0, Lcom/fiio/music/fragment/TabAFm;->isPause:Z

    .line 110
    return-void
.end method

.method static synthetic access$0(Lcom/fiio/music/fragment/TabAFm;)Lcom/fiio/music/test/simpleCursorSongAdapter;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/fiio/music/fragment/TabAFm;->cursorSongAdapter:Lcom/fiio/music/test/simpleCursorSongAdapter;

    return-object v0
.end method

.method static synthetic access$1(Lcom/fiio/music/fragment/TabAFm;)Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/fiio/music/fragment/TabAFm;->cr:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$10(Lcom/fiio/music/fragment/TabAFm;)Lcom/fiio/music/test/l;
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/fiio/music/fragment/TabAFm;->batchPlayerCallBack:Lcom/fiio/music/test/l;

    return-object v0
.end method

.method static synthetic access$11(Lcom/fiio/music/fragment/TabAFm;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/fiio/music/fragment/TabAFm;->sortTypeString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$12(Lcom/fiio/music/fragment/TabAFm;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/fiio/music/fragment/TabAFm;->sp:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$13(Lcom/fiio/music/fragment/TabAFm;I)V
    .locals 0

    .prologue
    .line 226
    iput p1, p0, Lcom/fiio/music/fragment/TabAFm;->mPosition:I

    return-void
.end method

.method static synthetic access$14(Lcom/fiio/music/fragment/TabAFm;I)V
    .locals 0

    .prologue
    .line 227
    iput p1, p0, Lcom/fiio/music/fragment/TabAFm;->mTop:I

    return-void
.end method

.method static synthetic access$15(Lcom/fiio/music/fragment/TabAFm;)I
    .locals 1

    .prologue
    .line 226
    iget v0, p0, Lcom/fiio/music/fragment/TabAFm;->mPosition:I

    return v0
.end method

.method static synthetic access$16(Lcom/fiio/music/fragment/TabAFm;)I
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Lcom/fiio/music/fragment/TabAFm;->mTop:I

    return v0
.end method

.method static synthetic access$17(Lcom/fiio/music/fragment/TabAFm;)Lcom/fiio/music/util/cr;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/fiio/music/fragment/TabAFm;->tabSortType:Lcom/fiio/music/util/cr;

    return-object v0
.end method

.method static synthetic access$18(Lcom/fiio/music/fragment/TabAFm;Lcom/fiio/music/util/cr;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/fiio/music/fragment/TabAFm;->tabSortType:Lcom/fiio/music/util/cr;

    return-void
.end method

.method static synthetic access$19(Lcom/fiio/music/fragment/TabAFm;I)V
    .locals 0

    .prologue
    .line 97
    iput p1, p0, Lcom/fiio/music/fragment/TabAFm;->sortType:I

    return-void
.end method

.method static synthetic access$2(Lcom/fiio/music/fragment/TabAFm;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/fiio/music/fragment/TabAFm;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$20(Lcom/fiio/music/fragment/TabAFm;)I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/fiio/music/fragment/TabAFm;->sortType:I

    return v0
.end method

.method static synthetic access$21(Lcom/fiio/music/fragment/TabAFm;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/fiio/music/fragment/TabAFm;->sortTypeString:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$22(Lcom/fiio/music/fragment/TabAFm;)Lcom/fiio/music/b/k;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/fiio/music/fragment/TabAFm;->songDao:Lcom/fiio/music/b/k;

    return-object v0
.end method

.method static synthetic access$23(Lcom/fiio/music/fragment/TabAFm;Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/fiio/music/fragment/TabAFm;->cr:Landroid/database/Cursor;

    return-void
.end method

.method static synthetic access$24(Lcom/fiio/music/fragment/TabAFm;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/fiio/music/fragment/TabAFm;->IdLists:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$25(Lcom/fiio/music/fragment/TabAFm;)Landroid/widget/Toast;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/fiio/music/fragment/TabAFm;->toast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$26(Lcom/fiio/music/fragment/TabAFm;Landroid/widget/Toast;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/fiio/music/fragment/TabAFm;->toast:Landroid/widget/Toast;

    return-void
.end method

.method static synthetic access$27(Lcom/fiio/music/fragment/TabAFm;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 459
    iput-object p1, p0, Lcom/fiio/music/fragment/TabAFm;->deleteList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$28(Lcom/fiio/music/fragment/TabAFm;)Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/fiio/music/fragment/TabAFm;->UI_IS_CHANGE:Z

    return v0
.end method

.method static synthetic access$29(Lcom/fiio/music/fragment/TabAFm;)Ljava/util/List;
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/fiio/music/fragment/TabAFm;->deleteList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3(Lcom/fiio/music/fragment/TabAFm;)Lcom/fiio/music/service/h;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/fiio/music/fragment/TabAFm;->mediaPlayerManager:Lcom/fiio/music/service/h;

    return-object v0
.end method

.method static synthetic access$30(Lcom/fiio/music/fragment/TabAFm;I)I
    .locals 1

    .prologue
    .line 527
    invoke-direct {p0, p1}, Lcom/fiio/music/fragment/TabAFm;->dp2px(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$31(Lcom/fiio/music/fragment/TabAFm;Lcom/fiio/music/entity/Song;IZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 804
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/fiio/music/fragment/TabAFm;->createDeleteSongDialog(Lcom/fiio/music/entity/Song;IZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$32(Lcom/fiio/music/fragment/TabAFm;Lcom/fiio/music/util/bw;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/fiio/music/fragment/TabAFm;->playListManager:Lcom/fiio/music/util/bw;

    return-void
.end method

.method static synthetic access$33(Lcom/fiio/music/fragment/TabAFm;)Lcom/fiio/music/util/bw;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/fiio/music/fragment/TabAFm;->playListManager:Lcom/fiio/music/util/bw;

    return-object v0
.end method

.method static synthetic access$34(Lcom/fiio/music/fragment/TabAFm;Lcom/fiio/music/entity/Song;)V
    .locals 0

    .prologue
    .line 699
    invoke-direct {p0, p1}, Lcom/fiio/music/fragment/TabAFm;->createPlayerListDialogX(Lcom/fiio/music/entity/Song;)V

    return-void
.end method

.method static synthetic access$35(Lcom/fiio/music/fragment/TabAFm;Lcom/fiio/music/entity/Song;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 766
    invoke-direct {p0, p1, p2}, Lcom/fiio/music/fragment/TabAFm;->createSongDetailDialog(Lcom/fiio/music/entity/Song;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$36(Lcom/fiio/music/fragment/TabAFm;I)V
    .locals 0

    .prologue
    .line 714
    invoke-direct {p0, p1}, Lcom/fiio/music/fragment/TabAFm;->createSongDetailDialog(I)V

    return-void
.end method

.method static synthetic access$4(Lcom/fiio/music/fragment/TabAFm;)Lcom/fiio/music/swipemenulistview/SwipeMenuListView;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/fiio/music/fragment/TabAFm;->smlv_song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/fiio/music/fragment/TabAFm;)I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/fiio/music/fragment/TabAFm;->STYLE_PARAMTER:I

    return v0
.end method

.method static synthetic access$6(Lcom/fiio/music/fragment/TabAFm;Lcom/fiio/music/test/simpleCursorSongAdapter;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/fiio/music/fragment/TabAFm;->cursorSongAdapter:Lcom/fiio/music/test/simpleCursorSongAdapter;

    return-void
.end method

.method static synthetic access$7(Lcom/fiio/music/fragment/TabAFm;)Lcom/fiio/music/test/k;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/fiio/music/fragment/TabAFm;->addPlayListCallBack:Lcom/fiio/music/test/k;

    return-object v0
.end method

.method static synthetic access$8(Lcom/fiio/music/fragment/TabAFm;)Lcom/fiio/music/test/j;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/fiio/music/fragment/TabAFm;->addMyLoveListCallBack:Lcom/fiio/music/test/j;

    return-object v0
.end method

.method static synthetic access$9(Lcom/fiio/music/fragment/TabAFm;)Lcom/fiio/music/test/m;
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/fiio/music/fragment/TabAFm;->deleteCallBack:Lcom/fiio/music/test/m;

    return-object v0
.end method

.method private createDeleteSongDialog(Lcom/fiio/music/entity/Song;IZLjava/lang/String;)V
    .locals 8

    .prologue
    .line 807
    new-instance v0, Lcom/fiio/music/custom/g;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabAFm;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/fiio/music/custom/g;-><init>(Landroid/content/Context;)V

    .line 808
    invoke-virtual {v0}, Lcom/fiio/music/custom/g;->a()Lcom/fiio/music/custom/f;

    move-result-object v5

    .line 809
    invoke-virtual {v5}, Lcom/fiio/music/custom/f;->show()V

    .line 810
    iget-boolean v0, p0, Lcom/fiio/music/fragment/TabAFm;->UI_IS_CHANGE:Z

    if-eqz v0, :cond_0

    .line 811
    invoke-virtual {v5}, Lcom/fiio/music/custom/f;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f040029

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    .line 815
    :goto_0
    const v0, 0x7f0b0079

    invoke-virtual {v5, v0}, Lcom/fiio/music/custom/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 816
    const v1, 0x7f0b007e

    invoke-virtual {v5, v1}, Lcom/fiio/music/custom/f;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    .line 817
    const v1, 0x7f0b007d

    invoke-virtual {v5, v1}, Lcom/fiio/music/custom/f;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    .line 818
    invoke-virtual {p0}, Lcom/fiio/music/fragment/TabAFm;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00f2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 819
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 820
    new-instance v0, Lcom/fiio/music/fragment/aw;

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/fiio/music/fragment/aw;-><init>(Lcom/fiio/music/fragment/TabAFm;Lcom/fiio/music/entity/Song;ZILcom/fiio/music/custom/f;)V

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 896
    new-instance v0, Lcom/fiio/music/fragment/ax;

    invoke-direct {v0, p0, v5}, Lcom/fiio/music/fragment/ax;-><init>(Lcom/fiio/music/fragment/TabAFm;Lcom/fiio/music/custom/f;)V

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 903
    return-void

    .line 813
    :cond_0
    invoke-virtual {v5}, Lcom/fiio/music/custom/f;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f04002a

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    goto :goto_0
.end method

.method private createPlayerListDialogX(Lcom/fiio/music/entity/Song;)V
    .locals 3

    .prologue
    .line 700
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 701
    const-string v1, "Song"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 702
    const-string v1, "ChangeStyle"

    iget-boolean v2, p0, Lcom/fiio/music/fragment/TabAFm;->UI_IS_CHANGE:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 703
    iget-object v1, p0, Lcom/fiio/music/fragment/TabAFm;->context:Landroid/content/Context;

    const-class v2, Lcom/fiio/music/activity/AddPlayListActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 704
    invoke-virtual {p0, v0}, Lcom/fiio/music/fragment/TabAFm;->startActivity(Landroid/content/Intent;)V

    .line 705
    return-void
.end method

.method private createSongDetailDialog(I)V
    .locals 5

    .prologue
    const v3, 0x7f0c00ea

    const/4 v4, -0x1

    .line 715
    iget-object v0, p0, Lcom/fiio/music/fragment/TabAFm;->songDao:Lcom/fiio/music/b/k;

    invoke-virtual {v0, p1}, Lcom/fiio/music/b/k;->c(I)Lcom/fiio/music/entity/Song;

    move-result-object v1

    .line 716
    if-nez v1, :cond_0

    .line 717
    iget-object v0, p0, Lcom/fiio/music/fragment/TabAFm;->toast:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabAFm;->context:Landroid/content/Context;

    invoke-virtual {p0, v3}, Lcom/fiio/music/fragment/TabAFm;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabAFm;->toast:Landroid/widget/Toast;

    .line 760
    :goto_0
    return-void

    .line 720
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 722
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 723
    iget-object v0, p0, Lcom/fiio/music/fragment/TabAFm;->toast:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabAFm;->context:Landroid/content/Context;

    invoke-virtual {p0, v3}, Lcom/fiio/music/fragment/TabAFm;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabAFm;->toast:Landroid/widget/Toast;

    goto :goto_0

    .line 726
    :cond_1
    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getSize()I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 727
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v0, v2

    invoke-virtual {v1, v0}, Lcom/fiio/music/entity/Song;->setSize(I)V

    .line 728
    iget-object v0, p0, Lcom/fiio/music/fragment/TabAFm;->songDao:Lcom/fiio/music/b/k;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getSize()I

    move-result v2

    invoke-virtual {v0, p1, v2}, Lcom/fiio/music/b/k;->a(II)V

    .line 731
    :cond_2
    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getDurationTime()I

    move-result v0

    .line 732
    if-ne v0, v4, :cond_3

    .line 734
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    .line 736
    :try_start_0
    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 737
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V

    .line 738
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 743
    :goto_1
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    .line 744
    :goto_2
    if-eq v0, v4, :cond_3

    .line 747
    invoke-virtual {v1, v0}, Lcom/fiio/music/entity/Song;->setDurationTime(I)V

    .line 749
    iget-object v2, p0, Lcom/fiio/music/fragment/TabAFm;->songDao:Lcom/fiio/music/b/k;

    invoke-virtual {v2, p1, v0}, Lcom/fiio/music/b/k;->b(II)V

    .line 753
    :cond_3
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/fiio/music/fragment/TabAFm;->context:Landroid/content/Context;

    const-class v4, Lcom/fiio/music/activity/SongInfoActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 754
    const-string v3, "ChangeStyle"

    iget-boolean v4, p0, Lcom/fiio/music/fragment/TabAFm;->UI_IS_CHANGE:Z

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 755
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 756
    const-string v4, "duration"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 757
    const-string v0, "song"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 758
    invoke-virtual {v2, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 759
    invoke-virtual {p0, v2}, Lcom/fiio/music/fragment/TabAFm;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :catch_0
    move-exception v3

    .line 743
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    goto :goto_2

    .line 742
    :catchall_0
    move-exception v0

    .line 743
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    .line 744
    throw v0

    .line 743
    :catch_1
    move-exception v3

    goto :goto_1

    :catch_2
    move-exception v3

    goto :goto_1
.end method

.method private createSongDetailDialog(Lcom/fiio/music/entity/Song;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 767
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 769
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 770
    iget-object v0, p0, Lcom/fiio/music/fragment/TabAFm;->toast:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabAFm;->context:Landroid/content/Context;

    const v2, 0x7f0c00ea

    invoke-virtual {p0, v2}, Lcom/fiio/music/fragment/TabAFm;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabAFm;->toast:Landroid/widget/Toast;

    .line 798
    :goto_0
    return-void

    .line 773
    :cond_0
    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getSize()I

    move-result v1

    if-nez v1, :cond_1

    .line 774
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p1, v0}, Lcom/fiio/music/entity/Song;->setSize(I)V

    .line 778
    :cond_1
    const/4 v0, 0x0

    .line 779
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 785
    :cond_2
    :goto_1
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/fiio/music/fragment/TabAFm;->context:Landroid/content/Context;

    const-class v3, Lcom/fiio/music/activity/SongInfoActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 792
    const-string v2, "ChangeStyle"

    iget-boolean v3, p0, Lcom/fiio/music/fragment/TabAFm;->UI_IS_CHANGE:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 793
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 794
    const-string v3, "duration"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 795
    const-string v0, "song"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 796
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 797
    invoke-virtual {p0, v1}, Lcom/fiio/music/fragment/TabAFm;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 779
    :sswitch_0
    const-string v1, "CUE"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 781
    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getCue_duration()I

    move-result v0

    goto :goto_1

    .line 779
    :sswitch_1
    const-string v1, "SACD"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 784
    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getSacd_duration()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    goto :goto_1

    .line 779
    nop

    :sswitch_data_0
    .sparse-switch
        0x10613 -> :sswitch_0
        0x26b72f -> :sswitch_1
    .end sparse-switch
.end method

.method private dp2px(I)I
    .locals 3

    .prologue
    .line 528
    const/4 v0, 0x1

    int-to-float v1, p1

    .line 529
    invoke-virtual {p0}, Lcom/fiio/music/fragment/TabAFm;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 528
    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private initSongSwipeListView(Lcom/fiio/music/swipemenulistview/SwipeMenuListView;)V
    .locals 2

    .prologue
    .line 534
    new-instance v0, Lcom/fiio/music/fragment/bh;

    invoke-direct {v0, p0}, Lcom/fiio/music/fragment/bh;-><init>(Lcom/fiio/music/fragment/TabAFm;)V

    .line 559
    new-instance v1, Lcom/fiio/music/fragment/as;

    invoke-direct {v1, p0}, Lcom/fiio/music/fragment/as;-><init>(Lcom/fiio/music/fragment/TabAFm;)V

    .line 601
    invoke-virtual {p1, v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setMenuCreator(Lcom/fiio/music/swipemenulistview/c;)V

    .line 602
    invoke-virtual {p1, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setMenuLeftCreator(Lcom/fiio/music/swipemenulistview/c;)V

    .line 604
    new-instance v0, Lcom/fiio/music/fragment/at;

    invoke-direct {v0, p0}, Lcom/fiio/music/fragment/at;-><init>(Lcom/fiio/music/fragment/TabAFm;)V

    invoke-virtual {p1, v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setOnMenuItemClickListener(Lcom/fiio/music/swipemenulistview/g;)V

    .line 673
    new-instance v0, Lcom/fiio/music/fragment/au;

    invoke-direct {v0, p0}, Lcom/fiio/music/fragment/au;-><init>(Lcom/fiio/music/fragment/TabAFm;)V

    invoke-virtual {p1, v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setOnSwipeListener(Lcom/fiio/music/swipemenulistview/i;)V

    .line 685
    new-instance v0, Lcom/fiio/music/fragment/av;

    invoke-direct {v0, p0}, Lcom/fiio/music/fragment/av;-><init>(Lcom/fiio/music/fragment/TabAFm;)V

    invoke-virtual {p1, v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setOnMenuStateChangeListener(Lcom/fiio/music/swipemenulistview/h;)V

    .line 693
    return-void
.end method


# virtual methods
.method public getPositionByFirstChar(Ljava/lang/String;)I
    .locals 8

    .prologue
    .line 986
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 990
    invoke-static {p1}, Lcom/fiio/music/util/cn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 992
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 993
    iget-object v4, p0, Lcom/fiio/music/fragment/TabAFm;->songDao:Lcom/fiio/music/b/k;

    invoke-virtual {v4, v2, v3}, Lcom/fiio/music/b/k;->a(D)I

    move-result v2

    .line 995
    const-string v3, "sin"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "cost time \uff1a\u3000"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v0, v6, v0

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    return v2
.end method

.method public getSongItemAdapter()Lcom/fiio/music/test/simpleCursorSongAdapter;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/fiio/music/fragment/TabAFm;->cursorSongAdapter:Lcom/fiio/music/test/simpleCursorSongAdapter;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 907
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 909
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 114
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 115
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 119
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 120
    invoke-virtual {p0}, Lcom/fiio/music/fragment/TabAFm;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabAFm;->context:Landroid/content/Context;

    .line 121
    new-instance v0, Lcom/fiio/music/b/k;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabAFm;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/fiio/music/b/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fiio/music/fragment/TabAFm;->songDao:Lcom/fiio/music/b/k;

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/fragment/TabAFm;->IdLists:Ljava/util/ArrayList;

    .line 123
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/fiio/music/fragment/TabAFm;->params:Landroid/view/ViewGroup$LayoutParams;

    .line 124
    iget-object v0, p0, Lcom/fiio/music/fragment/TabAFm;->context:Landroid/content/Context;

    const-string v1, "changestyle"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabAFm;->changestylesp:Landroid/content/SharedPreferences;

    .line 125
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 128
    iget-object v0, p0, Lcom/fiio/music/fragment/TabAFm;->changestylesp:Landroid/content/SharedPreferences;

    const-string v1, "styleChange"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fiio/music/fragment/TabAFm;->UI_IS_CHANGE:Z

    .line 129
    invoke-virtual {p0}, Lcom/fiio/music/fragment/TabAFm;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/a;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/fiio/music/fragment/TabAFm;->STYLE_PARAMTER:I

    .line 131
    const/4 v0, 0x0

    .line 133
    iget v1, p0, Lcom/fiio/music/fragment/TabAFm;->STYLE_PARAMTER:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 134
    const v0, 0x7f04013b

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    .line 143
    :goto_0
    const v0, 0x7f0b0374

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    iput-object v0, p0, Lcom/fiio/music/fragment/TabAFm;->smlv_song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    .line 144
    iget-object v0, p0, Lcom/fiio/music/fragment/TabAFm;->smlv_song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v2

    const/high16 v3, 0x40400000    # 3.0f

    mul-float/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setFriction(F)V

    .line 146
    return-object v1

    .line 135
    :cond_0
    iget v1, p0, Lcom/fiio/music/fragment/TabAFm;->STYLE_PARAMTER:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 136
    const v0, 0x7f04013c

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    .line 137
    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/fiio/music/fragment/TabAFm;->STYLE_PARAMTER:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 138
    const v0, 0x7f04013d

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    .line 139
    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/fiio/music/fragment/TabAFm;->STYLE_PARAMTER:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 140
    const v0, 0x7f04013e

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 945
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 946
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 940
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 941
    return-void
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 950
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 952
    :try_start_0
    const-class v0, Landroid/support/v4/app/Fragment;

    const-string v1, "mChildFragmentManager"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 953
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 954
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 955
    return-void

    :catch_0
    move-exception v0

    .line 956
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 957
    :catch_1
    move-exception v0

    .line 958
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 920
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fiio/music/fragment/TabAFm;->isPause:Z

    .line 921
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 922
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 913
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fiio/music/fragment/TabAFm;->isPause:Z

    .line 914
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 915
    return-void
.end method

.method public onStart()V
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 154
    iput-boolean v6, p0, Lcom/fiio/music/fragment/TabAFm;->isPause:Z

    .line 155
    invoke-virtual {p0}, Lcom/fiio/music/fragment/TabAFm;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/fiio/music/fragment/TabAFm;->afterDel:Z

    if-eqz v0, :cond_3

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/fragment/TabAFm;->cr:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fiio/music/fragment/TabAFm;->cr:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabAFm;->cr:Landroid/database/Cursor;

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/fragment/TabAFm;->context:Landroid/content/Context;

    const-string v1, "positiontop"

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabAFm;->sp:Landroid/content/SharedPreferences;

    .line 160
    iget-object v0, p0, Lcom/fiio/music/fragment/TabAFm;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->getMediaPlayerManager()Lcom/fiio/music/service/h;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabAFm;->mediaPlayerManager:Lcom/fiio/music/service/h;

    .line 163
    new-array v4, v2, [Ljava/lang/String;

    const-string v0, "albumPath"

    aput-object v0, v4, v6

    .line 164
    new-array v5, v2, [I

    const v0, 0x7f0b0270

    aput v0, v5, v6

    .line 165
    iget-object v0, p0, Lcom/fiio/music/fragment/TabAFm;->IdLists:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fiio/music/fragment/TabAFm;->IdLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 166
    iget-object v0, p0, Lcom/fiio/music/fragment/TabAFm;->IdLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 168
    :cond_2
    new-instance v0, Lcom/fiio/music/test/simpleCursorSongAdapter;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabAFm;->context:Landroid/content/Context;

    const v2, 0x7f0b0374

    iget-object v3, p0, Lcom/fiio/music/fragment/TabAFm;->cr:Landroid/database/Cursor;

    .line 169
    iget-object v7, p0, Lcom/fiio/music/fragment/TabAFm;->mediaPlayerManager:Lcom/fiio/music/service/h;

    iget-object v8, p0, Lcom/fiio/music/fragment/TabAFm;->smlv_song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    iget v9, p0, Lcom/fiio/music/fragment/TabAFm;->STYLE_PARAMTER:I

    invoke-direct/range {v0 .. v9}, Lcom/fiio/music/test/simpleCursorSongAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[IILcom/fiio/music/service/h;Lcom/fiio/music/swipemenulistview/SwipeMenuListView;I)V

    .line 168
    iput-object v0, p0, Lcom/fiio/music/fragment/TabAFm;->cursorSongAdapter:Lcom/fiio/music/test/simpleCursorSongAdapter;

    .line 170
    iget-object v0, p0, Lcom/fiio/music/fragment/TabAFm;->smlv_song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabAFm;->cursorSongAdapter:Lcom/fiio/music/test/simpleCursorSongAdapter;

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 171
    iget-object v0, p0, Lcom/fiio/music/fragment/TabAFm;->smlv_song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabAFm;->smlv_song_list_content_listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 172
    iget-object v0, p0, Lcom/fiio/music/fragment/TabAFm;->smlv_song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    invoke-direct {p0, v0}, Lcom/fiio/music/fragment/TabAFm;->initSongSwipeListView(Lcom/fiio/music/swipemenulistview/SwipeMenuListView;)V

    .line 175
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabAFm;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 176
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabAFm;->searchAllRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/fiio/music/fragment/TabAFm;->searchAllThread:Ljava/lang/Thread;

    .line 177
    iget-object v0, p0, Lcom/fiio/music/fragment/TabAFm;->searchAllThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 179
    iput-boolean v6, p0, Lcom/fiio/music/fragment/TabAFm;->afterDel:Z

    .line 181
    :cond_3
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 182
    return-void
.end method

.method public onStop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 927
    iget-object v0, p0, Lcom/fiio/music/fragment/TabAFm;->smlv_song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/fragment/TabAFm;->smlv_song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    invoke-virtual {v0, v3}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 928
    iget-object v0, p0, Lcom/fiio/music/fragment/TabAFm;->smlv_song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    invoke-virtual {v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/fiio/music/fragment/TabAFm;->mPosition:I

    .line 929
    iget-object v0, p0, Lcom/fiio/music/fragment/TabAFm;->smlv_song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    invoke-virtual {v0, v3}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lcom/fiio/music/fragment/TabAFm;->mTop:I

    .line 931
    :cond_0
    invoke-virtual {p0}, Lcom/fiio/music/fragment/TabAFm;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "positiontop"

    invoke-virtual {p0}, Lcom/fiio/music/fragment/TabAFm;->getActivity()Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1, v3}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabAFm;->sp:Landroid/content/SharedPreferences;

    .line 932
    iget-object v0, p0, Lcom/fiio/music/fragment/TabAFm;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "positionA"

    iget v2, p0, Lcom/fiio/music/fragment/TabAFm;->mPosition:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 933
    iget-object v0, p0, Lcom/fiio/music/fragment/TabAFm;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "topA"

    iget v2, p0, Lcom/fiio/music/fragment/TabAFm;->mTop:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 934
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 935
    iget-object v0, p0, Lcom/fiio/music/fragment/TabAFm;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->setProgressBarRun(Ljava/lang/Boolean;)V

    .line 936
    return-void
.end method

.method public orderByA_Z(I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 964
    iget-object v0, p0, Lcom/fiio/music/fragment/TabAFm;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->setProgressBarRun(Ljava/lang/Boolean;)V

    .line 965
    iget-object v0, p0, Lcom/fiio/music/fragment/TabAFm;->tabSortType:Lcom/fiio/music/util/cr;

    const-string v1, "tabASort"

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;Z)V

    .line 966
    iget-object v0, p0, Lcom/fiio/music/fragment/TabAFm;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/fiio/music/fragment/bi;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/fiio/music/fragment/bi;-><init>(Lcom/fiio/music/fragment/TabAFm;B)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 967
    return-void
.end method

.method public orderByName(II)V
    .locals 2

    .prologue
    .line 970
    iget-object v0, p0, Lcom/fiio/music/fragment/TabAFm;->songList:Ljava/util/List;

    invoke-static {v0, p1, p2}, Lcom/fiio/music/util/cn;->e(Ljava/util/List;II)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabAFm;->songList:Ljava/util/List;

    .line 971
    iget-object v0, p0, Lcom/fiio/music/fragment/TabAFm;->songItemAdapter:Lcom/fiio/music/adapter/SongItemAdapter;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabAFm;->songList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/SongItemAdapter;->setData(Ljava/util/List;)V

    .line 972
    return-void
.end method

.method public playCueFile(Ljava/io/File;II)V
    .locals 3

    .prologue
    .line 516
    iget-object v0, p0, Lcom/fiio/music/fragment/TabAFm;->cueSheetManager:Lcom/fiio/music/util/j;

    invoke-static {p1}, Lcom/fiio/music/util/j;->b(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 517
    if-nez v0, :cond_0

    .line 519
    :goto_0
    return-void

    .line 518
    :cond_0
    iget-object v1, p0, Lcom/fiio/music/fragment/TabAFm;->cueSheetManager:Lcom/fiio/music/util/j;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p2, p3, v2}, Lcom/fiio/music/util/j;->a(Ljava/io/File;IILjava/util/List;)V

    goto :goto_0
.end method

.method public setsongitemadapter(Lcom/fiio/music/adapter/SongItemAdapter;)V
    .locals 0

    .prologue
    .line 695
    iput-object p1, p0, Lcom/fiio/music/fragment/TabAFm;->songItemAdapter:Lcom/fiio/music/adapter/SongItemAdapter;

    .line 696
    return-void
.end method

.method public tabAFGetListView()Lcom/fiio/music/swipemenulistview/SwipeMenuListView;
    .locals 1

    .prologue
    .line 709
    iget-object v0, p0, Lcom/fiio/music/fragment/TabAFm;->smlv_song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    return-object v0
.end method
