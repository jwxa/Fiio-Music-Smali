.class public Lcom/fiio/music/fragment/DlnaFragment;
.super Landroid/support/v4/app/Fragment;
.source "DlnaFragment.java"


# static fields
.field public static final CONTENT_GET_FAIL:I = 0x0

.field public static final CONTENT_GET_SUC:I = 0x1

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private STYLE_PARAMTER:I

.field private UI_IS_CHANGE:Z

.field private changestylesp:Landroid/content/SharedPreferences;

.field contentItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private contenterDir:Ljava/lang/String;

.field private curSongList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;"
        }
    .end annotation
.end field

.field private currentContentFormatMimeType:Ljava/lang/String;

.field private currentDuration:I

.field private currentPosition:I

.field protected imageLoader:Lcom/b/a/b/f;

.field private mAritstNameStr:Ljava/lang/String;

.field private mBaseApplication:Lcom/fiio/music/activity/FiiOMusicApplication;

.field private mConnectionListener:Lcom/fiio/music/service/l;

.field private mContentAdapter:Lcom/fiio/music/fragment/i;

.field private mContentList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fiio/music/d/a/c;",
            ">;"
        }
    .end annotation
.end field

.field private mContentLv:Landroid/widget/ListView;

.field private mContext:Landroid/content/Context;

.field private mCounter:Ljava/lang/Integer;

.field private mHandler:Landroid/os/Handler;

.field private mLastDevice:Ljava/lang/String;

.field private mPlayingSongPosition:I

.field private mProgressBarPreparing:Landroid/widget/ProgressBar;

.field private mSaveDirectoryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fiio/music/d/a/c;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSongList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;"
        }
    .end annotation
.end field

.field private mSongNameStr:Ljava/lang/String;

.field private mThumbUri:Ljava/lang/String;

.field private mTitleView:Landroid/widget/TextView;

.field public mediaPlayerManager:Lcom/fiio/music/service/h;

.field options:Lcom/b/a/b/d;

.field private playingSong:Lcom/fiio/music/entity/Song;

.field private upnpService:Lorg/fourthline/cling/android/AndroidUpnpService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Dendy_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/fiio/music/fragment/DlnaFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fiio/music/fragment/DlnaFragment;->TAG:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/fragment/DlnaFragment;->curSongList:Ljava/util/List;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/fragment/DlnaFragment;->mContentList:Ljava/util/ArrayList;

    .line 124
    const-string v0, ""

    iput-object v0, p0, Lcom/fiio/music/fragment/DlnaFragment;->currentContentFormatMimeType:Ljava/lang/String;

    .line 130
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/DlnaFragment;->mCounter:Ljava/lang/Integer;

    .line 136
    const-string v0, "DLNA"

    iput-object v0, p0, Lcom/fiio/music/fragment/DlnaFragment;->contenterDir:Ljava/lang/String;

    .line 139
    invoke-static {}, Lcom/b/a/b/f;->a()Lcom/b/a/b/f;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/DlnaFragment;->imageLoader:Lcom/b/a/b/f;

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/fragment/DlnaFragment;->mSongList:Ljava/util/ArrayList;

    .line 145
    const/4 v0, 0x3

    iput v0, p0, Lcom/fiio/music/fragment/DlnaFragment;->STYLE_PARAMTER:I

    .line 148
    new-instance v0, Lcom/fiio/music/fragment/e;

    invoke-direct {v0, p0}, Lcom/fiio/music/fragment/e;-><init>(Lcom/fiio/music/fragment/DlnaFragment;)V

    iput-object v0, p0, Lcom/fiio/music/fragment/DlnaFragment;->mHandler:Landroid/os/Handler;

    .line 343
    new-instance v0, Lcom/fiio/music/fragment/f;

    invoke-direct {v0, p0}, Lcom/fiio/music/fragment/f;-><init>(Lcom/fiio/music/fragment/DlnaFragment;)V

    iput-object v0, p0, Lcom/fiio/music/fragment/DlnaFragment;->mConnectionListener:Lcom/fiio/music/service/l;

    .line 382
    new-instance v0, Lcom/fiio/music/fragment/g;

    invoke-direct {v0, p0}, Lcom/fiio/music/fragment/g;-><init>(Lcom/fiio/music/fragment/DlnaFragment;)V

    iput-object v0, p0, Lcom/fiio/music/fragment/DlnaFragment;->contentItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 95
    return-void
.end method

.method static synthetic access$0(Lcom/fiio/music/fragment/DlnaFragment;)Lcom/fiio/music/fragment/i;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/fiio/music/fragment/DlnaFragment;->mContentAdapter:Lcom/fiio/music/fragment/i;

    return-object v0
.end method

.method static synthetic access$1(Lcom/fiio/music/fragment/DlnaFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/fiio/music/fragment/DlnaFragment;->contenterDir:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10(Lcom/fiio/music/fragment/DlnaFragment;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/fiio/music/fragment/DlnaFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$11(Lcom/fiio/music/fragment/DlnaFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/fiio/music/fragment/DlnaFragment;->mSongList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$12(Lcom/fiio/music/fragment/DlnaFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/fiio/music/fragment/DlnaFragment;->curSongList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$13(Lcom/fiio/music/fragment/DlnaFragment;I)V
    .locals 0

    .prologue
    .line 101
    iput p1, p0, Lcom/fiio/music/fragment/DlnaFragment;->currentPosition:I

    return-void
.end method

.method static synthetic access$14(Lcom/fiio/music/fragment/DlnaFragment;Lcom/fiio/music/d/a/c;)Lcom/fiio/music/entity/Song;
    .locals 1

    .prologue
    .line 515
    invoke-direct {p0, p1}, Lcom/fiio/music/fragment/DlnaFragment;->makeSong(Lcom/fiio/music/d/a/c;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$15(Lcom/fiio/music/fragment/DlnaFragment;Lcom/fiio/music/entity/Song;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/fiio/music/fragment/DlnaFragment;->playingSong:Lcom/fiio/music/entity/Song;

    return-void
.end method

.method static synthetic access$16(Lcom/fiio/music/fragment/DlnaFragment;)Lcom/fiio/music/entity/Song;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/fiio/music/fragment/DlnaFragment;->playingSong:Lcom/fiio/music/entity/Song;

    return-object v0
.end method

.method static synthetic access$17(Lcom/fiio/music/fragment/DlnaFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/fiio/music/fragment/DlnaFragment;->mSongNameStr:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$18(Lcom/fiio/music/fragment/DlnaFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/fiio/music/fragment/DlnaFragment;->mAritstNameStr:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$19(Lcom/fiio/music/fragment/DlnaFragment;I)V
    .locals 0

    .prologue
    .line 101
    iput p1, p0, Lcom/fiio/music/fragment/DlnaFragment;->mPlayingSongPosition:I

    return-void
.end method

.method static synthetic access$2(Lcom/fiio/music/fragment/DlnaFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/fiio/music/fragment/DlnaFragment;->mContentList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$20(Lcom/fiio/music/fragment/DlnaFragment;I)V
    .locals 0

    .prologue
    .line 101
    iput p1, p0, Lcom/fiio/music/fragment/DlnaFragment;->currentDuration:I

    return-void
.end method

.method static synthetic access$21(Lcom/fiio/music/fragment/DlnaFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/fiio/music/fragment/DlnaFragment;->currentContentFormatMimeType:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$22(Lcom/fiio/music/fragment/DlnaFragment;Lcom/fiio/music/d/a/c;)V
    .locals 0

    .prologue
    .line 469
    invoke-direct {p0, p1}, Lcom/fiio/music/fragment/DlnaFragment;->jumpToControl(Lcom/fiio/music/d/a/c;)V

    return-void
.end method

.method static synthetic access$23(Lcom/fiio/music/fragment/DlnaFragment;)V
    .locals 0

    .prologue
    .line 928
    invoke-direct {p0}, Lcom/fiio/music/fragment/DlnaFragment;->gotoPlayMain()V

    return-void
.end method

.method static synthetic access$24(Lcom/fiio/music/fragment/DlnaFragment;)Z
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/fiio/music/fragment/DlnaFragment;->UI_IS_CHANGE:Z

    return v0
.end method

.method static synthetic access$3(Lcom/fiio/music/fragment/DlnaFragment;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/fiio/music/fragment/DlnaFragment;->initSongList(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$4(Lcom/fiio/music/fragment/DlnaFragment;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/fiio/music/fragment/DlnaFragment;->mProgressBarPreparing:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$5(Lcom/fiio/music/fragment/DlnaFragment;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/fiio/music/fragment/DlnaFragment;->mCounter:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$6(Lcom/fiio/music/fragment/DlnaFragment;Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/fiio/music/fragment/DlnaFragment;->mCounter:Ljava/lang/Integer;

    return-void
.end method

.method static synthetic access$7(Lcom/fiio/music/fragment/DlnaFragment;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/fiio/music/fragment/DlnaFragment;->mSaveDirectoryMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$8(Lcom/fiio/music/fragment/DlnaFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/fiio/music/fragment/DlnaFragment;->contenterDir:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$9(Lcom/fiio/music/fragment/DlnaFragment;)Lorg/fourthline/cling/android/AndroidUpnpService;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/fiio/music/fragment/DlnaFragment;->upnpService:Lorg/fourthline/cling/android/AndroidUpnpService;

    return-object v0
.end method

.method private getThumbUri(Lcom/fiio/music/d/a/c;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 636
    const/4 v1, 0x0

    .line 637
    invoke-virtual {p1}, Lcom/fiio/music/d/a/c;->b()Lorg/fourthline/cling/support/model/item/Item;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/item/Item;->getProperties()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 638
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-lt v2, v3, :cond_0

    move-object v0, v1

    .line 652
    :goto_1
    return-object v0

    .line 639
    :cond_0
    invoke-virtual {p1}, Lcom/fiio/music/d/a/c;->b()Lorg/fourthline/cling/support/model/item/Item;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 640
    invoke-virtual {p1}, Lcom/fiio/music/d/a/c;->b()Lorg/fourthline/cling/support/model/item/Item;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/item/Item;->getProperties()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 641
    invoke-virtual {p1}, Lcom/fiio/music/d/a/c;->b()Lorg/fourthline/cling/support/model/item/Item;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/item/Item;->getProperties()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 642
    invoke-virtual {p1}, Lcom/fiio/music/d/a/c;->b()Lorg/fourthline/cling/support/model/item/Item;

    move-result-object v0

    .line 643
    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/item/Item;->getProperties()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/DIDLObject$Property;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/DIDLObject$Property;->getDescriptorName()Ljava/lang/String;

    move-result-object v0

    .line 644
    const-string v4, "albumArtURI"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 646
    invoke-virtual {p1}, Lcom/fiio/music/d/a/c;->b()Lorg/fourthline/cling/support/model/item/Item;

    move-result-object v0

    .line 647
    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/item/Item;->getProperties()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/DIDLObject$Property;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/DIDLObject$Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 638
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method private gotoPlayMain()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 929
    iget-object v0, p0, Lcom/fiio/music/fragment/DlnaFragment;->curSongList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 930
    iget-object v0, p0, Lcom/fiio/music/fragment/DlnaFragment;->mSongList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/fiio/music/fragment/DlnaFragment;->curSongList:Ljava/util/List;

    .line 932
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/fiio/music/fragment/DlnaFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 933
    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    .line 934
    iget-object v2, p0, Lcom/fiio/music/fragment/DlnaFragment;->curSongList:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/fiio/music/fragment/DlnaFragment;->curSongList:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/fiio/music/fragment/DlnaFragment;->curSongList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 935
    :cond_0
    const-string v2, "0"

    aput-object v2, v1, v4

    .line 939
    :goto_0
    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/fiio/music/fragment/DlnaFragment;->curSongList:Ljava/util/List;

    invoke-static {v4}, Lcom/fiio/music/util/h;->a(Ljava/util/List;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 940
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/fiio/music/fragment/DlnaFragment;->mSongNameStr:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 941
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/fiio/music/fragment/DlnaFragment;->mAritstNameStr:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 942
    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/fiio/music/fragment/DlnaFragment;->currentPosition:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 943
    const/4 v2, 0x5

    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/fiio/music/fragment/DlnaFragment;->currentDuration:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 944
    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/fiio/music/fragment/DlnaFragment;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v4}, Lcom/fiio/music/service/h;->z()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 945
    const-string v2, "playerInfo"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 946
    const-string v1, "playingSong"

    iget-object v2, p0, Lcom/fiio/music/fragment/DlnaFragment;->playingSong:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 947
    invoke-virtual {p0, v0}, Lcom/fiio/music/fragment/DlnaFragment;->startActivity(Landroid/content/Intent;)V

    .line 948
    return-void

    .line 937
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/fiio/music/fragment/DlnaFragment;->mPlayingSongPosition:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    goto :goto_0
.end method

.method private initData()V
    .locals 7

    .prologue
    .line 316
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/DlnaFragment;->mCounter:Ljava/lang/Integer;

    .line 317
    iget-object v0, p0, Lcom/fiio/music/fragment/DlnaFragment;->mSaveDirectoryMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 318
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/fragment/DlnaFragment;->mSaveDirectoryMap:Ljava/util/Map;

    .line 322
    :goto_0
    sget-object v0, Lcom/fiio/music/activity/FiiOMusicApplication;->c:Lorg/fourthline/cling/android/AndroidUpnpService;

    iput-object v0, p0, Lcom/fiio/music/fragment/DlnaFragment;->upnpService:Lorg/fourthline/cling/android/AndroidUpnpService;

    .line 323
    iget-object v0, p0, Lcom/fiio/music/fragment/DlnaFragment;->mTitleView:Landroid/widget/TextView;

    sget-object v1, Lcom/fiio/music/activity/FiiOMusicApplication;->a:Lcom/fiio/music/d/a/d;

    invoke-virtual {v1}, Lcom/fiio/music/d/a/d;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    sget-object v0, Lcom/fiio/music/activity/FiiOMusicApplication;->a:Lcom/fiio/music/d/a/d;

    invoke-virtual {v0}, Lcom/fiio/music/d/a/d;->a()Lorg/fourthline/cling/model/meta/Device;

    move-result-object v0

    .line 325
    new-instance v1, Lorg/fourthline/cling/model/types/UDAServiceType;

    .line 326
    const-string v2, "ContentDirectory"

    invoke-direct {v1, v2}, Lorg/fourthline/cling/model/types/UDAServiceType;-><init>(Ljava/lang/String;)V

    .line 325
    invoke-virtual {v0, v1}, Lorg/fourthline/cling/model/meta/Device;->findService(Lorg/fourthline/cling/model/types/ServiceType;)Lorg/fourthline/cling/model/meta/Service;

    move-result-object v2

    .line 327
    iget-object v0, p0, Lcom/fiio/music/fragment/DlnaFragment;->upnpService:Lorg/fourthline/cling/android/AndroidUpnpService;

    invoke-interface {v0}, Lorg/fourthline/cling/android/AndroidUpnpService;->getControlPoint()Lorg/fourthline/cling/controlpoint/ControlPoint;

    move-result-object v6

    .line 328
    new-instance v0, Lcom/fiio/music/d/a/a;

    invoke-virtual {p0}, Lcom/fiio/music/fragment/DlnaFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 329
    invoke-virtual {p0, v2}, Lcom/fiio/music/fragment/DlnaFragment;->createRootContainer(Lorg/fourthline/cling/model/meta/Service;)Lorg/fourthline/cling/support/model/container/Container;

    move-result-object v3

    iget-object v4, p0, Lcom/fiio/music/fragment/DlnaFragment;->mContentList:Ljava/util/ArrayList;

    .line 330
    iget-object v5, p0, Lcom/fiio/music/fragment/DlnaFragment;->mHandler:Landroid/os/Handler;

    .line 328
    invoke-direct/range {v0 .. v5}, Lcom/fiio/music/d/a/a;-><init>(Landroid/app/Activity;Lorg/fourthline/cling/model/meta/Service;Lorg/fourthline/cling/support/model/container/Container;Ljava/util/ArrayList;Landroid/os/Handler;)V

    .line 327
    invoke-interface {v6, v0}, Lorg/fourthline/cling/controlpoint/ControlPoint;->execute(Lorg/fourthline/cling/controlpoint/ActionCallback;)Ljava/util/concurrent/Future;

    .line 332
    sget-object v0, Lcom/fiio/music/activity/FiiOMusicApplication;->a:Lcom/fiio/music/d/a/d;

    invoke-virtual {v0}, Lcom/fiio/music/d/a/d;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/DlnaFragment;->mLastDevice:Ljava/lang/String;

    .line 333
    return-void

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/fragment/DlnaFragment;->mSaveDirectoryMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    goto :goto_0
.end method

.method private initSongList(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/d/a/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 179
    iget-object v0, p0, Lcom/fiio/music/fragment/DlnaFragment;->mSongList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    move v2, v3

    .line 181
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_1

    .line 204
    :cond_0
    return-void

    .line 182
    :cond_1
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/d/a/c;

    .line 184
    invoke-virtual {v0}, Lcom/fiio/music/d/a/c;->d()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    .line 185
    invoke-virtual {v0}, Lcom/fiio/music/d/a/c;->b()Lorg/fourthline/cling/support/model/item/Item;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/support/model/item/Item;->getResources()Ljava/util/List;

    move-result-object v1

    .line 186
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/support/model/Res;

    invoke-virtual {v1}, Lorg/fourthline/cling/support/model/Res;->getProtocolInfo()Lorg/fourthline/cling/support/model/ProtocolInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/support/model/ProtocolInfo;->getContentFormatMimeType()Lorg/seamless/util/MimeType;

    move-result-object v1

    .line 187
    if-eqz v1, :cond_0

    .line 190
    invoke-virtual {v1}, Lorg/seamless/util/MimeType;->getType()Ljava/lang/String;

    move-result-object v1

    .line 191
    if-eqz v1, :cond_0

    .line 195
    const-string v4, "audio"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 196
    invoke-direct {p0, v0}, Lcom/fiio/music/fragment/DlnaFragment;->makeSong(Lcom/fiio/music/d/a/c;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    .line 197
    if-eqz v0, :cond_2

    .line 199
    iget-object v1, p0, Lcom/fiio/music/fragment/DlnaFragment;->mSongList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method private initSongList_Dendy(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/d/a/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 208
    iget-object v0, p0, Lcom/fiio/music/fragment/DlnaFragment;->mSongList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 210
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 211
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 223
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 232
    :cond_1
    return-void

    .line 211
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/fiio/music/d/a/c;

    .line 212
    invoke-virtual {v1}, Lcom/fiio/music/d/a/c;->d()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    invoke-virtual {v1}, Lcom/fiio/music/d/a/c;->b()Lorg/fourthline/cling/support/model/item/Item;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/item/Item;->getResources()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/Res;

    .line 214
    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/Res;->getProtocolInfo()Lorg/fourthline/cling/support/model/ProtocolInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/ProtocolInfo;->getContentFormatMimeType()Lorg/seamless/util/MimeType;

    move-result-object v0

    .line 215
    if-eqz v0, :cond_1

    .line 218
    invoke-virtual {v0}, Lorg/seamless/util/MimeType;->getType()Ljava/lang/String;

    move-result-object v0

    .line 220
    const-string v3, "audio"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 222
    sget-object v3, Lcom/fiio/music/fragment/DlnaFragment;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "type = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-virtual {v1}, Lcom/fiio/music/d/a/c;->b()Lorg/fourthline/cling/support/model/item/Item;

    move-result-object v0

    .line 224
    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/item/Item;->getFirstResource()Lorg/fourthline/cling/support/model/Res;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/Res;->getValue()Ljava/lang/String;

    goto :goto_0
.end method

.method private initView(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 306
    const v0, 0x7f0b009e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fiio/music/fragment/DlnaFragment;->mTitleView:Landroid/widget/TextView;

    .line 307
    const v0, 0x7f0b009f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/fiio/music/fragment/DlnaFragment;->mProgressBarPreparing:Landroid/widget/ProgressBar;

    .line 308
    const v0, 0x7f0b00a0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/fiio/music/fragment/DlnaFragment;->mContentLv:Landroid/widget/ListView;

    .line 309
    new-instance v0, Lcom/fiio/music/fragment/i;

    invoke-virtual {p0}, Lcom/fiio/music/fragment/DlnaFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/fragment/DlnaFragment;->mContentList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/fiio/music/fragment/DlnaFragment;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/fiio/music/fragment/i;-><init>(Lcom/fiio/music/fragment/DlnaFragment;Landroid/content/Context;Ljava/util/ArrayList;Lcom/fiio/music/service/h;)V

    iput-object v0, p0, Lcom/fiio/music/fragment/DlnaFragment;->mContentAdapter:Lcom/fiio/music/fragment/i;

    .line 310
    iget-object v0, p0, Lcom/fiio/music/fragment/DlnaFragment;->mContentLv:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/fiio/music/fragment/DlnaFragment;->mContentAdapter:Lcom/fiio/music/fragment/i;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 311
    iget-object v0, p0, Lcom/fiio/music/fragment/DlnaFragment;->mContentLv:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/fiio/music/fragment/DlnaFragment;->contentItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 312
    return-void
.end method

.method private jumpToControl(Lcom/fiio/music/d/a/c;)V
    .locals 4

    .prologue
    .line 471
    sget-object v0, Lcom/fiio/music/fragment/DlnaFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "jumpToControl localContentItem = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/fiio/music/d/a/c;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    invoke-virtual {p1}, Lcom/fiio/music/d/a/c;->b()Lorg/fourthline/cling/support/model/item/Item;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/item/Item;->getFirstResource()Lorg/fourthline/cling/support/model/Res;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/Res;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 475
    sget-object v1, Lcom/fiio/music/fragment/DlnaFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "jumpToControl playURI = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.transport.info"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 478
    const-string v1, "name"

    invoke-virtual {p1}, Lcom/fiio/music/d/a/c;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 479
    const-string v1, "playURI"

    invoke-virtual {p1}, Lcom/fiio/music/d/a/c;->b()Lorg/fourthline/cling/support/model/item/Item;

    move-result-object v2

    .line 480
    invoke-virtual {v2}, Lorg/fourthline/cling/support/model/item/Item;->getFirstResource()Lorg/fourthline/cling/support/model/Res;

    move-result-object v2

    invoke-virtual {v2}, Lorg/fourthline/cling/support/model/Res;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 479
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 481
    const-string v1, "currentContentFormatMimeType"

    iget-object v2, p0, Lcom/fiio/music/fragment/DlnaFragment;->currentContentFormatMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 500
    invoke-direct {p0, p1}, Lcom/fiio/music/fragment/DlnaFragment;->makeSong(Lcom/fiio/music/d/a/c;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    .line 501
    if-eqz v0, :cond_0

    .line 502
    const-string v1, "xyz"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "filePath="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iget-object v1, p0, Lcom/fiio/music/fragment/DlnaFragment;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    .line 508
    iget-object v2, p0, Lcom/fiio/music/fragment/DlnaFragment;->contenterDir:Ljava/lang/String;

    iget-object v3, p0, Lcom/fiio/music/fragment/DlnaFragment;->mSongList:Ljava/util/ArrayList;

    .line 507
    invoke-virtual {v1, v0, v2, v3}, Lcom/fiio/music/service/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 509
    iget-object v0, p0, Lcom/fiio/music/fragment/DlnaFragment;->mContentAdapter:Lcom/fiio/music/fragment/i;

    iget-object v1, p0, Lcom/fiio/music/fragment/DlnaFragment;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0, v1}, Lcom/fiio/music/fragment/i;->a(Lcom/fiio/music/service/h;)V

    .line 510
    iget-object v0, p0, Lcom/fiio/music/fragment/DlnaFragment;->mContentAdapter:Lcom/fiio/music/fragment/i;

    iget-object v1, p0, Lcom/fiio/music/fragment/DlnaFragment;->contenterDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fiio/music/fragment/i;->a(Ljava/lang/String;)V

    .line 511
    iget-object v0, p0, Lcom/fiio/music/fragment/DlnaFragment;->mContentAdapter:Lcom/fiio/music/fragment/i;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/i;->notifyDataSetChanged()V

    .line 513
    :cond_0
    return-void
.end method

.method private makeSong(Lcom/fiio/music/d/a/c;)Lcom/fiio/music/entity/Song;
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v6, -0x1

    const/4 v2, 0x0

    .line 516
    new-instance v4, Lcom/fiio/music/entity/Song;

    invoke-direct {v4}, Lcom/fiio/music/entity/Song;-><init>()V

    .line 517
    invoke-virtual {v4, v2}, Lcom/fiio/music/entity/Song;->setDownFinish(Z)V

    .line 518
    invoke-virtual {v4, v2}, Lcom/fiio/music/entity/Song;->setLike(Z)V

    .line 520
    iget-object v0, p0, Lcom/fiio/music/fragment/DlnaFragment;->currentContentFormatMimeType:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/fiio/music/entity/Song;->setMimeType(Ljava/lang/String;)V

    .line 521
    invoke-virtual {v4, v2}, Lcom/fiio/music/entity/Song;->setNet(Z)V

    .line 522
    invoke-virtual {v4, v3}, Lcom/fiio/music/entity/Song;->setNetUrl(Ljava/lang/String;)V

    .line 523
    invoke-virtual {v4, v2}, Lcom/fiio/music/entity/Song;->setPlayCount(I)V

    .line 524
    invoke-virtual {v4, v2}, Lcom/fiio/music/entity/Song;->setLastPlayTime(I)V

    .line 525
    const-string v0, "$1$"

    invoke-virtual {v4, v0}, Lcom/fiio/music/entity/Song;->setPlayerList(Ljava/lang/String;)V

    .line 526
    invoke-virtual {p1}, Lcom/fiio/music/d/a/c;->b()Lorg/fourthline/cling/support/model/item/Item;

    move-result-object v0

    .line 527
    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/item/Item;->getFirstResource()Lorg/fourthline/cling/support/model/Res;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/Res;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 526
    invoke-virtual {v4, v0}, Lcom/fiio/music/entity/Song;->setFilePath(Ljava/lang/String;)V

    .line 528
    invoke-virtual {p1}, Lcom/fiio/music/d/a/c;->b()Lorg/fourthline/cling/support/model/item/Item;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/item/Item;->getResources()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/Res;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/Res;->getSize()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    .line 530
    :goto_0
    long-to-int v0, v0

    invoke-virtual {v4, v0}, Lcom/fiio/music/entity/Song;->setSize(I)V

    .line 531
    invoke-virtual {p1}, Lcom/fiio/music/d/a/c;->b()Lorg/fourthline/cling/support/model/item/Item;

    move-result-object v0

    .line 532
    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/item/Item;->getResources()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/Res;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/Res;->getSampleFrequency()Ljava/lang/Long;

    move-result-object v0

    .line 531
    invoke-static {v0}, Lcom/fiio/music/util/h;->a(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/fiio/music/entity/Song;->setSampleRate(I)V

    .line 533
    invoke-virtual {p1}, Lcom/fiio/music/d/a/c;->b()Lorg/fourthline/cling/support/model/item/Item;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/item/Item;->getResources()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/Res;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/Res;->getBitrate()Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/h;->a(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/fiio/music/entity/Song;->setBitRate(I)V

    .line 534
    invoke-virtual {p1}, Lcom/fiio/music/d/a/c;->b()Lorg/fourthline/cling/support/model/item/Item;

    move-result-object v0

    .line 535
    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/item/Item;->getResources()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/Res;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/Res;->getBitsPerSample()Ljava/lang/Long;

    move-result-object v0

    .line 534
    invoke-static {v0}, Lcom/fiio/music/util/h;->a(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/fiio/music/entity/Song;->setEncodingRate(I)V

    .line 536
    invoke-virtual {p1}, Lcom/fiio/music/d/a/c;->b()Lorg/fourthline/cling/support/model/item/Item;

    move-result-object v0

    .line 537
    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/item/Item;->getResources()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/Res;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/Res;->getNrAudioChannels()Ljava/lang/Long;

    move-result-object v0

    .line 536
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/fiio/music/entity/Song;->setChannels(Ljava/lang/String;)V

    .line 538
    invoke-virtual {p1}, Lcom/fiio/music/d/a/c;->b()Lorg/fourthline/cling/support/model/item/Item;

    move-result-object v0

    .line 539
    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/item/Item;->getResources()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/Res;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/Res;->getDuration()Ljava/lang/String;

    move-result-object v0

    .line 541
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v5, "HH:mm:ss"

    invoke-direct {v1, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 544
    if-eqz v0, :cond_2

    :try_start_0
    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 545
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 553
    :goto_1
    if-eqz v0, :cond_0

    .line 554
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/h;->a(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/fiio/music/entity/Song;->setDurationTime(I)V

    .line 556
    :cond_0
    invoke-virtual {p1}, Lcom/fiio/music/d/a/c;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/fiio/music/entity/Song;->setDisplayName(Ljava/lang/String;)V

    .line 557
    invoke-virtual {p1}, Lcom/fiio/music/d/a/c;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/fiio/music/entity/Song;->setName(Ljava/lang/String;)V

    .line 558
    invoke-virtual {p1}, Lcom/fiio/music/d/a/c;->b()Lorg/fourthline/cling/support/model/item/Item;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/item/Item;->getProperties()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v1, v2

    .line 601
    :goto_2
    if-lt v1, v3, :cond_3

    .line 614
    return-object v4

    .line 529
    :cond_1
    invoke-virtual {p1}, Lcom/fiio/music/d/a/c;->b()Lorg/fourthline/cling/support/model/item/Item;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/item/Item;->getResources()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/Res;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/Res;->getSize()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto/16 :goto_0

    .line 550
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    :cond_2
    move-object v0, v3

    goto :goto_1

    .line 561
    :cond_3
    invoke-virtual {p1}, Lcom/fiio/music/d/a/c;->b()Lorg/fourthline/cling/support/model/item/Item;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 562
    invoke-virtual {p1}, Lcom/fiio/music/d/a/c;->b()Lorg/fourthline/cling/support/model/item/Item;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/item/Item;->getProperties()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 563
    invoke-virtual {p1}, Lcom/fiio/music/d/a/c;->b()Lorg/fourthline/cling/support/model/item/Item;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/item/Item;->getProperties()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 564
    invoke-virtual {p1}, Lcom/fiio/music/d/a/c;->b()Lorg/fourthline/cling/support/model/item/Item;

    move-result-object v0

    .line 565
    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/item/Item;->getProperties()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/DIDLObject$Property;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/DIDLObject$Property;->getDescriptorName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "artist"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 566
    invoke-virtual {p1}, Lcom/fiio/music/d/a/c;->b()Lorg/fourthline/cling/support/model/item/Item;

    move-result-object v0

    .line 567
    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/item/Item;->getProperties()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/DIDLObject$Property;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/DIDLObject$Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 568
    new-instance v2, Lcom/fiio/music/entity/Artist;

    const-string v5, ""

    invoke-direct {v2, v6, v0, v5}, Lcom/fiio/music/entity/Artist;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Lcom/fiio/music/entity/Song;->setArtist(Lcom/fiio/music/entity/Artist;)V

    .line 571
    :cond_4
    invoke-virtual {p1}, Lcom/fiio/music/d/a/c;->b()Lorg/fourthline/cling/support/model/item/Item;

    move-result-object v0

    .line 572
    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/item/Item;->getProperties()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/DIDLObject$Property;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/DIDLObject$Property;->getDescriptorName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "genre"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 573
    invoke-virtual {p1}, Lcom/fiio/music/d/a/c;->b()Lorg/fourthline/cling/support/model/item/Item;

    move-result-object v0

    .line 574
    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/item/Item;->getProperties()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/DIDLObject$Property;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/DIDLObject$Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 575
    new-instance v2, Lcom/fiio/music/entity/SongStyle;

    const-string v5, ""

    invoke-direct {v2, v6, v0, v5}, Lcom/fiio/music/entity/SongStyle;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Lcom/fiio/music/entity/Song;->setStyle(Lcom/fiio/music/entity/SongStyle;)V

    .line 578
    :cond_5
    invoke-virtual {p1}, Lcom/fiio/music/d/a/c;->b()Lorg/fourthline/cling/support/model/item/Item;

    move-result-object v0

    .line 579
    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/item/Item;->getProperties()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/DIDLObject$Property;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/DIDLObject$Property;->getDescriptorName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "album"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 580
    invoke-virtual {p1}, Lcom/fiio/music/d/a/c;->b()Lorg/fourthline/cling/support/model/item/Item;

    move-result-object v0

    .line 581
    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/item/Item;->getProperties()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/DIDLObject$Property;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/DIDLObject$Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 582
    new-instance v2, Lcom/fiio/music/entity/Album;

    const-string v5, ""

    invoke-direct {v2, v6, v0, v5}, Lcom/fiio/music/entity/Album;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Lcom/fiio/music/entity/Song;->setAlbum(Lcom/fiio/music/entity/Album;)V

    .line 585
    :cond_6
    invoke-virtual {p1}, Lcom/fiio/music/d/a/c;->b()Lorg/fourthline/cling/support/model/item/Item;

    move-result-object v0

    .line 586
    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/item/Item;->getProperties()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/DIDLObject$Property;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/DIDLObject$Property;->getDescriptorName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "date"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 587
    invoke-virtual {p1}, Lcom/fiio/music/d/a/c;->b()Lorg/fourthline/cling/support/model/item/Item;

    move-result-object v0

    .line 588
    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/item/Item;->getProperties()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/DIDLObject$Property;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/DIDLObject$Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 589
    invoke-virtual {v4, v0}, Lcom/fiio/music/entity/Song;->setYear(Ljava/lang/String;)V

    .line 592
    :cond_7
    invoke-virtual {p1}, Lcom/fiio/music/d/a/c;->b()Lorg/fourthline/cling/support/model/item/Item;

    move-result-object v0

    .line 593
    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/item/Item;->getProperties()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/DIDLObject$Property;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/DIDLObject$Property;->getDescriptorName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "originalTrackNumber"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 594
    invoke-virtual {p1}, Lcom/fiio/music/d/a/c;->b()Lorg/fourthline/cling/support/model/item/Item;

    move-result-object v0

    .line 595
    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/item/Item;->getProperties()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/DIDLObject$Property;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/DIDLObject$Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 596
    invoke-static {v0}, Lcom/fiio/music/util/h;->a(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/fiio/music/entity/Song;->setTrack(I)V

    .line 599
    :cond_8
    invoke-virtual {p1}, Lcom/fiio/music/d/a/c;->b()Lorg/fourthline/cling/support/model/item/Item;

    move-result-object v0

    .line 600
    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/item/Item;->getProperties()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/DIDLObject$Property;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/DIDLObject$Property;->getDescriptorName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "albumArtURI"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 601
    invoke-virtual {p1}, Lcom/fiio/music/d/a/c;->b()Lorg/fourthline/cling/support/model/item/Item;

    move-result-object v0

    .line 602
    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/item/Item;->getProperties()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/DIDLObject$Property;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/DIDLObject$Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 601
    :cond_9
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_2
.end method

.method private setAnimation()V
    .locals 9

    .prologue
    const/high16 v8, 0x41200000    # 10.0f

    const-wide/16 v6, 0x12c

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 354
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 355
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 357
    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 358
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 360
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/high16 v2, 0x41500000    # 13.0f

    const/high16 v3, 0x42480000    # 50.0f

    invoke-direct {v1, v5, v2, v8, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 362
    invoke-virtual {v1, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 363
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 365
    new-instance v1, Landroid/view/animation/RotateAnimation;

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-direct {v1, v2, v8}, Landroid/view/animation/RotateAnimation;-><init>(FF)V

    .line 367
    invoke-virtual {v1, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 368
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 370
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/high16 v2, 0x40a00000    # 5.0f

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v1, v2, v4, v3, v4}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 372
    invoke-virtual {v1, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 373
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 375
    new-instance v1, Landroid/view/animation/LayoutAnimationController;

    invoke-direct {v1, v0, v5}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;F)V

    .line 378
    iget-object v0, p0, Lcom/fiio/music/fragment/DlnaFragment;->mContentLv:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 380
    return-void
.end method


# virtual methods
.method protected createRootContainer(Lorg/fourthline/cling/model/meta/Service;)Lorg/fourthline/cling/support/model/container/Container;
    .locals 3

    .prologue
    .line 336
    new-instance v0, Lorg/fourthline/cling/support/model/container/Container;

    invoke-direct {v0}, Lorg/fourthline/cling/support/model/container/Container;-><init>()V

    .line 337
    const-string v1, "0"

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/container/Container;->setId(Ljava/lang/String;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 338
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Content Directory on "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/Service;->getDevice()Lorg/fourthline/cling/model/meta/Device;

    move-result-object v2

    invoke-virtual {v2}, Lorg/fourthline/cling/model/meta/Device;->getDisplayString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 338
    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/container/Container;->setTitle(Ljava/lang/String;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 340
    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 895
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 897
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 235
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 236
    return-void
.end method

.method public onBackKey()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 673
    iget-object v0, p0, Lcom/fiio/music/fragment/DlnaFragment;->mCounter:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 674
    iget-object v0, p0, Lcom/fiio/music/fragment/DlnaFragment;->mSaveDirectoryMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/fiio/music/fragment/DlnaFragment;->mCounter:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    iget-object v0, p0, Lcom/fiio/music/fragment/DlnaFragment;->mCounter:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/DlnaFragment;->mCounter:Ljava/lang/Integer;

    .line 676
    iget-object v0, p0, Lcom/fiio/music/fragment/DlnaFragment;->mContentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 677
    iget-object v2, p0, Lcom/fiio/music/fragment/DlnaFragment;->mContentList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/fiio/music/fragment/DlnaFragment;->mSaveDirectoryMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/fiio/music/fragment/DlnaFragment;->mCounter:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 678
    iget-object v0, p0, Lcom/fiio/music/fragment/DlnaFragment;->contenterDir:Ljava/lang/String;

    invoke-static {v0}, Lcom/fiio/music/util/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/DlnaFragment;->contenterDir:Ljava/lang/String;

    .line 679
    iget-object v0, p0, Lcom/fiio/music/fragment/DlnaFragment;->mContentAdapter:Lcom/fiio/music/fragment/i;

    iget-object v2, p0, Lcom/fiio/music/fragment/DlnaFragment;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0, v2}, Lcom/fiio/music/fragment/i;->a(Lcom/fiio/music/service/h;)V

    .line 680
    iget-object v0, p0, Lcom/fiio/music/fragment/DlnaFragment;->mContentAdapter:Lcom/fiio/music/fragment/i;

    iget-object v2, p0, Lcom/fiio/music/fragment/DlnaFragment;->contenterDir:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/fiio/music/fragment/i;->b(Ljava/lang/String;)V

    .line 681
    iget-object v0, p0, Lcom/fiio/music/fragment/DlnaFragment;->mContentAdapter:Lcom/fiio/music/fragment/i;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/i;->notifyDataSetChanged()V

    .line 683
    const-string v0, "xyz"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "contenterDir="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/fiio/music/fragment/DlnaFragment;->contenterDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    iget-object v0, p0, Lcom/fiio/music/fragment/DlnaFragment;->mContentList:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/fiio/music/fragment/DlnaFragment;->initSongList(Ljava/util/List;)V

    move v0, v1

    .line 687
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 239
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 240
    new-instance v0, Lcom/b/a/b/e;

    invoke-direct {v0}, Lcom/b/a/b/e;-><init>()V

    .line 241
    invoke-virtual {v0}, Lcom/b/a/b/e;->a()Lcom/b/a/b/e;

    move-result-object v0

    .line 242
    const v1, 0x7f020380

    invoke-virtual {v0, v1}, Lcom/b/a/b/e;->b(I)Lcom/b/a/b/e;

    move-result-object v0

    .line 243
    const v1, 0x7f020381

    invoke-virtual {v0, v1}, Lcom/b/a/b/e;->c(I)Lcom/b/a/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/b/e;->b()Lcom/b/a/b/e;

    move-result-object v0

    .line 244
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/b/a/b/e;->b(Z)Lcom/b/a/b/e;

    move-result-object v0

    new-instance v1, Lcom/b/a/b/c/c;

    invoke-direct {v1}, Lcom/b/a/b/c/c;-><init>()V

    invoke-virtual {v0, v1}, Lcom/b/a/b/e;->a(Lcom/b/a/b/c/a;)Lcom/b/a/b/e;

    move-result-object v0

    .line 245
    invoke-virtual {v0}, Lcom/b/a/b/e;->d()Lcom/b/a/b/d;

    move-result-object v0

    .line 240
    iput-object v0, p0, Lcom/fiio/music/fragment/DlnaFragment;->options:Lcom/b/a/b/d;

    .line 246
    invoke-virtual {p0}, Lcom/fiio/music/fragment/DlnaFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "changestyle"

    invoke-virtual {p0}, Lcom/fiio/music/fragment/DlnaFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/DlnaFragment;->changestylesp:Landroid/content/SharedPreferences;

    .line 247
    invoke-virtual {p0}, Lcom/fiio/music/fragment/DlnaFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/DlnaFragment;->mContext:Landroid/content/Context;

    .line 249
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 252
    iget-object v0, p0, Lcom/fiio/music/fragment/DlnaFragment;->changestylesp:Landroid/content/SharedPreferences;

    const-string v1, "styleChange"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fiio/music/fragment/DlnaFragment;->UI_IS_CHANGE:Z

    .line 253
    const-string v0, "zxy----"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " UI_IS_CHANGE  :   "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/fiio/music/fragment/DlnaFragment;->UI_IS_CHANGE:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/fiio/music/fragment/DlnaFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/a;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/fiio/music/fragment/DlnaFragment;->STYLE_PARAMTER:I

    .line 255
    const/4 v0, 0x0

    .line 258
    iget v1, p0, Lcom/fiio/music/fragment/DlnaFragment;->STYLE_PARAMTER:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 259
    const v0, 0x7f04003c

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 273
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/fiio/music/fragment/DlnaFragment;->initView(Landroid/view/View;)V

    .line 274
    return-object v0

    .line 260
    :cond_1
    iget v1, p0, Lcom/fiio/music/fragment/DlnaFragment;->STYLE_PARAMTER:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 261
    const v0, 0x7f04003d

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 262
    :cond_2
    iget v1, p0, Lcom/fiio/music/fragment/DlnaFragment;->STYLE_PARAMTER:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 263
    const v0, 0x7f04003e

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 264
    :cond_3
    iget v1, p0, Lcom/fiio/music/fragment/DlnaFragment;->STYLE_PARAMTER:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 265
    const v0, 0x7f04003f

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 919
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 921
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 914
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 915
    return-void
.end method

.method public onDetach()V
    .locals 0

    .prologue
    .line 925
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 926
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 902
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 904
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/fiio/music/fragment/DlnaFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/activity/FiiOMusicApplication;

    iput-object v0, p0, Lcom/fiio/music/fragment/DlnaFragment;->mBaseApplication:Lcom/fiio/music/activity/FiiOMusicApplication;

    .line 292
    sget-object v0, Lcom/fiio/music/activity/FiiOMusicApplication;->a:Lcom/fiio/music/d/a/d;

    if-nez v0, :cond_1

    .line 293
    iget-object v0, p0, Lcom/fiio/music/fragment/DlnaFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/fiio/music/fragment/DlnaFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f0c022e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 294
    const/4 v2, 0x0

    .line 293
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 294
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 302
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 303
    return-void

    .line 295
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/fragment/DlnaFragment;->mLastDevice:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, ""

    iget-object v1, p0, Lcom/fiio/music/fragment/DlnaFragment;->mLastDevice:Ljava/lang/String;

    if-eq v0, v1, :cond_2

    .line 296
    iget-object v0, p0, Lcom/fiio/music/fragment/DlnaFragment;->mLastDevice:Ljava/lang/String;

    sget-object v1, Lcom/fiio/music/activity/FiiOMusicApplication;->a:Lcom/fiio/music/d/a/d;

    invoke-virtual {v1}, Lcom/fiio/music/d/a/d;->toString()Ljava/lang/String;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 298
    :cond_2
    invoke-direct {p0}, Lcom/fiio/music/fragment/DlnaFragment;->initData()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 886
    new-instance v0, Lcom/fiio/music/service/h;

    invoke-virtual {p0}, Lcom/fiio/music/fragment/DlnaFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fiio/music/service/h;-><init>(Landroid/content/ContextWrapper;)V

    iput-object v0, p0, Lcom/fiio/music/fragment/DlnaFragment;->mediaPlayerManager:Lcom/fiio/music/service/h;

    .line 887
    iget-object v0, p0, Lcom/fiio/music/fragment/DlnaFragment;->mediaPlayerManager:Lcom/fiio/music/service/h;

    iget-object v1, p0, Lcom/fiio/music/fragment/DlnaFragment;->mConnectionListener:Lcom/fiio/music/service/l;

    invoke-virtual {v0, v1}, Lcom/fiio/music/service/h;->a(Lcom/fiio/music/service/l;)V

    .line 888
    iget-object v0, p0, Lcom/fiio/music/fragment/DlnaFragment;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->b()V

    .line 889
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 890
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 908
    iget-object v0, p0, Lcom/fiio/music/fragment/DlnaFragment;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->g()V

    .line 909
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 910
    return-void
.end method
