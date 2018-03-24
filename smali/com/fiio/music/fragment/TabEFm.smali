.class public Lcom/fiio/music/fragment/TabEFm;
.super Landroid/support/v4/app/Fragment;
.source "TabEFm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final CLICK_FORM_BACKKEY:I = 0x9

.field private static final CLICK_FORM_LISTENER:I = 0x8

.field public static final COUNT_GET_FAIL:I = 0x0

.field public static final COUNT_GET_SUC:I = 0x1

.field protected static final ENTER_DIR_FAIL:I = 0x3

.field protected static final ENTER_DIR_SUC:I = 0x2

.field public static final M3UPlay:Ljava/lang/String; = "M3UPATH"

.field public static final M3UPlay_NotThisMode:Ljava/lang/String; = "NotTheM3UMode"

.field private static RESULT_LOAD_IMAGE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "xyz-TabEFm"

.field protected static final UPDATE_UI_TO_START_PROCESS:I = 0x4

.field private static final cueSuffixs:Ljava/lang/String;

.field private static final isoSuffixs:Ljava/lang/String;

.field private static final m3uSuffixs:Ljava/lang/String;

.field private static final suffixs:Ljava/lang/String;


# instance fields
.field private STYLE_PARAMTER:I

.field private UI_IS_CHANGE:Z

.field private activity:Landroid/app/Activity;

.field private changestylesp:Landroid/content/SharedPreferences;

.field private context:Landroid/content/Context;

.field private cueSheetManager:Lcom/fiio/music/util/j;

.field private curPathList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private curPathString:Ljava/lang/String;

.field currentFileItem:Lcom/fiio/music/entity/FileItem;

.field public data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;"
        }
    .end annotation
.end field

.field private fileItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/FileItem;",
            ">;"
        }
    .end annotation
.end field

.field private filter:Landroid/content/IntentFilter;

.field firstFolderPosition:I

.field private firstPosition:I

.field firstPositions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field flag:I

.field folder:Z

.field folderjumpPreferences:Landroid/content/SharedPreferences;

.field private foldersongUtils:Lcom/fiio/music/util/an;

.field private freeSize:J

.field getCountRunnable:Ljava/lang/Runnable;

.field private gson:Lcom/a/a/aq;

.field private isEmbeddedCue:Z

.field public isFirstList:Z

.field isfirstPath:Z

.field isoverThread:Z

.field private listAdapter:Lcom/fiio/music/adapter/FileListAdapter;

.field listMap:Ljava/util/HashMap;
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

.field private list_change_content_listener:Landroid/widget/AdapterView$OnItemClickListener;

.field listenerOrBack:I

.field private longClickItemPoistion:I

.field private m3uManager:Lcom/fiio/music/util/bc;

.field private mEndingFlag:Z

.field public mEnterDir:Ljava/lang/String;

.field private mExecutorServiceEFm:Ljava/util/concurrent/ExecutorService;

.field public mHandler:Landroid/os/Handler;

.field private mMusicManager:Lcom/fiio/music/util/bh;

.field final mSemaphore:Ljava/util/concurrent/Semaphore;

.field private mSongItemAdapter:Lcom/fiio/music/adapter/SongItemAdapter;

.field private mediaPlayerManager:Lcom/fiio/music/service/h;

.field private memorySharedPreferences:Landroid/content/SharedPreferences;

.field private pageNumber:I

.field private receiver:Lcom/fiio/music/fragment/TabEFm$SDCardStateReceiver;

.field sPreferences:Landroid/content/SharedPreferences;

.field private sdf:Lorg/justcodecs/dsd/SacdDataFormat;

.field private smlv_song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

.field public songParent:Ljava/lang/String;

.field private sort:I

.field private sortType:Lcom/fiio/music/util/cr;

.field private sp:Landroid/content/SharedPreferences;

.field private tabsort:I

.field titleText:Ljava/lang/String;

.field private toast:Landroid/widget/Toast;

.field private top:I

.field private topFileItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/FileItem;",
            ">;"
        }
    .end annotation
.end field

.field topForFolderPosition:I

.field topPositions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private totalSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 126
    invoke-static {}, Lcom/fiio/music/util/bl;->d()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fiio/music/fragment/TabEFm;->suffixs:Ljava/lang/String;

    .line 127
    invoke-static {}, Lcom/fiio/music/util/bl;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fiio/music/fragment/TabEFm;->cueSuffixs:Ljava/lang/String;

    .line 128
    invoke-static {}, Lcom/fiio/music/util/bl;->c()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fiio/music/fragment/TabEFm;->m3uSuffixs:Ljava/lang/String;

    .line 129
    invoke-static {}, Lcom/fiio/music/util/bl;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fiio/music/fragment/TabEFm;->isoSuffixs:Ljava/lang/String;

    .line 154
    const/4 v0, 0x1

    sput v0, Lcom/fiio/music/fragment/TabEFm;->RESULT_LOAD_IMAGE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 166
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 90
    iput-object v3, p0, Lcom/fiio/music/fragment/TabEFm;->data:Ljava/util/List;

    .line 94
    iput v1, p0, Lcom/fiio/music/fragment/TabEFm;->pageNumber:I

    .line 95
    iput-object v3, p0, Lcom/fiio/music/fragment/TabEFm;->mExecutorServiceEFm:Ljava/util/concurrent/ExecutorService;

    .line 96
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->mSemaphore:Ljava/util/concurrent/Semaphore;

    .line 109
    iput-object v3, p0, Lcom/fiio/music/fragment/TabEFm;->fileItemList:Ljava/util/List;

    .line 110
    iput-object v3, p0, Lcom/fiio/music/fragment/TabEFm;->topFileItemList:Ljava/util/List;

    .line 115
    iput-boolean v1, p0, Lcom/fiio/music/fragment/TabEFm;->mEndingFlag:Z

    .line 133
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->listMap:Ljava/util/HashMap;

    .line 156
    iput v1, p0, Lcom/fiio/music/fragment/TabEFm;->longClickItemPoistion:I

    .line 161
    const/4 v0, 0x3

    iput v0, p0, Lcom/fiio/music/fragment/TabEFm;->STYLE_PARAMTER:I

    .line 263
    iput-boolean v2, p0, Lcom/fiio/music/fragment/TabEFm;->isFirstList:Z

    .line 264
    new-instance v0, Lcom/fiio/music/fragment/ch;

    invoke-direct {v0, p0}, Lcom/fiio/music/fragment/ch;-><init>(Lcom/fiio/music/fragment/TabEFm;)V

    iput-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->mHandler:Landroid/os/Handler;

    .line 393
    new-instance v0, Lcom/fiio/music/fragment/ci;

    invoke-direct {v0, p0}, Lcom/fiio/music/fragment/ci;-><init>(Lcom/fiio/music/fragment/TabEFm;)V

    iput-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->getCountRunnable:Ljava/lang/Runnable;

    .line 828
    iput-boolean v2, p0, Lcom/fiio/music/fragment/TabEFm;->isfirstPath:Z

    .line 829
    iput-boolean v2, p0, Lcom/fiio/music/fragment/TabEFm;->isoverThread:Z

    .line 830
    new-instance v0, Lcom/fiio/music/fragment/cj;

    invoke-direct {v0, p0}, Lcom/fiio/music/fragment/cj;-><init>(Lcom/fiio/music/fragment/TabEFm;)V

    iput-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->list_change_content_listener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 975
    iput-boolean v1, p0, Lcom/fiio/music/fragment/TabEFm;->isEmbeddedCue:Z

    .line 166
    return-void
.end method

.method static synthetic access$0(Lcom/fiio/music/fragment/TabEFm;)Lcom/fiio/music/adapter/FileListAdapter;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->listAdapter:Lcom/fiio/music/adapter/FileListAdapter;

    return-object v0
.end method

.method static synthetic access$1(Lcom/fiio/music/fragment/TabEFm;)Lcom/fiio/music/util/cr;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->sortType:Lcom/fiio/music/util/cr;

    return-object v0
.end method

.method static synthetic access$10(Lcom/fiio/music/fragment/TabEFm;I)V
    .locals 0

    .prologue
    .line 145
    iput p1, p0, Lcom/fiio/music/fragment/TabEFm;->firstPosition:I

    return-void
.end method

.method static synthetic access$11(Lcom/fiio/music/fragment/TabEFm;I)V
    .locals 0

    .prologue
    .line 146
    iput p1, p0, Lcom/fiio/music/fragment/TabEFm;->top:I

    return-void
.end method

.method static synthetic access$12(Lcom/fiio/music/fragment/TabEFm;)Ljava/util/List;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->topFileItemList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$13(Lcom/fiio/music/fragment/TabEFm;I)V
    .locals 0

    .prologue
    .line 156
    iput p1, p0, Lcom/fiio/music/fragment/TabEFm;->longClickItemPoistion:I

    return-void
.end method

.method static synthetic access$14(Lcom/fiio/music/fragment/TabEFm;)Lcom/fiio/music/util/an;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->foldersongUtils:Lcom/fiio/music/util/an;

    return-object v0
.end method

.method static synthetic access$15(Lcom/fiio/music/fragment/TabEFm;J)V
    .locals 1

    .prologue
    .line 119
    iput-wide p1, p0, Lcom/fiio/music/fragment/TabEFm;->totalSize:J

    return-void
.end method

.method static synthetic access$16(Lcom/fiio/music/fragment/TabEFm;J)V
    .locals 1

    .prologue
    .line 118
    iput-wide p1, p0, Lcom/fiio/music/fragment/TabEFm;->freeSize:J

    return-void
.end method

.method static synthetic access$17(Lcom/fiio/music/fragment/TabEFm;)Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->mExecutorServiceEFm:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$18(Lcom/fiio/music/fragment/TabEFm;)Lcom/fiio/music/service/h;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->mediaPlayerManager:Lcom/fiio/music/service/h;

    return-object v0
.end method

.method static synthetic access$19(Lcom/fiio/music/fragment/TabEFm;I)V
    .locals 0

    .prologue
    .line 94
    iput p1, p0, Lcom/fiio/music/fragment/TabEFm;->pageNumber:I

    return-void
.end method

.method static synthetic access$2(Lcom/fiio/music/fragment/TabEFm;I)V
    .locals 0

    .prologue
    .line 147
    iput p1, p0, Lcom/fiio/music/fragment/TabEFm;->sort:I

    return-void
.end method

.method static synthetic access$20()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lcom/fiio/music/fragment/TabEFm;->m3uSuffixs:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$21(Lcom/fiio/music/fragment/TabEFm;Lcom/fiio/music/util/bc;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/fiio/music/fragment/TabEFm;->m3uManager:Lcom/fiio/music/util/bc;

    return-void
.end method

.method static synthetic access$22(Lcom/fiio/music/fragment/TabEFm;)Lcom/fiio/music/util/bc;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->m3uManager:Lcom/fiio/music/util/bc;

    return-object v0
.end method

.method static synthetic access$23()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    sget-object v0, Lcom/fiio/music/fragment/TabEFm;->isoSuffixs:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$24(Lcom/fiio/music/fragment/TabEFm;Lorg/justcodecs/dsd/SacdDataFormat;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/fiio/music/fragment/TabEFm;->sdf:Lorg/justcodecs/dsd/SacdDataFormat;

    return-void
.end method

.method static synthetic access$25(Lcom/fiio/music/fragment/TabEFm;)Lorg/justcodecs/dsd/SacdDataFormat;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->sdf:Lorg/justcodecs/dsd/SacdDataFormat;

    return-object v0
.end method

.method static synthetic access$26(Lcom/fiio/music/fragment/TabEFm;)Landroid/widget/Toast;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->toast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$27(Lcom/fiio/music/fragment/TabEFm;Landroid/widget/Toast;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/fiio/music/fragment/TabEFm;->toast:Landroid/widget/Toast;

    return-void
.end method

.method static synthetic access$28(Lcom/fiio/music/fragment/TabEFm;Lcom/fiio/music/util/j;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/fiio/music/fragment/TabEFm;->cueSheetManager:Lcom/fiio/music/util/j;

    return-void
.end method

.method static synthetic access$29(Lcom/fiio/music/fragment/TabEFm;)Lcom/fiio/music/util/j;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->cueSheetManager:Lcom/fiio/music/util/j;

    return-object v0
.end method

.method static synthetic access$3(Lcom/fiio/music/fragment/TabEFm;I)V
    .locals 0

    .prologue
    .line 148
    iput p1, p0, Lcom/fiio/music/fragment/TabEFm;->tabsort:I

    return-void
.end method

.method static synthetic access$30(Lcom/fiio/music/fragment/TabEFm;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->memorySharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$31(Lcom/fiio/music/fragment/TabEFm;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/fiio/music/fragment/TabEFm;->topFileItemList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$4(Lcom/fiio/music/fragment/TabEFm;)I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/fiio/music/fragment/TabEFm;->tabsort:I

    return v0
.end method

.method static synthetic access$5(Lcom/fiio/music/fragment/TabEFm;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6(Lcom/fiio/music/fragment/TabEFm;)Ljava/util/List;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->fileItemList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$7(Lcom/fiio/music/fragment/TabEFm;)I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/fiio/music/fragment/TabEFm;->sort:I

    return v0
.end method

.method static synthetic access$8(Lcom/fiio/music/fragment/TabEFm;)I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/fiio/music/fragment/TabEFm;->pageNumber:I

    return v0
.end method

.method static synthetic access$9(Lcom/fiio/music/fragment/TabEFm;)Lcom/fiio/music/swipemenulistview/SwipeMenuListView;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->smlv_song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    return-object v0
.end method

.method private initItemClick()V
    .locals 0

    .prologue
    .line 262
    return-void
.end method


# virtual methods
.method public ChangePageForFirst()V
    .locals 3

    .prologue
    .line 475
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fiio/music/fragment/TabEFm;->setTabFmPageNumber(I)V

    .line 477
    invoke-virtual {p0}, Lcom/fiio/music/fragment/TabEFm;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/ch;->a(Landroid/content/Context;)Ljava/util/List;

    .line 479
    invoke-static {}, Lcom/fiio/music/util/l;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/fiio/music/util/l;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->topFileItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    .line 482
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->topFileItemList:Ljava/util/List;

    invoke-static {v0}, Lcom/fiio/music/util/cn;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->topFileItemList:Ljava/util/List;

    .line 488
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->listAdapter:Lcom/fiio/music/adapter/FileListAdapter;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabEFm;->topFileItemList:Ljava/util/List;

    iget v2, p0, Lcom/fiio/music/fragment/TabEFm;->pageNumber:I

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/adapter/FileListAdapter;->setData(Ljava/util/List;I)V

    .line 489
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->fileItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 490
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->fileItemList:Ljava/util/List;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabEFm;->topFileItemList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 492
    return-void
.end method

.method public afterDel(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/FileItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1468
    .line 1469
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1472
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->listAdapter:Lcom/fiio/music/adapter/FileListAdapter;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabEFm;->fileItemList:Ljava/util/List;

    iget v2, p0, Lcom/fiio/music/fragment/TabEFm;->pageNumber:I

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/adapter/FileListAdapter;->setData(Ljava/util/List;I)V

    .line 1474
    return-void

    .line 1469
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/FileItem;

    .line 1470
    iget-object v2, p0, Lcom/fiio/music/fragment/TabEFm;->fileItemList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public backKey()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1225
    const/16 v0, 0x9

    iput v0, p0, Lcom/fiio/music/fragment/TabEFm;->listenerOrBack:I

    .line 1226
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->listAdapter:Lcom/fiio/music/adapter/FileListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->listAdapter:Lcom/fiio/music/adapter/FileListAdapter;

    invoke-virtual {v0}, Lcom/fiio/music/adapter/FileListAdapter;->getShowCheckBoxState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1227
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->listAdapter:Lcom/fiio/music/adapter/FileListAdapter;

    invoke-virtual {v0}, Lcom/fiio/music/adapter/FileListAdapter;->cancelSelect()V

    move v0, v1

    .line 1264
    :goto_0
    return v0

    .line 1230
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->fileItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1231
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->curPathString:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 1232
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1233
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->topFileItemList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->topFileItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1234
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->topFileItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1239
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->curPathString:Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1240
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->smlv_song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    iget-object v3, p0, Lcom/fiio/music/fragment/TabEFm;->listAdapter:Lcom/fiio/music/adapter/FileListAdapter;

    invoke-virtual {v0, v3}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1241
    iput-boolean v2, p0, Lcom/fiio/music/fragment/TabEFm;->mEndingFlag:Z

    .line 1242
    invoke-virtual {p0, v1}, Lcom/fiio/music/fragment/TabEFm;->setTabFmPageNumber(I)V

    .line 1244
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->fileItemList:Ljava/util/List;

    iget-object v3, p0, Lcom/fiio/music/fragment/TabEFm;->topFileItemList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1245
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->listAdapter:Lcom/fiio/music/adapter/FileListAdapter;

    iget-object v3, p0, Lcom/fiio/music/fragment/TabEFm;->topFileItemList:Ljava/util/List;

    iget v4, p0, Lcom/fiio/music/fragment/TabEFm;->pageNumber:I

    invoke-virtual {v0, v3, v4}, Lcom/fiio/music/adapter/FileListAdapter;->setData(Ljava/util/List;I)V

    .line 1246
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->showOrHideHeadBar()V

    .line 1248
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1261
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->curPathString:Ljava/lang/String;

    iput-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->songParent:Ljava/lang/String;

    move v0, v1

    .line 1262
    goto :goto_0

    .line 1234
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/FileItem;

    .line 1235
    invoke-virtual {v0}, Lcom/fiio/music/entity/FileItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1251
    :cond_4
    iget-boolean v0, p0, Lcom/fiio/music/fragment/TabEFm;->mEndingFlag:Z

    if-nez v0, :cond_2

    .line 1252
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/fiio/music/activity/LocalMusicActivity;->setProgressBarRun(Ljava/lang/Boolean;)V

    .line 1253
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/fiio/music/fragment/TabEFm;->curPathString:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1254
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1257
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->mEnterDir:Ljava/lang/String;

    .line 1258
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->mExecutorServiceEFm:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/fiio/music/fragment/cl;

    invoke-direct {v2, p0, v1}, Lcom/fiio/music/fragment/cl;-><init>(Lcom/fiio/music/fragment/TabEFm;B)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_5
    move v0, v2

    .line 1264
    goto/16 :goto_0
.end method

.method public folderPlaySong()I
    .locals 4

    .prologue
    .line 1130
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->k()Ljava/lang/String;

    move-result-object v1

    .line 1131
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->getBottomBarTitle()Ljava/lang/String;

    move-result-object v0

    .line 1132
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 1133
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->fileItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1140
    :cond_1
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 1133
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/FileItem;

    .line 1134
    invoke-virtual {v0}, Lcom/fiio/music/entity/FileItem;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1135
    iget-object v1, p0, Lcom/fiio/music/fragment/TabEFm;->fileItemList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public getArtist(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1434
    new-instance v0, Lcom/fiio/music/util/bh;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabEFm;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/fiio/music/util/bh;-><init>(Landroid/content/Context;)V

    .line 1435
    invoke-virtual {v0, p1}, Lcom/fiio/music/util/bh;->a(Ljava/lang/String;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    .line 1436
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getArtist()Lcom/fiio/music/entity/Artist;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/entity/Artist;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1437
    return-object v0
.end method

.method public getCurPathString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1221
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->curPathString:Ljava/lang/String;

    return-object v0
.end method

.method public getDateSize()I
    .locals 1

    .prologue
    .line 796
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->fileItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFileDir(Ljava/lang/String;)V
    .locals 13

    .prologue
    const/4 v0, 0x0

    .line 1047
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1055
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1056
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1061
    :try_start_0
    iput-object p1, p0, Lcom/fiio/music/fragment/TabEFm;->curPathString:Ljava/lang/String;

    .line 1062
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1063
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v11

    .line 1065
    if-eqz v11, :cond_0

    .line 1066
    array-length v12, v11

    move v7, v0

    .line 1068
    :goto_0
    if-lt v7, v12, :cond_1

    .line 1107
    iput-object v10, p0, Lcom/fiio/music/fragment/TabEFm;->curPathList:Ljava/util/List;

    .line 1109
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fiio/music/fragment/TabEFm;->mEndingFlag:Z

    .line 1111
    new-instance v0, Lcom/fiio/music/util/cp;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabEFm;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/fiio/music/fragment/TabEFm;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-direct {v0, v1, v2}, Lcom/fiio/music/util/cp;-><init>(Landroid/content/Context;Lcom/fiio/music/service/h;)V

    .line 1112
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1113
    iget-object v1, p0, Lcom/fiio/music/fragment/TabEFm;->fileItemList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/cp;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1114
    iget-object v1, p0, Lcom/fiio/music/fragment/TabEFm;->fileItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1116
    iget-object v1, p0, Lcom/fiio/music/fragment/TabEFm;->fileItemList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1117
    const-string v0, "sin"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fileItemList size : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fiio/music/fragment/TabEFm;->fileItemList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    :goto_1
    return-void

    .line 1069
    :cond_1
    aget-object v2, v11, v7

    .line 1070
    invoke-virtual {v2}, Ljava/io/File;->isHidden()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1071
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/fiio/music/fragment/TabEFm;->suffixs:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fiio/music/util/h;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1072
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1073
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1075
    new-instance v0, Lcom/fiio/music/entity/FileItem;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/fiio/music/entity/FileItem;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZI)V

    .line 1076
    iget-object v1, p0, Lcom/fiio/music/fragment/TabEFm;->fileItemList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1068
    :cond_2
    :goto_2
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto/16 :goto_0

    .line 1078
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/fiio/music/fragment/TabEFm;->cueSuffixs:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fiio/music/util/h;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1079
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1080
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1081
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1082
    new-instance v0, Lcom/fiio/music/entity/FileItem;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/fiio/music/entity/FileItem;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZI)V

    .line 1083
    iget-object v1, p0, Lcom/fiio/music/fragment/TabEFm;->fileItemList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1120
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 1086
    :cond_4
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/fiio/music/fragment/TabEFm;->m3uSuffixs:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fiio/music/util/h;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1087
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1088
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1089
    new-instance v0, Lcom/fiio/music/entity/FileItem;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/fiio/music/entity/FileItem;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZI)V

    .line 1090
    iget-object v1, p0, Lcom/fiio/music/fragment/TabEFm;->fileItemList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1092
    :cond_5
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/fiio/music/fragment/TabEFm;->isoSuffixs:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fiio/music/util/h;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1093
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1094
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1095
    new-instance v0, Lcom/fiio/music/entity/FileItem;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/fiio/music/entity/FileItem;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZI)V

    .line 1096
    iget-object v1, p0, Lcom/fiio/music/fragment/TabEFm;->fileItemList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1099
    :cond_6
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1100
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1101
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1102
    new-instance v0, Lcom/fiio/music/entity/FileItem;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/fiio/music/entity/FileItem;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZI)V

    .line 1103
    iget-object v1, p0, Lcom/fiio/music/fragment/TabEFm;->fileItemList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method

.method public getFileItemInPosition(I)Lcom/fiio/music/entity/FileItem;
    .locals 1

    .prologue
    .line 1395
    iget v0, p0, Lcom/fiio/music/fragment/TabEFm;->pageNumber:I

    if-nez v0, :cond_0

    .line 1396
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->topFileItemList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->topFileItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1397
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->topFileItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/FileItem;

    .line 1404
    :goto_0
    return-object v0

    .line 1400
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->fileItemList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->fileItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1401
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->fileItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/FileItem;

    goto :goto_0

    .line 1404
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFileListAdapter()Lcom/fiio/music/adapter/FileListAdapter;
    .locals 1

    .prologue
    .line 1441
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->listAdapter:Lcom/fiio/music/adapter/FileListAdapter;

    return-object v0
.end method

.method public getFilePath(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1382
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->fileItemList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 1383
    invoke-virtual {p0}, Lcom/fiio/music/fragment/TabEFm;->getTabFmPageNumber()I

    move-result v0

    if-nez v0, :cond_0

    .line 1384
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->fileItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/FileItem;

    invoke-virtual {v0}, Lcom/fiio/music/entity/FileItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    .line 1389
    :goto_0
    return-object v0

    .line 1386
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->fileItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/FileItem;

    invoke-virtual {v0}, Lcom/fiio/music/entity/FileItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1389
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFreeSize()J
    .locals 2

    .prologue
    .line 788
    iget-wide v0, p0, Lcom/fiio/music/fragment/TabEFm;->freeSize:J

    return-wide v0
.end method

.method public getName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1427
    new-instance v0, Lcom/fiio/music/util/bh;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabEFm;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/fiio/music/util/bh;-><init>(Landroid/content/Context;)V

    .line 1428
    invoke-virtual {v0, p1}, Lcom/fiio/music/util/bh;->a(Ljava/lang/String;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    .line 1429
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1430
    return-object v0
.end method

.method public getParent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 808
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->songParent:Ljava/lang/String;

    return-object v0
.end method

.method public getPositionByFirstChar(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1411
    .line 1412
    iget-object v1, p0, Lcom/fiio/music/fragment/TabEFm;->fileItemList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fiio/music/fragment/TabEFm;->fileItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    move v1, v0

    move v2, v0

    .line 1413
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->fileItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    .line 1422
    :cond_0
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 1414
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->fileItemList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/FileItem;

    invoke-virtual {v0}, Lcom/fiio/music/entity/FileItem;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 1415
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1416
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1418
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 1413
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public getPrimaryStoragePath()Ljava/lang/String;
    .locals 6

    .prologue
    .line 751
    :try_start_0
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->context:Landroid/content/Context;

    const-string v1, "storage"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 752
    const-class v1, Landroid/os/storage/StorageManager;

    const-string v2, "getVolumePaths"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 753
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-class v4, Landroid/os/storage/StorageManager;

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 755
    const/4 v1, 0x0

    aget-object v0, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 759
    :goto_0
    return-object v0

    .line 756
    :catch_0
    move-exception v0

    .line 757
    const-string v1, "xyz-TabEFm"

    const-string v2, "getPrimaryStoragePath() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 759
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSecondaryStoragePath()Ljava/lang/String;
    .locals 6

    .prologue
    .line 764
    :try_start_0
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->context:Landroid/content/Context;

    const-string v1, "storage"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 765
    const-class v1, Landroid/os/storage/StorageManager;

    const-string v2, "getVolumePaths"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 766
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-class v4, Landroid/os/storage/StorageManager;

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 768
    const/4 v1, 0x1

    aget-object v0, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 772
    :goto_0
    return-object v0

    .line 769
    :catch_0
    move-exception v0

    .line 770
    const-string v1, "xyz-TabEFm"

    const-string v2, "getSecondaryStoragePath() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 772
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSong(Ljava/lang/String;)Lcom/fiio/music/entity/Song;
    .locals 2

    .prologue
    .line 1369
    new-instance v0, Lcom/fiio/music/util/bh;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabEFm;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/fiio/music/util/bh;-><init>(Landroid/content/Context;)V

    .line 1370
    invoke-virtual {v0, p1}, Lcom/fiio/music/util/bh;->a(Ljava/lang/String;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    .line 1371
    return-object v0
.end method

.method public getSongItemAdapter()Lcom/fiio/music/adapter/SongItemAdapter;
    .locals 1

    .prologue
    .line 1218
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->mSongItemAdapter:Lcom/fiio/music/adapter/SongItemAdapter;

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
    .line 802
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->data:Ljava/util/List;

    return-object v0
.end method

.method public getSongPath(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1375
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->curPathList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1376
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->curPathList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1378
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStorageState(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 777
    :try_start_0
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->context:Landroid/content/Context;

    const-string v1, "storage"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 778
    const-class v1, Landroid/os/storage/StorageManager;

    const-string v2, "getVolumeState"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 779
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 784
    :goto_0
    return-object v0

    .line 781
    :catch_0
    move-exception v0

    .line 782
    const-string v1, "xyz-TabEFm"

    const-string v2, "getStorageState() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 784
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTabEFmpath()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 663
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 664
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->fileItemList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->fileItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 665
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->fileItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 669
    :cond_0
    return-object v1

    .line 665
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/FileItem;

    .line 666
    invoke-virtual {v0}, Lcom/fiio/music/entity/FileItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getTabFmPageNumber()I
    .locals 1

    .prologue
    .line 814
    iget v0, p0, Lcom/fiio/music/fragment/TabEFm;->pageNumber:I

    return v0
.end method

.method public getTitleString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 799
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->titleText:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalSize()J
    .locals 2

    .prologue
    .line 791
    iget-wide v0, p0, Lcom/fiio/music/fragment/TabEFm;->totalSize:J

    return-wide v0
.end method

.method public getsongid()I
    .locals 2

    .prologue
    .line 805
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->data:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getId_()I

    move-result v0

    return v0
.end method

.method public isMountSD(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 735
    invoke-virtual {p0, p1}, Lcom/fiio/music/fragment/TabEFm;->getStorageState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 736
    const-string v1, "xyz-TabEFm"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "status of TF card="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    if-eqz v0, :cond_0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 738
    const/4 v0, 0x1

    .line 740
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public multiAfterDel(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/FileItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1477
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1480
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1488
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1489
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1495
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->listAdapter:Lcom/fiio/music/adapter/FileListAdapter;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabEFm;->fileItemList:Ljava/util/List;

    iget v2, p0, Lcom/fiio/music/fragment/TabEFm;->pageNumber:I

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/adapter/FileListAdapter;->setData(Ljava/util/List;I)V

    .line 1497
    return-void

    .line 1480
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/fiio/music/entity/FileItem;

    .line 1481
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->fileItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/FileItem;

    .line 1482
    invoke-virtual {v1}, Lcom/fiio/music/entity/FileItem;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/fiio/music/entity/FileItem;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v1}, Lcom/fiio/music/entity/FileItem;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/fiio/music/entity/FileItem;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1483
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1489
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/FileItem;

    .line 1490
    iget-object v2, p0, Lcom/fiio/music/fragment/TabEFm;->fileItemList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1146
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 1147
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 174
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 176
    iput-object p1, p0, Lcom/fiio/music/fragment/TabEFm;->activity:Landroid/app/Activity;

    .line 177
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    .prologue
    const/4 v6, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1271
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1273
    const v1, 0x7f0b00d4

    if-ne v0, v1, :cond_0

    .line 1275
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->foldersongUtils:Lcom/fiio/music/util/an;

    iget-boolean v1, p0, Lcom/fiio/music/fragment/TabEFm;->folder:Z

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/an;->a(Z)V

    .line 1277
    iget-object v1, p0, Lcom/fiio/music/fragment/TabEFm;->fileItemList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/FileItem;

    .line 1278
    invoke-virtual {v0}, Lcom/fiio/music/entity/FileItem;->getFilePath()Ljava/lang/String;

    move-result-object v1

    .line 1279
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1280
    invoke-virtual {v0}, Lcom/fiio/music/entity/FileItem;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_8

    .line 1282
    invoke-virtual {v0}, Lcom/fiio/music/entity/FileItem;->isCue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1283
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/fiio/music/entity/FileItem;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/fiio/music/entity/FileItem;->getTrack()I

    move-result v0

    invoke-virtual {p0, v1, v0, v6}, Lcom/fiio/music/fragment/TabEFm;->playCueFile(Ljava/io/File;II)V

    move v0, v2

    .line 1315
    :goto_0
    if-nez v0, :cond_0

    .line 1316
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->memorySharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1317
    const-string v1, "M3UPATH"

    const-string v2, "NotTheM3UMode"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1318
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1353
    :cond_0
    :goto_1
    return-void

    .line 1285
    :cond_1
    sget-object v1, Lcom/fiio/music/fragment/TabEFm;->m3uSuffixs:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/fiio/music/entity/FileItem;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/fiio/music/util/h;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1287
    new-instance v1, Lcom/fiio/music/util/bc;

    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Lcom/fiio/music/entity/FileItem;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/fiio/music/fragment/TabEFm;->context:Landroid/content/Context;

    invoke-direct {v1, v2, v4}, Lcom/fiio/music/util/bc;-><init>(Ljava/io/File;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/fiio/music/fragment/TabEFm;->m3uManager:Lcom/fiio/music/util/bc;

    .line 1288
    iget-object v1, p0, Lcom/fiio/music/fragment/TabEFm;->context:Landroid/content/Context;

    check-cast v1, Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v0}, Lcom/fiio/music/entity/FileItem;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fiio/music/util/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1289
    iget-object v4, p0, Lcom/fiio/music/fragment/TabEFm;->m3uManager:Lcom/fiio/music/util/bc;

    invoke-virtual {v4}, Lcom/fiio/music/util/bc;->b()[Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    invoke-virtual {v0}, Lcom/fiio/music/entity/FileItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 1288
    invoke-virtual {v1, v2, v4, v5, v0}, Lcom/fiio/music/activity/LocalMusicActivity;->creatCueOrM3uListDialog(Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;I)V

    move v0, v3

    .line 1290
    goto :goto_0

    :cond_2
    sget-object v1, Lcom/fiio/music/fragment/TabEFm;->isoSuffixs:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/fiio/music/entity/FileItem;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/fiio/music/util/h;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1291
    new-instance v1, Lorg/justcodecs/dsd/SacdDataFormat;

    invoke-virtual {v0}, Lcom/fiio/music/entity/FileItem;->getFilePath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/fiio/music/fragment/TabEFm;->mediaPlayerManager:Lcom/fiio/music/service/h;

    iget-object v5, p0, Lcom/fiio/music/fragment/TabEFm;->context:Landroid/content/Context;

    invoke-direct {v1, v3, v4, v5}, Lorg/justcodecs/dsd/SacdDataFormat;-><init>(Ljava/lang/String;Lcom/fiio/music/service/h;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/fiio/music/fragment/TabEFm;->sdf:Lorg/justcodecs/dsd/SacdDataFormat;

    .line 1292
    iget-object v1, p0, Lcom/fiio/music/fragment/TabEFm;->sdf:Lorg/justcodecs/dsd/SacdDataFormat;

    invoke-virtual {v1}, Lorg/justcodecs/dsd/SacdDataFormat;->isLoad()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1293
    iget-object v1, p0, Lcom/fiio/music/fragment/TabEFm;->sdf:Lorg/justcodecs/dsd/SacdDataFormat;

    invoke-virtual {v1}, Lorg/justcodecs/dsd/SacdDataFormat;->isDst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1294
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->toast:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabEFm;->context:Landroid/content/Context;

    const v3, 0x7f0c0216

    invoke-virtual {p0, v3}, Lcom/fiio/music/fragment/TabEFm;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->toast:Landroid/widget/Toast;

    move v0, v2

    .line 1295
    goto/16 :goto_0

    .line 1296
    :cond_3
    iget-object v1, p0, Lcom/fiio/music/fragment/TabEFm;->context:Landroid/content/Context;

    check-cast v1, Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v3, p0, Lcom/fiio/music/fragment/TabEFm;->sdf:Lorg/justcodecs/dsd/SacdDataFormat;

    invoke-virtual {v3}, Lorg/justcodecs/dsd/SacdDataFormat;->getAlbumTitle()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/fiio/music/fragment/TabEFm;->sdf:Lorg/justcodecs/dsd/SacdDataFormat;

    invoke-virtual {v4}, Lorg/justcodecs/dsd/SacdDataFormat;->getSongNameArray()[Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    invoke-virtual {v0}, Lcom/fiio/music/entity/FileItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x3

    invoke-virtual {v1, v3, v4, v5, v0}, Lcom/fiio/music/activity/LocalMusicActivity;->creatCueOrM3uListDialog(Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;I)V

    move v0, v2

    .line 1299
    goto/16 :goto_0

    .line 1300
    :cond_4
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/fiio/music/entity/FileItem;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/fiio/music/fragment/TabEFm;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/fiio/music/util/n;->a(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1301
    new-instance v1, Lcom/fiio/music/util/j;

    iget-object v4, p0, Lcom/fiio/music/fragment/TabEFm;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/fiio/music/fragment/TabEFm;->mediaPlayerManager:Lcom/fiio/music/service/h;

    new-instance v6, Ljava/io/File;

    invoke-virtual {v0}, Lcom/fiio/music/entity/FileItem;->getFilePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4, v5, v6}, Lcom/fiio/music/util/j;-><init>(Landroid/content/Context;Lcom/fiio/music/service/h;Ljava/io/File;)V

    iput-object v1, p0, Lcom/fiio/music/fragment/TabEFm;->cueSheetManager:Lcom/fiio/music/util/j;

    .line 1302
    iget-object v1, p0, Lcom/fiio/music/fragment/TabEFm;->context:Landroid/content/Context;

    check-cast v1, Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v0}, Lcom/fiio/music/entity/FileItem;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/fiio/music/util/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1303
    iget-object v5, p0, Lcom/fiio/music/fragment/TabEFm;->cueSheetManager:Lcom/fiio/music/util/j;

    invoke-virtual {v5}, Lcom/fiio/music/util/j;->c()[Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    invoke-virtual {v0}, Lcom/fiio/music/entity/FileItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1302
    invoke-virtual {v1, v4, v5, v6, v3}, Lcom/fiio/music/activity/LocalMusicActivity;->creatCueOrM3uListDialog(Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;I)V

    move v0, v2

    .line 1304
    goto/16 :goto_0

    .line 1305
    :cond_5
    iget-object v1, p0, Lcom/fiio/music/fragment/TabEFm;->context:Landroid/content/Context;

    const-string v4, "kuishe"

    invoke-virtual {v1, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1306
    const-string v4, "enable_viper"

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1307
    if-eqz v1, :cond_6

    .line 1308
    iget-object v1, p0, Lcom/fiio/music/fragment/TabEFm;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->S()Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {}, Lcom/fiio/music/service/MediaPlayerService;->X()Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->setJumpToSong(Z)V

    .line 1310
    :cond_6
    iget-object v1, p0, Lcom/fiio/music/fragment/TabEFm;->context:Landroid/content/Context;

    check-cast v1, Lcom/fiio/music/activity/LocalMusicActivity;

    new-instance v3, Ljava/io/File;

    invoke-virtual {v0}, Lcom/fiio/music/entity/FileItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/fiio/music/activity/LocalMusicActivity;->folderJumpForplayerMusic(Ljava/io/File;)V

    :cond_7
    move v0, v2

    goto/16 :goto_0

    .line 1321
    :cond_8
    invoke-static {v1}, Lcom/fiio/music/util/cf;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1323
    new-instance v1, Lcom/fiio/music/util/cp;

    iget-object v3, p0, Lcom/fiio/music/fragment/TabEFm;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/fiio/music/fragment/TabEFm;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-direct {v1, v3, v4}, Lcom/fiio/music/util/cp;-><init>(Landroid/content/Context;Lcom/fiio/music/service/h;)V

    .line 1324
    invoke-virtual {v1, v0}, Lcom/fiio/music/util/cp;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1325
    iget-object v3, p0, Lcom/fiio/music/fragment/TabEFm;->sortType:Lcom/fiio/music/util/cr;

    const-string v4, "AZtabEFM"

    invoke-virtual {v3, v4}, Lcom/fiio/music/util/cr;->b(Ljava/lang/String;)I

    move-result v3

    .line 1326
    iget-object v4, p0, Lcom/fiio/music/fragment/TabEFm;->sortType:Lcom/fiio/music/util/cr;

    const-string v5, "tabEFm"

    invoke-virtual {v4, v5}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    move-result v4

    .line 1327
    invoke-virtual {v1, v0, v4, v3}, Lcom/fiio/music/util/cp;->a(Ljava/util/List;II)Ljava/util/List;

    move-result-object v3

    .line 1328
    if-eqz v3, :cond_b

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 1329
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    .line 1330
    if-eqz v0, :cond_0

    .line 1331
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v1

    if-nez v1, :cond_9

    .line 1332
    iget-object v1, p0, Lcom/fiio/music/fragment/TabEFm;->mediaPlayerManager:Lcom/fiio/music/service/h;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v6, v2, v3}, Lcom/fiio/music/service/h;->b(Lcom/fiio/music/entity/Song;ILjava/lang/String;Ljava/util/List;)V

    goto/16 :goto_1

    .line 1333
    :cond_9
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1334
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getTrack()I

    move-result v2

    .line 1335
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/fiio/music/util/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".cue"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1336
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 1337
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/fiio/music/util/j;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1338
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1342
    :cond_a
    if-ltz v2, :cond_0

    .line 1343
    new-instance v4, Lcom/fiio/music/util/j;

    iget-object v5, p0, Lcom/fiio/music/fragment/TabEFm;->context:Landroid/content/Context;

    invoke-direct {v4, v1, v0, v2, v5}, Lcom/fiio/music/util/j;-><init>(Ljava/io/File;Lcom/fiio/music/entity/Song;ILandroid/content/Context;)V

    .line 1344
    invoke-virtual {v4}, Lcom/fiio/music/util/j;->b()Lcom/fiio/music/entity/Song;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1345
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v4}, Lcom/fiio/music/util/j;->b()Lcom/fiio/music/entity/Song;

    move-result-object v1

    invoke-virtual {v4}, Lcom/fiio/music/util/j;->e()[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fiio/music/service/h;->a(Lcom/fiio/music/entity/Song;[Ljava/lang/String;Ljava/util/List;I)V

    goto/16 :goto_1

    .line 1350
    :cond_b
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->toast:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabEFm;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/fiio/music/fragment/TabEFm;->context:Landroid/content/Context;

    const v3, 0x7f0c00fa

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->toast:Landroid/widget/Toast;

    goto/16 :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 181
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 182
    invoke-virtual {p0}, Lcom/fiio/music/fragment/TabEFm;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->context:Landroid/content/Context;

    .line 183
    new-instance v0, Lcom/fiio/music/util/bh;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabEFm;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/fiio/music/util/bh;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->mMusicManager:Lcom/fiio/music/util/bh;

    .line 184
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->context:Landroid/content/Context;

    const-string v1, "changestyle"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->changestylesp:Landroid/content/SharedPreferences;

    .line 185
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->context:Landroid/content/Context;

    const-string v1, "memory"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->memorySharedPreferences:Landroid/content/SharedPreferences;

    .line 186
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 191
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->changestylesp:Landroid/content/SharedPreferences;

    const-string v1, "styleChange"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fiio/music/fragment/TabEFm;->UI_IS_CHANGE:Z

    .line 192
    invoke-virtual {p0}, Lcom/fiio/music/fragment/TabEFm;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/a;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/fiio/music/fragment/TabEFm;->STYLE_PARAMTER:I

    .line 194
    const/4 v0, 0x0

    .line 196
    iget v1, p0, Lcom/fiio/music/fragment/TabEFm;->STYLE_PARAMTER:I

    if-ne v1, v3, :cond_3

    .line 197
    const v0, 0x7f04014b

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    .line 206
    :goto_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->mExecutorServiceEFm:Ljava/util/concurrent/ExecutorService;

    .line 207
    const v0, 0x7f0b0374

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    iput-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->smlv_song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    .line 208
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->smlv_song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabEFm;->list_change_content_listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 209
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabEFm;->smlv_song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    invoke-virtual {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->initSwipeListView(Lcom/fiio/music/swipemenulistview/SwipeMenuListView;)V

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->fileItemList:Ljava/util/List;

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->topFileItemList:Ljava/util/List;

    .line 214
    new-instance v0, Lcom/a/a/aq;

    invoke-direct {v0}, Lcom/a/a/aq;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->gson:Lcom/a/a/aq;

    .line 215
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->context:Landroid/content/Context;

    const-string v1, "gsonFolder"

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->sp:Landroid/content/SharedPreferences;

    .line 216
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->context:Landroid/content/Context;

    const-string v1, "folderjump"

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->folderjumpPreferences:Landroid/content/SharedPreferences;

    .line 217
    invoke-static {}, Lcom/fiio/music/util/an;->a()Lcom/fiio/music/util/an;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->foldersongUtils:Lcom/fiio/music/util/an;

    .line 218
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->folderjumpPreferences:Landroid/content/SharedPreferences;

    const-string v1, "FolderJump"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fiio/music/fragment/TabEFm;->folder:Z

    .line 219
    new-instance v0, Lcom/fiio/music/util/cr;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabEFm;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/fiio/music/util/cr;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->sortType:Lcom/fiio/music/util/cr;

    .line 221
    invoke-direct {p0}, Lcom/fiio/music/fragment/TabEFm;->initItemClick()V

    .line 225
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/fiio/music/util/ch;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v9

    .line 226
    invoke-static {}, Lcom/fiio/music/util/l;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_6

    const-string v0, "/mnt/external_sd"

    invoke-virtual {p0, v0}, Lcom/fiio/music/fragment/TabEFm;->isMountSD(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 227
    const-string v1, "xyz-TabEFm"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "update TF card by hand,internal="

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    new-array v0, v10, [Ljava/lang/String;

    .line 229
    const-string v1, "/mnt/external_sd"

    aput-object v1, v0, v4

    .line 230
    invoke-virtual {p0}, Lcom/fiio/music/fragment/TabEFm;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0231

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 231
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->fileItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    move v8, v4

    .line 242
    :goto_2
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-lt v8, v0, :cond_8

    .line 249
    invoke-static {}, Lcom/fiio/music/util/l;->b()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/fiio/music/util/l;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->fileItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v10, :cond_2

    .line 251
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->fileItemList:Ljava/util/List;

    invoke-static {v0}, Lcom/fiio/music/util/cn;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->fileItemList:Ljava/util/List;

    .line 254
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->topFileItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 255
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->topFileItemList:Ljava/util/List;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabEFm;->fileItemList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 258
    return-object v7

    .line 198
    :cond_3
    iget v1, p0, Lcom/fiio/music/fragment/TabEFm;->STYLE_PARAMTER:I

    if-ne v1, v10, :cond_4

    .line 199
    const v0, 0x7f04014c

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    .line 200
    goto/16 :goto_0

    :cond_4
    iget v1, p0, Lcom/fiio/music/fragment/TabEFm;->STYLE_PARAMTER:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    .line 201
    const v0, 0x7f04014d

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    .line 202
    goto/16 :goto_0

    :cond_5
    iget v1, p0, Lcom/fiio/music/fragment/TabEFm;->STYLE_PARAMTER:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_9

    .line 203
    const v0, 0x7f04014e

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    goto/16 :goto_0

    .line 233
    :cond_6
    invoke-static {}, Lcom/fiio/music/util/l;->b()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/fiio/music/util/l;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_7
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_0

    const-string v0, "/mnt/external_sd"

    invoke-virtual {p0, v0}, Lcom/fiio/music/fragment/TabEFm;->isMountSD(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    new-array v0, v10, [Ljava/lang/String;

    .line 235
    const-string v1, "/mnt/external_sd"

    aput-object v1, v0, v4

    .line 236
    invoke-virtual {p0}, Lcom/fiio/music/fragment/TabEFm;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0232

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 237
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 243
    :cond_8
    new-instance v0, Lcom/fiio/music/entity/FileItem;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    aget-object v2, v2, v4

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/fiio/music/entity/FileItem;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZI)V

    .line 244
    const-string v2, "xyz-TabEFm"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v1, "1="

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const-string v2, "xyz-TabEFm"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v1, "2="

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v1, p0, Lcom/fiio/music/fragment/TabEFm;->fileItemList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto/16 :goto_2

    :cond_9
    move-object v7, v0

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1198
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabEFm;->receiver:Lcom/fiio/music/fragment/TabEFm$SDCardStateReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1199
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->mExecutorServiceEFm:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 1200
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 1201
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 1193
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 1194
    return-void
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 1205
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 1207
    :try_start_0
    const-class v0, Landroid/support/v4/app/Fragment;

    const-string v1, "mChildFragmentManager"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1208
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1209
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1211
    return-void

    :catch_0
    move-exception v0

    .line 1212
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1213
    :catch_1
    move-exception v0

    .line 1214
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onHiddenChanged(Z)V
    .locals 2

    .prologue
    .line 1448
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onHiddenChanged(Z)V

    .line 1450
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->sortType:Lcom/fiio/music/util/cr;

    if-eqz v0, :cond_1

    .line 1452
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->sortType:Lcom/fiio/music/util/cr;

    const-string v1, "AZtabEFM"

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/cr;->b(Ljava/lang/String;)I

    move-result v0

    .line 1454
    sget v1, Lcom/fiio/music/util/cn;->d:I

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_2

    .line 1455
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->a_z_sideBar_show(Z)V

    .line 1464
    :cond_1
    :goto_0
    return-void

    .line 1458
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->a_z_sideBar_show(Z)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 1156
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 1157
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 1151
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 1152
    return-void
.end method

.method public onStart()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 676
    invoke-virtual {p0}, Lcom/fiio/music/fragment/TabEFm;->isHidden()Z

    move-result v0

    if-nez v0, :cond_2

    .line 677
    const-string v0, "zxy---"

    const-string v1, "tabEfm--onstart"

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    new-instance v0, Lcom/fiio/music/fragment/TabEFm$SDCardStateReceiver;

    invoke-direct {v0, p0}, Lcom/fiio/music/fragment/TabEFm$SDCardStateReceiver;-><init>(Lcom/fiio/music/fragment/TabEFm;)V

    iput-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->receiver:Lcom/fiio/music/fragment/TabEFm$SDCardStateReceiver;

    .line 680
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->filter:Landroid/content/IntentFilter;

    .line 681
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->filter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 682
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->filter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 683
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->filter:Landroid/content/IntentFilter;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 684
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->filter:Landroid/content/IntentFilter;

    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 685
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabEFm;->receiver:Lcom/fiio/music/fragment/TabEFm$SDCardStateReceiver;

    iget-object v2, p0, Lcom/fiio/music/fragment/TabEFm;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 686
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->getMediaPlayerManager()Lcom/fiio/music/service/h;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->mediaPlayerManager:Lcom/fiio/music/service/h;

    .line 687
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->listAdapter:Lcom/fiio/music/adapter/FileListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->listAdapter:Lcom/fiio/music/adapter/FileListAdapter;

    invoke-virtual {v0}, Lcom/fiio/music/adapter/FileListAdapter;->getShowCheckBoxState()Z

    move-result v0

    if-nez v0, :cond_1

    .line 690
    :cond_0
    new-instance v0, Lcom/fiio/music/adapter/FileListAdapter;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabEFm;->fileItemList:Ljava/util/List;

    iget-object v2, p0, Lcom/fiio/music/fragment/TabEFm;->context:Landroid/content/Context;

    iget v3, p0, Lcom/fiio/music/fragment/TabEFm;->pageNumber:I

    iget-object v4, p0, Lcom/fiio/music/fragment/TabEFm;->mediaPlayerManager:Lcom/fiio/music/service/h;

    iget v6, p0, Lcom/fiio/music/fragment/TabEFm;->STYLE_PARAMTER:I

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/fiio/music/adapter/FileListAdapter;-><init>(Ljava/util/List;Landroid/content/Context;ILcom/fiio/music/service/h;Landroid/view/View$OnClickListener;I)V

    iput-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->listAdapter:Lcom/fiio/music/adapter/FileListAdapter;

    .line 692
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->smlv_song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabEFm;->listAdapter:Lcom/fiio/music/adapter/FileListAdapter;

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 694
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabEFm;->getCountRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 695
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 697
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->smlv_song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    new-instance v1, Lcom/fiio/music/fragment/ck;

    invoke-direct {v1, p0}, Lcom/fiio/music/fragment/ck;-><init>(Lcom/fiio/music/fragment/TabEFm;)V

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 716
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->context:Landroid/content/Context;

    const-string v1, "FolderPlayPosition"

    invoke-virtual {v0, v1, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->sPreferences:Landroid/content/SharedPreferences;

    .line 717
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->sPreferences:Landroid/content/SharedPreferences;

    const-string v1, "PlayPositionFlag"

    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 718
    if-eqz v0, :cond_3

    .line 719
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->smlv_song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabEFm;->sPreferences:Landroid/content/SharedPreferences;

    const-string v2, "firstPosition"

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/fiio/music/fragment/TabEFm;->sPreferences:Landroid/content/SharedPreferences;

    const-string v3, "top"

    invoke-interface {v2, v3, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setSelectionFromTop(II)V

    .line 731
    :cond_2
    :goto_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 733
    return-void

    .line 721
    :cond_3
    invoke-virtual {p0}, Lcom/fiio/music/fragment/TabEFm;->folderPlaySong()I

    move-result v0

    .line 722
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 724
    iget-object v1, p0, Lcom/fiio/music/fragment/TabEFm;->smlv_song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    invoke-virtual {v1, v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setSelection(I)V

    .line 725
    iput v0, p0, Lcom/fiio/music/fragment/TabEFm;->firstPosition:I

    .line 726
    iput v7, p0, Lcom/fiio/music/fragment/TabEFm;->top:I

    goto :goto_0
.end method

.method public onStop()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1162
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->activity:Landroid/app/Activity;

    const-string v1, "FolderPlayPosition"

    invoke-virtual {p0}, Lcom/fiio/music/fragment/TabEFm;->getActivity()Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->sPreferences:Landroid/content/SharedPreferences;

    .line 1163
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->sPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 1165
    invoke-virtual {p0}, Lcom/fiio/music/fragment/TabEFm;->folderPlaySong()I

    move-result v0

    iput v0, p0, Lcom/fiio/music/fragment/TabEFm;->flag:I

    .line 1166
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->listAdapter:Lcom/fiio/music/adapter/FileListAdapter;

    invoke-virtual {v0}, Lcom/fiio/music/adapter/FileListAdapter;->getList()Ljava/util/List;

    move-result-object v0

    .line 1167
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 1168
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1174
    :goto_1
    iget v0, p0, Lcom/fiio/music/fragment/TabEFm;->flag:I

    const/4 v5, -0x1

    if-ne v0, v5, :cond_2

    .line 1175
    iput v2, p0, Lcom/fiio/music/fragment/TabEFm;->firstPosition:I

    .line 1176
    iput v2, p0, Lcom/fiio/music/fragment/TabEFm;->top:I

    .line 1187
    :goto_2
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 1188
    return-void

    .line 1168
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1169
    iget v6, p0, Lcom/fiio/music/fragment/TabEFm;->flag:I

    if-ne v0, v6, :cond_0

    move v1, v3

    .line 1170
    goto :goto_0

    .line 1178
    :cond_2
    if-eqz v1, :cond_3

    .line 1179
    const-string v0, "PlayPositionFlag"

    invoke-interface {v4, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1180
    const-string v0, "firstPosition"

    iget v1, p0, Lcom/fiio/music/fragment/TabEFm;->firstPosition:I

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1181
    const-string v0, "top"

    iget v1, p0, Lcom/fiio/music/fragment/TabEFm;->top:I

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1185
    :goto_3
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_2

    .line 1183
    :cond_3
    const-string v0, "PlayPositionFlag"

    invoke-interface {v4, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_3

    :cond_4
    move v1, v2

    goto :goto_1
.end method

.method public orderBy(I)V
    .locals 11

    .prologue
    .line 503
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->a_z_sideBar_show(Z)V

    .line 505
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 506
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 507
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 509
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 510
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 512
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 513
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 514
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->fileItemList:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->fileItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 515
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->fileItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_a

    .line 527
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_11

    .line 528
    invoke-static {v1, p1}, Lcom/fiio/music/util/cn;->a(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    .line 530
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 531
    invoke-static {v2, p1}, Lcom/fiio/music/util/cn;->a(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    move-object v2, v1

    .line 534
    :cond_1
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 535
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_d

    .line 543
    :cond_3
    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 544
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_f

    .line 553
    :cond_5
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->fileItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 554
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->fileItemList:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 555
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->fileItemList:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 556
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->fileItemList:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 557
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->listAdapter:Lcom/fiio/music/adapter/FileListAdapter;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabEFm;->fileItemList:Ljava/util/List;

    iget v2, p0, Lcom/fiio/music/fragment/TabEFm;->pageNumber:I

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/adapter/FileListAdapter;->setData(Ljava/util/List;I)V

    .line 559
    :cond_6
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->mediaPlayerManager:Lcom/fiio/music/service/h;

    if-eqz v0, :cond_9

    .line 560
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->l()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    .line 561
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->k()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 562
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->m()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    .line 563
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 564
    iget-object v1, p0, Lcom/fiio/music/fragment/TabEFm;->foldersongUtils:Lcom/fiio/music/util/an;

    iget-object v2, p0, Lcom/fiio/music/fragment/TabEFm;->mMusicManager:Lcom/fiio/music/util/bh;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/fiio/music/fragment/TabEFm;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v3}, Lcom/fiio/music/service/h;->k()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/fragment/TabEFm;->context:Landroid/content/Context;

    invoke-virtual {v1, v2, v3}, Lcom/fiio/music/util/an;->b(Ljava/io/File;Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 565
    iget-object v2, p0, Lcom/fiio/music/fragment/TabEFm;->foldersongUtils:Lcom/fiio/music/util/an;

    invoke-virtual {v2}, Lcom/fiio/music/util/an;->b()Ljava/util/List;

    move-result-object v2

    .line 566
    if-eqz v1, :cond_7

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_7

    .line 567
    iget-object v3, p0, Lcom/fiio/music/fragment/TabEFm;->sortType:Lcom/fiio/music/util/cr;

    const-string v4, "tabEFm"

    invoke-virtual {v3, v4}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    move-result v3

    .line 568
    iget-object v4, p0, Lcom/fiio/music/fragment/TabEFm;->sortType:Lcom/fiio/music/util/cr;

    const-string v5, "AZtabEFM"

    invoke-virtual {v4, v5}, Lcom/fiio/music/util/cr;->b(Ljava/lang/String;)I

    move-result v4

    .line 569
    invoke-static {v1, v3, v4}, Lcom/fiio/music/util/cn;->c(Ljava/util/List;II)Ljava/util/List;

    move-result-object v1

    .line 570
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 572
    :cond_7
    if-eqz v2, :cond_8

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_8

    .line 573
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 575
    :cond_8
    iget-object v1, p0, Lcom/fiio/music/fragment/TabEFm;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v1, v0}, Lcom/fiio/music/service/h;->b(Ljava/util/List;)V

    .line 577
    :cond_9
    return-void

    .line 515
    :cond_a
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/FileItem;

    .line 516
    invoke-virtual {v0}, Lcom/fiio/music/entity/FileItem;->isFile()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 517
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 518
    invoke-virtual {v0}, Lcom/fiio/music/entity/FileItem;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 519
    :cond_b
    invoke-virtual {v0}, Lcom/fiio/music/entity/FileItem;->isCue()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 520
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 521
    :cond_c
    invoke-virtual {v0}, Lcom/fiio/music/entity/FileItem;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 522
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 523
    invoke-virtual {v0}, Lcom/fiio/music/entity/FileItem;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 535
    :cond_d
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 536
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_e
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/FileItem;

    .line 537
    invoke-virtual {v0}, Lcom/fiio/music/entity/FileItem;->getFileName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 538
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 544
    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 545
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_10
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fiio/music/entity/FileItem;

    .line 546
    invoke-virtual {v1}, Lcom/fiio/music/entity/FileItem;->getFileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 547
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_11
    move-object v0, v1

    goto/16 :goto_1
.end method

.method public orderByAZ(I)V
    .locals 11

    .prologue
    .line 584
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->a_z_sideBar_show(Z)V

    .line 586
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 587
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 588
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 590
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 591
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 593
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 594
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 595
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->fileItemList:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->fileItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 596
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->fileItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_a

    .line 608
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_11

    .line 609
    invoke-static {v1, p1}, Lcom/fiio/music/util/cn;->c(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    .line 611
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 612
    invoke-static {v2, p1}, Lcom/fiio/music/util/cn;->c(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    move-object v2, v1

    .line 615
    :cond_1
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 616
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_d

    .line 624
    :cond_3
    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 625
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_f

    .line 634
    :cond_5
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->fileItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 635
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->fileItemList:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 636
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->fileItemList:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 637
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->fileItemList:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 638
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->listAdapter:Lcom/fiio/music/adapter/FileListAdapter;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabEFm;->fileItemList:Ljava/util/List;

    iget v2, p0, Lcom/fiio/music/fragment/TabEFm;->pageNumber:I

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/adapter/FileListAdapter;->setData(Ljava/util/List;I)V

    .line 640
    :cond_6
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->mediaPlayerManager:Lcom/fiio/music/service/h;

    if-eqz v0, :cond_9

    .line 641
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->l()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    .line 642
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->k()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 643
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->m()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    .line 644
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 645
    iget-object v1, p0, Lcom/fiio/music/fragment/TabEFm;->foldersongUtils:Lcom/fiio/music/util/an;

    iget-object v2, p0, Lcom/fiio/music/fragment/TabEFm;->mMusicManager:Lcom/fiio/music/util/bh;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/fiio/music/fragment/TabEFm;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v3}, Lcom/fiio/music/service/h;->k()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/fragment/TabEFm;->context:Landroid/content/Context;

    invoke-virtual {v1, v2, v3}, Lcom/fiio/music/util/an;->b(Ljava/io/File;Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 646
    iget-object v2, p0, Lcom/fiio/music/fragment/TabEFm;->foldersongUtils:Lcom/fiio/music/util/an;

    invoke-virtual {v2}, Lcom/fiio/music/util/an;->b()Ljava/util/List;

    move-result-object v2

    .line 647
    if-eqz v1, :cond_7

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_7

    .line 648
    iget-object v3, p0, Lcom/fiio/music/fragment/TabEFm;->sortType:Lcom/fiio/music/util/cr;

    const-string v4, "tabEFm"

    invoke-virtual {v3, v4}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    move-result v3

    .line 649
    iget-object v4, p0, Lcom/fiio/music/fragment/TabEFm;->sortType:Lcom/fiio/music/util/cr;

    const-string v5, "AZtabEFM"

    invoke-virtual {v4, v5}, Lcom/fiio/music/util/cr;->b(Ljava/lang/String;)I

    move-result v4

    .line 650
    invoke-static {v1, v3, v4}, Lcom/fiio/music/util/cn;->c(Ljava/util/List;II)Ljava/util/List;

    move-result-object v1

    .line 651
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 653
    :cond_7
    if-eqz v2, :cond_8

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_8

    .line 654
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 656
    :cond_8
    iget-object v1, p0, Lcom/fiio/music/fragment/TabEFm;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v1, v0}, Lcom/fiio/music/service/h;->b(Ljava/util/List;)V

    .line 658
    :cond_9
    return-void

    .line 596
    :cond_a
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/FileItem;

    .line 597
    invoke-virtual {v0}, Lcom/fiio/music/entity/FileItem;->isFile()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 598
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 599
    invoke-virtual {v0}, Lcom/fiio/music/entity/FileItem;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 600
    :cond_b
    invoke-virtual {v0}, Lcom/fiio/music/entity/FileItem;->isCue()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 601
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 602
    :cond_c
    invoke-virtual {v0}, Lcom/fiio/music/entity/FileItem;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 603
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 604
    invoke-virtual {v0}, Lcom/fiio/music/entity/FileItem;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 616
    :cond_d
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 617
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_e
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/FileItem;

    .line 618
    invoke-virtual {v0}, Lcom/fiio/music/entity/FileItem;->getFileName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 619
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 625
    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 626
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_10
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fiio/music/entity/FileItem;

    .line 627
    invoke-virtual {v1}, Lcom/fiio/music/entity/FileItem;->getFileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 628
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_11
    move-object v0, v1

    goto/16 :goto_1
.end method

.method public playCueFile(Ljava/io/File;II)V
    .locals 8

    .prologue
    const/4 v7, 0x4

    .line 977
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 978
    new-instance v0, Lcom/fiio/music/util/j;

    iget-object v2, p0, Lcom/fiio/music/fragment/TabEFm;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/fiio/music/fragment/TabEFm;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-direct {v0, v2, v3, p1}, Lcom/fiio/music/util/j;-><init>(Landroid/content/Context;Lcom/fiio/music/service/h;Ljava/io/File;)V

    iput-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->cueSheetManager:Lcom/fiio/music/util/j;

    .line 979
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->cueSheetManager:Lcom/fiio/music/util/j;

    invoke-virtual {v0}, Lcom/fiio/music/util/j;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 980
    if-eqz p1, :cond_0

    .line 981
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->D()V

    .line 982
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->cueSheetManager:Lcom/fiio/music/util/j;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v7, v1}, Lcom/fiio/music/util/j;->a(Ljava/io/File;IILjava/util/List;)V

    .line 1010
    :cond_0
    :goto_0
    return-void

    .line 990
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->cueSheetManager:Lcom/fiio/music/util/j;

    invoke-static {p1}, Lcom/fiio/music/util/j;->b(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 991
    if-nez v0, :cond_2

    .line 992
    invoke-static {p1}, Lcom/fiio/music/util/j;->c(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 993
    if-eqz v0, :cond_0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 996
    :cond_2
    iget-object v2, p0, Lcom/fiio/music/fragment/TabEFm;->foldersongUtils:Lcom/fiio/music/util/an;

    iget-object v3, p0, Lcom/fiio/music/fragment/TabEFm;->mMusicManager:Lcom/fiio/music/util/bh;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    iget-object v4, p0, Lcom/fiio/music/fragment/TabEFm;->context:Landroid/content/Context;

    invoke-virtual {v2, v3, v4}, Lcom/fiio/music/util/an;->b(Ljava/io/File;Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 997
    iget-object v3, p0, Lcom/fiio/music/fragment/TabEFm;->foldersongUtils:Lcom/fiio/music/util/an;

    invoke-virtual {v3}, Lcom/fiio/music/util/an;->b()Ljava/util/List;

    move-result-object v3

    .line 998
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 999
    iget-object v4, p0, Lcom/fiio/music/fragment/TabEFm;->sortType:Lcom/fiio/music/util/cr;

    const-string v5, "tabEFm"

    invoke-virtual {v4, v5}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    move-result v4

    .line 1000
    iget-object v5, p0, Lcom/fiio/music/fragment/TabEFm;->sortType:Lcom/fiio/music/util/cr;

    const-string v6, "AZtabEFM"

    invoke-virtual {v5, v6}, Lcom/fiio/music/util/cr;->b(Ljava/lang/String;)I

    move-result v5

    .line 1001
    invoke-static {v2, v4, v5}, Lcom/fiio/music/util/cn;->c(Ljava/util/List;II)Ljava/util/List;

    move-result-object v2

    .line 1002
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1004
    :cond_3
    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 1005
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1007
    :cond_4
    iget-object v2, p0, Lcom/fiio/music/fragment/TabEFm;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v2}, Lcom/fiio/music/service/h;->D()V

    .line 1008
    iget-object v2, p0, Lcom/fiio/music/fragment/TabEFm;->cueSheetManager:Lcom/fiio/music/util/j;

    invoke-virtual {v2, v0, p2, v7, v1}, Lcom/fiio/music/util/j;->a(Ljava/io/File;IILjava/util/List;)V

    goto :goto_0
.end method

.method public playM3UFile(I)V
    .locals 3

    .prologue
    .line 1017
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->m3uManager:Lcom/fiio/music/util/bc;

    invoke-virtual {v0, p1}, Lcom/fiio/music/util/bc;->a(I)Ljava/io/File;

    move-result-object v1

    .line 1018
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1019
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->m3uManager:Lcom/fiio/music/util/bc;

    invoke-virtual {v0}, Lcom/fiio/music/util/bc;->c()Ljava/util/List;

    move-result-object v2

    .line 1020
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1021
    :cond_0
    const-string v0, "sin"

    const-string v1, "m3u \u5217\u8868\u4e3a\u7a7a"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    :goto_0
    return-void

    .line 1024
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/activity/LocalMusicActivity;->playerMusicByM3UItem(Ljava/io/File;Ljava/util/List;)V

    .line 1027
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->m3uManager:Lcom/fiio/music/util/bc;

    invoke-virtual {v0}, Lcom/fiio/music/util/bc;->a()Ljava/lang/String;

    move-result-object v0

    .line 1028
    iget-object v1, p0, Lcom/fiio/music/fragment/TabEFm;->memorySharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1029
    const-string v2, "M3UPATH"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1030
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public playSACDFile(Ljava/io/File;I)V
    .locals 2

    .prologue
    .line 1040
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->sdf:Lorg/justcodecs/dsd/SacdDataFormat;

    invoke-virtual {v0}, Lorg/justcodecs/dsd/SacdDataFormat;->getSacdSongList()Ljava/util/List;

    move-result-object v1

    .line 1041
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v0, p1, p2, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->playerMusicBySACDItem(Ljava/io/File;ILjava/util/List;)V

    .line 1042
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->sdf:Lorg/justcodecs/dsd/SacdDataFormat;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, p2, v1}, Lorg/justcodecs/dsd/SacdDataFormat;->playSacdFile(Ljava/io/File;II)V

    .line 1043
    return-void
.end method

.method public setTabFmPageNumber(I)V
    .locals 0

    .prologue
    .line 817
    iput p1, p0, Lcom/fiio/music/fragment/TabEFm;->pageNumber:I

    .line 818
    return-void
.end method

.method public simplifyGetSong(Ljava/lang/String;)Lcom/fiio/music/entity/Song;
    .locals 2

    .prologue
    .line 1361
    if-eqz p1, :cond_0

    .line 1362
    new-instance v0, Lcom/fiio/music/util/bh;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabEFm;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/fiio/music/util/bh;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/fiio/music/util/bh;->c(Ljava/lang/String;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    .line 1365
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tabEFGetListView()Lcom/fiio/music/swipemenulistview/SwipeMenuListView;
    .locals 1

    .prologue
    .line 811
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm;->smlv_song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    return-object v0
.end method
