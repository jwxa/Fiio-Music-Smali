.class public Lcom/fiio/music/activity/ListMainActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "ListMainActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Landroid/widget/ExpandableListView$OnChildClickListener;
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;
.implements Lcom/fiio/music/widget/r;
.implements Lcom/fiio/music/widget/s;


# static fields
.field private static final ACTION_SLEEP_COUNTDOWN_TIME_CHANGE:Ljava/lang/String; = "com.fiio.music.sleep_countdown_time_change"

.field private static final ACTION_SLEEP_PURETONE_MODE:Ljava/lang/String; = "com.fiio.music.sleep_puretone_mode"

.field private static final ACTION_SLEEP_SHUTDOWN_APP:Ljava/lang/String; = "com.fiio.music.sleep_shutdown_app"

.field public static final CUE_TRACK_NUM_MEMORY:Ljava/lang/String; = "cueTrackNumMemory"

.field private static final LOCK_VOLUME_CHANGED:Ljava/lang/String; = "android.media.MASTER_VOLUME_CHANGED_ACTION"

.field private static final NEXT_SONG:I = 0xf

.field private static final ONE_MINUTE_MILLIS:I = 0xea60

.field public static final PLAY_ALL_INDEX_MEMORY:Ljava/lang/String; = "playAllIndexMemory"

.field private static final PREVIOUS_SONG:I = 0x10

.field private static final SYSTEM_MEDIA_EJECT:Ljava/lang/String; = "android.intent.action.MEDIA_EJECT"

.field private static final SYSTEM_MODEL_SWITCH:Ljava/lang/String; = "com.fiio.music.switch_system_model"

.field private static final SYSTEM_SHUT_DOWN:Ljava/lang/String; = "android.intent.action.ACTION_SHUTDOWN"

.field private static final SYSTEM_SUSPEND_ACTION:Ljava/lang/String; = "com.android.intent.action.system_suspend_action"

.field private static final TAG:Ljava/lang/String;

.field public static final UPDATE_SLEEP_TEXT:I = 0x1

.field private static appVersionName:Ljava/lang/String;

.field private static curPlayListName:Ljava/lang/String;

.field private static currentTimeMillis:J

.field private static isSDCardMount:Z


# instance fields
.field private OTAsp:Landroid/content/SharedPreferences;

.field private STYLE_PARAMTER:I

.field private activity:Lcom/fiio/music/entity/Activity;

.field private changeStyleboolean:Z

.field private childList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/util/bq;",
            ">;>;"
        }
    .end annotation
.end field

.field private cueFlagForMemory:Z

.field curAlbum:Ljava/lang/String;

.field private curPlayingSongPreferences:Landroid/content/SharedPreferences;

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

.field private currentDuration:I

.field private currentPosition:I

.field private customVoicesharedPreferences:Landroid/content/SharedPreferences;

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;"
        }
    .end annotation
.end field

.field private dataSourceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private dlnaIsCheck:Ljava/lang/Boolean;

.field public drawable_g:[I

.field public drawable_item_bg:[I

.field private expandableListView:Lcom/fiio/music/widget/PinnedHeaderExpandableListView;

.field private fgv_list_main:Lcom/fiio/music/custom/FlingGalleryView;

.field private foldersongUtils:Lcom/fiio/music/util/an;

.field private fragment:Lcom/fiio/music/fragment/SettingMenuFragment;

.field private groupList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fiio/music/util/as;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Landroid/os/Handler;

.field protected imageLoader:Lcom/b/a/b/f;

.field private inflater:Landroid/view/LayoutInflater;

.field private isAndroidModel:I

.field private isEjectBroadCastAfterShutdownBroadCast:Z

.field private isFirst_memory:Z

.field private isHidden:Z

.field private isSwitchModel:Z

.field private lastIndex:I

.field private localMusicIsCheck:Ljava/lang/Boolean;

.field private lockScreenVolumeIntentFilter:Landroid/content/IntentFilter;

.field private lockScreenVolumeReceiver:Lcom/fiio/music/activity/bx;

.field private mAritstNameStr:Ljava/lang/String;

.field private mAudioManage:Landroid/media/AudioManager;

.field private mConnectionListener:Lcom/fiio/music/service/l;

.field private mContext:Landroid/content/Context;

.field private mFirstSearchBtn:Landroid/widget/ImageButton;

.field private mFirstSettingButton:Landroid/widget/ImageButton;

.field private mImageViews:[Landroid/widget/ImageView;

.field private mListSearchBtn:Landroid/widget/ImageButton;

.field private mMainArtistAndInfoTV:Landroid/widget/TextView;

.field private mMainSongNameTV:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

.field private mMusicEntryButton:Landroid/widget/ImageButton;

.field private mPlayingSongPosition:I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSlidingMenu:Lcom/fiio/music/slidemenu/SlidingMenu;

.field private mSongNameStr:Ljava/lang/String;

.field private mStickLayout:Lcom/fiio/music/widget/StickyLayout;

.field private mTestExpandableListAdapter:Lcom/fiio/music/adapter/TestExpandableListAdapter;

.field private manager:Lcom/fiio/music/util/bh;

.field private maxVoicesharedPreferences:Landroid/content/SharedPreferences;

.field private mediaPlayerBroadcastReceiver:Lcom/fiio/music/activity/by;

.field public mediaPlayerManager:Lcom/fiio/music/service/h;

.field private memoryPlaySharedPreferences:Landroid/content/SharedPreferences;

.field private memoryPlaySwitch:Ljava/lang/Boolean;

.field private mostPlayIsCheck:Ljava/lang/Boolean;

.field private mostPlayRadioButton:Ljava/lang/Boolean;

.field private musicLibUpdateMode:Ljava/lang/Boolean;

.field private musicLibUpdateSharedPreferences:Landroid/content/SharedPreferences;

.field private musicManager:Lcom/fiio/music/util/bh;

.field nextAlbum:Ljava/lang/String;

.field private nextOrPre:I

.field private openFilePlayingSong:Lcom/fiio/music/entity/Song;

.field private options:Lcom/b/a/b/d;

.field private params:Landroid/view/ViewGroup$LayoutParams;

.field private personalizationSharedPreferences:Landroid/content/SharedPreferences;

.field private playHistoryDao:Lcom/fiio/music/b/h;

.field private playListIsCheck:Ljava/lang/Boolean;

.field private playListManager:Lcom/fiio/music/util/bw;

.field private playListRadioButton:Ljava/lang/Boolean;

.field private playOftastDao:Lcom/fiio/music/b/i;

.field private playerListDao:Lcom/fiio/music/b/j;

.field private playingSong:Lcom/fiio/music/entity/Song;

.field prevAlbum:Ljava/lang/String;

.field private recentPlayFilePath:Ljava/lang/String;

.field private recentlyAddIsCheck:Ljava/lang/Boolean;

.field private recentlyAddRadioButton:Ljava/lang/Boolean;

.field private recentlyPlayIsCheck:Ljava/lang/Boolean;

.field private recentlyPlayRadioButton:Ljava/lang/Boolean;

.field private sacdFlagForMemory:Z

.field private screenIndex:I

.field private scrollToScreenListener:Lcom/fiio/music/custom/e;

.field private sdCardIntentFilter:Landroid/content/IntentFilter;

.field private sdCardReceiver:Landroid/content/BroadcastReceiver;

.field private sleepCountdownTimeChangeReceiver:Lcom/fiio/music/activity/bz;

.field private sleepIntentFilter:Landroid/content/IntentFilter;

.field private sleepProgressValue:I

.field private sleepSharedPreferences:Landroid/content/SharedPreferences;

.field private sleep_seekBar:Landroid/widget/SeekBar;

.field private songDao:Lcom/fiio/music/b/k;

.field private songPath:Ljava/lang/String;

.field public songRealId:I

.field private swtichSystemModelIntentFilter:Landroid/content/IntentFilter;

.field private swtichSystemModelReceiver:Landroid/content/BroadcastReceiver;

.field private systemShutDown:Z

.field private toast:Landroid/widget/Toast;

.field private updateBCLock:Z

.field private vg_list_tab_item:[Landroid/view/ViewGroup;

.field private viewPager:Landroid/support/v4/view/ViewPager;

.field private volumedialog:Lcom/fiio/music/widget/VolumeDialog;

.field private wasCurrAlbumUpdated:Z

.field private xfMenu:Lcom/fiio/music/custom/j;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 165
    const-class v0, Lcom/fiio/music/activity/ListMainActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fiio/music/activity/ListMainActivity;->TAG:Ljava/lang/String;

    .line 1455
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/fiio/music/activity/ListMainActivity;->currentTimeMillis:J

    .line 2681
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 163
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 167
    new-array v0, v3, [Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->vg_list_tab_item:[Landroid/view/ViewGroup;

    .line 171
    iput v1, p0, Lcom/fiio/music/activity/ListMainActivity;->screenIndex:I

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->dataSourceList:Ljava/util/List;

    .line 206
    iput-boolean v1, p0, Lcom/fiio/music/activity/ListMainActivity;->updateBCLock:Z

    .line 212
    iput-boolean v1, p0, Lcom/fiio/music/activity/ListMainActivity;->systemShutDown:Z

    .line 245
    iput-boolean v1, p0, Lcom/fiio/music/activity/ListMainActivity;->isEjectBroadCastAfterShutdownBroadCast:Z

    .line 255
    iput v1, p0, Lcom/fiio/music/activity/ListMainActivity;->lastIndex:I

    .line 271
    iput-boolean v1, p0, Lcom/fiio/music/activity/ListMainActivity;->isHidden:Z

    .line 273
    iput v3, p0, Lcom/fiio/music/activity/ListMainActivity;->STYLE_PARAMTER:I

    .line 286
    new-instance v0, Lcom/fiio/music/activity/at;

    invoke-direct {v0, p0}, Lcom/fiio/music/activity/at;-><init>(Lcom/fiio/music/activity/ListMainActivity;)V

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 824
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fiio/music/activity/ListMainActivity;->isFirst_memory:Z

    .line 1202
    new-instance v0, Lcom/fiio/music/activity/bf;

    invoke-direct {v0, p0}, Lcom/fiio/music/activity/bf;-><init>(Lcom/fiio/music/activity/ListMainActivity;)V

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mConnectionListener:Lcom/fiio/music/service/l;

    .line 1636
    new-instance v0, Lcom/fiio/music/activity/bq;

    invoke-direct {v0, p0}, Lcom/fiio/music/activity/bq;-><init>(Lcom/fiio/music/activity/ListMainActivity;)V

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->scrollToScreenListener:Lcom/fiio/music/custom/e;

    .line 2447
    iput-boolean v1, p0, Lcom/fiio/music/activity/ListMainActivity;->wasCurrAlbumUpdated:Z

    .line 2573
    const/4 v0, -0x1

    iput v0, p0, Lcom/fiio/music/activity/ListMainActivity;->nextOrPre:I

    .line 2574
    iput-object v2, p0, Lcom/fiio/music/activity/ListMainActivity;->curAlbum:Ljava/lang/String;

    .line 2575
    iput-object v2, p0, Lcom/fiio/music/activity/ListMainActivity;->nextAlbum:Ljava/lang/String;

    .line 2576
    iput-object v2, p0, Lcom/fiio/music/activity/ListMainActivity;->prevAlbum:Ljava/lang/String;

    .line 163
    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    sget-object v0, Lcom/fiio/music/activity/ListMainActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/fiio/music/activity/ListMainActivity;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$10(Lcom/fiio/music/activity/ListMainActivity;)Lcom/fiio/music/entity/Song;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->playingSong:Lcom/fiio/music/entity/Song;

    return-object v0
.end method

.method static synthetic access$11(Lcom/fiio/music/activity/ListMainActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcom/fiio/music/activity/ListMainActivity;->songPath:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$12(Lcom/fiio/music/activity/ListMainActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/fiio/music/activity/ListMainActivity;->mSongNameStr:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$13(Lcom/fiio/music/activity/ListMainActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/fiio/music/activity/ListMainActivity;->mAritstNameStr:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$14(Lcom/fiio/music/activity/ListMainActivity;I)V
    .locals 0

    .prologue
    .line 260
    iput p1, p0, Lcom/fiio/music/activity/ListMainActivity;->currentDuration:I

    return-void
.end method

.method static synthetic access$15(Lcom/fiio/music/activity/ListMainActivity;)Lcom/fiio/music/widget/AlwaysMarqueeTextView;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mMainSongNameTV:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    return-object v0
.end method

.method static synthetic access$16(Lcom/fiio/music/activity/ListMainActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mSongNameStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$17(Lcom/fiio/music/activity/ListMainActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mMainArtistAndInfoTV:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$18(Lcom/fiio/music/activity/ListMainActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mAritstNameStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$19(Lcom/fiio/music/activity/ListMainActivity;)Z
    .locals 1

    .prologue
    .line 271
    iget-boolean v0, p0, Lcom/fiio/music/activity/ListMainActivity;->isHidden:Z

    return v0
.end method

.method static synthetic access$2(Lcom/fiio/music/activity/ListMainActivity;)Lcom/fiio/music/entity/Activity;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->activity:Lcom/fiio/music/entity/Activity;

    return-object v0
.end method

.method static synthetic access$20(Lcom/fiio/music/activity/ListMainActivity;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/fiio/music/activity/ListMainActivity;->curSongList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$21(Lcom/fiio/music/activity/ListMainActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->curSongList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$22(Lcom/fiio/music/activity/ListMainActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->songPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$23(Lcom/fiio/music/activity/ListMainActivity;I)V
    .locals 0

    .prologue
    .line 174
    iput p1, p0, Lcom/fiio/music/activity/ListMainActivity;->mPlayingSongPosition:I

    return-void
.end method

.method static synthetic access$24(Lcom/fiio/music/activity/ListMainActivity;)I
    .locals 1

    .prologue
    .line 259
    iget v0, p0, Lcom/fiio/music/activity/ListMainActivity;->currentPosition:I

    return v0
.end method

.method static synthetic access$25()J
    .locals 2

    .prologue
    .line 1455
    sget-wide v0, Lcom/fiio/music/activity/ListMainActivity;->currentTimeMillis:J

    return-wide v0
.end method

.method static synthetic access$26(J)V
    .locals 0

    .prologue
    .line 1455
    sput-wide p0, Lcom/fiio/music/activity/ListMainActivity;->currentTimeMillis:J

    return-void
.end method

.method static synthetic access$27(Lcom/fiio/music/activity/ListMainActivity;)I
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Lcom/fiio/music/activity/ListMainActivity;->sleepProgressValue:I

    return v0
.end method

.method static synthetic access$28(Lcom/fiio/music/activity/ListMainActivity;)V
    .locals 0

    .prologue
    .line 1556
    invoke-direct {p0}, Lcom/fiio/music/activity/ListMainActivity;->cancelAutoSleepCountdown()V

    return-void
.end method

.method static synthetic access$29(Lcom/fiio/music/activity/ListMainActivity;I)V
    .locals 0

    .prologue
    .line 218
    iput p1, p0, Lcom/fiio/music/activity/ListMainActivity;->sleepProgressValue:I

    return-void
.end method

.method static synthetic access$3(Lcom/fiio/music/activity/ListMainActivity;Lcom/fiio/music/network/bean/DownloadInfo;)V
    .locals 0

    .prologue
    .line 2983
    invoke-direct {p0, p1}, Lcom/fiio/music/activity/ListMainActivity;->showUpdateInfo(Lcom/fiio/music/network/bean/DownloadInfo;)V

    return-void
.end method

.method static synthetic access$30(Lcom/fiio/music/activity/ListMainActivity;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->sleepSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$31(Lcom/fiio/music/activity/ListMainActivity;)[Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mImageViews:[Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$32(Lcom/fiio/music/activity/ListMainActivity;)Z
    .locals 1

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/fiio/music/activity/ListMainActivity;->isEjectBroadCastAfterShutdownBroadCast:Z

    return v0
.end method

.method static synthetic access$33(Lcom/fiio/music/activity/ListMainActivity;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->musicLibUpdateSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$34(Lcom/fiio/music/activity/ListMainActivity;Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/fiio/music/activity/ListMainActivity;->musicLibUpdateMode:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$35(Lcom/fiio/music/activity/ListMainActivity;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->musicLibUpdateMode:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$36(Lcom/fiio/music/activity/ListMainActivity;)Z
    .locals 1

    .prologue
    .line 212
    iget-boolean v0, p0, Lcom/fiio/music/activity/ListMainActivity;->systemShutDown:Z

    return v0
.end method

.method static synthetic access$37(Z)V
    .locals 0

    .prologue
    .line 207
    sput-boolean p0, Lcom/fiio/music/activity/ListMainActivity;->isSDCardMount:Z

    return-void
.end method

.method static synthetic access$38(Lcom/fiio/music/activity/ListMainActivity;Z)V
    .locals 0

    .prologue
    .line 208
    iput-boolean p1, p0, Lcom/fiio/music/activity/ListMainActivity;->isSwitchModel:Z

    return-void
.end method

.method static synthetic access$39(Lcom/fiio/music/activity/ListMainActivity;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->memoryPlaySharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$4(Lcom/fiio/music/activity/ListMainActivity;)V
    .locals 0

    .prologue
    .line 851
    invoke-direct {p0}, Lcom/fiio/music/activity/ListMainActivity;->memoryPlay()V

    return-void
.end method

.method static synthetic access$40(Lcom/fiio/music/activity/ListMainActivity;)Z
    .locals 1

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/fiio/music/activity/ListMainActivity;->isSwitchModel:Z

    return v0
.end method

.method static synthetic access$41(Lcom/fiio/music/activity/ListMainActivity;Z)V
    .locals 0

    .prologue
    .line 212
    iput-boolean p1, p0, Lcom/fiio/music/activity/ListMainActivity;->systemShutDown:Z

    return-void
.end method

.method static synthetic access$42(Lcom/fiio/music/activity/ListMainActivity;Z)V
    .locals 0

    .prologue
    .line 245
    iput-boolean p1, p0, Lcom/fiio/music/activity/ListMainActivity;->isEjectBroadCastAfterShutdownBroadCast:Z

    return-void
.end method

.method static synthetic access$43()Z
    .locals 1

    .prologue
    .line 207
    sget-boolean v0, Lcom/fiio/music/activity/ListMainActivity;->isSDCardMount:Z

    return v0
.end method

.method static synthetic access$44(Lcom/fiio/music/activity/ListMainActivity;)Lcom/fiio/music/service/l;
    .locals 1

    .prologue
    .line 1202
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mConnectionListener:Lcom/fiio/music/service/l;

    return-object v0
.end method

.method static synthetic access$45(Lcom/fiio/music/activity/ListMainActivity;)V
    .locals 0

    .prologue
    .line 3101
    invoke-direct {p0}, Lcom/fiio/music/activity/ListMainActivity;->uploadFile()V

    return-void
.end method

.method static synthetic access$46(Lcom/fiio/music/activity/ListMainActivity;)Z
    .locals 1

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/fiio/music/activity/ListMainActivity;->changeStyleboolean:Z

    return v0
.end method

.method static synthetic access$47(Lcom/fiio/music/activity/ListMainActivity;)Lcom/fiio/music/custom/j;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->xfMenu:Lcom/fiio/music/custom/j;

    return-object v0
.end method

.method static synthetic access$48(Lcom/fiio/music/activity/ListMainActivity;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->params:Landroid/view/ViewGroup$LayoutParams;

    return-object v0
.end method

.method static synthetic access$49(Lcom/fiio/music/activity/ListMainActivity;)Landroid/widget/Toast;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->toast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$5(Lcom/fiio/music/activity/ListMainActivity;)[Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->vg_list_tab_item:[Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$50(Lcom/fiio/music/activity/ListMainActivity;Landroid/widget/Toast;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/fiio/music/activity/ListMainActivity;->toast:Landroid/widget/Toast;

    return-void
.end method

.method static synthetic access$51(Lcom/fiio/music/activity/ListMainActivity;)Lcom/fiio/music/slidemenu/SlidingMenu;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mSlidingMenu:Lcom/fiio/music/slidemenu/SlidingMenu;

    return-object v0
.end method

.method static synthetic access$52(Lcom/fiio/music/activity/ListMainActivity;)V
    .locals 0

    .prologue
    .line 2534
    invoke-direct {p0}, Lcom/fiio/music/activity/ListMainActivity;->gotoPlayMain()V

    return-void
.end method

.method static synthetic access$53(Lcom/fiio/music/activity/ListMainActivity;Landroid/content/SharedPreferences;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/fiio/music/activity/ListMainActivity;->curPlayingSongPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method static synthetic access$54(Lcom/fiio/music/activity/ListMainActivity;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->curPlayingSongPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$55(Lcom/fiio/music/activity/ListMainActivity;Lcom/fiio/music/entity/Activity;)V
    .locals 0

    .prologue
    .line 282
    iput-object p1, p0, Lcom/fiio/music/activity/ListMainActivity;->activity:Lcom/fiio/music/entity/Activity;

    return-void
.end method

.method static synthetic access$56(Lcom/fiio/music/activity/ListMainActivity;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 3086
    invoke-direct {p0, p1}, Lcom/fiio/music/activity/ListMainActivity;->openFile(Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$6(Lcom/fiio/music/activity/ListMainActivity;)I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/fiio/music/activity/ListMainActivity;->screenIndex:I

    return v0
.end method

.method static synthetic access$7(Lcom/fiio/music/activity/ListMainActivity;I)V
    .locals 0

    .prologue
    .line 171
    iput p1, p0, Lcom/fiio/music/activity/ListMainActivity;->screenIndex:I

    return-void
.end method

.method static synthetic access$8(Lcom/fiio/music/activity/ListMainActivity;I)V
    .locals 0

    .prologue
    .line 259
    iput p1, p0, Lcom/fiio/music/activity/ListMainActivity;->currentPosition:I

    return-void
.end method

.method static synthetic access$9(Lcom/fiio/music/activity/ListMainActivity;Lcom/fiio/music/entity/Song;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/fiio/music/activity/ListMainActivity;->playingSong:Lcom/fiio/music/entity/Song;

    return-void
.end method

.method private cancelAutoSleepCountdown()V
    .locals 4

    .prologue
    .line 1557
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/ListMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1558
    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.fiio.music.sleep_countdown_time_change"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1559
    const/high16 v3, 0x10000000

    .line 1558
    invoke-static {p0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1560
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1561
    return-void
.end method

.method private checkScannerTip(Lcom/fiio/music/c/b;)V
    .locals 5

    .prologue
    .line 801
    const-string v0, "isScannerTip"

    invoke-virtual {p1, v0}, Lcom/fiio/music/c/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 802
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 803
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 804
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 805
    const v0, 0x7f0400d3

    invoke-virtual {v1, v0}, Landroid/view/Window;->setContentView(I)V

    .line 806
    const v0, 0x7f0b007e

    invoke-virtual {v1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 807
    const v3, 0x7f0b0079

    invoke-virtual {v1, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 808
    invoke-virtual {p0}, Lcom/fiio/music/activity/ListMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c00cf

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 809
    new-instance v1, Lcom/fiio/music/activity/bw;

    invoke-direct {v1, p0, v2}, Lcom/fiio/music/activity/bw;-><init>(Lcom/fiio/music/activity/ListMainActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 820
    const-string v0, "isScannerTip"

    const-string v1, "OK"

    invoke-virtual {p1, v0, v1}, Lcom/fiio/music/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    :cond_0
    return-void
.end method

.method private createMenu()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 1349
    new-instance v0, Lcom/fiio/music/custom/j;

    invoke-direct {v0, p0}, Lcom/fiio/music/custom/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->xfMenu:Lcom/fiio/music/custom/j;

    .line 1351
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1352
    new-array v1, v4, [I

    fill-array-data v1, :array_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1353
    new-array v1, v4, [I

    fill-array-data v1, :array_1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1354
    new-array v1, v4, [I

    fill-array-data v1, :array_2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1355
    iget-object v1, p0, Lcom/fiio/music/activity/ListMainActivity;->xfMenu:Lcom/fiio/music/custom/j;

    const v2, 0x7f0c022c

    invoke-virtual {p0, v2}, Lcom/fiio/music/activity/ListMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/fiio/music/activity/aw;

    invoke-direct {v3, p0}, Lcom/fiio/music/activity/aw;-><init>(Lcom/fiio/music/activity/ListMainActivity;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/fiio/music/custom/j;->a(Ljava/lang/String;Ljava/util/List;Lcom/fiio/music/adapter/MenuAdapter$ItemListener;)V

    .line 1373
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1374
    new-array v1, v4, [I

    fill-array-data v1, :array_3

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1376
    new-instance v1, Lcom/fiio/music/c/b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/fiio/music/c/b;-><init>(Landroid/content/Context;Z)V

    .line 1377
    const-string v2, "brightness"

    invoke-virtual {v1, v2}, Lcom/fiio/music/c/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1378
    if-eqz v1, :cond_0

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1379
    new-array v1, v4, [I

    fill-array-data v1, :array_4

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1383
    :goto_0
    new-array v1, v4, [I

    fill-array-data v1, :array_5

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1384
    iget-object v1, p0, Lcom/fiio/music/activity/ListMainActivity;->xfMenu:Lcom/fiio/music/custom/j;

    const v2, 0x7f0c022b

    invoke-virtual {p0, v2}, Lcom/fiio/music/activity/ListMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/fiio/music/activity/ax;

    invoke-direct {v3, p0}, Lcom/fiio/music/activity/ax;-><init>(Lcom/fiio/music/activity/ListMainActivity;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/fiio/music/custom/j;->a(Ljava/lang/String;Ljava/util/List;Lcom/fiio/music/adapter/MenuAdapter$ItemListener;)V

    .line 1440
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1441
    new-array v1, v4, [I

    fill-array-data v1, :array_6

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1442
    iget-object v1, p0, Lcom/fiio/music/activity/ListMainActivity;->xfMenu:Lcom/fiio/music/custom/j;

    const v2, 0x7f0c0229

    invoke-virtual {p0, v2}, Lcom/fiio/music/activity/ListMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/fiio/music/activity/az;

    invoke-direct {v3, p0}, Lcom/fiio/music/activity/az;-><init>(Lcom/fiio/music/activity/ListMainActivity;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/fiio/music/custom/j;->a(Ljava/lang/String;Ljava/util/List;Lcom/fiio/music/adapter/MenuAdapter$ItemListener;)V

    .line 1449
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->xfMenu:Lcom/fiio/music/custom/j;

    invoke-virtual {v0}, Lcom/fiio/music/custom/j;->a()Landroid/widget/PopupWindow;

    .line 1450
    return-void

    .line 1381
    :cond_0
    new-array v1, v4, [I

    fill-array-data v1, :array_7

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1352
    nop

    :array_0
    .array-data 4
        0x7f0201b9
        0x7f0c000a
    .end array-data

    .line 1353
    :array_1
    .array-data 4
        0x7f0201bb
        0x7f0c0016
    .end array-data

    .line 1354
    :array_2
    .array-data 4
        0x7f0201ae
        0x7f0c0018
    .end array-data

    .line 1374
    :array_3
    .array-data 4
        0x7f0201bc
        0x7f0c001c
    .end array-data

    .line 1379
    :array_4
    .array-data 4
        0x7f0201a6
        0x7f0c001a
    .end array-data

    .line 1383
    :array_5
    .array-data 4
        0x7f0201ba
        0x7f0c0017
    .end array-data

    .line 1441
    :array_6
    .array-data 4
        0x7f0201a5
        0x7f0c01a3
    .end array-data

    .line 1381
    :array_7
    .array-data 4
        0x7f0201a7
        0x7f0c001b
    .end array-data
.end method

.method private dbUpgradeDialog(Z)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 2706
    if-eqz p1, :cond_0

    .line 2707
    const-string v0, "SQLITE_UPGRADE"

    invoke-virtual {p0, v0, v2}, Lcom/fiio/music/activity/ListMainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2708
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "flag"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2710
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 2711
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 2712
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 2713
    iget-boolean v0, p0, Lcom/fiio/music/activity/ListMainActivity;->changeStyleboolean:Z

    if-eqz v0, :cond_1

    .line 2714
    const v0, 0x7f0400d3

    invoke-virtual {v1, v0}, Landroid/view/Window;->setContentView(I)V

    .line 2718
    :goto_0
    const v0, 0x7f0b007e

    invoke-virtual {v1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2719
    const v3, 0x7f0b0079

    invoke-virtual {v1, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2720
    const v3, 0x7f0c01cd

    invoke-virtual {p0, v3}, Lcom/fiio/music/activity/ListMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2721
    new-instance v1, Lcom/fiio/music/activity/bi;

    invoke-direct {v1, p0, v2}, Lcom/fiio/music/activity/bi;-><init>(Lcom/fiio/music/activity/ListMainActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2734
    :cond_0
    return-void

    .line 2716
    :cond_1
    const v0, 0x7f0400d4

    invoke-virtual {v1, v0}, Landroid/view/Window;->setContentView(I)V

    goto :goto_0
.end method

.method private getPlayInfo()[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2520
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    .line 2521
    iget-object v1, p0, Lcom/fiio/music/activity/ListMainActivity;->curSongList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fiio/music/activity/ListMainActivity;->curSongList:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/fiio/music/activity/ListMainActivity;->curSongList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 2522
    :cond_0
    const-string v1, "0"

    aput-object v1, v0, v3

    .line 2526
    :goto_0
    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/fiio/music/activity/ListMainActivity;->curSongList:Ljava/util/List;

    invoke-static {v3}, Lcom/fiio/music/util/h;->a(Ljava/util/List;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2527
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/fiio/music/activity/ListMainActivity;->mSongNameStr:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 2528
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/fiio/music/activity/ListMainActivity;->mAritstNameStr:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 2529
    const/4 v1, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/fiio/music/activity/ListMainActivity;->currentPosition:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2530
    const/4 v1, 0x5

    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/fiio/music/activity/ListMainActivity;->currentDuration:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2531
    const/4 v1, 0x6

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v3}, Lcom/fiio/music/service/h;->z()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2532
    return-object v0

    .line 2524
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/fiio/music/activity/ListMainActivity;->mPlayingSongPosition:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    goto :goto_0
.end method

.method private gotoPlayMain()V
    .locals 3

    .prologue
    .line 2535
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2538
    const-string v1, "changeboolean"

    iget-boolean v2, p0, Lcom/fiio/music/activity/ListMainActivity;->changeStyleboolean:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2539
    const-string v1, "playerInfo"

    invoke-direct {p0}, Lcom/fiio/music/activity/ListMainActivity;->getPlayInfo()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 2540
    const-string v1, "playingSong"

    iget-object v2, p0, Lcom/fiio/music/activity/ListMainActivity;->playingSong:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2541
    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/ListMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 2542
    return-void
.end method

.method private initCustomVoice()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 766
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mContext:Landroid/content/Context;

    const-string v1, "default_voice"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->customVoicesharedPreferences:Landroid/content/SharedPreferences;

    .line 767
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mContext:Landroid/content/Context;

    const-string v1, "max_voice"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->maxVoicesharedPreferences:Landroid/content/SharedPreferences;

    .line 768
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mAudioManage:Landroid/media/AudioManager;

    .line 771
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.fiio.music/shared_prefs/max_voice.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 772
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 773
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->maxVoicesharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 774
    const-string v1, "MAX_VOICE"

    iget-object v2, p0, Lcom/fiio/music/activity/ListMainActivity;->mAudioManage:Landroid/media/AudioManager;

    invoke-virtual {v2, v4}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 775
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 777
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->customVoicesharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "SWITCH"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 778
    if-eqz v0, :cond_1

    .line 779
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->customVoicesharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "DEFAULT_VOICE"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 780
    iget-object v1, p0, Lcom/fiio/music/activity/ListMainActivity;->maxVoicesharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "MAX_VOICE"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 781
    if-le v1, v0, :cond_2

    .line 782
    iget-object v1, p0, Lcom/fiio/music/activity/ListMainActivity;->mAudioManage:Landroid/media/AudioManager;

    invoke-virtual {v1, v4, v0, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 795
    :cond_1
    :goto_0
    return-void

    .line 785
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mAudioManage:Landroid/media/AudioManager;

    invoke-virtual {v0, v4, v1, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0
.end method

.method private initDragGridView()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x3

    const/4 v6, 0x5

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1649
    const-string v0, "personalization"

    invoke-virtual {p0, v0, v5}, Lcom/fiio/music/activity/ListMainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->personalizationSharedPreferences:Landroid/content/SharedPreferences;

    .line 1650
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->personalizationSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "PLAY_LIST"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->playListIsCheck:Ljava/lang/Boolean;

    .line 1651
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->personalizationSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "LOCAL_MUSIC"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->localMusicIsCheck:Ljava/lang/Boolean;

    .line 1652
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->personalizationSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "DLNA"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->dlnaIsCheck:Ljava/lang/Boolean;

    .line 1653
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->personalizationSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "RECENTLY_PLAY"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->recentlyPlayIsCheck:Ljava/lang/Boolean;

    .line 1654
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->personalizationSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "MOST_PLAY"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mostPlayIsCheck:Ljava/lang/Boolean;

    .line 1655
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->personalizationSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "PLAY_LIST_RADIO_BUTTON"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->playListRadioButton:Ljava/lang/Boolean;

    .line 1656
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->personalizationSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "RECENTLY_PLAY_RADIO_BUTTON"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->recentlyPlayRadioButton:Ljava/lang/Boolean;

    .line 1657
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->personalizationSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "RECENTLY_ADD"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->recentlyAddIsCheck:Ljava/lang/Boolean;

    .line 1658
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->personalizationSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "RECENTLY_ADD_RADIO_BUTTON"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->recentlyAddRadioButton:Ljava/lang/Boolean;

    .line 1659
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->personalizationSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "MOST_PLAY_RADIO_BUTTON"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mostPlayRadioButton:Ljava/lang/Boolean;

    .line 1661
    const v0, 0x7f0b01a1

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/ListMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/widget/DragGridView;

    .line 1665
    iget v1, p0, Lcom/fiio/music/activity/ListMainActivity;->STYLE_PARAMTER:I

    if-ne v1, v4, :cond_7

    .line 1667
    new-array v1, v6, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/fiio/music/activity/ListMainActivity;->drawable_item_bg:[I

    .line 1673
    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/fiio/music/activity/ListMainActivity;->drawable_g:[I

    .line 1733
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/fiio/music/activity/ListMainActivity;->playListIsCheck:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/fiio/music/activity/ListMainActivity;->playListRadioButton:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1734
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1735
    const-string v2, "item_image"

    iget-object v3, p0, Lcom/fiio/music/activity/ListMainActivity;->drawable_g:[I

    aget v3, v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1736
    const-string v2, "item_bg"

    iget-object v3, p0, Lcom/fiio/music/activity/ListMainActivity;->drawable_item_bg:[I

    aget v3, v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1737
    const-string v2, "item_id"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1738
    iget-object v2, p0, Lcom/fiio/music/activity/ListMainActivity;->dataSourceList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1740
    :cond_1
    iget-object v1, p0, Lcom/fiio/music/activity/ListMainActivity;->localMusicIsCheck:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1741
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1742
    const-string v2, "item_image"

    iget-object v3, p0, Lcom/fiio/music/activity/ListMainActivity;->drawable_g:[I

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1743
    const-string v2, "item_bg"

    iget-object v3, p0, Lcom/fiio/music/activity/ListMainActivity;->drawable_item_bg:[I

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1744
    const-string v2, "item_id"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1745
    iget-object v2, p0, Lcom/fiio/music/activity/ListMainActivity;->dataSourceList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1747
    :cond_2
    iget-object v1, p0, Lcom/fiio/music/activity/ListMainActivity;->dlnaIsCheck:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1748
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1749
    const-string v2, "item_image"

    iget-object v3, p0, Lcom/fiio/music/activity/ListMainActivity;->drawable_g:[I

    aget v3, v3, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1750
    const-string v2, "item_bg"

    iget-object v3, p0, Lcom/fiio/music/activity/ListMainActivity;->drawable_item_bg:[I

    aget v3, v3, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1751
    const-string v2, "item_id"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1752
    iget-object v2, p0, Lcom/fiio/music/activity/ListMainActivity;->dataSourceList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1754
    :cond_3
    iget-object v1, p0, Lcom/fiio/music/activity/ListMainActivity;->recentlyPlayIsCheck:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/fiio/music/activity/ListMainActivity;->recentlyPlayRadioButton:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1755
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1756
    const-string v2, "item_image"

    iget-object v3, p0, Lcom/fiio/music/activity/ListMainActivity;->drawable_g:[I

    aget v3, v3, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1757
    const-string v2, "item_bg"

    iget-object v3, p0, Lcom/fiio/music/activity/ListMainActivity;->drawable_item_bg:[I

    aget v3, v3, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1758
    const-string v2, "item_id"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1759
    iget-object v2, p0, Lcom/fiio/music/activity/ListMainActivity;->dataSourceList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1761
    :cond_4
    iget-object v1, p0, Lcom/fiio/music/activity/ListMainActivity;->mostPlayIsCheck:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/fiio/music/activity/ListMainActivity;->mostPlayRadioButton:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1762
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1763
    const-string v2, "item_image"

    iget-object v3, p0, Lcom/fiio/music/activity/ListMainActivity;->drawable_g:[I

    const/4 v4, 0x4

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1764
    const-string v2, "item_bg"

    iget-object v3, p0, Lcom/fiio/music/activity/ListMainActivity;->drawable_item_bg:[I

    const/4 v4, 0x4

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1765
    const-string v2, "item_id"

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1766
    iget-object v2, p0, Lcom/fiio/music/activity/ListMainActivity;->dataSourceList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1768
    :cond_5
    iget-object v1, p0, Lcom/fiio/music/activity/ListMainActivity;->recentlyAddIsCheck:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/fiio/music/activity/ListMainActivity;->recentlyAddRadioButton:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1769
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1770
    const-string v2, "item_image"

    iget-object v3, p0, Lcom/fiio/music/activity/ListMainActivity;->drawable_g:[I

    aget v3, v3, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1771
    const-string v2, "item_bg"

    iget-object v3, p0, Lcom/fiio/music/activity/ListMainActivity;->drawable_item_bg:[I

    aget v3, v3, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1772
    const-string v2, "item_id"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1773
    iget-object v2, p0, Lcom/fiio/music/activity/ListMainActivity;->dataSourceList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1781
    :cond_6
    new-instance v1, Lcom/fiio/music/adapter/DragAdapter;

    iget-object v2, p0, Lcom/fiio/music/activity/ListMainActivity;->dataSourceList:Ljava/util/List;

    iget v3, p0, Lcom/fiio/music/activity/ListMainActivity;->STYLE_PARAMTER:I

    invoke-direct {v1, p0, v2, v3}, Lcom/fiio/music/adapter/DragAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    .line 1782
    invoke-virtual {v0, v1}, Lcom/fiio/music/widget/DragGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1783
    return-void

    .line 1683
    :cond_7
    iget v1, p0, Lcom/fiio/music/activity/ListMainActivity;->STYLE_PARAMTER:I

    if-ne v1, v8, :cond_8

    .line 1684
    new-array v1, v6, [I

    fill-array-data v1, :array_2

    iput-object v1, p0, Lcom/fiio/music/activity/ListMainActivity;->drawable_item_bg:[I

    .line 1690
    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_3

    iput-object v1, p0, Lcom/fiio/music/activity/ListMainActivity;->drawable_g:[I

    goto/16 :goto_0

    .line 1699
    :cond_8
    iget v1, p0, Lcom/fiio/music/activity/ListMainActivity;->STYLE_PARAMTER:I

    if-ne v1, v7, :cond_9

    .line 1700
    new-array v1, v6, [I

    fill-array-data v1, :array_4

    iput-object v1, p0, Lcom/fiio/music/activity/ListMainActivity;->drawable_item_bg:[I

    .line 1706
    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_5

    iput-object v1, p0, Lcom/fiio/music/activity/ListMainActivity;->drawable_g:[I

    goto/16 :goto_0

    .line 1715
    :cond_9
    iget v1, p0, Lcom/fiio/music/activity/ListMainActivity;->STYLE_PARAMTER:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 1716
    new-array v1, v6, [I

    fill-array-data v1, :array_6

    iput-object v1, p0, Lcom/fiio/music/activity/ListMainActivity;->drawable_item_bg:[I

    .line 1722
    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_7

    iput-object v1, p0, Lcom/fiio/music/activity/ListMainActivity;->drawable_g:[I

    goto/16 :goto_0

    .line 1667
    nop

    :array_0
    .array-data 4
        0x7f0200ab
        0x7f0200aa
        0x7f0200ab
        0x7f0200ab
        0x7f0200ab
    .end array-data

    .line 1673
    :array_1
    .array-data 4
        0x7f020162
        0x7f02014b
        0x7f02013b
        0x7f020172
        0x7f020156
        0x7f020172
    .end array-data

    .line 1684
    :array_2
    .array-data 4
        0x7f0200ad
        0x7f0200ad
        0x7f0200ad
        0x7f0200ad
        0x7f0200ad
    .end array-data

    .line 1690
    :array_3
    .array-data 4
        0x7f020163
        0x7f02014c
        0x7f02013c
        0x7f020173
        0x7f020157
        0x7f020167
    .end array-data

    .line 1700
    :array_4
    .array-data 4
        0x7f0200ae
        0x7f0200ae
        0x7f0200ae
        0x7f0200ae
        0x7f0200ae
    .end array-data

    .line 1706
    :array_5
    .array-data 4
        0x7f020164
        0x7f02014d
        0x7f02013d
        0x7f020174
        0x7f020158
        0x7f020168
    .end array-data

    .line 1716
    :array_6
    .array-data 4
        0x7f0200af
        0x7f0200af
        0x7f0200af
        0x7f0200af
        0x7f0200af
    .end array-data

    .line 1722
    :array_7
    .array-data 4
        0x7f020164
        0x7f02014d
        0x7f02013d
        0x7f020174
        0x7f020158
        0x7f020168
    .end array-data
.end method

.method private initImageLoader()V
    .locals 5

    .prologue
    const v4, 0x7f0203b0

    const v3, 0x7f0203af

    const/4 v2, 0x0

    .line 724
    invoke-static {}, Lcom/b/a/b/f;->a()Lcom/b/a/b/f;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->imageLoader:Lcom/b/a/b/f;

    .line 727
    iget v0, p0, Lcom/fiio/music/activity/ListMainActivity;->STYLE_PARAMTER:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 728
    new-instance v0, Lcom/b/a/b/e;

    invoke-direct {v0}, Lcom/b/a/b/e;-><init>()V

    .line 729
    invoke-virtual {v0, v4}, Lcom/b/a/b/e;->a(I)Lcom/b/a/b/e;

    move-result-object v0

    .line 730
    invoke-virtual {v0, v4}, Lcom/b/a/b/e;->b(I)Lcom/b/a/b/e;

    move-result-object v0

    .line 731
    invoke-virtual {v0, v4}, Lcom/b/a/b/e;->c(I)Lcom/b/a/b/e;

    move-result-object v0

    .line 732
    invoke-virtual {v0, v2}, Lcom/b/a/b/e;->a(Z)Lcom/b/a/b/e;

    move-result-object v0

    .line 733
    invoke-virtual {v0, v2}, Lcom/b/a/b/e;->b(Z)Lcom/b/a/b/e;

    move-result-object v0

    .line 734
    sget-object v1, Lcom/b/a/b/a/e;->f:Lcom/b/a/b/a/e;

    invoke-virtual {v0, v1}, Lcom/b/a/b/e;->a(Lcom/b/a/b/a/e;)Lcom/b/a/b/e;

    move-result-object v0

    .line 735
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1}, Lcom/b/a/b/e;->a(Landroid/graphics/Bitmap$Config;)Lcom/b/a/b/e;

    move-result-object v0

    .line 736
    new-instance v1, Lcom/b/a/b/c/c;

    invoke-direct {v1}, Lcom/b/a/b/c/c;-><init>()V

    invoke-virtual {v0, v1}, Lcom/b/a/b/e;->a(Lcom/b/a/b/c/a;)Lcom/b/a/b/e;

    move-result-object v0

    .line 737
    invoke-virtual {v0}, Lcom/b/a/b/e;->d()Lcom/b/a/b/d;

    move-result-object v0

    .line 728
    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->options:Lcom/b/a/b/d;

    .line 762
    :cond_0
    :goto_0
    return-void

    .line 738
    :cond_1
    iget v0, p0, Lcom/fiio/music/activity/ListMainActivity;->STYLE_PARAMTER:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 739
    new-instance v0, Lcom/b/a/b/e;

    invoke-direct {v0}, Lcom/b/a/b/e;-><init>()V

    .line 740
    invoke-virtual {v0, v3}, Lcom/b/a/b/e;->a(I)Lcom/b/a/b/e;

    move-result-object v0

    .line 741
    invoke-virtual {v0, v3}, Lcom/b/a/b/e;->b(I)Lcom/b/a/b/e;

    move-result-object v0

    .line 742
    invoke-virtual {v0, v3}, Lcom/b/a/b/e;->c(I)Lcom/b/a/b/e;

    move-result-object v0

    .line 743
    invoke-virtual {v0, v2}, Lcom/b/a/b/e;->a(Z)Lcom/b/a/b/e;

    move-result-object v0

    .line 744
    invoke-virtual {v0, v2}, Lcom/b/a/b/e;->b(Z)Lcom/b/a/b/e;

    move-result-object v0

    .line 745
    sget-object v1, Lcom/b/a/b/a/e;->f:Lcom/b/a/b/a/e;

    invoke-virtual {v0, v1}, Lcom/b/a/b/e;->a(Lcom/b/a/b/a/e;)Lcom/b/a/b/e;

    move-result-object v0

    .line 746
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1}, Lcom/b/a/b/e;->a(Landroid/graphics/Bitmap$Config;)Lcom/b/a/b/e;

    move-result-object v0

    .line 747
    new-instance v1, Lcom/b/a/b/c/c;

    invoke-direct {v1}, Lcom/b/a/b/c/c;-><init>()V

    invoke-virtual {v0, v1}, Lcom/b/a/b/e;->a(Lcom/b/a/b/c/a;)Lcom/b/a/b/e;

    move-result-object v0

    .line 748
    invoke-virtual {v0}, Lcom/b/a/b/e;->d()Lcom/b/a/b/d;

    move-result-object v0

    .line 739
    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->options:Lcom/b/a/b/d;

    goto :goto_0

    .line 749
    :cond_2
    iget v0, p0, Lcom/fiio/music/activity/ListMainActivity;->STYLE_PARAMTER:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 750
    new-instance v0, Lcom/b/a/b/e;

    invoke-direct {v0}, Lcom/b/a/b/e;-><init>()V

    .line 751
    invoke-virtual {v0, v3}, Lcom/b/a/b/e;->a(I)Lcom/b/a/b/e;

    move-result-object v0

    .line 752
    invoke-virtual {v0, v3}, Lcom/b/a/b/e;->b(I)Lcom/b/a/b/e;

    move-result-object v0

    .line 753
    invoke-virtual {v0, v3}, Lcom/b/a/b/e;->c(I)Lcom/b/a/b/e;

    move-result-object v0

    .line 754
    invoke-virtual {v0, v2}, Lcom/b/a/b/e;->a(Z)Lcom/b/a/b/e;

    move-result-object v0

    .line 755
    invoke-virtual {v0, v2}, Lcom/b/a/b/e;->b(Z)Lcom/b/a/b/e;

    move-result-object v0

    .line 756
    sget-object v1, Lcom/b/a/b/a/e;->f:Lcom/b/a/b/a/e;

    invoke-virtual {v0, v1}, Lcom/b/a/b/e;->a(Lcom/b/a/b/a/e;)Lcom/b/a/b/e;

    move-result-object v0

    .line 757
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1}, Lcom/b/a/b/e;->a(Landroid/graphics/Bitmap$Config;)Lcom/b/a/b/e;

    move-result-object v0

    .line 758
    new-instance v1, Lcom/b/a/b/c/c;

    invoke-direct {v1}, Lcom/b/a/b/c/c;-><init>()V

    invoke-virtual {v0, v1}, Lcom/b/a/b/e;->a(Lcom/b/a/b/c/a;)Lcom/b/a/b/e;

    move-result-object v0

    .line 759
    invoke-virtual {v0}, Lcom/b/a/b/e;->d()Lcom/b/a/b/d;

    move-result-object v0

    .line 750
    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->options:Lcom/b/a/b/d;

    goto :goto_0
.end method

.method private initViewPage()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 2285
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->handler:Landroid/os/Handler;

    .line 2286
    const v0, 0x7f0b019d

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/ListMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 2290
    iget v0, p0, Lcom/fiio/music/activity/ListMainActivity;->STYLE_PARAMTER:I

    iget-object v3, p0, Lcom/fiio/music/activity/ListMainActivity;->imageLoader:Lcom/b/a/b/f;

    invoke-static {v1, v0, p0, v3}, Lcom/fiio/music/util/h;->a(Lcom/fiio/music/entity/Song;ILandroid/content/Context;Lcom/b/a/b/f;)Ljava/lang/String;

    .line 2292
    iget v0, p0, Lcom/fiio/music/activity/ListMainActivity;->STYLE_PARAMTER:I

    if-ne v0, v4, :cond_0

    .line 2293
    const-string v0, "drawable://2130838448"

    .line 2300
    :goto_0
    new-array v1, v6, [Ljava/lang/String;

    aput-object v0, v1, v2

    .line 2301
    aput-object v0, v1, v4

    aput-object v0, v1, v5

    .line 2304
    array-length v0, v1

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mImageViews:[Landroid/widget/ImageView;

    move v0, v2

    .line 2305
    :goto_1
    iget-object v2, p0, Lcom/fiio/music/activity/ListMainActivity;->mImageViews:[Landroid/widget/ImageView;

    array-length v2, v2

    if-lt v0, v2, :cond_2

    .line 2355
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/fiio/music/activity/ListMainActivity$MyAdapter;

    invoke-direct {v1, p0}, Lcom/fiio/music/activity/ListMainActivity$MyAdapter;-><init>(Lcom/fiio/music/activity/ListMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 2357
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 2359
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/fiio/music/activity/ListMainActivity;->mImageViews:[Landroid/widget/ImageView;

    array-length v1, v1

    const v2, 0xf4240

    mul-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 2360
    return-void

    .line 2294
    :cond_0
    iget v0, p0, Lcom/fiio/music/activity/ListMainActivity;->STYLE_PARAMTER:I

    if-ne v0, v5, :cond_1

    .line 2295
    const-string v0, "drawable://2130838447"

    goto :goto_0

    .line 2296
    :cond_1
    iget v0, p0, Lcom/fiio/music/activity/ListMainActivity;->STYLE_PARAMTER:I

    if-ne v0, v6, :cond_3

    .line 2297
    const-string v0, "drawable://2130838447"

    goto :goto_0

    .line 2306
    :cond_2
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2308
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2309
    iget-object v3, p0, Lcom/fiio/music/activity/ListMainActivity;->mImageViews:[Landroid/widget/ImageView;

    aput-object v2, v3, v0

    .line 2310
    iget-object v3, p0, Lcom/fiio/music/activity/ListMainActivity;->imageLoader:Lcom/b/a/b/f;

    aget-object v4, v1, v0

    .line 2311
    iget-object v5, p0, Lcom/fiio/music/activity/ListMainActivity;->options:Lcom/b/a/b/d;

    .line 2310
    invoke-virtual {v3, v4, v2, v5}, Lcom/b/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/b/a/b/d;)V

    .line 2313
    new-instance v3, Lcom/fiio/music/activity/be;

    invoke-direct {v3, p0}, Lcom/fiio/music/activity/be;-><init>(Lcom/fiio/music/activity/ListMainActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2305
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method private memoryPlay()V
    .locals 12

    .prologue
    const/4 v9, 0x5

    const-wide/16 v10, 0x0

    const/4 v8, 0x4

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 852
    iget-object v2, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v2}, Lcom/fiio/music/service/h;->l()I

    move-result v3

    .line 853
    const-string v2, "long"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "flag :"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " song:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v5}, Lcom/fiio/music/service/h;->k()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v5}, Lcom/fiio/music/service/h;->i()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 854
    const-string v5, " parameter:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v5}, Lcom/fiio/music/service/h;->B()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cueFlagForMemory:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/fiio/music/activity/ListMainActivity;->cueFlagForMemory:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 855
    const-string v5, " track:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/fiio/music/activity/ListMainActivity;->memoryPlaySharedPreferences:Landroid/content/SharedPreferences;

    const-string v6, "cueTrackNumMemory"

    invoke-interface {v5, v6, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 856
    const-string v5, " recentPlayFilePath:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/fiio/music/activity/ListMainActivity;->memoryPlaySharedPreferences:Landroid/content/SharedPreferences;

    const-string v6, "RECENT_PLAY_FILE_PATH"

    const-string v7, "null"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 857
    const-string v5, " \u9000\u51fa\u524d\u6b4c\u66f2\u5df2\u7ecf\u64ad\u653e\u65f6\u957f"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v5}, Lcom/fiio/music/service/h;->M()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 853
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    iget-object v2, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v2}, Lcom/fiio/music/service/h;->G()Z

    move-result v2

    if-nez v2, :cond_0

    .line 860
    iget-object v2, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v2}, Lcom/fiio/music/service/h;->a()V

    .line 862
    :cond_0
    invoke-virtual {p0}, Lcom/fiio/music/activity/ListMainActivity;->initChildData()V

    .line 864
    iget-object v2, p0, Lcom/fiio/music/activity/ListMainActivity;->songDao:Lcom/fiio/music/b/k;

    invoke-virtual {v2}, Lcom/fiio/music/b/k;->a()I

    move-result v2

    if-nez v2, :cond_3

    if-eq v3, v8, :cond_3

    .line 865
    const/4 v2, 0x3

    iget-object v4, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v4}, Lcom/fiio/music/service/h;->m()I

    move-result v4

    if-ne v2, v4, :cond_2

    .line 1199
    :cond_1
    :goto_0
    return-void

    .line 868
    :cond_2
    iget-object v2, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/fiio/music/service/h;->b(I)V

    .line 871
    :cond_3
    iget-object v2, p0, Lcom/fiio/music/activity/ListMainActivity;->memoryPlaySwitch:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2b

    iget-object v2, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v2}, Lcom/fiio/music/service/h;->G()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 873
    const/16 v2, 0xd

    if-ne v2, v3, :cond_4

    .line 874
    const-string v0, "long"

    const-string v1, "\u6279\u91cf\u64ad\u653e\u6682\u65f6\u4e0d\u8bb0\u5fc6"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 878
    :cond_4
    iget-boolean v2, p0, Lcom/fiio/music/activity/ListMainActivity;->isFirst_memory:Z

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/fiio/music/activity/ListMainActivity;->isAndroidModel:I

    if-ne v2, v0, :cond_5

    .line 879
    iput-boolean v1, p0, Lcom/fiio/music/activity/ListMainActivity;->isFirst_memory:Z

    .line 880
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/fiio/music/activity/au;

    invoke-direct {v1, p0}, Lcom/fiio/music/activity/au;-><init>(Lcom/fiio/music/activity/ListMainActivity;)V

    .line 885
    const-wide/16 v2, 0x9c4

    .line 880
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 889
    :cond_5
    iget-object v2, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v2}, Lcom/fiio/music/service/h;->k()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/fiio/music/activity/ListMainActivity;->recentPlayFilePath:Ljava/lang/String;

    .line 891
    iget-object v2, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v2}, Lcom/fiio/music/service/h;->h()Lcom/fiio/music/entity/Song;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 892
    iget-object v2, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v2}, Lcom/fiio/music/service/h;->k()Ljava/lang/String;

    move-result-object v2

    .line 893
    const-string v4, "sin"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "memory play song path : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v4}, Lcom/fiio/music/service/h;->k()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 895
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v2, v4, v10

    if-nez v2, :cond_6

    .line 896
    const-string v0, "long"

    const-string v2, "\u9000\u51faapp\u671f\u95f4\u62d4\u5361\u7b49\u64cd\u4f5c\u5bfc\u81f4\u6b4c\u66f2\u4e0d\u5b58\u5728"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    iget-boolean v0, p0, Lcom/fiio/music/activity/ListMainActivity;->isFirst_memory:Z

    if-eqz v0, :cond_1

    .line 898
    const-string v0, "sin"

    const-string v2, "isFirst - memory , cann\'t find file path - post runnable delay 2500"

    invoke-static {v0, v2}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    iput-boolean v1, p0, Lcom/fiio/music/activity/ListMainActivity;->isFirst_memory:Z

    .line 900
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/fiio/music/activity/av;

    invoke-direct {v1, p0}, Lcom/fiio/music/activity/av;-><init>(Lcom/fiio/music/activity/ListMainActivity;)V

    .line 908
    const-wide/16 v2, 0x9c4

    .line 900
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 915
    :cond_6
    iget-object v2, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v2}, Lcom/fiio/music/service/h;->h()Lcom/fiio/music/entity/Song;

    move-result-object v2

    if-nez v2, :cond_7

    .line 916
    const/16 v2, 0xb

    if-eq v3, v2, :cond_7

    .line 917
    const/16 v2, 0xf

    if-eq v3, v2, :cond_7

    .line 918
    const/4 v2, 0x7

    if-eq v3, v2, :cond_7

    .line 919
    const/16 v2, 0xe

    if-eq v3, v2, :cond_7

    .line 920
    if-eq v3, v8, :cond_7

    .line 921
    const/4 v2, 0x6

    if-eq v3, v2, :cond_7

    .line 922
    const/16 v2, 0xc

    if-eq v3, v2, :cond_7

    .line 923
    if-eq v3, v9, :cond_7

    .line 925
    const-string v0, "long"

    const-string v1, "\u975e\u6709id\u6b4c\u66f2\u64ad\u653e\u6a21\u5f0f\u4e0bsong\u4e3a\u7a7a \u6267\u884c\u6682\u505c"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/fiio/music/service/h;->b(I)V

    .line 929
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->y()V

    goto/16 :goto_0

    .line 933
    :cond_7
    const-string v2, "folderjump"

    invoke-virtual {p0, v2, v1}, Lcom/fiio/music/activity/ListMainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 934
    invoke-static {}, Lcom/fiio/music/util/an;->a()Lcom/fiio/music/util/an;

    move-result-object v4

    iput-object v4, p0, Lcom/fiio/music/activity/ListMainActivity;->foldersongUtils:Lcom/fiio/music/util/an;

    .line 935
    const-string v4, "FolderJump"

    invoke-interface {v2, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 936
    iget-object v4, p0, Lcom/fiio/music/activity/ListMainActivity;->foldersongUtils:Lcom/fiio/music/util/an;

    invoke-virtual {v4, v2}, Lcom/fiio/music/util/an;->a(Z)V

    .line 941
    if-ne v3, v0, :cond_b

    .line 942
    :try_start_0
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/fiio/music/util/h;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 943
    iget-object v2, p0, Lcom/fiio/music/activity/ListMainActivity;->songDao:Lcom/fiio/music/b/k;

    invoke-virtual {v2, v0}, Lcom/fiio/music/b/k;->b(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 944
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->h()Lcom/fiio/music/entity/Song;

    move-result-object v4

    .line 946
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->memoryPlaySharedPreferences:Landroid/content/SharedPreferences;

    const-string v5, "playAllIndexMemory"

    invoke-interface {v0, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 947
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->memoryPlaySharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "playAllIndexMemory"

    const/4 v4, 0x0

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 948
    const-string v0, "sin"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "contains PLAY ALL INDEX MEMORY + "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    :cond_8
    :goto_1
    invoke-interface {v2, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 961
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {p0}, Lcom/fiio/music/activity/ListMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/fiio/music/service/h;->a(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 963
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1193
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1194
    const-string v0, "long"

    const-string v1, "\u8bb0\u5fc6\u64ad\u653e\u62a5\u9519"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    move v0, v1

    .line 950
    :goto_2
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-ge v0, v5, :cond_8

    .line 951
    const-string v5, "_id"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 952
    invoke-virtual {v4}, Lcom/fiio/music/entity/Song;->getId_()I

    move-result v6

    if-ne v5, v6, :cond_a

    move v1, v0

    .line 954
    goto :goto_1

    .line 950
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 970
    :cond_b
    iget-boolean v2, p0, Lcom/fiio/music/activity/ListMainActivity;->cueFlagForMemory:Z

    if-eqz v2, :cond_18

    .line 972
    iget-object v2, p0, Lcom/fiio/music/activity/ListMainActivity;->memoryPlaySharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, "RECENT_PLAY_FILE_PATH"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/fiio/music/activity/ListMainActivity;->recentPlayFilePath:Ljava/lang/String;

    .line 974
    const-string v2, "long"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "cueFlagForMemory\uff1a "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/fiio/music/activity/ListMainActivity;->recentPlayFilePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " flag :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    iget-object v2, p0, Lcom/fiio/music/activity/ListMainActivity;->recentPlayFilePath:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 978
    new-instance v4, Ljava/io/File;

    iget-object v2, p0, Lcom/fiio/music/activity/ListMainActivity;->recentPlayFilePath:Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 979
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/fiio/music/util/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ".cue"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 980
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/fiio/music/activity/ListMainActivity;->recentPlayFilePath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/fiio/music/activity/ListMainActivity;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/fiio/music/util/n;->a(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 981
    new-instance v2, Ljava/io/File;

    iget-object v5, p0, Lcom/fiio/music/activity/ListMainActivity;->recentPlayFilePath:Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 982
    iget-object v5, p0, Lcom/fiio/music/activity/ListMainActivity;->recentPlayFilePath:Ljava/lang/String;

    invoke-static {v5}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 993
    :cond_c
    new-instance v5, Lcom/fiio/music/util/j;

    iget-object v6, p0, Lcom/fiio/music/activity/ListMainActivity;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-direct {v5, v6, v7, v2}, Lcom/fiio/music/util/j;-><init>(Landroid/content/Context;Lcom/fiio/music/service/h;Ljava/io/File;)V

    .line 994
    if-ne v3, v8, :cond_f

    .line 995
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 996
    new-instance v0, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 997
    iget-object v1, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    iget-object v2, p0, Lcom/fiio/music/activity/ListMainActivity;->musicManager:Lcom/fiio/music/util/bh;

    iget-object v2, p0, Lcom/fiio/music/activity/ListMainActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0, v2}, Lcom/fiio/music/service/h;->a(Ljava/io/File;Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 998
    iget-object v1, p0, Lcom/fiio/music/activity/ListMainActivity;->memoryPlaySharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "cueTrackNumMemory"

    const/4 v6, 0x1

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v5, v4, v1, v3, v0}, Lcom/fiio/music/util/j;->a(Ljava/io/File;IILjava/util/List;)V

    goto/16 :goto_0

    .line 986
    :cond_d
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v5

    if-nez v5, :cond_c

    .line 987
    :cond_e
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/fiio/music/util/j;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 988
    if-eqz v2, :cond_1

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v5

    if-nez v5, :cond_c

    goto/16 :goto_0

    .line 999
    :cond_f
    const/16 v2, 0x11

    if-ne v3, v2, :cond_10

    .line 1000
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->h()Lcom/fiio/music/entity/Song;

    .line 1002
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->songDao:Lcom/fiio/music/b/k;

    invoke-virtual {v0}, Lcom/fiio/music/b/k;->c()Ljava/util/List;

    move-result-object v0

    .line 1003
    iget-object v1, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->h()Lcom/fiio/music/entity/Song;

    move-result-object v1

    const/16 v2, 0x11

    invoke-virtual {v5, v1, v0, v2}, Lcom/fiio/music/util/j;->a(Lcom/fiio/music/entity/Song;Ljava/util/List;I)V

    goto/16 :goto_0

    .line 1004
    :cond_10
    const/4 v2, 0x6

    if-eq v3, v2, :cond_11

    .line 1005
    if-ne v3, v9, :cond_12

    .line 1006
    :cond_11
    new-instance v0, Lcom/fiio/music/b/j;

    iget-object v1, p0, Lcom/fiio/music/activity/ListMainActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/fiio/music/b/j;-><init>(Landroid/content/Context;)V

    .line 1007
    iget-object v1, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->B()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fiio/music/util/h;->a(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/b/j;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 1008
    new-instance v1, Lcom/fiio/music/util/bw;

    invoke-direct {v1}, Lcom/fiio/music/util/bw;-><init>()V

    iput-object v1, p0, Lcom/fiio/music/activity/ListMainActivity;->playListManager:Lcom/fiio/music/util/bw;

    .line 1009
    iget-object v1, p0, Lcom/fiio/music/activity/ListMainActivity;->playListManager:Lcom/fiio/music/util/bw;

    iget-object v2, p0, Lcom/fiio/music/activity/ListMainActivity;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/fiio/music/util/bw;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 1010
    iget-object v1, p0, Lcom/fiio/music/activity/ListMainActivity;->memoryPlaySharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "cueTrackNumMemory"

    const/4 v6, 0x1

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v5, v4, v1, v3, v0}, Lcom/fiio/music/util/j;->a(Ljava/io/File;IILjava/util/List;)V

    goto/16 :goto_0

    .line 1011
    :cond_12
    const/16 v2, 0xb

    if-eq v3, v2, :cond_13

    .line 1012
    const/16 v2, 0xf

    if-ne v3, v2, :cond_14

    .line 1013
    :cond_13
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->playOftastDao:Lcom/fiio/music/b/i;

    invoke-virtual {v0}, Lcom/fiio/music/b/i;->a()Ljava/util/List;

    move-result-object v0

    .line 1014
    if-eqz v0, :cond_1

    .line 1017
    iget-object v1, p0, Lcom/fiio/music/activity/ListMainActivity;->memoryPlaySharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "cueTrackNumMemory"

    const/4 v6, 0x1

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v5, v4, v1, v3, v0}, Lcom/fiio/music/util/j;->a(Ljava/io/File;IILjava/util/List;)V

    goto/16 :goto_0

    .line 1018
    :cond_14
    const/4 v2, 0x7

    if-eq v3, v2, :cond_15

    .line 1019
    const/16 v2, 0xe

    if-ne v3, v2, :cond_17

    .line 1020
    :cond_15
    iget-object v2, p0, Lcom/fiio/music/activity/ListMainActivity;->playHistoryDao:Lcom/fiio/music/b/h;

    invoke-virtual {v2}, Lcom/fiio/music/b/h;->a()Ljava/util/List;

    move-result-object v2

    .line 1021
    const-string v6, "long"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "fileForTestNull:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/fiio/music/activity/ListMainActivity;->memoryPlaySharedPreferences:Landroid/content/SharedPreferences;

    const-string v9, "cueTrackNumMemory"

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1022
    const-string v8, "  flag: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "   if:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v2, :cond_16

    :goto_3
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1021
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    if-eqz v2, :cond_1

    .line 1026
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->memoryPlaySharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "cueTrackNumMemory"

    const/4 v6, 0x1

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v5, v4, v0, v3, v2}, Lcom/fiio/music/util/j;->a(Ljava/io/File;IILjava/util/List;)V

    goto/16 :goto_0

    :cond_16
    move v0, v1

    .line 1022
    goto :goto_3

    .line 1028
    :cond_17
    const-string v0, "long"

    const-string v1, "cue tab bcd\u7684\u8bb0\u5fc6"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    new-instance v0, Lcom/fiio/music/c/b;

    iget-object v1, p0, Lcom/fiio/music/activity/ListMainActivity;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/fiio/music/c/b;-><init>(Landroid/content/Context;Z)V

    .line 1030
    const-string v1, "player_id"

    invoke-virtual {v0, v1}, Lcom/fiio/music/c/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1031
    iget-object v1, p0, Lcom/fiio/music/activity/ListMainActivity;->songDao:Lcom/fiio/music/b/k;

    invoke-static {v0}, Lcom/fiio/music/util/h;->a(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/fiio/music/b/k;->c(I)Lcom/fiio/music/entity/Song;

    move-result-object v0

    .line 1032
    if-eqz v0, :cond_1

    .line 1033
    const/4 v1, 0x0

    invoke-virtual {v5, v0, v1, v3}, Lcom/fiio/music/util/j;->a(Lcom/fiio/music/entity/Song;Ljava/util/List;I)V

    goto/16 :goto_0

    .line 1041
    :cond_18
    iget-boolean v0, p0, Lcom/fiio/music/activity/ListMainActivity;->sacdFlagForMemory:Z

    if-eqz v0, :cond_1c

    .line 1042
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->memoryPlaySharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "RECENT_PLAY_FILE_PATH"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->recentPlayFilePath:Ljava/lang/String;

    .line 1043
    const-string v0, "long"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sacdFlagForMemory\uff1a "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fiio/music/activity/ListMainActivity;->recentPlayFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " flag :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->recentPlayFilePath:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1048
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/fiio/music/activity/ListMainActivity;->recentPlayFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1049
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1054
    new-instance v1, Lorg/justcodecs/dsd/SacdDataFormat;

    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->recentPlayFilePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    iget-object v4, p0, Lcom/fiio/music/activity/ListMainActivity;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0, v2, v4}, Lorg/justcodecs/dsd/SacdDataFormat;-><init>(Ljava/lang/String;Lcom/fiio/music/service/h;Landroid/content/Context;)V

    .line 1056
    if-ne v3, v8, :cond_19

    .line 1057
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->memoryPlaySharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "cueTrackNumMemory"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/justcodecs/dsd/SacdDataFormat;->getSongInMemoryModeByTrack(I)Lcom/fiio/music/entity/Song;

    move-result-object v0

    .line 1058
    if-eqz v0, :cond_1

    .line 1061
    iget-object v2, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v2, v1}, Lcom/fiio/music/service/h;->a(Lorg/justcodecs/dsd/SacdDataFormat;)V

    .line 1062
    iget-object v2, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v1}, Lorg/justcodecs/dsd/SacdDataFormat;->getSacdSongList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getTrack()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    const/4 v3, 0x4

    invoke-virtual {v1}, Lorg/justcodecs/dsd/SacdDataFormat;->getSacdSongList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v0, v3, v1}, Lcom/fiio/music/service/h;->a(Lcom/fiio/music/entity/Song;ILjava/util/List;)V

    goto/16 :goto_0

    .line 1064
    :cond_19
    const/4 v0, 0x6

    if-eq v3, v0, :cond_1a

    if-ne v3, v9, :cond_1b

    .line 1065
    :cond_1a
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->memoryPlaySharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "cueTrackNumMemory"

    const/4 v4, 0x1

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/justcodecs/dsd/SacdDataFormat;->getSongInMemoryModeByTrack(I)Lcom/fiio/music/entity/Song;

    move-result-object v0

    .line 1066
    if-eqz v0, :cond_1

    .line 1069
    iget-object v2, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v1}, Lorg/justcodecs/dsd/SacdDataFormat;->getSacdSongList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getTrack()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    iget-object v1, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->W()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v0, v3, v1}, Lcom/fiio/music/service/h;->a(Lcom/fiio/music/entity/Song;ILjava/util/List;)V

    goto/16 :goto_0

    .line 1073
    :cond_1b
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->h()Lcom/fiio/music/entity/Song;

    move-result-object v0

    .line 1074
    iget-object v1, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    iget-object v2, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v2}, Lcom/fiio/music/service/h;->W()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v0, v3, v2}, Lcom/fiio/music/service/h;->a(Lcom/fiio/music/entity/Song;ILjava/util/List;)V

    goto/16 :goto_0

    .line 1081
    :cond_1c
    if-ne v3, v8, :cond_1e

    .line 1082
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->memoryPlaySharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "M3UPATH"

    const-string v2, "NotTheM3UMode"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1083
    iget-object v1, p0, Lcom/fiio/music/activity/ListMainActivity;->memoryPlaySharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "RECENT_PLAY_FILE_PATH"

    const-string v3, "null"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fiio/music/activity/ListMainActivity;->recentPlayFilePath:Ljava/lang/String;

    .line 1084
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/fiio/music/activity/ListMainActivity;->recentPlayFilePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1085
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    cmp-long v2, v2, v10

    if-eqz v2, :cond_1

    .line 1088
    const-string v2, "NotTheM3UMode"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 1089
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1090
    new-instance v0, Lcom/fiio/music/util/bc;

    iget-object v2, p0, Lcom/fiio/music/activity/ListMainActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/fiio/music/util/bc;-><init>(Ljava/io/File;Landroid/content/Context;)V

    .line 1091
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1092
    invoke-virtual {v0}, Lcom/fiio/music/util/bc;->c()Ljava/util/List;

    move-result-object v0

    .line 1093
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 1096
    iget-object v1, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    iget-object v2, p0, Lcom/fiio/music/activity/ListMainActivity;->recentPlayFilePath:Ljava/lang/String;

    .line 1097
    const/4 v3, 0x4

    const/4 v4, 0x0

    .line 1096
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/fiio/music/service/h;->a(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)V

    goto/16 :goto_0

    .line 1101
    :cond_1d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1102
    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1103
    iget-object v2, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    iget-object v3, p0, Lcom/fiio/music/activity/ListMainActivity;->musicManager:Lcom/fiio/music/util/bh;

    iget-object v3, p0, Lcom/fiio/music/activity/ListMainActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0, v3}, Lcom/fiio/music/service/h;->a(Ljava/io/File;Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 1105
    iget-object v2, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    iget-object v3, p0, Lcom/fiio/music/activity/ListMainActivity;->recentPlayFilePath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/fiio/music/activity/ListMainActivity;->getApplicationContext()Landroid/content/Context;

    invoke-virtual {v2, v3, v1, v0}, Lcom/fiio/music/service/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_0

    .line 1106
    :cond_1e
    if-ne v3, v9, :cond_21

    .line 1107
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->memoryPlaySharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "RECENT_PLAY_FILE_PATH"

    const-string v2, "null"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->recentPlayFilePath:Ljava/lang/String;

    .line 1108
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->recentPlayFilePath:Ljava/lang/String;

    if-eqz v0, :cond_1f

    const-string v0, "ISO"

    iget-object v1, p0, Lcom/fiio/music/activity/ListMainActivity;->recentPlayFilePath:Ljava/lang/String;

    invoke-static {v1}, Lcom/fiio/music/util/h;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1111
    :cond_1f
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/fiio/music/activity/ListMainActivity;->recentPlayFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1112
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    cmp-long v0, v0, v10

    if-eqz v0, :cond_1

    .line 1115
    new-instance v0, Lcom/fiio/music/util/bw;

    invoke-direct {v0}, Lcom/fiio/music/util/bw;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->playListManager:Lcom/fiio/music/util/bw;

    .line 1116
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->playListManager:Lcom/fiio/music/util/bw;

    iget-object v1, p0, Lcom/fiio/music/activity/ListMainActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->B()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/util/bw;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 1117
    new-instance v1, Lcom/fiio/music/util/cr;

    invoke-direct {v1, p0}, Lcom/fiio/music/util/cr;-><init>(Landroid/content/Context;)V

    .line 1118
    const-string v2, "PlayListSong"

    invoke-virtual {v1, v2}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    move-result v2

    .line 1119
    const-string v3, "AZplagListSong"

    invoke-virtual {v1, v3}, Lcom/fiio/music/util/cr;->b(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    .line 1121
    :try_start_2
    invoke-static {v0, v2, v1}, Lcom/fiio/music/util/cn;->e(Ljava/util/List;II)Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    .line 1125
    :goto_4
    if-nez v0, :cond_20

    .line 1126
    :try_start_3
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/fiio/music/service/h;->b(I)V

    goto/16 :goto_0

    .line 1123
    :catch_1
    move-exception v1

    const-string v1, "zxy - - - "

    const-string v2, " exception  in listMain"

    invoke-static {v1, v2}, Lcom/fiio/music/util/aw;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1128
    :cond_20
    iget-object v1, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    iget-object v2, p0, Lcom/fiio/music/activity/ListMainActivity;->recentPlayFilePath:Ljava/lang/String;

    const/4 v3, 0x5

    .line 1129
    iget-object v4, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v4}, Lcom/fiio/music/service/h;->B()Ljava/lang/String;

    move-result-object v4

    .line 1128
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/fiio/music/service/h;->b(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)V

    goto/16 :goto_0

    .line 1131
    :cond_21
    const/4 v0, 0x6

    if-ne v3, v0, :cond_24

    .line 1132
    const-string v0, "long"

    const-string v1, "\u666e\u901a\u6b4c\u66f2\u6700\u7231\u8bb0\u5fc6"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->memoryPlaySharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "RECENT_PLAY_FILE_PATH"

    const-string v2, "null"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->recentPlayFilePath:Ljava/lang/String;

    .line 1134
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->recentPlayFilePath:Ljava/lang/String;

    if-eqz v0, :cond_22

    const-string v0, "ISO"

    iget-object v1, p0, Lcom/fiio/music/activity/ListMainActivity;->recentPlayFilePath:Ljava/lang/String;

    invoke-static {v1}, Lcom/fiio/music/util/h;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1137
    :cond_22
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/fiio/music/activity/ListMainActivity;->recentPlayFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1138
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    cmp-long v0, v0, v10

    if-eqz v0, :cond_1

    .line 1141
    new-instance v0, Lcom/fiio/music/util/bw;

    invoke-direct {v0}, Lcom/fiio/music/util/bw;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->playListManager:Lcom/fiio/music/util/bw;

    .line 1142
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->playListManager:Lcom/fiio/music/util/bw;

    iget-object v1, p0, Lcom/fiio/music/activity/ListMainActivity;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0054

    invoke-virtual {p0, v1}, Lcom/fiio/music/activity/ListMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/util/bw;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 1143
    new-instance v1, Lcom/fiio/music/util/cr;

    invoke-direct {v1, p0}, Lcom/fiio/music/util/cr;-><init>(Landroid/content/Context;)V

    .line 1144
    const-string v2, "PlayListSong"

    invoke-virtual {v1, v2}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    move-result v2

    .line 1145
    const-string v3, "AZplagListSong"

    invoke-virtual {v1, v3}, Lcom/fiio/music/util/cr;->b(Ljava/lang/String;)I

    move-result v1

    .line 1146
    invoke-static {v0, v2, v1}, Lcom/fiio/music/util/cn;->e(Ljava/util/List;II)Ljava/util/List;

    move-result-object v0

    .line 1147
    if-nez v0, :cond_23

    .line 1148
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/fiio/music/service/h;->b(I)V

    goto/16 :goto_0

    .line 1150
    :cond_23
    const-string v1, "long"

    const-string v2, "\u666e\u901a\u6b4c\u66f2\u6700\u7231\u8bb0\u5fc61"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    iget-object v1, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    iget-object v2, p0, Lcom/fiio/music/activity/ListMainActivity;->recentPlayFilePath:Ljava/lang/String;

    const/4 v3, 0x6

    .line 1152
    const v4, 0x7f0c0054

    invoke-virtual {p0, v4}, Lcom/fiio/music/activity/ListMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1151
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/fiio/music/service/h;->b(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)V

    goto/16 :goto_0

    .line 1154
    :cond_24
    const/4 v0, 0x7

    if-eq v3, v0, :cond_25

    const/16 v0, 0xe

    if-ne v3, v0, :cond_26

    .line 1155
    :cond_25
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->memoryPlaySharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "RECENT_PLAY_FILE_PATH"

    const-string v2, "null"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->recentPlayFilePath:Ljava/lang/String;

    .line 1156
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/fiio/music/activity/ListMainActivity;->recentPlayFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1157
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    cmp-long v0, v0, v10

    if-eqz v0, :cond_1

    .line 1160
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->playHistoryDao:Lcom/fiio/music/b/h;

    invoke-virtual {v0}, Lcom/fiio/music/b/h;->a()Ljava/util/List;

    move-result-object v0

    .line 1161
    if-eqz v0, :cond_1

    .line 1164
    iget-object v1, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    iget-object v2, p0, Lcom/fiio/music/activity/ListMainActivity;->recentPlayFilePath:Ljava/lang/String;

    const/4 v3, 0x7

    invoke-virtual {v1, v2, v3, v0}, Lcom/fiio/music/service/h;->a(Ljava/lang/String;ILjava/util/List;)V

    goto/16 :goto_0

    .line 1165
    :cond_26
    const/16 v0, 0xb

    if-eq v3, v0, :cond_27

    const/16 v0, 0xf

    if-ne v3, v0, :cond_28

    .line 1166
    :cond_27
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->memoryPlaySharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "RECENT_PLAY_FILE_PATH"

    const-string v2, "null"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->recentPlayFilePath:Ljava/lang/String;

    .line 1167
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/fiio/music/activity/ListMainActivity;->recentPlayFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1168
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    cmp-long v0, v0, v10

    if-eqz v0, :cond_1

    .line 1171
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->playOftastDao:Lcom/fiio/music/b/i;

    invoke-virtual {v0}, Lcom/fiio/music/b/i;->a()Ljava/util/List;

    move-result-object v0

    .line 1172
    if-eqz v0, :cond_1

    .line 1175
    iget-object v1, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    iget-object v2, p0, Lcom/fiio/music/activity/ListMainActivity;->recentPlayFilePath:Ljava/lang/String;

    const/16 v3, 0xb

    invoke-virtual {v1, v2, v3, v0}, Lcom/fiio/music/service/h;->a(Ljava/lang/String;ILjava/util/List;)V

    goto/16 :goto_0

    .line 1176
    :cond_28
    const/16 v0, 0xc

    if-ne v3, v0, :cond_29

    .line 1177
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->memoryPlaySharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "RECENT_PLAY_FILE_PATH"

    const-string v2, "null"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->recentPlayFilePath:Ljava/lang/String;

    .line 1178
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/fiio/music/activity/ListMainActivity;->recentPlayFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1179
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    cmp-long v0, v0, v10

    if-eqz v0, :cond_1

    .line 1182
    const-string v0, "long"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "memory PLAYERFLAG_AFILE:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fiio/music/activity/ListMainActivity;->recentPlayFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->musicManager:Lcom/fiio/music/util/bh;

    iget-object v1, p0, Lcom/fiio/music/activity/ListMainActivity;->recentPlayFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/bh;->a(Ljava/lang/String;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->openFilePlayingSong:Lcom/fiio/music/entity/Song;

    .line 1184
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    iget-object v1, p0, Lcom/fiio/music/activity/ListMainActivity;->recentPlayFilePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/fiio/music/activity/ListMainActivity;->openFilePlayingSong:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/service/h;->a(Ljava/lang/String;Lcom/fiio/music/entity/Song;)V

    goto/16 :goto_0

    .line 1185
    :cond_29
    const/16 v0, 0x11

    if-ne v3, v0, :cond_2a

    .line 1186
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->songDao:Lcom/fiio/music/b/k;

    invoke-virtual {v0}, Lcom/fiio/music/b/k;->c()Ljava/util/List;

    move-result-object v0

    .line 1187
    iget-object v1, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    iget-object v2, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v2}, Lcom/fiio/music/service/h;->h()Lcom/fiio/music/entity/Song;

    move-result-object v2

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/fiio/music/service/h;->a(Lcom/fiio/music/entity/Song;ILjava/lang/String;Ljava/util/List;)V

    goto/16 :goto_0

    .line 1189
    :cond_2a
    const-string v0, "long"

    const-string v1, "memory else"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->t()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 1196
    :cond_2b
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->G()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1197
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->y()V

    goto/16 :goto_0
.end method

.method private onlyOTA(Z)V
    .locals 4

    .prologue
    .line 673
    if-eqz p1, :cond_0

    .line 674
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 675
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 676
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 677
    iget-boolean v0, p0, Lcom/fiio/music/activity/ListMainActivity;->changeStyleboolean:Z

    if-eqz v0, :cond_1

    .line 678
    const v0, 0x7f0400d3

    invoke-virtual {v1, v0}, Landroid/view/Window;->setContentView(I)V

    .line 682
    :goto_0
    const v0, 0x7f0b007e

    invoke-virtual {v1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 683
    const v3, 0x7f0b0079

    invoke-virtual {v1, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 684
    const v3, 0x7f0c00cf

    invoke-virtual {p0, v3}, Lcom/fiio/music/activity/ListMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 685
    new-instance v1, Lcom/fiio/music/activity/bv;

    invoke-direct {v1, p0, v2}, Lcom/fiio/music/activity/bv;-><init>(Lcom/fiio/music/activity/ListMainActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 696
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->OTAsp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ota"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 699
    :cond_0
    return-void

    .line 680
    :cond_1
    const v0, 0x7f0400d4

    invoke-virtual {v1, v0}, Landroid/view/Window;->setContentView(I)V

    goto :goto_0
.end method

.method private openFile(Ljava/io/File;)V
    .locals 3

    .prologue
    .line 3088
    const-string v0, "OpenFile"

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3089
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3090
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3091
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3092
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 3093
    const-string v2, "application/vnd.android.package-archive"

    .line 3092
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 3094
    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/ListMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 3095
    return-void
.end method

.method private playMusicByItem(Landroid/view/View;ILjava/lang/String;II)V
    .locals 8

    .prologue
    const v6, 0x7f0c00f6

    const/4 v5, 0x3

    const/16 v4, 0x11

    .line 2197
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/adapter/TestExpandableListAdapter$ChildViewHolder;

    .line 2198
    iget-object v0, v0, Lcom/fiio/music/adapter/TestExpandableListAdapter$ChildViewHolder;->tv_song_list_item_top:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2197
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 2200
    new-instance v0, Lcom/fiio/music/entity/Song;

    invoke-direct {v0}, Lcom/fiio/music/entity/Song;-><init>()V

    .line 2201
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2202
    const/4 v2, 0x1

    if-ne p4, v2, :cond_0

    .line 2203
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->playHistoryDao:Lcom/fiio/music/b/h;

    invoke-virtual {v0}, Lcom/fiio/music/b/h;->a()Ljava/util/List;

    move-result-object v1

    .line 2204
    invoke-interface {v1, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    .line 2211
    :goto_0
    if-nez v1, :cond_2

    .line 2212
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->toast:Landroid/widget/Toast;

    invoke-virtual {p0, v6}, Lcom/fiio/music/activity/ListMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->toast:Landroid/widget/Toast;

    .line 2244
    :goto_1
    return-void

    .line 2205
    :cond_0
    const/4 v2, 0x2

    if-ne p4, v2, :cond_1

    .line 2206
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->playOftastDao:Lcom/fiio/music/b/i;

    invoke-virtual {v0}, Lcom/fiio/music/b/i;->a()Ljava/util/List;

    move-result-object v1

    .line 2207
    invoke-interface {v1, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    .line 2208
    goto :goto_0

    :cond_1
    if-ne p4, v5, :cond_9

    .line 2209
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->data:Ljava/util/List;

    invoke-interface {v0, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_0

    .line 2215
    :cond_2
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2217
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2218
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->toast:Landroid/widget/Toast;

    invoke-virtual {p0, v6}, Lcom/fiio/music/activity/ListMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->toast:Landroid/widget/Toast;

    goto :goto_1

    .line 2222
    :cond_3
    if-eq p4, v5, :cond_6

    .line 2223
    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2224
    new-instance v2, Lcom/fiio/music/util/j;

    iget-object v3, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {p0}, Lcom/fiio/music/activity/ListMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/fiio/music/util/j;-><init>(Lcom/fiio/music/service/h;Landroid/content/Context;)V

    .line 2225
    invoke-virtual {v2, v1, v0, p2}, Lcom/fiio/music/util/j;->a(Lcom/fiio/music/entity/Song;Ljava/util/List;I)V

    .line 2242
    :goto_2
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mTestExpandableListAdapter:Lcom/fiio/music/adapter/TestExpandableListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/TestExpandableListAdapter;->setIsPlayerList(Z)V

    goto :goto_1

    .line 2226
    :cond_4
    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->isSacd()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2227
    iget-object v2, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v2, v1, p2, v0}, Lcom/fiio/music/service/h;->a(Lcom/fiio/music/entity/Song;ILjava/util/List;)V

    goto :goto_2

    .line 2229
    :cond_5
    iget-object v2, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v2, v1, p2, p3, v0}, Lcom/fiio/music/service/h;->a(Lcom/fiio/music/entity/Song;ILjava/lang/String;Ljava/util/List;)V

    goto :goto_2

    .line 2232
    :cond_6
    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2233
    new-instance v0, Lcom/fiio/music/util/j;

    iget-object v2, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {p0}, Lcom/fiio/music/activity/ListMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/fiio/music/util/j;-><init>(Lcom/fiio/music/service/h;Landroid/content/Context;)V

    .line 2234
    iget-object v2, p0, Lcom/fiio/music/activity/ListMainActivity;->data:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v4}, Lcom/fiio/music/util/j;->a(Lcom/fiio/music/entity/Song;Ljava/util/List;I)V

    goto :goto_2

    .line 2235
    :cond_7
    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->isSacd()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2236
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    iget-object v2, p0, Lcom/fiio/music/activity/ListMainActivity;->data:Ljava/util/List;

    invoke-virtual {v0, v1, v4, v2}, Lcom/fiio/music/service/h;->a(Lcom/fiio/music/entity/Song;ILjava/util/List;)V

    goto :goto_2

    .line 2238
    :cond_8
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/fiio/music/activity/ListMainActivity;->data:Ljava/util/List;

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/fiio/music/service/h;->a(Lcom/fiio/music/entity/Song;ILjava/lang/String;Ljava/util/List;)V

    goto :goto_2

    :cond_9
    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto/16 :goto_0
.end method

.method private playPlayerListMusicByItem(Ljava/lang/String;)V
    .locals 7

    .prologue
    const v4, 0x7f0c0054

    const v6, 0x7f0c0055

    const/4 v5, 0x1

    .line 2159
    new-instance v0, Lcom/fiio/music/util/bw;

    invoke-direct {v0}, Lcom/fiio/music/util/bw;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->playListManager:Lcom/fiio/music/util/bw;

    .line 2161
    invoke-virtual {p0, v6}, Lcom/fiio/music/activity/ListMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2162
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->playListManager:Lcom/fiio/music/util/bw;

    iget-object v1, p0, Lcom/fiio/music/activity/ListMainActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/fiio/music/activity/ListMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lcom/fiio/music/util/bw;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    move-object v2, v0

    .line 2166
    :goto_0
    if-nez v2, :cond_1

    .line 2167
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->toast:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/fiio/music/activity/ListMainActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f0c00fb

    invoke-virtual {p0, v2}, Lcom/fiio/music/activity/ListMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->toast:Landroid/widget/Toast;

    .line 2194
    :goto_1
    return-void

    .line 2164
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->playListManager:Lcom/fiio/music/util/bw;

    iget-object v1, p0, Lcom/fiio/music/activity/ListMainActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, v5}, Lcom/fiio/music/util/bw;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    .line 2170
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    .line 2172
    :goto_2
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2173
    add-int/lit8 v0, v1, 0x1

    .line 2188
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_4

    .line 2189
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->toast:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/fiio/music/activity/ListMainActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f0c00f9

    invoke-virtual {p0, v2}, Lcom/fiio/music/activity/ListMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->toast:Landroid/widget/Toast;

    .line 2193
    :goto_3
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mTestExpandableListAdapter:Lcom/fiio/music/adapter/TestExpandableListAdapter;

    invoke-virtual {v0, v5}, Lcom/fiio/music/adapter/TestExpandableListAdapter;->setIsPlayerList(Z)V

    goto :goto_1

    .line 2175
    :cond_2
    invoke-virtual {p0, v6}, Lcom/fiio/music/activity/ListMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2176
    iget-object v3, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    .line 2177
    invoke-virtual {p0, v4}, Lcom/fiio/music/activity/ListMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2176
    invoke-virtual {v3, v0, v1, v4, v2}, Lcom/fiio/music/service/h;->b(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)V

    .line 2178
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {p0, v6}, Lcom/fiio/music/activity/ListMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/service/h;->a(Ljava/lang/String;)V

    goto :goto_3

    .line 2181
    :cond_3
    iget-object v3, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v3, v0, v1, p1, v2}, Lcom/fiio/music/service/h;->b(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)V

    .line 2183
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0, p1}, Lcom/fiio/music/service/h;->a(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    move v1, v0

    goto :goto_2
.end method

.method private playSongNextOrPrevious(I)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x12c

    .line 2455
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    if-eqz v0, :cond_0

    .line 2456
    packed-switch p1, :pswitch_data_0

    .line 2477
    :cond_0
    :goto_0
    return-void

    .line 2458
    :pswitch_0
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/fiio/music/activity/bg;

    invoke-direct {v1, p0}, Lcom/fiio/music/activity/bg;-><init>(Lcom/fiio/music/activity/ListMainActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 2467
    :pswitch_1
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/fiio/music/activity/bh;

    invoke-direct {v1, p0}, Lcom/fiio/music/activity/bh;-><init>(Lcom/fiio/music/activity/ListMainActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 2456
    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setImageBackground(I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/16 v3, 0x10

    const/16 v2, 0xf

    .line 2483
    iget v0, p0, Lcom/fiio/music/activity/ListMainActivity;->lastIndex:I

    if-nez v0, :cond_1

    .line 2484
    if-ne p1, v4, :cond_0

    .line 2485
    invoke-direct {p0, v2}, Lcom/fiio/music/activity/ListMainActivity;->playSongNextOrPrevious(I)V

    .line 2489
    :goto_0
    iput p1, p0, Lcom/fiio/music/activity/ListMainActivity;->lastIndex:I

    .line 2506
    :goto_1
    return-void

    .line 2487
    :cond_0
    invoke-direct {p0, v3}, Lcom/fiio/music/activity/ListMainActivity;->playSongNextOrPrevious(I)V

    goto :goto_0

    .line 2490
    :cond_1
    iget v0, p0, Lcom/fiio/music/activity/ListMainActivity;->lastIndex:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 2491
    if-ne p1, v4, :cond_3

    .line 2492
    invoke-direct {p0, v3}, Lcom/fiio/music/activity/ListMainActivity;->playSongNextOrPrevious(I)V

    .line 2496
    :cond_2
    :goto_2
    iput p1, p0, Lcom/fiio/music/activity/ListMainActivity;->lastIndex:I

    goto :goto_1

    .line 2493
    :cond_3
    if-nez p1, :cond_2

    .line 2494
    invoke-direct {p0, v2}, Lcom/fiio/music/activity/ListMainActivity;->playSongNextOrPrevious(I)V

    goto :goto_2

    .line 2498
    :cond_4
    iget v0, p0, Lcom/fiio/music/activity/ListMainActivity;->lastIndex:I

    if-le v0, p1, :cond_5

    .line 2500
    invoke-direct {p0, v3}, Lcom/fiio/music/activity/ListMainActivity;->playSongNextOrPrevious(I)V

    .line 2504
    :goto_3
    iput p1, p0, Lcom/fiio/music/activity/ListMainActivity;->lastIndex:I

    goto :goto_1

    .line 2502
    :cond_5
    invoke-direct {p0, v2}, Lcom/fiio/music/activity/ListMainActivity;->playSongNextOrPrevious(I)V

    goto :goto_3
.end method

.method private showUpdateInfo(Lcom/fiio/music/network/bean/DownloadInfo;)V
    .locals 6

    .prologue
    .line 2985
    new-instance v0, Lcom/fiio/music/custom/g;

    invoke-direct {v0, p0}, Lcom/fiio/music/custom/g;-><init>(Landroid/content/Context;)V

    .line 2986
    invoke-virtual {v0}, Lcom/fiio/music/custom/g;->a()Lcom/fiio/music/custom/f;

    move-result-object v3

    .line 2987
    invoke-virtual {v3}, Lcom/fiio/music/custom/f;->show()V

    .line 2988
    invoke-virtual {v3}, Lcom/fiio/music/custom/f;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f040154

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    .line 2989
    const v0, 0x7f0b0388

    invoke-virtual {v3, v0}, Lcom/fiio/music/custom/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2990
    invoke-virtual {p1}, Lcom/fiio/music/network/bean/DownloadInfo;->getVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2991
    const v0, 0x7f0b0389

    invoke-virtual {v3, v0}, Lcom/fiio/music/custom/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 2992
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x7f040155

    .line 2993
    invoke-virtual {p1}, Lcom/fiio/music/network/bean/DownloadInfo;->getUpdateLog()Ljava/lang/String;

    move-result-object v4

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p0, v2, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 2992
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2994
    const v0, 0x7f0b038a

    invoke-virtual {v3, v0}, Lcom/fiio/music/custom/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2995
    const v1, 0x7f0b038b

    invoke-virtual {v3, v1}, Lcom/fiio/music/custom/f;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2996
    const v2, 0x7f0b038c

    invoke-virtual {v3, v2}, Lcom/fiio/music/custom/f;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2997
    new-instance v4, Lcom/fiio/music/activity/bn;

    invoke-direct {v4, p0, v3}, Lcom/fiio/music/activity/bn;-><init>(Lcom/fiio/music/activity/ListMainActivity;Lcom/fiio/music/custom/f;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3011
    new-instance v0, Lcom/fiio/music/activity/bo;

    invoke-direct {v0, p0, v3}, Lcom/fiio/music/activity/bo;-><init>(Lcom/fiio/music/activity/ListMainActivity;Lcom/fiio/music/custom/f;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3020
    new-instance v0, Lcom/fiio/music/activity/bp;

    invoke-direct {v0, p0, p1, v3}, Lcom/fiio/music/activity/bp;-><init>(Lcom/fiio/music/activity/ListMainActivity;Lcom/fiio/music/network/bean/DownloadInfo;Lcom/fiio/music/custom/f;)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3036
    return-void
.end method

.method private showUser()V
    .locals 3

    .prologue
    .line 666
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fiio/music/activity/UserExperienceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 667
    const-string v1, "ChangeStyle"

    iget-boolean v2, p0, Lcom/fiio/music/activity/ListMainActivity;->changeStyleboolean:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 668
    const-string v1, "switch"

    sget v2, Lcom/fiio/music/activity/UserExperienceActivity;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 669
    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/ListMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 670
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->OTAsp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "showUser"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 671
    return-void
.end method

.method private slideMenuInit()V
    .locals 3

    .prologue
    const v2, 0x7f0204f3

    const/4 v1, 0x0

    .line 1787
    new-instance v0, Lcom/fiio/music/slidemenu/SlidingMenu;

    invoke-direct {v0, p0}, Lcom/fiio/music/slidemenu/SlidingMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mSlidingMenu:Lcom/fiio/music/slidemenu/SlidingMenu;

    .line 1788
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mSlidingMenu:Lcom/fiio/music/slidemenu/SlidingMenu;

    invoke-virtual {v0, v1}, Lcom/fiio/music/slidemenu/SlidingMenu;->setTouchModeAbove(I)V

    .line 1789
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mSlidingMenu:Lcom/fiio/music/slidemenu/SlidingMenu;

    invoke-virtual {v0, v1}, Lcom/fiio/music/slidemenu/SlidingMenu;->setMode(I)V

    .line 1790
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mSlidingMenu:Lcom/fiio/music/slidemenu/SlidingMenu;

    const v1, 0x7f0a0012

    invoke-virtual {v0, v1}, Lcom/fiio/music/slidemenu/SlidingMenu;->setShadowWidthRes(I)V

    .line 1792
    iget v0, p0, Lcom/fiio/music/activity/ListMainActivity;->STYLE_PARAMTER:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1793
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mSlidingMenu:Lcom/fiio/music/slidemenu/SlidingMenu;

    invoke-virtual {v0, v2}, Lcom/fiio/music/slidemenu/SlidingMenu;->setShadowDrawable(I)V

    .line 1800
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mSlidingMenu:Lcom/fiio/music/slidemenu/SlidingMenu;

    const v1, 0x7f0a0011

    invoke-virtual {v0, v1}, Lcom/fiio/music/slidemenu/SlidingMenu;->setBehindOffsetRes(I)V

    .line 1801
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mSlidingMenu:Lcom/fiio/music/slidemenu/SlidingMenu;

    const v1, 0x3eb33333    # 0.35f

    invoke-virtual {v0, v1}, Lcom/fiio/music/slidemenu/SlidingMenu;->setFadeDegree(F)V

    .line 1802
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mSlidingMenu:Lcom/fiio/music/slidemenu/SlidingMenu;

    invoke-virtual {v0, p0}, Lcom/fiio/music/slidemenu/SlidingMenu;->a(Landroid/app/Activity;)V

    .line 1803
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mSlidingMenu:Lcom/fiio/music/slidemenu/SlidingMenu;

    const v1, 0x7f04011a

    invoke-virtual {v0, v1}, Lcom/fiio/music/slidemenu/SlidingMenu;->setMenu(I)V

    .line 1804
    invoke-virtual {p0}, Lcom/fiio/music/activity/ListMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 1805
    const v1, 0x7f0b0340

    new-instance v2, Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-direct {v2}, Lcom/fiio/music/fragment/SettingMenuFragment;-><init>()V

    .line 1804
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 1805
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 1807
    return-void

    .line 1794
    :cond_1
    iget v0, p0, Lcom/fiio/music/activity/ListMainActivity;->STYLE_PARAMTER:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1795
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mSlidingMenu:Lcom/fiio/music/slidemenu/SlidingMenu;

    invoke-virtual {v0, v2}, Lcom/fiio/music/slidemenu/SlidingMenu;->setShadowDrawable(I)V

    goto :goto_0

    .line 1796
    :cond_2
    iget v0, p0, Lcom/fiio/music/activity/ListMainActivity;->STYLE_PARAMTER:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1797
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mSlidingMenu:Lcom/fiio/music/slidemenu/SlidingMenu;

    const v1, 0x7f0204f4

    invoke-virtual {v0, v1}, Lcom/fiio/music/slidemenu/SlidingMenu;->setShadowDrawable(I)V

    goto :goto_0
.end method

.method private stickyLayoutInit()V
    .locals 6

    .prologue
    .line 1812
    const v0, 0x7f0b0197

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/ListMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/widget/StickyLayout;

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mStickLayout:Lcom/fiio/music/widget/StickyLayout;

    .line 1813
    const v0, 0x7f0b01a3

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/ListMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->expandableListView:Lcom/fiio/music/widget/PinnedHeaderExpandableListView;

    .line 1814
    const v0, 0x7f0b019f

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/ListMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mMainSongNameTV:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    .line 1815
    const v0, 0x7f0b01a0

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/ListMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mMainArtistAndInfoTV:Landroid/widget/TextView;

    .line 1817
    const v0, 0x7f0b019a

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/ListMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mFirstSettingButton:Landroid/widget/ImageButton;

    .line 1818
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mFirstSettingButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/fiio/music/activity/ba;

    invoke-direct {v1, p0}, Lcom/fiio/music/activity/ba;-><init>(Lcom/fiio/music/activity/ListMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1828
    const v0, 0x7f0b019b

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/ListMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mFirstSearchBtn:Landroid/widget/ImageButton;

    .line 1829
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mFirstSearchBtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/fiio/music/activity/bb;

    invoke-direct {v1, p0}, Lcom/fiio/music/activity/bb;-><init>(Lcom/fiio/music/activity/ListMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1840
    const v0, 0x7f0b01b7

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/ListMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mListSearchBtn:Landroid/widget/ImageButton;

    .line 1841
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mListSearchBtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/fiio/music/activity/bc;

    invoke-direct {v1, p0}, Lcom/fiio/music/activity/bc;-><init>(Lcom/fiio/music/activity/ListMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1852
    const v0, 0x7f0b019e

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/ListMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mMusicEntryButton:Landroid/widget/ImageButton;

    .line 1853
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mMusicEntryButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/fiio/music/activity/bd;

    invoke-direct {v1, p0}, Lcom/fiio/music/activity/bd;-><init>(Lcom/fiio/music/activity/ListMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1862
    invoke-virtual {p0}, Lcom/fiio/music/activity/ListMainActivity;->initData()V

    .line 1864
    new-instance v0, Lcom/fiio/music/adapter/TestExpandableListAdapter;

    iget-object v1, p0, Lcom/fiio/music/activity/ListMainActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/fiio/music/activity/ListMainActivity;->groupList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/fiio/music/activity/ListMainActivity;->childList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    iget v5, p0, Lcom/fiio/music/activity/ListMainActivity;->STYLE_PARAMTER:I

    invoke-direct/range {v0 .. v5}, Lcom/fiio/music/adapter/TestExpandableListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/fiio/music/service/h;I)V

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mTestExpandableListAdapter:Lcom/fiio/music/adapter/TestExpandableListAdapter;

    .line 1865
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->expandableListView:Lcom/fiio/music/widget/PinnedHeaderExpandableListView;

    iget-object v1, p0, Lcom/fiio/music/activity/ListMainActivity;->mTestExpandableListAdapter:Lcom/fiio/music/adapter/TestExpandableListAdapter;

    invoke-virtual {v0, v1}, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 1867
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->expandableListView:Lcom/fiio/music/widget/PinnedHeaderExpandableListView;

    invoke-virtual {v0, p0}, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 1868
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->expandableListView:Lcom/fiio/music/widget/PinnedHeaderExpandableListView;

    invoke-virtual {v0, p0}, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 1869
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mStickLayout:Lcom/fiio/music/widget/StickyLayout;

    invoke-virtual {v0, p0}, Lcom/fiio/music/widget/StickyLayout;->setOnGiveUpTouchEventListener(Lcom/fiio/music/widget/s;)V

    .line 1870
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mStickLayout:Lcom/fiio/music/widget/StickyLayout;

    invoke-virtual {v0, p0}, Lcom/fiio/music/widget/StickyLayout;->setOnGiveDownTouchEventListener(Lcom/fiio/music/widget/r;)V

    .line 1871
    return-void
.end method

.method private uploadFile()V
    .locals 8

    .prologue
    .line 3104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "FiiOMusic"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "crash"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3105
    sget-object v0, Lcom/fiio/music/activity/ListMainActivity;->appVersionName:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/fiio/music/activity/ListMainActivity;->appVersionName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3107
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/fiio/music/activity/ListMainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fiio/music/activity/ListMainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v0, Lcom/fiio/music/activity/ListMainActivity;->appVersionName:Ljava/lang/String;

    .line 3108
    sget-object v0, Lcom/fiio/music/activity/ListMainActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "appVersionName = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/fiio/music/activity/ListMainActivity;->appVersionName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3115
    :cond_1
    :goto_0
    sget-object v0, Lcom/fiio/music/activity/ListMainActivity;->appVersionName:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/fiio/music/activity/ListMainActivity;->appVersionName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3116
    :cond_2
    sget-object v0, Lcom/fiio/music/activity/ListMainActivity;->TAG:Ljava/lang/String;

    const-string v1, "appVersion name is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3161
    :cond_3
    :goto_1
    return-void

    .line 3111
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 3120
    :cond_4
    const-string v2, "http://www.fiio.mobi:8080/FiiOMusicForApp/ServletForFileUpload"

    .line 3121
    sget-object v0, Lcom/fiio/music/activity/ListMainActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "requestURL = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3122
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3124
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_5

    .line 3125
    sget-object v0, Lcom/fiio/music/activity/ListMainActivity;->TAG:Ljava/lang/String;

    const-string v1, "uploadFile: fileDir not exist"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3128
    :cond_5
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 3129
    array-length v0, v1

    if-gtz v0, :cond_6

    .line 3130
    sget-object v0, Lcom/fiio/music/activity/ListMainActivity;->TAG:Ljava/lang/String;

    const-string v1, "\u6ca1\u6709\u5954\u6e83\u6587\u4ef6"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3134
    :cond_6
    array-length v3, v1

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v3, :cond_3

    aget-object v4, v1, v0

    .line 3135
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/fiio/music/activity/ListMainActivity;->appVersionName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 3136
    sget-object v5, Lcom/fiio/music/activity/ListMainActivity;->TAG:Ljava/lang/String;

    const-string v6, "\u4e0d\u662f\u5f53\u524d\u7248\u672c\u7684\u6587\u4ef6\uff0c\u5220\u9664"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3137
    sget-object v5, Lcom/fiio/music/activity/ListMainActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Delete File Success ? "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3134
    :cond_7
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3139
    :cond_8
    invoke-static {v4, v2}, Lcom/fiio/music/util/ah;->a(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3140
    sget-object v5, Lcom/fiio/music/activity/ListMainActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "resonse = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3141
    if-eqz v4, :cond_7

    .line 3142
    const-string v5, "success"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 3143
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "Delete The File Which Had Uploaded To Server"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 3150
    :cond_9
    const-string v5, "fail"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 3151
    sget-object v4, Lcom/fiio/music/activity/ListMainActivity;->TAG:Ljava/lang/String;

    const-string v5, "file has upload "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 3153
    :cond_a
    sget-object v4, Lcom/fiio/music/activity/ListMainActivity;->TAG:Ljava/lang/String;

    const-string v5, "upload exception"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method


# virtual methods
.method public cancelAutoShutdown()V
    .locals 3

    .prologue
    .line 1546
    invoke-direct {p0}, Lcom/fiio/music/activity/ListMainActivity;->cancelAutoSleepCountdown()V

    .line 1551
    new-instance v0, Lcom/fiio/music/c/b;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/fiio/music/c/b;-><init>(Landroid/content/Context;Z)V

    const-string v1, "sleep"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1552
    return-void
.end method

.method public checkForUpdate()V
    .locals 4

    .prologue
    .line 2871
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/fiio/music/util/h;->d(Landroid/content/Context;)I

    move-result v0

    .line 2874
    invoke-static {p0}, Lcom/fiio/music/util/ax;->a(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 2875
    if-lez v0, :cond_0

    .line 2876
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://47.90.93.62:8080/FiiOMusicForApp/ServletForCheckForUpdate?versionCode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&language="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2877
    sget-object v1, Lcom/fiio/music/activity/ListMainActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CheckForUpdate requestUrl = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2878
    invoke-static {}, Lcom/fiio/music/network/b/a;->a()Lcom/fiio/music/network/b/a;

    const-string v1, "CheckForUpdate"

    new-instance v2, Lcom/fiio/music/activity/bm;

    invoke-direct {v2, p0}, Lcom/fiio/music/activity/bm;-><init>(Lcom/fiio/music/activity/ListMainActivity;)V

    invoke-static {v0, v1, v2}, Lcom/fiio/music/network/b/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/fiio/music/network/b/g;)Le/g;

    .line 2980
    :cond_0
    return-void
.end method

.method public enterLocalMusic()V
    .locals 3

    .prologue
    .line 2544
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2545
    const-class v1, Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2546
    const-string v1, "changeboolean"

    iget-boolean v2, p0, Lcom/fiio/music/activity/ListMainActivity;->changeStyleboolean:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2547
    const-string v1, "playerInfo"

    invoke-direct {p0}, Lcom/fiio/music/activity/ListMainActivity;->getPlayInfo()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 2548
    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/ListMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 2549
    return-void
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 1214
    invoke-virtual {p0}, Lcom/fiio/music/activity/ListMainActivity;->stopKeyControlService()V

    .line 1215
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 1216
    return-void
.end method

.method public getIp()V
    .locals 3

    .prologue
    .line 2791
    sget-object v0, Lcom/fiio/music/activity/ListMainActivity;->TAG:Ljava/lang/String;

    const-string v1, "\u83b7\u53d6IP URL = http://ip.taobao.com/service/getIpInfo2.php?ip=myip"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2793
    invoke-static {}, Lcom/fiio/music/network/b/a;->a()Lcom/fiio/music/network/b/a;

    const-string v0, "http://ip.taobao.com/service/getIpInfo2.php?ip=myip"

    const-string v1, "ip"

    new-instance v2, Lcom/fiio/music/activity/bk;

    invoke-direct {v2, p0}, Lcom/fiio/music/activity/bk;-><init>(Lcom/fiio/music/activity/ListMainActivity;)V

    invoke-static {v0, v1, v2}, Lcom/fiio/music/network/b/a;->b(Ljava/lang/String;Ljava/lang/Object;Lcom/fiio/music/network/b/g;)Le/g;

    .line 2832
    return-void
.end method

.method public getMExpandableListAdapter()Lcom/fiio/music/adapter/TestExpandableListAdapter;
    .locals 1

    .prologue
    .line 2017
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mTestExpandableListAdapter:Lcom/fiio/music/adapter/TestExpandableListAdapter;

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 3

    .prologue
    .line 2565
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2566
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    .line 2567
    invoke-virtual {v1}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 2568
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 2569
    return-object v0
.end method

.method public giveDownTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2098
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->expandableListView:Lcom/fiio/music/widget/PinnedHeaderExpandableListView;

    if-eqz v0, :cond_0

    .line 2099
    new-array v0, v5, [I

    .line 2100
    iget-object v3, p0, Lcom/fiio/music/activity/ListMainActivity;->expandableListView:Lcom/fiio/music/widget/PinnedHeaderExpandableListView;

    invoke-virtual {v3, v0}, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->getLocationInWindow([I)V

    .line 2101
    aget v0, v0, v2

    add-int/lit8 v0, v0, -0x1e

    .line 2102
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    int-to-float v4, v0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    add-int/lit8 v0, v0, 0x46

    int-to-float v0, v0

    cmpg-float v0, v3, v0

    if-gez v0, :cond_1

    move v1, v2

    .line 2120
    :cond_0
    :goto_0
    return v1

    .line 2105
    :cond_1
    new-array v3, v5, [I

    move v0, v1

    .line 2107
    :goto_1
    iget-object v4, p0, Lcom/fiio/music/activity/ListMainActivity;->expandableListView:Lcom/fiio/music/widget/PinnedHeaderExpandableListView;

    invoke-virtual {v4}, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 2108
    iget-object v4, p0, Lcom/fiio/music/activity/ListMainActivity;->expandableListView:Lcom/fiio/music/widget/PinnedHeaderExpandableListView;

    invoke-virtual {v4, v0}, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2109
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    const v6, 0x7f0b0185

    if-ne v5, v6, :cond_2

    .line 2110
    invoke-virtual {v4, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 2111
    aget v4, v3, v2

    add-int/lit8 v4, v4, -0x1e

    .line 2112
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    int-to-float v6, v4

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    add-int/lit8 v4, v4, 0x46

    int-to-float v4, v4

    cmpg-float v4, v5, v4

    if-gez v4, :cond_2

    move v1, v2

    .line 2113
    goto :goto_0

    .line 2107
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public giveUpTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2124
    iget-object v1, p0, Lcom/fiio/music/activity/ListMainActivity;->expandableListView:Lcom/fiio/music/widget/PinnedHeaderExpandableListView;

    invoke-virtual {v1}, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->getFirstVisiblePosition()I

    move-result v1

    if-nez v1, :cond_0

    .line 2125
    iget-object v1, p0, Lcom/fiio/music/activity/ListMainActivity;->expandableListView:Lcom/fiio/music/widget/PinnedHeaderExpandableListView;

    invoke-virtual {v1, v0}, Lcom/fiio/music/widget/PinnedHeaderExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2126
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    if-ltz v1, :cond_0

    .line 2127
    const/4 v0, 0x1

    .line 2130
    :cond_0
    return v0
.end method

.method public initChildData()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1902
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->personalizationSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "PLAY_LIST"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->playListIsCheck:Ljava/lang/Boolean;

    .line 1903
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->personalizationSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "RECENTLY_PLAY"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->recentlyPlayIsCheck:Ljava/lang/Boolean;

    .line 1904
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->personalizationSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "MOST_PLAY"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mostPlayIsCheck:Ljava/lang/Boolean;

    .line 1905
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->personalizationSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "RECENTLY_ADD"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->recentlyAddIsCheck:Ljava/lang/Boolean;

    .line 1906
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->personalizationSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "PLAY_LIST_RADIO_BUTTON"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->playListRadioButton:Ljava/lang/Boolean;

    .line 1907
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->personalizationSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "RECENTLY_PLAY_RADIO_BUTTON"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->recentlyPlayRadioButton:Ljava/lang/Boolean;

    .line 1908
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->personalizationSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "MOST_PLAY_RADIO_BUTTON"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mostPlayRadioButton:Ljava/lang/Boolean;

    .line 1909
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->personalizationSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "RECENTLY_ADD_RADIO_BUTTON"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->recentlyAddRadioButton:Ljava/lang/Boolean;

    .line 1910
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->playListIsCheck:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->playListRadioButton:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    .line 1911
    :goto_0
    iget-object v3, p0, Lcom/fiio/music/activity/ListMainActivity;->recentlyPlayIsCheck:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/fiio/music/activity/ListMainActivity;->recentlyPlayRadioButton:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_5

    move v3, v1

    :goto_1
    iget-object v4, p0, Lcom/fiio/music/activity/ListMainActivity;->mostPlayIsCheck:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/fiio/music/activity/ListMainActivity;->mostPlayRadioButton:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_6

    move v4, v1

    .line 1912
    :goto_2
    iget-object v5, p0, Lcom/fiio/music/activity/ListMainActivity;->recentlyAddIsCheck:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/fiio/music/activity/ListMainActivity;->recentlyAddRadioButton:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_7

    move v5, v1

    .line 1910
    :goto_3
    invoke-virtual {p0, v0, v3, v4, v5}, Lcom/fiio/music/activity/ListMainActivity;->setGroupList(ZZZZ)V

    .line 1914
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->childList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1917
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->playListIsCheck:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->playListRadioButton:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1918
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->playerListDao:Lcom/fiio/music/b/j;

    invoke-virtual {v0}, Lcom/fiio/music/b/j;->a()Ljava/util/List;

    move-result-object v4

    .line 1919
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v3, v2

    .line 1920
    :goto_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lt v3, v0, :cond_8

    .line 1930
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->childList:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1933
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->recentlyPlayIsCheck:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->recentlyPlayRadioButton:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1934
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1935
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->playHistoryDao:Lcom/fiio/music/b/h;

    invoke-virtual {v0}, Lcom/fiio/music/b/h;->a()Ljava/util/List;

    move-result-object v5

    .line 1936
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->m()I

    move-result v6

    move v3, v2

    .line 1937
    :goto_5
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lt v3, v0, :cond_a

    .line 1957
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->childList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1959
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mostPlayIsCheck:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mostPlayRadioButton:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1961
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1962
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->playOftastDao:Lcom/fiio/music/b/i;

    invoke-virtual {v0}, Lcom/fiio/music/b/i;->a()Ljava/util/List;

    move-result-object v4

    .line 1964
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->curSongList:Ljava/util/List;

    iget-object v1, p0, Lcom/fiio/music/activity/ListMainActivity;->songPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/fiio/music/util/bl;->a(Ljava/util/List;Ljava/lang/String;)I

    .line 1965
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->m()I

    move-result v5

    move v1, v2

    .line 1966
    :goto_6
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_d

    .line 1985
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->childList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1987
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->recentlyAddIsCheck:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->recentlyAddRadioButton:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1988
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1990
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->songDao:Lcom/fiio/music/b/k;

    invoke-virtual {v0}, Lcom/fiio/music/b/k;->c()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->data:Ljava/util/List;

    .line 1991
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->m()I

    move-result v3

    .line 1992
    :goto_7
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_10

    .line 2011
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->childList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2013
    :cond_3
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mTestExpandableListAdapter:Lcom/fiio/music/adapter/TestExpandableListAdapter;

    iget-object v1, p0, Lcom/fiio/music/activity/ListMainActivity;->groupList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/fiio/music/activity/ListMainActivity;->childList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/adapter/TestExpandableListAdapter;->refresh(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2014
    return-void

    :cond_4
    move v0, v2

    .line 1910
    goto/16 :goto_0

    :cond_5
    move v3, v2

    .line 1911
    goto/16 :goto_1

    :cond_6
    move v4, v2

    goto/16 :goto_2

    :cond_7
    move v5, v2

    .line 1912
    goto/16 :goto_3

    .line 1921
    :cond_8
    new-instance v6, Lcom/fiio/music/util/bq;

    invoke-direct {v6}, Lcom/fiio/music/util/bq;-><init>()V

    .line 1922
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 1923
    aget-object v7, v0, v1

    invoke-virtual {p0}, Lcom/fiio/music/activity/ListMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c0054

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1924
    invoke-virtual {p0}, Lcom/fiio/music/activity/ListMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0055

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v1

    .line 1926
    :cond_9
    aget-object v0, v0, v1

    invoke-virtual {v6, v0}, Lcom/fiio/music/util/bq;->a(Ljava/lang/String;)V

    .line 1927
    invoke-virtual {v6, v2}, Lcom/fiio/music/util/bq;->e(I)V

    .line 1928
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1920
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_4

    .line 1938
    :cond_a
    new-instance v7, Lcom/fiio/music/util/bq;

    invoke-direct {v7}, Lcom/fiio/music/util/bq;-><init>()V

    .line 1939
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/fiio/music/util/bq;->a(Ljava/lang/String;)V

    .line 1941
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getArtist()Lcom/fiio/music/entity/Artist;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/entity/Artist;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/fiio/music/util/bq;->b(Ljava/lang/String;)V

    .line 1942
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/fiio/music/util/bq;->d(Ljava/lang/String;)V

    .line 1943
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1944
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getCue_duration()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/fiio/music/util/bq;->c(I)V

    .line 1950
    :goto_8
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->songPath:Ljava/lang/String;

    invoke-virtual {v7, v0}, Lcom/fiio/music/util/bq;->c(Ljava/lang/String;)V

    .line 1951
    invoke-virtual {v7, v6}, Lcom/fiio/music/util/bq;->d(I)V

    .line 1952
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getId_()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/fiio/music/util/bq;->b(I)V

    .line 1953
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getTempId()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/fiio/music/util/bq;->a(I)V

    .line 1954
    invoke-virtual {v7, v1}, Lcom/fiio/music/util/bq;->e(I)V

    .line 1955
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1937
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_5

    .line 1945
    :cond_b
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isSacd()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1946
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getSacd_duration()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    invoke-virtual {v7, v0}, Lcom/fiio/music/util/bq;->c(I)V

    goto :goto_8

    .line 1948
    :cond_c
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getDurationTime()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/fiio/music/util/bq;->c(I)V

    goto :goto_8

    .line 1967
    :cond_d
    new-instance v6, Lcom/fiio/music/util/bq;

    invoke-direct {v6}, Lcom/fiio/music/util/bq;-><init>()V

    .line 1968
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/fiio/music/util/bq;->a(Ljava/lang/String;)V

    .line 1969
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getArtist()Lcom/fiio/music/entity/Artist;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/entity/Artist;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/fiio/music/util/bq;->b(Ljava/lang/String;)V

    .line 1970
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/fiio/music/util/bq;->d(Ljava/lang/String;)V

    .line 1971
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1972
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getCue_duration()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/fiio/music/util/bq;->c(I)V

    .line 1978
    :goto_9
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->songPath:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/fiio/music/util/bq;->c(Ljava/lang/String;)V

    .line 1979
    invoke-virtual {v6, v5}, Lcom/fiio/music/util/bq;->d(I)V

    .line 1980
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getId_()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/fiio/music/util/bq;->b(I)V

    .line 1981
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getTempId()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/fiio/music/util/bq;->a(I)V

    .line 1982
    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Lcom/fiio/music/util/bq;->e(I)V

    .line 1983
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1966
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_6

    .line 1973
    :cond_e
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isSacd()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1974
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getSacd_duration()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    invoke-virtual {v6, v0}, Lcom/fiio/music/util/bq;->c(I)V

    goto :goto_9

    .line 1976
    :cond_f
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getDurationTime()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/fiio/music/util/bq;->c(I)V

    goto :goto_9

    .line 1993
    :cond_10
    new-instance v4, Lcom/fiio/music/util/bq;

    invoke-direct {v4}, Lcom/fiio/music/util/bq;-><init>()V

    .line 1994
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->data:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/fiio/music/util/bq;->a(Ljava/lang/String;)V

    .line 1995
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->data:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getArtist()Lcom/fiio/music/entity/Artist;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/entity/Artist;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/fiio/music/util/bq;->b(Ljava/lang/String;)V

    .line 1996
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->data:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/fiio/music/util/bq;->d(Ljava/lang/String;)V

    .line 1997
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->data:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1998
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->data:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getCue_duration()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/fiio/music/util/bq;->c(I)V

    .line 2004
    :goto_a
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->songPath:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/fiio/music/util/bq;->c(Ljava/lang/String;)V

    .line 2005
    invoke-virtual {v4, v3}, Lcom/fiio/music/util/bq;->d(I)V

    .line 2006
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->data:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getId_()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/fiio/music/util/bq;->b(I)V

    .line 2007
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->data:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getTempId()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/fiio/music/util/bq;->a(I)V

    .line 2008
    const/4 v0, 0x3

    invoke-virtual {v4, v0}, Lcom/fiio/music/util/bq;->e(I)V

    .line 2009
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1992
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_7

    .line 1999
    :cond_11
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->data:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isSacd()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2000
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->data:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getSacd_duration()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    invoke-virtual {v4, v0}, Lcom/fiio/music/util/bq;->c(I)V

    goto :goto_a

    .line 2002
    :cond_12
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->data:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getDurationTime()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/fiio/music/util/bq;->c(I)V

    goto :goto_a
.end method

.method initData()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1874
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->groupList:Ljava/util/ArrayList;

    .line 1875
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->playListIsCheck:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->playListRadioButton:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 1876
    :goto_0
    iget-object v3, p0, Lcom/fiio/music/activity/ListMainActivity;->recentlyPlayIsCheck:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/fiio/music/activity/ListMainActivity;->recentlyPlayRadioButton:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v1

    :goto_1
    iget-object v4, p0, Lcom/fiio/music/activity/ListMainActivity;->mostPlayIsCheck:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/fiio/music/activity/ListMainActivity;->mostPlayRadioButton:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_2

    move v4, v1

    :goto_2
    iget-object v5, p0, Lcom/fiio/music/activity/ListMainActivity;->recentlyAddIsCheck:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/fiio/music/activity/ListMainActivity;->recentlyAddRadioButton:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1875
    :goto_3
    invoke-virtual {p0, v0, v3, v4, v1}, Lcom/fiio/music/activity/ListMainActivity;->setGroupList(ZZZZ)V

    .line 1877
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->childList:Ljava/util/ArrayList;

    move v0, v2

    .line 1878
    :goto_4
    iget-object v1, p0, Lcom/fiio/music/activity/ListMainActivity;->groupList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_4

    .line 1899
    return-void

    :cond_0
    move v0, v2

    .line 1875
    goto :goto_0

    :cond_1
    move v3, v2

    .line 1876
    goto :goto_1

    :cond_2
    move v4, v2

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3

    .line 1880
    :cond_4
    if-nez v0, :cond_7

    .line 1881
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v3, v2

    .line 1882
    :goto_5
    if-lt v3, v7, :cond_6

    .line 1897
    :cond_5
    iget-object v3, p0, Lcom/fiio/music/activity/ListMainActivity;->childList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1878
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1883
    :cond_6
    new-instance v4, Lcom/fiio/music/util/bq;

    invoke-direct {v4}, Lcom/fiio/music/util/bq;-><init>()V

    .line 1884
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "yy-"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/fiio/music/util/bq;->a(Ljava/lang/String;)V

    .line 1885
    const-string v5, "artist"

    invoke-virtual {v4, v5}, Lcom/fiio/music/util/bq;->b(Ljava/lang/String;)V

    .line 1886
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1882
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1889
    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v3, v2

    .line 1890
    :goto_6
    if-ge v3, v7, :cond_5

    .line 1891
    new-instance v4, Lcom/fiio/music/util/bq;

    invoke-direct {v4}, Lcom/fiio/music/util/bq;-><init>()V

    .line 1892
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "hh-"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/fiio/music/util/bq;->a(Ljava/lang/String;)V

    .line 1893
    const-string v5, "artist"

    invoke-virtual {v4, v5}, Lcom/fiio/music/util/bq;->b(Ljava/lang/String;)V

    .line 1894
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1890
    add-int/lit8 v3, v3, 0x1

    goto :goto_6
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1582
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1583
    sget-object v0, Lcom/fiio/music/activity/ListMainActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onActivityResult,requestCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    if-ne p1, v3, :cond_1

    if-ne p2, v3, :cond_1

    .line 1585
    sget-object v0, Lcom/fiio/music/activity/ListMainActivity;->TAG:Ljava/lang/String;

    const-string v1, "init after scan..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->A()V

    .line 1592
    :cond_0
    :goto_0
    return-void

    .line 1587
    :cond_1
    if-ne p1, v4, :cond_0

    if-ne p2, v4, :cond_0

    .line 1588
    new-instance v0, Lcom/fiio/music/c/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/fiio/music/c/b;-><init>(Landroid/content/Context;Z)V

    .line 1589
    invoke-virtual {p0}, Lcom/fiio/music/activity/ListMainActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 1590
    invoke-virtual {v0}, Lcom/fiio/music/c/b;->a()I

    move-result v0

    .line 1589
    invoke-virtual {v1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    goto :goto_0
.end method

.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 2141
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->childList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2142
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->childList:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/util/bq;

    invoke-virtual {v0}, Lcom/fiio/music/util/bq;->h()I

    move-result v4

    .line 2143
    const/4 v0, 0x1

    if-ne v4, v0, :cond_1

    .line 2144
    const/4 v2, 0x7

    move-object v0, p0

    move-object v1, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/fiio/music/activity/ListMainActivity;->playMusicByItem(Landroid/view/View;ILjava/lang/String;II)V

    .line 2155
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 2145
    :cond_1
    const/4 v0, 0x2

    if-ne v4, v0, :cond_2

    .line 2146
    const/16 v2, 0xb

    move-object v0, p0

    move-object v1, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/fiio/music/activity/ListMainActivity;->playMusicByItem(Landroid/view/View;ILjava/lang/String;II)V

    goto :goto_0

    .line 2147
    :cond_2
    const/4 v0, 0x3

    if-ne v4, v0, :cond_3

    .line 2148
    const/16 v2, 0x11

    move-object v0, p0

    move-object v1, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/fiio/music/activity/ListMainActivity;->playMusicByItem(Landroid/view/View;ILjava/lang/String;II)V

    goto :goto_0

    .line 2150
    :cond_3
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->childList:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/util/bq;

    invoke-virtual {v0}, Lcom/fiio/music/util/bq;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fiio/music/activity/ListMainActivity;->curPlayListName:Ljava/lang/String;

    .line 2151
    sget-object v0, Lcom/fiio/music/activity/ListMainActivity;->curPlayListName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/fiio/music/activity/ListMainActivity;->playPlayerListMusicByItem(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 343
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 345
    const-string v0, "fiio.start.viper_sound"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 348
    iput-boolean v5, p0, Lcom/fiio/music/activity/ListMainActivity;->isEjectBroadCastAfterShutdownBroadCast:Z

    .line 349
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 350
    const-string v0, "fiio.start.viper_sound"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 353
    invoke-virtual {p0}, Lcom/fiio/music/activity/ListMainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 354
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 356
    :cond_1
    invoke-virtual {p0}, Lcom/fiio/music/activity/ListMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 357
    const-string v0, "changeStyleboolean"

    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fiio/music/activity/ListMainActivity;->changeStyleboolean:Z

    .line 358
    const-string v0, "OTA"

    invoke-virtual {p0, v0, v5}, Lcom/fiio/music/activity/ListMainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->OTAsp:Landroid/content/SharedPreferences;

    .line 360
    invoke-virtual {p0}, Lcom/fiio/music/activity/ListMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/a;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/fiio/music/activity/ListMainActivity;->STYLE_PARAMTER:I

    .line 362
    iget v0, p0, Lcom/fiio/music/activity/ListMainActivity;->STYLE_PARAMTER:I

    if-ne v0, v6, :cond_4

    .line 363
    const v0, 0x7f040088

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/ListMainActivity;->setContentView(I)V

    .line 371
    :cond_2
    :goto_0
    new-instance v0, Lcom/fiio/music/widget/VolumeDialog;

    invoke-direct {v0, p0}, Lcom/fiio/music/widget/VolumeDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->volumedialog:Lcom/fiio/music/widget/VolumeDialog;

    .line 372
    iput-object p0, p0, Lcom/fiio/music/activity/ListMainActivity;->mContext:Landroid/content/Context;

    .line 373
    new-instance v2, Lcom/fiio/music/c/b;

    invoke-direct {v2, p0, v5}, Lcom/fiio/music/c/b;-><init>(Landroid/content/Context;Z)V

    .line 374
    const-string v0, "isStartup"

    invoke-virtual {v2, v0}, Lcom/fiio/music/c/b;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 377
    invoke-static {}, Lcom/fiio/music/a/c;->a()Lcom/fiio/music/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fiio/music/a/c;->a(Landroid/app/Activity;)V

    .line 378
    new-instance v0, Lcom/fiio/music/b/k;

    invoke-direct {v0, p0}, Lcom/fiio/music/b/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->songDao:Lcom/fiio/music/b/k;

    .line 379
    new-instance v0, Lcom/fiio/music/b/j;

    invoke-direct {v0, p0}, Lcom/fiio/music/b/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->playerListDao:Lcom/fiio/music/b/j;

    .line 380
    new-instance v0, Lcom/fiio/music/b/h;

    invoke-direct {v0, p0}, Lcom/fiio/music/b/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->playHistoryDao:Lcom/fiio/music/b/h;

    .line 381
    new-instance v0, Lcom/fiio/music/b/i;

    invoke-direct {v0, p0}, Lcom/fiio/music/b/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->playOftastDao:Lcom/fiio/music/b/i;

    .line 382
    new-instance v0, Lcom/fiio/music/util/bh;

    invoke-direct {v0, p0}, Lcom/fiio/music/util/bh;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->manager:Lcom/fiio/music/util/bh;

    .line 383
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v0, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->params:Landroid/view/ViewGroup$LayoutParams;

    .line 384
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/ListMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->inflater:Landroid/view/LayoutInflater;

    .line 387
    invoke-direct {p0}, Lcom/fiio/music/activity/ListMainActivity;->slideMenuInit()V

    .line 388
    invoke-direct {p0}, Lcom/fiio/music/activity/ListMainActivity;->initCustomVoice()V

    .line 390
    invoke-direct {p0}, Lcom/fiio/music/activity/ListMainActivity;->initDragGridView()V

    .line 393
    iget-object v3, p0, Lcom/fiio/music/activity/ListMainActivity;->vg_list_tab_item:[Landroid/view/ViewGroup;

    .line 394
    const v0, 0x7f0b01a6

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/ListMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 393
    aput-object v0, v3, v5

    .line 395
    iget-object v3, p0, Lcom/fiio/music/activity/ListMainActivity;->vg_list_tab_item:[Landroid/view/ViewGroup;

    .line 396
    const v0, 0x7f0b01a7

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/ListMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 395
    aput-object v0, v3, v6

    .line 397
    iget-object v3, p0, Lcom/fiio/music/activity/ListMainActivity;->vg_list_tab_item:[Landroid/view/ViewGroup;

    .line 398
    const v0, 0x7f0b01a8

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/ListMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 397
    aput-object v0, v3, v7

    .line 402
    const v0, 0x7f0b01a9

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/ListMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/custom/FlingGalleryView;

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->fgv_list_main:Lcom/fiio/music/custom/FlingGalleryView;

    .line 403
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->fgv_list_main:Lcom/fiio/music/custom/FlingGalleryView;

    iget v3, p0, Lcom/fiio/music/activity/ListMainActivity;->screenIndex:I

    invoke-virtual {v0, v3}, Lcom/fiio/music/custom/FlingGalleryView;->setDefaultScreen(I)V

    .line 404
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->fgv_list_main:Lcom/fiio/music/custom/FlingGalleryView;

    iget-object v3, p0, Lcom/fiio/music/activity/ListMainActivity;->scrollToScreenListener:Lcom/fiio/music/custom/e;

    invoke-virtual {v0, v3}, Lcom/fiio/music/custom/FlingGalleryView;->setOnScrollToScreenListener(Lcom/fiio/music/custom/e;)V

    .line 406
    invoke-direct {p0}, Lcom/fiio/music/activity/ListMainActivity;->initImageLoader()V

    .line 407
    invoke-direct {p0}, Lcom/fiio/music/activity/ListMainActivity;->createMenu()V

    .line 409
    invoke-direct {p0}, Lcom/fiio/music/activity/ListMainActivity;->initViewPage()V

    .line 411
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/fiio/music/service/KeyControlService;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 412
    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/ListMainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 417
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->lockScreenVolumeIntentFilter:Landroid/content/IntentFilter;

    .line 418
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->lockScreenVolumeIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "android.media.MASTER_VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 419
    new-instance v0, Lcom/fiio/music/activity/bx;

    invoke-direct {v0, p0, v5}, Lcom/fiio/music/activity/bx;-><init>(Lcom/fiio/music/activity/ListMainActivity;B)V

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->lockScreenVolumeReceiver:Lcom/fiio/music/activity/bx;

    .line 420
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->lockScreenVolumeReceiver:Lcom/fiio/music/activity/bx;

    iget-object v3, p0, Lcom/fiio/music/activity/ListMainActivity;->lockScreenVolumeIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v3}, Lcom/fiio/music/activity/ListMainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 423
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->sleepIntentFilter:Landroid/content/IntentFilter;

    .line 424
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->sleepIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "com.fiio.music.sleep_countdown_time_change"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 425
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->sleepIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "com.fiio.music.sleep_puretone_mode"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 426
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->sleepIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "com.fiio.music.sleep_shutdown_app"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 427
    new-instance v0, Lcom/fiio/music/activity/bz;

    invoke-direct {v0, p0, v5}, Lcom/fiio/music/activity/bz;-><init>(Lcom/fiio/music/activity/ListMainActivity;B)V

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->sleepCountdownTimeChangeReceiver:Lcom/fiio/music/activity/bz;

    .line 428
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->sleepCountdownTimeChangeReceiver:Lcom/fiio/music/activity/bz;

    iget-object v3, p0, Lcom/fiio/music/activity/ListMainActivity;->sleepIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v3}, Lcom/fiio/music/activity/ListMainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 430
    new-instance v0, Lcom/fiio/music/util/bh;

    invoke-direct {v0, p0}, Lcom/fiio/music/util/bh;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->musicManager:Lcom/fiio/music/util/bh;

    .line 432
    sput-boolean v5, Lcom/fiio/music/activity/ListMainActivity;->isSDCardMount:Z

    .line 433
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->sdCardIntentFilter:Landroid/content/IntentFilter;

    .line 434
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->sdCardIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 435
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->sdCardIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 436
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->sdCardIntentFilter:Landroid/content/IntentFilter;

    const/16 v3, 0x3e8

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 437
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->sdCardIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "file"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 438
    const-string v0, "musiclib_update"

    invoke-virtual {p0, v0, v5}, Lcom/fiio/music/activity/ListMainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->musicLibUpdateSharedPreferences:Landroid/content/SharedPreferences;

    .line 440
    new-instance v0, Lcom/fiio/music/activity/br;

    invoke-direct {v0, p0, v2}, Lcom/fiio/music/activity/br;-><init>(Lcom/fiio/music/activity/ListMainActivity;Lcom/fiio/music/c/b;)V

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->sdCardReceiver:Landroid/content/BroadcastReceiver;

    .line 515
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->sdCardReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/fiio/music/activity/ListMainActivity;->sdCardIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v3}, Lcom/fiio/music/activity/ListMainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 517
    const-string v0, "memory"

    invoke-virtual {p0, v0, v5}, Lcom/fiio/music/activity/ListMainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->memoryPlaySharedPreferences:Landroid/content/SharedPreferences;

    .line 518
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->memoryPlaySharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "SWITCH"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->memoryPlaySwitch:Ljava/lang/Boolean;

    .line 520
    :try_start_0
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "boot_mode"

    invoke-static {v0, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/fiio/music/activity/ListMainActivity;->isAndroidModel:I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    :goto_1
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->memoryPlaySharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "IS_SWITCH_MODEL"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fiio/music/activity/ListMainActivity;->isSwitchModel:Z

    .line 525
    const-string v0, "isCue"

    invoke-virtual {v2, v0}, Lcom/fiio/music/c/b;->b(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fiio/music/activity/ListMainActivity;->cueFlagForMemory:Z

    .line 526
    const-string v0, "isSacd"

    invoke-virtual {v2, v0}, Lcom/fiio/music/c/b;->b(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fiio/music/activity/ListMainActivity;->sacdFlagForMemory:Z

    .line 528
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->swtichSystemModelIntentFilter:Landroid/content/IntentFilter;

    .line 529
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->swtichSystemModelIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "com.android.intent.action.system_suspend_action"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 530
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->swtichSystemModelIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "com.fiio.music.switch_system_model"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 531
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->swtichSystemModelIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 532
    new-instance v0, Lcom/fiio/music/activity/bs;

    invoke-direct {v0, p0}, Lcom/fiio/music/activity/bs;-><init>(Lcom/fiio/music/activity/ListMainActivity;)V

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->swtichSystemModelReceiver:Landroid/content/BroadcastReceiver;

    .line 566
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->swtichSystemModelReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/fiio/music/activity/ListMainActivity;->swtichSystemModelIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v2}, Lcom/fiio/music/activity/ListMainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 567
    new-instance v0, Lcom/fiio/music/service/h;

    invoke-direct {v0, p0}, Lcom/fiio/music/service/h;-><init>(Landroid/content/ContextWrapper;)V

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    .line 569
    invoke-direct {p0}, Lcom/fiio/music/activity/ListMainActivity;->stickyLayoutInit()V

    .line 570
    iget-boolean v0, p0, Lcom/fiio/music/activity/ListMainActivity;->isSwitchModel:Z

    if-nez v0, :cond_7

    iget v0, p0, Lcom/fiio/music/activity/ListMainActivity;->isAndroidModel:I

    if-ne v0, v6, :cond_7

    .line 571
    new-instance v0, Lcom/fiio/music/activity/bt;

    invoke-direct {v0, p0}, Lcom/fiio/music/activity/bt;-><init>(Lcom/fiio/music/activity/ListMainActivity;)V

    .line 584
    invoke-virtual {v0}, Lcom/fiio/music/activity/bt;->start()Landroid/os/CountDownTimer;

    .line 590
    :goto_2
    iget-boolean v0, p0, Lcom/fiio/music/activity/ListMainActivity;->isSwitchModel:Z

    if-eqz v0, :cond_3

    .line 591
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->memoryPlaySharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 592
    const-string v2, "IS_SWITCH_MODEL"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 593
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 596
    :cond_3
    new-instance v0, Lcom/fiio/music/activity/by;

    invoke-direct {v0, p0, v5}, Lcom/fiio/music/activity/by;-><init>(Lcom/fiio/music/activity/ListMainActivity;B)V

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerBroadcastReceiver:Lcom/fiio/music/activity/by;

    .line 597
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerBroadcastReceiver:Lcom/fiio/music/activity/by;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.fiio.music.player.brocast"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v2}, Lcom/fiio/music/activity/ListMainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 598
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 599
    const-string v2, "com.fiio.music.playmainactivity.downloadcoversuccess"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 600
    const-string v2, "com.fiio.music.activity.downloadcoversuccess"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 601
    const-string v2, "com.fiio.music.delectcover"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 602
    const-string v2, "com.fiio.music.downloadapk.success"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 603
    iget-object v2, p0, Lcom/fiio/music/activity/ListMainActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/fiio/music/activity/ListMainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 606
    const-string v0, "OPEN_FLAG"

    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 607
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 608
    const-class v1, Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 609
    const-string v1, "changeboolean"

    iget-boolean v2, p0, Lcom/fiio/music/activity/ListMainActivity;->changeStyleboolean:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 610
    const-string v1, "playerInfo"

    invoke-direct {p0}, Lcom/fiio/music/activity/ListMainActivity;->getPlayInfo()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 611
    const-string v1, "OPEN_FLAG"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 612
    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/ListMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 664
    :goto_3
    return-void

    .line 364
    :cond_4
    iget v0, p0, Lcom/fiio/music/activity/ListMainActivity;->STYLE_PARAMTER:I

    if-ne v0, v7, :cond_5

    .line 365
    const v0, 0x7f040089

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/ListMainActivity;->setContentView(I)V

    goto/16 :goto_0

    .line 366
    :cond_5
    iget v0, p0, Lcom/fiio/music/activity/ListMainActivity;->STYLE_PARAMTER:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_6

    .line 367
    const v0, 0x7f04008a

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/ListMainActivity;->setContentView(I)V

    goto/16 :goto_0

    .line 368
    :cond_6
    iget v0, p0, Lcom/fiio/music/activity/ListMainActivity;->STYLE_PARAMTER:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    .line 369
    const v0, 0x7f04008b

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/ListMainActivity;->setContentView(I)V

    goto/16 :goto_0

    .line 587
    :cond_7
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    iget-object v2, p0, Lcom/fiio/music/activity/ListMainActivity;->mConnectionListener:Lcom/fiio/music/service/l;

    invoke-virtual {v0, v2}, Lcom/fiio/music/service/h;->a(Lcom/fiio/music/service/l;)V

    .line 588
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->b()V

    goto/16 :goto_2

    .line 615
    :cond_8
    const-string v0, "long"

    const-string v1, "-----------------ListMain onCreate V0720 -----------------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->OTAsp:Landroid/content/SharedPreferences;

    const-string v1, "showUser"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 617
    iget-object v1, p0, Lcom/fiio/music/activity/ListMainActivity;->OTAsp:Landroid/content/SharedPreferences;

    const-string v2, "ota"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/fiio/music/activity/ListMainActivity;->onlyOTA(Z)V

    .line 618
    if-eqz v0, :cond_9

    .line 619
    invoke-direct {p0}, Lcom/fiio/music/activity/ListMainActivity;->showUser()V

    .line 622
    :cond_9
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->OTAsp:Landroid/content/SharedPreferences;

    const-string v1, "deleteImg"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 623
    if-eqz v0, :cond_a

    .line 624
    new-instance v0, Lcom/fiio/music/util/at;

    invoke-direct {v0}, Lcom/fiio/music/util/at;-><init>()V

    .line 625
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->OTAsp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "deleteImg"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 628
    :cond_a
    new-instance v0, Lcom/fiio/music/util/bm;

    invoke-direct {v0, p0}, Lcom/fiio/music/util/bm;-><init>(Landroid/content/Context;)V

    .line 630
    sget-object v1, Lcom/fiio/music/activity/ListMainActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "connect ?"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/fiio/music/util/bm;->a()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    invoke-virtual {v0}, Lcom/fiio/music/util/bm;->a()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 633
    invoke-static {p0}, Lcom/fiio/music/util/ax;->a(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v1

    .line 635
    sget-object v2, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 637
    sget-object v1, Lcom/fiio/music/activity/ListMainActivity;->TAG:Ljava/lang/String;

    const-string v2, "\u53d1\u9001\u6d3b\u52a8\u901a\u77e5"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    invoke-virtual {p0}, Lcom/fiio/music/activity/ListMainActivity;->sendRequestForActivity()V

    .line 643
    :cond_b
    invoke-virtual {p0}, Lcom/fiio/music/activity/ListMainActivity;->getIp()V

    .line 644
    const-string v1, "UserExperience"

    invoke-virtual {p0, v1, v5}, Lcom/fiio/music/activity/ListMainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 645
    const-string v2, "UserSelect"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 646
    invoke-virtual {v0}, Lcom/fiio/music/util/bm;->b()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {v0}, Lcom/fiio/music/util/bm;->a()Z

    move-result v0

    if-eqz v0, :cond_c

    if-eqz v1, :cond_c

    .line 647
    sget-object v0, Lcom/fiio/music/activity/ListMainActivity;->TAG:Ljava/lang/String;

    const-string v1, "Upload Crash File To Server"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/fiio/music/activity/bu;

    invoke-direct {v1, p0}, Lcom/fiio/music/activity/bu;-><init>(Lcom/fiio/music/activity/ListMainActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 655
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 659
    :cond_c
    invoke-virtual {p0}, Lcom/fiio/music/activity/ListMainActivity;->checkForUpdate()V

    .line 661
    :cond_d
    invoke-virtual {p0}, Lcom/fiio/music/activity/ListMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/audlabs/vipereffect/ViPEREffect;->setViPERPInit(Landroid/content/Context;)V

    goto/16 :goto_3

    :catch_0
    move-exception v0

    goto/16 :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 1231
    const-string v0, "zengxy - -"

    const-string v1, "ListMain  onDestroy"

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1232
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 1233
    invoke-virtual {p0}, Lcom/fiio/music/activity/ListMainActivity;->stopKeyControlService()V

    .line 1234
    invoke-static {}, Lcom/fiio/music/a/c;->a()Lcom/fiio/music/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fiio/music/a/c;->b(Landroid/app/Activity;)V

    .line 1235
    invoke-virtual {p0}, Lcom/fiio/music/activity/ListMainActivity;->cancelAutoShutdown()V

    .line 1236
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerBroadcastReceiver:Lcom/fiio/music/activity/by;

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/ListMainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1237
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->g()V

    .line 1238
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->sleepCountdownTimeChangeReceiver:Lcom/fiio/music/activity/bz;

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/ListMainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1239
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->lockScreenVolumeReceiver:Lcom/fiio/music/activity/bx;

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/ListMainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1240
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->sdCardReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/ListMainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1241
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->swtichSystemModelReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/ListMainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1242
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/ListMainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1244
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/fiio/music/util/l;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1245
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/ListMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1246
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1248
    :cond_0
    return-void
.end method

.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 1

    .prologue
    .line 2135
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 1610
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    .line 1611
    iget-object v1, p0, Lcom/fiio/music/activity/ListMainActivity;->mSlidingMenu:Lcom/fiio/music/slidemenu/SlidingMenu;

    invoke-virtual {v1}, Lcom/fiio/music/slidemenu/SlidingMenu;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1612
    iget-object v1, p0, Lcom/fiio/music/activity/ListMainActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/fiio/music/util/l;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1613
    new-instance v1, Lcom/fiio/music/util/p;

    iget-object v2, p0, Lcom/fiio/music/activity/ListMainActivity;->mContext:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/fiio/music/activity/ListMainActivity;->changeStyleboolean:Z

    invoke-direct {v1, v2, v3}, Lcom/fiio/music/util/p;-><init>(Landroid/content/Context;Z)V

    .line 1631
    :cond_0
    :goto_0
    return v0

    .line 1617
    :cond_1
    iget-object v1, p0, Lcom/fiio/music/activity/ListMainActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/fiio/music/util/l;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1618
    new-instance v1, Lcom/fiio/music/util/p;

    iget-object v2, p0, Lcom/fiio/music/activity/ListMainActivity;->mContext:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/fiio/music/activity/ListMainActivity;->changeStyleboolean:Z

    invoke-direct {v1, v2, v3}, Lcom/fiio/music/util/p;-><init>(Landroid/content/Context;Z)V

    goto :goto_0

    .line 1622
    :cond_2
    const/16 v1, 0x52

    if-ne p1, v1, :cond_4

    iget-object v1, p0, Lcom/fiio/music/activity/ListMainActivity;->xfMenu:Lcom/fiio/music/custom/j;

    invoke-virtual {v1}, Lcom/fiio/music/custom/j;->b()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1623
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->xfMenu:Lcom/fiio/music/custom/j;

    const v1, 0x7f0b01a4

    invoke-virtual {p0, v1}, Lcom/fiio/music/activity/ListMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/custom/j;->a(Landroid/view/View;)V

    .line 1631
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 1624
    :cond_4
    const/16 v1, 0x19

    if-ne p1, v1, :cond_5

    .line 1625
    iget-object v1, p0, Lcom/fiio/music/activity/ListMainActivity;->volumedialog:Lcom/fiio/music/widget/VolumeDialog;

    invoke-virtual {v1, v0}, Lcom/fiio/music/widget/VolumeDialog;->a(Z)V

    goto :goto_0

    .line 1627
    :cond_5
    const/16 v1, 0x18

    if-ne p1, v1, :cond_3

    .line 1628
    iget-object v1, p0, Lcom/fiio/music/activity/ListMainActivity;->volumedialog:Lcom/fiio/music/widget/VolumeDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/fiio/music/widget/VolumeDialog;->a(Z)V

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 2400
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .prologue
    .line 2408
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2411
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    if-eqz v0, :cond_1

    .line 2412
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->l()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 2413
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->Z()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->X()I

    move-result v0

    if-lez v0, :cond_1

    .line 2414
    const-string v0, "kuishe"

    invoke-virtual {p0, v0, v3}, Lcom/fiio/music/activity/ListMainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2416
    const-string v1, "enable_viper"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2418
    if-eqz v0, :cond_0

    .line 2419
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->S()Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {}, Lcom/fiio/music/service/MediaPlayerService;->X()Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->setJumpToSong(Z)V

    .line 2422
    :cond_0
    iput-boolean v2, p0, Lcom/fiio/music/activity/ListMainActivity;->wasCurrAlbumUpdated:Z

    .line 2423
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mImageViews:[Landroid/widget/ImageView;

    array-length v0, v0

    rem-int v0, p1, v0

    invoke-direct {p0, v0}, Lcom/fiio/music/activity/ListMainActivity;->setImageBackground(I)V

    .line 2442
    :cond_1
    :goto_0
    return-void

    .line 2426
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->v()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2427
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2429
    const-string v0, "kuishe"

    invoke-virtual {p0, v0, v3}, Lcom/fiio/music/activity/ListMainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2431
    const-string v1, "enable_viper"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2433
    if-eqz v0, :cond_3

    .line 2434
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->S()Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {}, Lcom/fiio/music/service/MediaPlayerService;->X()Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->setJumpToSong(Z)V

    .line 2437
    :cond_3
    iput-boolean v2, p0, Lcom/fiio/music/activity/ListMainActivity;->wasCurrAlbumUpdated:Z

    .line 2438
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mImageViews:[Landroid/widget/ImageView;

    array-length v0, v0

    rem-int v0, p1, v0

    invoke-direct {p0, v0}, Lcom/fiio/music/activity/ListMainActivity;->setImageBackground(I)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 1224
    const-string v0, "zengxy - -"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ListMain  onPause = = :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/fiio/music/activity/ListMainActivity;->isFinishing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1225
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->volumedialog:Lcom/fiio/music/widget/VolumeDialog;

    invoke-virtual {v0}, Lcom/fiio/music/widget/VolumeDialog;->d()V

    .line 1226
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 1227
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 706
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    if-eqz v0, :cond_0

    .line 707
    invoke-virtual {p0}, Lcom/fiio/music/activity/ListMainActivity;->initChildData()V

    .line 709
    :cond_0
    iput-boolean v2, p0, Lcom/fiio/music/activity/ListMainActivity;->isHidden:Z

    .line 710
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 712
    const-string v0, "SQLITE_UPGRADE"

    invoke-virtual {p0, v0, v2}, Lcom/fiio/music/activity/ListMainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 713
    const-string v1, "flag"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 714
    const-string v1, "sin"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isSqlUpgrade -- "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fiio/music/util/aw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    if-eqz v0, :cond_1

    .line 716
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/fiio/music/activity/ListMainActivity;->dbUpgradeDialog(Z)V

    .line 722
    :cond_1
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 702
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 703
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 1219
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fiio/music/activity/ListMainActivity;->isHidden:Z

    .line 1220
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 1221
    return-void
.end method

.method public registerAutoShutdown(I)V
    .locals 9

    .prologue
    const-wide/32 v4, 0xea60

    const v8, 0xea60

    const/high16 v7, 0x10000000

    const/4 v1, 0x0

    .line 1514
    const-string v0, "long"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u5b9a\u65f6\u5173\u95ed\u542f\u52a8 isAndroidModel:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/fiio/music/activity/ListMainActivity;->isAndroidModel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    iput p1, p0, Lcom/fiio/music/activity/ListMainActivity;->sleepProgressValue:I

    .line 1516
    invoke-virtual {p0}, Lcom/fiio/music/activity/ListMainActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v2, "sleep"

    invoke-virtual {v0, v2, v1}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->sleepSharedPreferences:Landroid/content/SharedPreferences;

    .line 1518
    const-string v0, "long"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u5012\u8ba1\u65f6\u542f\u52a8 \u5355\u6b21\u5524\u9192\u65f6\u957f:60000 \u53c2\u6570\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/ListMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1521
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.fiio.music.sleep_countdown_time_change"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, v2, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 1524
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/fiio/music/activity/ListMainActivity;->currentTimeMillis:J

    .line 1525
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v4

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 1527
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/ListMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1528
    iget v2, p0, Lcom/fiio/music/activity/ListMainActivity;->isAndroidModel:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1530
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.fiio.music.sleep_puretone_mode"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, v2, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1532
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    mul-int v3, p1, v8

    int-to-long v6, v3

    add-long/2addr v4, v6

    invoke-virtual {v0, v1, v4, v5, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1540
    :goto_0
    return-void

    .line 1535
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.fiio.music.sleep_shutdown_app"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, v2, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1537
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    mul-int v3, p1, v8

    int-to-long v6, v3

    add-long/2addr v4, v6

    invoke-virtual {v0, v1, v4, v5, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public sendRequestForActivity()V
    .locals 3

    .prologue
    .line 2740
    sget-object v0, Lcom/fiio/music/activity/ListMainActivity;->TAG:Ljava/lang/String;

    const-string v1, "\u5e7f\u544aURL = http://www.fiio.mobi:8080/FiiOMusicForApp/ServletForActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2742
    invoke-static {}, Lcom/fiio/music/network/b/a;->a()Lcom/fiio/music/network/b/a;

    const-string v0, "http://www.fiio.mobi:8080/FiiOMusicForApp/ServletForActivity"

    const-string v1, "activity"

    .line 2743
    new-instance v2, Lcom/fiio/music/activity/bj;

    invoke-direct {v2, p0}, Lcom/fiio/music/activity/bj;-><init>(Lcom/fiio/music/activity/ListMainActivity;)V

    .line 2742
    invoke-static {v0, v1, v2}, Lcom/fiio/music/network/b/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/fiio/music/network/b/g;)Le/g;

    .line 2787
    return-void
.end method

.method public sendSaleRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 2836
    invoke-static {p1, p2, p3}, Lcom/fiio/music/network/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2837
    sget-object v1, Lcom/fiio/music/activity/ListMainActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "requestURl = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2840
    invoke-static {}, Lcom/fiio/music/network/b/a;->a()Lcom/fiio/music/network/b/a;

    const-string v1, "sale reuest"

    new-instance v2, Lcom/fiio/music/activity/bl;

    invoke-direct {v2, p0}, Lcom/fiio/music/activity/bl;-><init>(Lcom/fiio/music/activity/ListMainActivity;)V

    invoke-static {v0, v1, v2}, Lcom/fiio/music/network/b/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/fiio/music/network/b/g;)Le/g;

    .line 2867
    return-void
.end method

.method public setCurPlayListName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1602
    sput-object p1, Lcom/fiio/music/activity/ListMainActivity;->curPlayListName:Ljava/lang/String;

    .line 1603
    return-void
.end method

.method public setGroupList(ZZZZ)V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x4

    .line 2020
    const/4 v0, 0x0

    .line 2021
    iget v1, p0, Lcom/fiio/music/activity/ListMainActivity;->STYLE_PARAMTER:I

    if-ne v1, v5, :cond_5

    .line 2022
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    .line 2057
    :cond_0
    :goto_0
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    .line 2058
    iget-object v2, p0, Lcom/fiio/music/activity/ListMainActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f0c0052

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    .line 2059
    iget-object v2, p0, Lcom/fiio/music/activity/ListMainActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f0c0059

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 2060
    iget-object v2, p0, Lcom/fiio/music/activity/ListMainActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f0c005a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 2061
    iget-object v2, p0, Lcom/fiio/music/activity/ListMainActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f0c0059

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    .line 2062
    iget-object v2, p0, Lcom/fiio/music/activity/ListMainActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f0c005b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 2064
    iget-object v2, p0, Lcom/fiio/music/activity/ListMainActivity;->groupList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2065
    if-eqz p1, :cond_1

    .line 2066
    new-instance v2, Lcom/fiio/music/util/as;

    invoke-direct {v2}, Lcom/fiio/music/util/as;-><init>()V

    .line 2067
    aget-object v3, v1, v7

    invoke-virtual {v2, v3}, Lcom/fiio/music/util/as;->a(Ljava/lang/String;)V

    .line 2068
    aget v3, v0, v7

    invoke-virtual {v2, v3}, Lcom/fiio/music/util/as;->a(I)V

    .line 2069
    const-string v3, "P"

    invoke-virtual {v2, v3}, Lcom/fiio/music/util/as;->b(Ljava/lang/String;)V

    .line 2070
    iget-object v3, p0, Lcom/fiio/music/activity/ListMainActivity;->groupList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2072
    :cond_1
    if-eqz p2, :cond_2

    .line 2073
    new-instance v2, Lcom/fiio/music/util/as;

    invoke-direct {v2}, Lcom/fiio/music/util/as;-><init>()V

    .line 2074
    aget-object v3, v1, v5

    invoke-virtual {v2, v3}, Lcom/fiio/music/util/as;->a(Ljava/lang/String;)V

    .line 2075
    aget v3, v0, v5

    invoke-virtual {v2, v3}, Lcom/fiio/music/util/as;->a(I)V

    .line 2076
    const-string v3, "R"

    invoke-virtual {v2, v3}, Lcom/fiio/music/util/as;->b(Ljava/lang/String;)V

    .line 2077
    iget-object v3, p0, Lcom/fiio/music/activity/ListMainActivity;->groupList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2079
    :cond_2
    if-eqz p3, :cond_3

    .line 2080
    new-instance v2, Lcom/fiio/music/util/as;

    invoke-direct {v2}, Lcom/fiio/music/util/as;-><init>()V

    .line 2081
    aget-object v3, v1, v6

    invoke-virtual {v2, v3}, Lcom/fiio/music/util/as;->a(Ljava/lang/String;)V

    .line 2082
    aget v3, v0, v6

    invoke-virtual {v2, v3}, Lcom/fiio/music/util/as;->a(I)V

    .line 2083
    const-string v3, "F"

    invoke-virtual {v2, v3}, Lcom/fiio/music/util/as;->b(Ljava/lang/String;)V

    .line 2084
    iget-object v3, p0, Lcom/fiio/music/activity/ListMainActivity;->groupList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2086
    :cond_3
    if-eqz p4, :cond_4

    .line 2087
    new-instance v2, Lcom/fiio/music/util/as;

    invoke-direct {v2}, Lcom/fiio/music/util/as;-><init>()V

    .line 2088
    aget-object v1, v1, v4

    invoke-virtual {v2, v1}, Lcom/fiio/music/util/as;->a(Ljava/lang/String;)V

    .line 2089
    aget v0, v0, v8

    invoke-virtual {v2, v0}, Lcom/fiio/music/util/as;->a(I)V

    .line 2090
    const-string v0, "A"

    invoke-virtual {v2, v0}, Lcom/fiio/music/util/as;->b(Ljava/lang/String;)V

    .line 2091
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->groupList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2093
    :cond_4
    return-void

    .line 2029
    :cond_5
    iget v1, p0, Lcom/fiio/music/activity/ListMainActivity;->STYLE_PARAMTER:I

    if-ne v1, v6, :cond_6

    .line 2030
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    goto/16 :goto_0

    .line 2037
    :cond_6
    iget v1, p0, Lcom/fiio/music/activity/ListMainActivity;->STYLE_PARAMTER:I

    if-ne v1, v8, :cond_7

    .line 2039
    new-array v0, v4, [I

    fill-array-data v0, :array_2

    goto/16 :goto_0

    .line 2046
    :cond_7
    iget v1, p0, Lcom/fiio/music/activity/ListMainActivity;->STYLE_PARAMTER:I

    if-ne v1, v4, :cond_0

    .line 2048
    new-array v0, v4, [I

    fill-array-data v0, :array_3

    goto/16 :goto_0

    .line 2022
    :array_0
    .array-data 4
        0x7f02015a
        0x7f0201b6
        0x7f020130
        0x7f020169
    .end array-data

    .line 2030
    :array_1
    .array-data 4
        0x7f02012e
        0x7f0201b7
        0x7f020131
        0x7f020039
    .end array-data

    .line 2039
    :array_2
    .array-data 4
        0x7f02012f
        0x7f0201b8
        0x7f020132
        0x7f02003a
    .end array-data

    .line 2048
    :array_3
    .array-data 4
        0x7f02012f
        0x7f0201b8
        0x7f020132
        0x7f02003a
    .end array-data
.end method

.method public startDlnaActivity()V
    .locals 3

    .prologue
    .line 2256
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fiio/music/activity/DlnaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2257
    const-string v1, "ChangeStyle"

    iget-boolean v2, p0, Lcom/fiio/music/activity/ListMainActivity;->changeStyleboolean:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2258
    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/ListMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 2259
    return-void
.end method

.method public startMyMusicListActivity()V
    .locals 5

    .prologue
    .line 2552
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v2}, Lcom/fiio/music/service/h;->i()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v2}, Lcom/fiio/music/service/h;->m()I

    move-result v2

    aput v2, v0, v1

    .line 2553
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2554
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2555
    const-string v3, "data111"

    iget-object v4, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v4}, Lcom/fiio/music/service/h;->C()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2556
    const-string v3, "playerInfo111"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 2557
    const-string v0, "playerInfo"

    invoke-direct {p0}, Lcom/fiio/music/activity/ListMainActivity;->getPlayInfo()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2558
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2559
    const-string v0, "ChangeStyle"

    iget-boolean v2, p0, Lcom/fiio/music/activity/ListMainActivity;->changeStyleboolean:Z

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2560
    invoke-virtual {p0, v1}, Lcom/fiio/music/activity/ListMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 2561
    return-void
.end method

.method public startRecentListActivity(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2248
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->m()I

    move-result v0

    .line 2249
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/fiio/music/activity/RecentListActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2250
    const-string v2, "RFAW"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2251
    const-string v2, "playState"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2252
    const-string v0, "ChangeStyle"

    iget-boolean v2, p0, Lcom/fiio/music/activity/ListMainActivity;->changeStyleboolean:Z

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2253
    invoke-virtual {p0, v1}, Lcom/fiio/music/activity/ListMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 2254
    return-void
.end method

.method public startScan()V
    .locals 3

    .prologue
    .line 1595
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fiio/music/activity/ScanMusicActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1596
    const-string v1, "ChangeStyle"

    iget-boolean v2, p0, Lcom/fiio/music/activity/ListMainActivity;->changeStyleboolean:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1597
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/fiio/music/activity/ListMainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1598
    return-void
.end method

.method public stopKeyControlService()V
    .locals 4

    .prologue
    .line 2512
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fiio/music/service/KeyControlService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/ListMainActivity;->stopService(Landroid/content/Intent;)Z

    .line 2513
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "LOCK_ACTION_ON_META"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2514
    const-string v2, "songname"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 2515
    const-string v2, "artist"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 2516
    const-string v2, "isplaying"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    .line 2513
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2517
    return-void
.end method

.method public updateAlbumShow(Lcom/fiio/music/entity/Song;)V
    .locals 8

    .prologue
    const/16 v7, 0x12c

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2578
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->J()Lcom/fiio/music/entity/Song;

    move-result-object v0

    .line 2579
    iget-object v1, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->I()Lcom/fiio/music/entity/Song;

    move-result-object v1

    .line 2581
    iget-object v2, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v2}, Lcom/fiio/music/service/h;->l()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_6

    .line 2584
    iget v2, p0, Lcom/fiio/music/activity/ListMainActivity;->STYLE_PARAMTER:I

    invoke-virtual {p0}, Lcom/fiio/music/activity/ListMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/fiio/music/activity/ListMainActivity;->imageLoader:Lcom/b/a/b/f;

    invoke-static {p1, v2, v3, v4}, Lcom/fiio/music/util/h;->a(Lcom/fiio/music/entity/Song;ILandroid/content/Context;Lcom/b/a/b/f;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/fiio/music/activity/ListMainActivity;->curAlbum:Ljava/lang/String;

    .line 2586
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2587
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->curAlbum:Ljava/lang/String;

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->prevAlbum:Ljava/lang/String;

    .line 2595
    :cond_0
    :goto_0
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2596
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->curAlbum:Ljava/lang/String;

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->nextAlbum:Ljava/lang/String;

    .line 2604
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->O()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->Q()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2605
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->curAlbum:Ljava/lang/String;

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->prevAlbum:Ljava/lang/String;

    .line 2606
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->curAlbum:Ljava/lang/String;

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->nextAlbum:Ljava/lang/String;

    .line 2651
    :cond_2
    :goto_2
    sget-object v0, Lcom/fiio/music/activity/ListMainActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "curAlbum = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fiio/music/activity/ListMainActivity;->curAlbum:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2659
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v6

    .line 2660
    new-instance v4, Lcom/b/a/b/a/f;

    invoke-direct {v4, v7, v7}, Lcom/b/a/b/a/f;-><init>(II)V

    .line 2661
    iget-boolean v0, p0, Lcom/fiio/music/activity/ListMainActivity;->wasCurrAlbumUpdated:Z

    if-nez v0, :cond_3

    .line 2662
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mImageViews:[Landroid/widget/ImageView;

    array-length v0, v0

    rem-int v3, v6, v0

    .line 2663
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->imageLoader:Lcom/b/a/b/f;

    iget-object v1, p0, Lcom/fiio/music/activity/ListMainActivity;->curAlbum:Ljava/lang/String;

    new-instance v2, Lcom/b/a/b/e/b;

    iget-object v7, p0, Lcom/fiio/music/activity/ListMainActivity;->mImageViews:[Landroid/widget/ImageView;

    aget-object v3, v7, v3

    invoke-direct {v2, v3}, Lcom/b/a/b/e/b;-><init>(Landroid/widget/ImageView;)V

    iget-object v3, p0, Lcom/fiio/music/activity/ListMainActivity;->options:Lcom/b/a/b/d;

    invoke-virtual/range {v0 .. v5}, Lcom/b/a/b/f;->a(Ljava/lang/String;Lcom/b/a/b/e/a;Lcom/b/a/b/d;Lcom/b/a/b/a/f;Lcom/b/a/b/f/a;)V

    .line 2667
    :cond_3
    add-int/lit8 v0, v6, -0x1

    iget-object v1, p0, Lcom/fiio/music/activity/ListMainActivity;->mImageViews:[Landroid/widget/ImageView;

    array-length v1, v1

    rem-int v3, v0, v1

    .line 2668
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->imageLoader:Lcom/b/a/b/f;

    iget-object v1, p0, Lcom/fiio/music/activity/ListMainActivity;->prevAlbum:Ljava/lang/String;

    new-instance v2, Lcom/b/a/b/e/b;

    iget-object v7, p0, Lcom/fiio/music/activity/ListMainActivity;->mImageViews:[Landroid/widget/ImageView;

    aget-object v3, v7, v3

    invoke-direct {v2, v3}, Lcom/b/a/b/e/b;-><init>(Landroid/widget/ImageView;)V

    iget-object v3, p0, Lcom/fiio/music/activity/ListMainActivity;->options:Lcom/b/a/b/d;

    invoke-virtual/range {v0 .. v5}, Lcom/b/a/b/f;->a(Ljava/lang/String;Lcom/b/a/b/e/a;Lcom/b/a/b/d;Lcom/b/a/b/a/f;Lcom/b/a/b/f/a;)V

    .line 2670
    add-int/lit8 v0, v6, 0x1

    iget-object v1, p0, Lcom/fiio/music/activity/ListMainActivity;->mImageViews:[Landroid/widget/ImageView;

    array-length v1, v1

    rem-int v3, v0, v1

    .line 2671
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->imageLoader:Lcom/b/a/b/f;

    iget-object v1, p0, Lcom/fiio/music/activity/ListMainActivity;->nextAlbum:Ljava/lang/String;

    new-instance v2, Lcom/b/a/b/e/b;

    iget-object v6, p0, Lcom/fiio/music/activity/ListMainActivity;->mImageViews:[Landroid/widget/ImageView;

    aget-object v3, v6, v3

    invoke-direct {v2, v3}, Lcom/b/a/b/e/b;-><init>(Landroid/widget/ImageView;)V

    iget-object v3, p0, Lcom/fiio/music/activity/ListMainActivity;->options:Lcom/b/a/b/d;

    invoke-virtual/range {v0 .. v5}, Lcom/b/a/b/f;->a(Ljava/lang/String;Lcom/b/a/b/e/a;Lcom/b/a/b/d;Lcom/b/a/b/a/f;Lcom/b/a/b/f/a;)V

    .line 2673
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fiio/music/activity/ListMainActivity;->wasCurrAlbumUpdated:Z

    .line 2674
    const/4 v0, -0x1

    iput v0, p0, Lcom/fiio/music/activity/ListMainActivity;->nextOrPre:I

    .line 2677
    return-void

    .line 2589
    :cond_4
    if-eqz v0, :cond_0

    .line 2591
    iget-object v2, p0, Lcom/fiio/music/activity/ListMainActivity;->manager:Lcom/fiio/music/util/bh;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/fiio/music/util/bh;->a(Ljava/lang/String;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    .line 2592
    iget v2, p0, Lcom/fiio/music/activity/ListMainActivity;->STYLE_PARAMTER:I

    invoke-virtual {p0}, Lcom/fiio/music/activity/ListMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/fiio/music/activity/ListMainActivity;->imageLoader:Lcom/b/a/b/f;

    invoke-static {v0, v2, v3, v4}, Lcom/fiio/music/util/h;->a(Lcom/fiio/music/entity/Song;ILandroid/content/Context;Lcom/b/a/b/f;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->prevAlbum:Ljava/lang/String;

    goto/16 :goto_0

    .line 2598
    :cond_5
    if-eqz v1, :cond_1

    .line 2599
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->manager:Lcom/fiio/music/util/bh;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/bh;->a(Ljava/lang/String;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    .line 2600
    iget v1, p0, Lcom/fiio/music/activity/ListMainActivity;->STYLE_PARAMTER:I

    invoke-virtual {p0}, Lcom/fiio/music/activity/ListMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/activity/ListMainActivity;->imageLoader:Lcom/b/a/b/f;

    invoke-static {v0, v1, v2, v3}, Lcom/fiio/music/util/h;->a(Lcom/fiio/music/entity/Song;ILandroid/content/Context;Lcom/b/a/b/f;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->nextAlbum:Ljava/lang/String;

    goto/16 :goto_1

    .line 2609
    :cond_6
    iget v2, p0, Lcom/fiio/music/activity/ListMainActivity;->nextOrPre:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    .line 2611
    :pswitch_1
    iget v2, p0, Lcom/fiio/music/activity/ListMainActivity;->STYLE_PARAMTER:I

    invoke-virtual {p0}, Lcom/fiio/music/activity/ListMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/fiio/music/activity/ListMainActivity;->imageLoader:Lcom/b/a/b/f;

    invoke-static {v0, v2, v3, v4}, Lcom/fiio/music/util/h;->a(Lcom/fiio/music/entity/Song;ILandroid/content/Context;Lcom/b/a/b/f;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->prevAlbum:Ljava/lang/String;

    .line 2612
    iget v0, p0, Lcom/fiio/music/activity/ListMainActivity;->STYLE_PARAMTER:I

    invoke-virtual {p0}, Lcom/fiio/music/activity/ListMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/activity/ListMainActivity;->imageLoader:Lcom/b/a/b/f;

    invoke-static {p1, v0, v2, v3}, Lcom/fiio/music/util/h;->a(Lcom/fiio/music/entity/Song;ILandroid/content/Context;Lcom/b/a/b/f;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->curAlbum:Ljava/lang/String;

    .line 2613
    iget v0, p0, Lcom/fiio/music/activity/ListMainActivity;->STYLE_PARAMTER:I

    invoke-virtual {p0}, Lcom/fiio/music/activity/ListMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/activity/ListMainActivity;->imageLoader:Lcom/b/a/b/f;

    invoke-static {v1, v0, v2, v3}, Lcom/fiio/music/util/h;->a(Lcom/fiio/music/entity/Song;ILandroid/content/Context;Lcom/b/a/b/f;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->nextAlbum:Ljava/lang/String;

    goto/16 :goto_2

    .line 2617
    :pswitch_2
    iget-object v2, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v2}, Lcom/fiio/music/service/h;->z()I

    move-result v2

    if-ne v2, v4, :cond_8

    .line 2618
    iget v2, p0, Lcom/fiio/music/activity/ListMainActivity;->STYLE_PARAMTER:I

    invoke-virtual {p0}, Lcom/fiio/music/activity/ListMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/fiio/music/activity/ListMainActivity;->imageLoader:Lcom/b/a/b/f;

    invoke-static {v0, v2, v3, v4}, Lcom/fiio/music/util/h;->b(Lcom/fiio/music/entity/Song;ILandroid/content/Context;Lcom/b/a/b/f;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->prevAlbum:Ljava/lang/String;

    .line 2629
    :cond_7
    iget v0, p0, Lcom/fiio/music/activity/ListMainActivity;->STYLE_PARAMTER:I

    invoke-virtual {p0}, Lcom/fiio/music/activity/ListMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/activity/ListMainActivity;->imageLoader:Lcom/b/a/b/f;

    invoke-static {p1, v0, v2, v3}, Lcom/fiio/music/util/h;->b(Lcom/fiio/music/entity/Song;ILandroid/content/Context;Lcom/b/a/b/f;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->curAlbum:Ljava/lang/String;

    .line 2632
    :goto_3
    iget v0, p0, Lcom/fiio/music/activity/ListMainActivity;->STYLE_PARAMTER:I

    invoke-virtual {p0}, Lcom/fiio/music/activity/ListMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/activity/ListMainActivity;->imageLoader:Lcom/b/a/b/f;

    invoke-static {v1, v0, v2, v3}, Lcom/fiio/music/util/h;->b(Lcom/fiio/music/entity/Song;ILandroid/content/Context;Lcom/b/a/b/f;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->nextAlbum:Ljava/lang/String;

    goto/16 :goto_2

    .line 2621
    :cond_8
    iget-object v2, p0, Lcom/fiio/music/activity/ListMainActivity;->curAlbum:Ljava/lang/String;

    if-eqz v2, :cond_9

    .line 2622
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->curAlbum:Ljava/lang/String;

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->prevAlbum:Ljava/lang/String;

    .line 2626
    :goto_4
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->nextAlbum:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 2627
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->nextAlbum:Ljava/lang/String;

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->curAlbum:Ljava/lang/String;

    goto :goto_3

    .line 2624
    :cond_9
    iget v2, p0, Lcom/fiio/music/activity/ListMainActivity;->STYLE_PARAMTER:I

    invoke-virtual {p0}, Lcom/fiio/music/activity/ListMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/fiio/music/activity/ListMainActivity;->imageLoader:Lcom/b/a/b/f;

    invoke-static {v0, v2, v3, v4}, Lcom/fiio/music/util/h;->b(Lcom/fiio/music/entity/Song;ILandroid/content/Context;Lcom/b/a/b/f;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->prevAlbum:Ljava/lang/String;

    goto :goto_4

    .line 2635
    :pswitch_3
    iget-object v2, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v2}, Lcom/fiio/music/service/h;->z()I

    move-result v2

    if-ne v2, v4, :cond_b

    .line 2636
    iget v2, p0, Lcom/fiio/music/activity/ListMainActivity;->STYLE_PARAMTER:I

    invoke-virtual {p0}, Lcom/fiio/music/activity/ListMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/fiio/music/activity/ListMainActivity;->imageLoader:Lcom/b/a/b/f;

    invoke-static {v1, v2, v3, v4}, Lcom/fiio/music/util/h;->b(Lcom/fiio/music/entity/Song;ILandroid/content/Context;Lcom/b/a/b/f;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fiio/music/activity/ListMainActivity;->nextAlbum:Ljava/lang/String;

    .line 2647
    :cond_a
    iget v1, p0, Lcom/fiio/music/activity/ListMainActivity;->STYLE_PARAMTER:I

    invoke-virtual {p0}, Lcom/fiio/music/activity/ListMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/activity/ListMainActivity;->imageLoader:Lcom/b/a/b/f;

    invoke-static {p1, v1, v2, v3}, Lcom/fiio/music/util/h;->b(Lcom/fiio/music/entity/Song;ILandroid/content/Context;Lcom/b/a/b/f;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fiio/music/activity/ListMainActivity;->curAlbum:Ljava/lang/String;

    .line 2650
    :goto_5
    iget v1, p0, Lcom/fiio/music/activity/ListMainActivity;->STYLE_PARAMTER:I

    invoke-virtual {p0}, Lcom/fiio/music/activity/ListMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/activity/ListMainActivity;->imageLoader:Lcom/b/a/b/f;

    invoke-static {v0, v1, v2, v3}, Lcom/fiio/music/util/h;->b(Lcom/fiio/music/entity/Song;ILandroid/content/Context;Lcom/b/a/b/f;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->prevAlbum:Ljava/lang/String;

    goto/16 :goto_2

    .line 2639
    :cond_b
    iget-object v2, p0, Lcom/fiio/music/activity/ListMainActivity;->curAlbum:Ljava/lang/String;

    if-eqz v2, :cond_c

    .line 2640
    iget-object v1, p0, Lcom/fiio/music/activity/ListMainActivity;->curAlbum:Ljava/lang/String;

    iput-object v1, p0, Lcom/fiio/music/activity/ListMainActivity;->nextAlbum:Ljava/lang/String;

    .line 2644
    :goto_6
    iget-object v1, p0, Lcom/fiio/music/activity/ListMainActivity;->prevAlbum:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 2645
    iget-object v1, p0, Lcom/fiio/music/activity/ListMainActivity;->prevAlbum:Ljava/lang/String;

    iput-object v1, p0, Lcom/fiio/music/activity/ListMainActivity;->curAlbum:Ljava/lang/String;

    goto :goto_5

    .line 2642
    :cond_c
    iget v2, p0, Lcom/fiio/music/activity/ListMainActivity;->STYLE_PARAMTER:I

    invoke-virtual {p0}, Lcom/fiio/music/activity/ListMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/fiio/music/activity/ListMainActivity;->imageLoader:Lcom/b/a/b/f;

    invoke-static {v1, v2, v3, v4}, Lcom/fiio/music/util/h;->b(Lcom/fiio/music/entity/Song;ILandroid/content/Context;Lcom/b/a/b/f;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fiio/music/activity/ListMainActivity;->nextAlbum:Ljava/lang/String;

    goto :goto_6

    .line 2609
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public updateAlbumWhenPlaying()V
    .locals 4

    .prologue
    const/16 v3, 0x64

    .line 2265
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->playingSong:Lcom/fiio/music/entity/Song;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->h()Lcom/fiio/music/entity/Song;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2266
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->playingSong:Lcom/fiio/music/entity/Song;

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/ListMainActivity;->updateAlbumShow(Lcom/fiio/music/entity/Song;)V

    .line 2268
    const-string v0, "SelectAlbum"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/fiio/music/activity/ListMainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2269
    const-string v1, "albumPath"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2270
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "file://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2271
    new-instance v1, Lcom/b/a/b/a/f;

    invoke-direct {v1, v3, v3}, Lcom/b/a/b/a/f;-><init>(II)V

    .line 2272
    iget-object v2, p0, Lcom/fiio/music/activity/ListMainActivity;->imageLoader:Lcom/b/a/b/f;

    .line 2273
    iget-object v3, p0, Lcom/fiio/music/activity/ListMainActivity;->options:Lcom/b/a/b/d;

    .line 2272
    invoke-virtual {v2, v0, v1, v3}, Lcom/b/a/b/f;->a(Ljava/lang/String;Lcom/b/a/b/a/f;Lcom/b/a/b/d;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2274
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->playingSong:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getArtist()Lcom/fiio/music/entity/Artist;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2275
    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    iget-object v2, p0, Lcom/fiio/music/activity/ListMainActivity;->playingSong:Lcom/fiio/music/entity/Song;

    invoke-virtual {v2}, Lcom/fiio/music/entity/Song;->getArtist()Lcom/fiio/music/entity/Artist;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fiio/music/entity/Artist;->getName()Ljava/lang/String;

    move-result-object v2

    .line 2276
    iget-object v3, p0, Lcom/fiio/music/activity/ListMainActivity;->playingSong:Lcom/fiio/music/entity/Song;

    invoke-virtual {v3}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v3

    .line 2275
    invoke-virtual {v0, v1, v2, v3}, Lcom/fiio/music/service/h;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2278
    :cond_0
    iget-object v2, p0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->playingSong:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getArtist()Lcom/fiio/music/entity/Artist;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fiio/music/activity/ListMainActivity;->playingSong:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getArtist()Lcom/fiio/music/entity/Artist;

    move-result-object v0

    .line 2279
    invoke-virtual {v0}, Lcom/fiio/music/entity/Artist;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v3, p0, Lcom/fiio/music/activity/ListMainActivity;->playingSong:Lcom/fiio/music/entity/Song;

    invoke-virtual {v3}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v3

    .line 2278
    invoke-virtual {v2, v1, v0, v3}, Lcom/fiio/music/service/h;->b(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2281
    :cond_1
    return-void

    .line 2279
    :cond_2
    const-string v0, "FiiO"

    goto :goto_0
.end method
