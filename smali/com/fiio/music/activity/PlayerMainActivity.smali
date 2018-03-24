.class public Lcom/fiio/music/activity/PlayerMainActivity;
.super Lcom/fiio/music/activity/BaseActivity;
.source "PlayerMainActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# static fields
.field private static final ID_GO_TO_ALBUM:I = 0x8

.field private static final ID_GO_TO_ARTIST:I = 0x7

.field public static final LYRIC_FILE_EXTENSION:Ljava/lang/String; = ".lrc"

.field private static MODE_DRAWABLE_ID:[I = null

.field private static final NEXT_SONG:I = 0x10

.field private static final PREVIOUS_SONG:I = 0xf

.field private static final TAG:Ljava/lang/String;

.field private static final TAG_D:Ljava/lang/String;

.field public static isActive:Z


# instance fields
.field private STYLE_PARAMTER:I

.field private audioManager:Landroid/media/AudioManager;

.field private btn_favorite:Landroid/widget/ImageButton;

.field private cachedThreadPool:Ljava/util/concurrent/ExecutorService;

.field private changeboolean:Z

.field curAlbum:Ljava/lang/String;

.field curSongList:Ljava/util/List;
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

.field private down:Z

.field private down_val:I

.field handler:Landroid/os/Handler;

.field private ibtn_player_control_menu:Landroid/widget/ImageButton;

.field private ibtn_player_control_mode:Landroid/widget/ImageButton;

.field private ibtn_player_control_next:Landroid/widget/ImageButton;

.field private ibtn_player_control_play:Landroid/widget/ImageButton;

.field private ibtn_player_control_pre:Landroid/widget/ImageButton;

.field private ibtn_player_list:Landroid/widget/ImageButton;

.field private ibtn_player_view_search:Landroid/widget/ImageButton;

.field private ibtn_playview_eq:Landroid/widget/ImageButton;

.field protected imageLoader:Lcom/b/a/b/f;

.field private img_uv_white_line:Landroid/widget/ImageView;

.field private img_uvline:Landroid/widget/ImageView;

.field private indexOfCurSentence:I

.field private isDsdPlaying:Z

.field private isFinishing:Z

.field private isLongPressingMediaButton:Z

.field private isSeekDrag:Z

.field items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/satellitemenu/l;",
            ">;"
        }
    .end annotation
.end field

.field private iv_bottom_bitmap:Landroid/widget/ImageView;

.field private lastIndex:I

.field private left:Landroid/widget/ImageButton;

.field private leftTouch:Landroid/view/View$OnTouchListener;

.field private listener:Landroid/view/View$OnClickListener;

.field private longPressCallBack:Lcom/fiio/music/e/a/a;

.field private lrc_setting:Landroid/widget/ImageButton;

.field private lrc_setting_layout:Landroid/widget/RelativeLayout;

.field lyricCallBack:Lcom/fiio/music/h/j;

.field private lyricProgressIndicator:Landroid/widget/RelativeLayout;

.field private mAlbum_text:Landroid/widget/TextView;

.field private mArtistNameStr:Ljava/lang/String;

.field private mArtist_text:Landroid/widget/TextView;

.field private mConnectionListener:Lcom/fiio/music/service/l;

.field private mContext:Landroid/content/Context;

.field private mCurrentListPopupWindow:Lcom/fiio/music/widget/CurrentListPopupWindow;

.field private mImageViews:[Landroid/widget/ImageView;

.field private mIsLyricDownloading:Z

.field private mLrcEmptyView:Landroid/widget/TextView;

.field private mLrcListView:Landroid/widget/ListView;

.field private mLyricAdapter:Lcom/fiio/music/adapter/LyricAdapter;

.field private mLyricDownloadManager:Lcom/fiio/music/h/d;

.field private mLyricListener:Lcom/fiio/music/h/g;

.field private mLyricLoadHelper:Lcom/fiio/music/h/e;

.field private mMusicServiceBinder:Lcom/fiio/music/service/z;

.field private mOnPlaybackStateChangeListener:Lcom/fiio/music/g/a;

.field private mPageNum:I

.field private mPlayMainSavePageFlag:Lcom/fiio/music/util/bz;

.field private mPlayViewWindowMenu:Landroid/widget/ImageButton;

.field private mPlayingListSize:I

.field private mPlayingSongPosition:I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSongNameStr:Ljava/lang/String;

.field private mSong_bit:Landroid/widget/TextView;

.field private mSongname_text:Landroid/widget/TextView;

.field private mWindownDialogView:Landroid/view/View;

.field private manager:Lcom/fiio/music/util/bh;

.field private mediaPlayerBroadcastReceiver:Lcom/fiio/music/activity/fy;

.field private mediaPlayerManager:Lcom/fiio/music/service/h;

.field private memoryPlaySharedPreferences:Landroid/content/SharedPreferences;

.field private memoryPlaySwitch:Ljava/lang/Boolean;

.field private myAdapter:Lcom/fiio/music/activity/PlayerMainActivity$MyAdapter;

.field private newProgressesAddedWhenPause:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field nextAlbum:Ljava/lang/String;

.field private nextOrPre:I

.field private options:Lcom/b/a/b/d;

.field private params:Landroid/view/WindowManager$LayoutParams;

.field private playListManager:Lcom/fiio/music/util/bw;

.field private play_list_count:Landroid/widget/TextView;

.field private play_list_position:Landroid/widget/TextView;

.field private player_main_album:Landroid/view/ViewGroup;

.field private player_main_info:Landroid/view/ViewGroup;

.field private player_main_lyric:Landroid/view/ViewGroup;

.field private player_mode:I

.field private player_view_lrc_setting:Landroid/widget/ImageButton;

.field private playingSong2:Lcom/fiio/music/entity/Song;

.field private playview_bg:Landroid/widget/ImageView;

.field private playview_bluetooth:Landroid/widget/ImageButton;

.field private pointerTable:Lcom/fiio/music/widget/PointerTable2;

.field prevAlbum:Ljava/lang/String;

.field private ralativelayout_player_main:Landroid/widget/RelativeLayout;

.field rcsPopupWindow:Lcom/fiio/music/util/FiioPopupWindow;

.field private right:Landroid/widget/TextView;

.field private satelliteMenu:Lcom/fiio/music/satellitemenu/SatelliteMenu;

.field private sb_player_playprogress:Landroid/widget/SeekBar;

.field private seekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private songDao:Lcom/fiio/music/b/k;

.field private songRealId:I

.field private startTime:J

.field private status:Z

.field private toast:Landroid/widget/Toast;

.field private toastMsg:Landroid/widget/Toast;

.field private tv_all_playing_time:Landroid/widget/TextView;

.field private tv_khz:Landroid/widget/TextView;

.field private tv_player_artist:Landroid/widget/TextView;

.field private tv_player_playing_time:Landroid/widget/TextView;

.field private tv_player_song_info:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

.field private uv_table_view:Landroid/view/ViewGroup;

.field private view:Landroid/view/View;

.field private viewPager:Landroid/support/v4/view/ViewPager;

.field private volumedialog:Lcom/fiio/music/widget/VolumeDialog;

.field private wasCurrAlbumUpdated:Z

.field private windownMenuDialog:Lcom/fiio/music/custom/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 151
    const-class v0, Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fiio/music/activity/PlayerMainActivity;->TAG:Ljava/lang/String;

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Dendy-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fiio/music/activity/PlayerMainActivity;->TAG_D:Ljava/lang/String;

    .line 154
    const/4 v0, 0x0

    sput-boolean v0, Lcom/fiio/music/activity/PlayerMainActivity;->isActive:Z

    .line 3169
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 149
    invoke-direct {p0}, Lcom/fiio/music/activity/BaseActivity;-><init>()V

    .line 155
    iput v3, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mPageNum:I

    .line 200
    iput-boolean v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->isSeekDrag:Z

    .line 201
    iput-boolean v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->isDsdPlaying:Z

    .line 231
    iput-boolean v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mIsLyricDownloading:Z

    .line 233
    iput v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mPlayingSongPosition:I

    .line 239
    iput v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->lastIndex:I

    .line 244
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->curSongList:Ljava/util/List;

    .line 266
    const/4 v0, -0x1

    iput v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->nextOrPre:I

    .line 267
    iput-object v2, p0, Lcom/fiio/music/activity/PlayerMainActivity;->curAlbum:Ljava/lang/String;

    .line 268
    iput-object v2, p0, Lcom/fiio/music/activity/PlayerMainActivity;->nextAlbum:Ljava/lang/String;

    .line 269
    iput-object v2, p0, Lcom/fiio/music/activity/PlayerMainActivity;->prevAlbum:Ljava/lang/String;

    .line 270
    iput-object v2, p0, Lcom/fiio/music/activity/PlayerMainActivity;->myAdapter:Lcom/fiio/music/activity/PlayerMainActivity$MyAdapter;

    .line 271
    iput-boolean v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->changeboolean:Z

    .line 276
    const/4 v0, 0x3

    iput v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    .line 281
    iput-boolean v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->isFinishing:Z

    .line 285
    new-instance v0, Lcom/fiio/music/activity/et;

    invoke-direct {v0, p0}, Lcom/fiio/music/activity/et;-><init>(Lcom/fiio/music/activity/PlayerMainActivity;)V

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 789
    new-instance v0, Lcom/fiio/music/activity/fg;

    invoke-direct {v0, p0}, Lcom/fiio/music/activity/fg;-><init>(Lcom/fiio/music/activity/PlayerMainActivity;)V

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mConnectionListener:Lcom/fiio/music/service/l;

    .line 850
    new-instance v0, Lcom/fiio/music/activity/fp;

    invoke-direct {v0, p0}, Lcom/fiio/music/activity/fp;-><init>(Lcom/fiio/music/activity/PlayerMainActivity;)V

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mOnPlaybackStateChangeListener:Lcom/fiio/music/g/a;

    .line 1432
    new-instance v0, Lcom/fiio/music/activity/fq;

    invoke-direct {v0, p0}, Lcom/fiio/music/activity/fq;-><init>(Lcom/fiio/music/activity/PlayerMainActivity;)V

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->leftTouch:Landroid/view/View$OnTouchListener;

    .line 1462
    new-instance v0, Lcom/fiio/music/activity/fr;

    invoke-direct {v0, p0}, Lcom/fiio/music/activity/fr;-><init>(Lcom/fiio/music/activity/PlayerMainActivity;)V

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->listener:Landroid/view/View$OnClickListener;

    .line 2051
    new-instance v0, Lcom/fiio/music/activity/fs;

    invoke-direct {v0, p0}, Lcom/fiio/music/activity/fs;-><init>(Lcom/fiio/music/activity/PlayerMainActivity;)V

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->lyricCallBack:Lcom/fiio/music/h/j;

    .line 2172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->newProgressesAddedWhenPause:Ljava/util/ArrayList;

    .line 2173
    new-instance v0, Lcom/fiio/music/activity/fv;

    invoke-direct {v0, p0}, Lcom/fiio/music/activity/fv;-><init>(Lcom/fiio/music/activity/PlayerMainActivity;)V

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->seekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 2922
    iput-boolean v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->down:Z

    .line 2923
    iput-boolean v3, p0, Lcom/fiio/music/activity/PlayerMainActivity;->status:Z

    .line 2924
    iput v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->down_val:I

    .line 3287
    new-instance v0, Lcom/fiio/music/activity/fw;

    invoke-direct {v0, p0}, Lcom/fiio/music/activity/fw;-><init>(Lcom/fiio/music/activity/PlayerMainActivity;)V

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mLyricListener:Lcom/fiio/music/h/g;

    .line 3757
    iput-boolean v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->wasCurrAlbumUpdated:Z

    .line 4447
    iput-boolean v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->isLongPressingMediaButton:Z

    .line 4451
    new-instance v0, Lcom/fiio/music/activity/fx;

    invoke-direct {v0, p0}, Lcom/fiio/music/activity/fx;-><init>(Lcom/fiio/music/activity/PlayerMainActivity;)V

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->longPressCallBack:Lcom/fiio/music/e/a/a;

    .line 149
    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    sget-object v0, Lcom/fiio/music/activity/PlayerMainActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/fiio/music/activity/PlayerMainActivity;)V
    .locals 0

    .prologue
    .line 3760
    invoke-direct {p0}, Lcom/fiio/music/activity/PlayerMainActivity;->updateAlbumShow()V

    return-void
.end method

.method static synthetic access$10(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->ibtn_player_control_play:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$11(Lcom/fiio/music/activity/PlayerMainActivity;)Z
    .locals 1

    .prologue
    .line 4447
    iget-boolean v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->isLongPressingMediaButton:Z

    return v0
.end method

.method static synthetic access$12(Lcom/fiio/music/activity/PlayerMainActivity;I)V
    .locals 0

    .prologue
    .line 248
    iput p1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->currentPosition:I

    return-void
.end method

.method static synthetic access$13(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->tv_player_playing_time:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$14(Lcom/fiio/music/activity/PlayerMainActivity;)I
    .locals 1

    .prologue
    .line 248
    iget v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->currentPosition:I

    return v0
.end method

.method static synthetic access$15(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/h/e;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mLyricLoadHelper:Lcom/fiio/music/h/e;

    return-object v0
.end method

.method static synthetic access$16(Lcom/fiio/music/activity/PlayerMainActivity;)I
    .locals 1

    .prologue
    .line 249
    iget v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->currentDuration:I

    return v0
.end method

.method static synthetic access$17(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->view:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$18(Lcom/fiio/music/activity/PlayerMainActivity;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 2929
    invoke-direct {p0, p1}, Lcom/fiio/music/activity/PlayerMainActivity;->initmPopupWindowView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$19(Lcom/fiio/music/activity/PlayerMainActivity;)Z
    .locals 1

    .prologue
    .line 201
    iget-boolean v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->isDsdPlaying:Z

    return v0
.end method

.method static synthetic access$2(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/b/a/b/d;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->options:Lcom/b/a/b/d;

    return-object v0
.end method

.method static synthetic access$20(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/Toast;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->toast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$21(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$22(Lcom/fiio/music/activity/PlayerMainActivity;Landroid/widget/Toast;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->toast:Landroid/widget/Toast;

    return-void
.end method

.method static synthetic access$23(Lcom/fiio/music/activity/PlayerMainActivity;)Z
    .locals 1

    .prologue
    .line 271
    iget-boolean v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->changeboolean:Z

    return v0
.end method

.method static synthetic access$24(Lcom/fiio/music/activity/PlayerMainActivity;I)V
    .locals 0

    .prologue
    .line 221
    iput p1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->songRealId:I

    return-void
.end method

.method static synthetic access$25(Lcom/fiio/music/activity/PlayerMainActivity;I)V
    .locals 0

    .prologue
    .line 166
    iput p1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->player_mode:I

    return-void
.end method

.method static synthetic access$26(Lcom/fiio/music/activity/PlayerMainActivity;)I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->player_mode:I

    return v0
.end method

.method static synthetic access$27(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->ibtn_player_control_mode:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$28()[I
    .locals 1

    .prologue
    .line 192
    sget-object v0, Lcom/fiio/music/activity/PlayerMainActivity;->MODE_DRAWABLE_ID:[I

    return-object v0
.end method

.method static synthetic access$29()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    sget-object v0, Lcom/fiio/music/activity/PlayerMainActivity;->TAG_D:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    return-object v0
.end method

.method static synthetic access$30(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mLrcEmptyView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$31(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->lrc_setting_layout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$32(Lcom/fiio/music/activity/PlayerMainActivity;I)V
    .locals 0

    .prologue
    .line 3707
    invoke-direct {p0, p1}, Lcom/fiio/music/activity/PlayerMainActivity;->blockedSeekTo(I)V

    return-void
.end method

.method static synthetic access$33(Lcom/fiio/music/activity/PlayerMainActivity;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 2233
    invoke-direct {p0, p1}, Lcom/fiio/music/activity/PlayerMainActivity;->showWindownMenuDialog(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$34(Lcom/fiio/music/activity/PlayerMainActivity;Lcom/fiio/music/util/bw;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->playListManager:Lcom/fiio/music/util/bw;

    return-void
.end method

.method static synthetic access$35(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/util/bw;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->playListManager:Lcom/fiio/music/util/bw;

    return-object v0
.end method

.method static synthetic access$36(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/b/k;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->songDao:Lcom/fiio/music/b/k;

    return-object v0
.end method

.method static synthetic access$37(Lcom/fiio/music/activity/PlayerMainActivity;)I
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->songRealId:I

    return v0
.end method

.method static synthetic access$38(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->btn_favorite:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$39(Lcom/fiio/music/activity/PlayerMainActivity;)I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mPageNum:I

    return v0
.end method

.method static synthetic access$4(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/entity/Song;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->playingSong2:Lcom/fiio/music/entity/Song;

    return-object v0
.end method

.method static synthetic access$40(Lcom/fiio/music/activity/PlayerMainActivity;I)V
    .locals 0

    .prologue
    .line 155
    iput p1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mPageNum:I

    return-void
.end method

.method static synthetic access$41(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/util/bz;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mPlayMainSavePageFlag:Lcom/fiio/music/util/bz;

    return-object v0
.end method

.method static synthetic access$42(Lcom/fiio/music/activity/PlayerMainActivity;)Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 3588
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->cachedThreadPool:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$43(Lcom/fiio/music/activity/PlayerMainActivity;)V
    .locals 0

    .prologue
    .line 3603
    invoke-direct {p0}, Lcom/fiio/music/activity/PlayerMainActivity;->hideLyricProgressIndicator()V

    return-void
.end method

.method static synthetic access$44(Lcom/fiio/music/activity/PlayerMainActivity;)J
    .locals 2

    .prologue
    .line 3587
    iget-wide v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->startTime:J

    return-wide v0
.end method

.method static synthetic access$45(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->player_view_lrc_setting:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$46(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/adapter/LyricAdapter;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mLyricAdapter:Lcom/fiio/music/adapter/LyricAdapter;

    return-object v0
.end method

.method static synthetic access$47(Lcom/fiio/music/activity/PlayerMainActivity;Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;)V
    .locals 0

    .prologue
    .line 3650
    invoke-direct {p0, p1}, Lcom/fiio/music/activity/PlayerMainActivity;->saveLyricFontSize(Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;)V

    return-void
.end method

.method static synthetic access$48(Lcom/fiio/music/activity/PlayerMainActivity;)V
    .locals 0

    .prologue
    .line 4274
    invoke-direct {p0}, Lcom/fiio/music/activity/PlayerMainActivity;->deleteAlbumArt()V

    return-void
.end method

.method static synthetic access$49(Lcom/fiio/music/activity/PlayerMainActivity;Z)V
    .locals 0

    .prologue
    .line 200
    iput-boolean p1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->isSeekDrag:Z

    return-void
.end method

.method static synthetic access$5(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/z;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mMusicServiceBinder:Lcom/fiio/music/service/z;

    return-object v0
.end method

.method static synthetic access$50(Lcom/fiio/music/activity/PlayerMainActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 2172
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->newProgressesAddedWhenPause:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$51(Lcom/fiio/music/activity/PlayerMainActivity;J)V
    .locals 1

    .prologue
    .line 3694
    invoke-direct {p0, p1, p2}, Lcom/fiio/music/activity/PlayerMainActivity;->updateLyricShowByTime(J)V

    return-void
.end method

.method static synthetic access$52(Lcom/fiio/music/activity/PlayerMainActivity;)Z
    .locals 1

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->isSeekDrag:Z

    return v0
.end method

.method static synthetic access$53(Lcom/fiio/music/activity/PlayerMainActivity;Ljava/util/List;I)V
    .locals 0

    .prologue
    .line 3615
    invoke-direct {p0, p1, p2}, Lcom/fiio/music/activity/PlayerMainActivity;->addTopPadding(Ljava/util/List;I)V

    return-void
.end method

.method static synthetic access$54(Lcom/fiio/music/activity/PlayerMainActivity;Ljava/util/List;I)V
    .locals 0

    .prologue
    .line 3637
    invoke-direct {p0, p1, p2}, Lcom/fiio/music/activity/PlayerMainActivity;->addBottomPadding(Ljava/util/List;I)V

    return-void
.end method

.method static synthetic access$55(Lcom/fiio/music/activity/PlayerMainActivity;I)V
    .locals 0

    .prologue
    .line 3676
    invoke-direct {p0, p1}, Lcom/fiio/music/activity/PlayerMainActivity;->updateLyricShowByLineIndex(I)V

    return-void
.end method

.method static synthetic access$56(Lcom/fiio/music/activity/PlayerMainActivity;Z)V
    .locals 0

    .prologue
    .line 4447
    iput-boolean p1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->isLongPressingMediaButton:Z

    return-void
.end method

.method static synthetic access$57(Lcom/fiio/music/activity/PlayerMainActivity;I)V
    .locals 0

    .prologue
    .line 249
    iput p1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->currentDuration:I

    return-void
.end method

.method static synthetic access$58(Lcom/fiio/music/activity/PlayerMainActivity;Lcom/fiio/music/entity/Song;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->playingSong2:Lcom/fiio/music/entity/Song;

    return-void
.end method

.method static synthetic access$59(Lcom/fiio/music/activity/PlayerMainActivity;I)V
    .locals 0

    .prologue
    .line 234
    iput p1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mPlayingListSize:I

    return-void
.end method

.method static synthetic access$6(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/g/a;
    .locals 1

    .prologue
    .line 850
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mOnPlaybackStateChangeListener:Lcom/fiio/music/g/a;

    return-object v0
.end method

.method static synthetic access$60(Lcom/fiio/music/activity/PlayerMainActivity;I)V
    .locals 0

    .prologue
    .line 233
    iput p1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mPlayingSongPosition:I

    return-void
.end method

.method static synthetic access$61(Lcom/fiio/music/activity/PlayerMainActivity;Z)V
    .locals 0

    .prologue
    .line 201
    iput-boolean p1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->isDsdPlaying:Z

    return-void
.end method

.method static synthetic access$62(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->tv_all_playing_time:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$63(Lcom/fiio/music/activity/PlayerMainActivity;II)V
    .locals 0

    .prologue
    .line 3738
    invoke-direct {p0, p1, p2}, Lcom/fiio/music/activity/PlayerMainActivity;->setSongPositionInfoOnProgressBar(II)V

    return-void
.end method

.method static synthetic access$64(Lcom/fiio/music/activity/PlayerMainActivity;)I
    .locals 1

    .prologue
    .line 233
    iget v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mPlayingSongPosition:I

    return v0
.end method

.method static synthetic access$65(Lcom/fiio/music/activity/PlayerMainActivity;)I
    .locals 1

    .prologue
    .line 234
    iget v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mPlayingListSize:I

    return v0
.end method

.method static synthetic access$66(Lcom/fiio/music/activity/PlayerMainActivity;)Z
    .locals 1

    .prologue
    .line 231
    iget-boolean v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mIsLyricDownloading:Z

    return v0
.end method

.method static synthetic access$67(Lcom/fiio/music/activity/PlayerMainActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 3725
    invoke-direct {p0, p1, p2}, Lcom/fiio/music/activity/PlayerMainActivity;->setSongInfoOnProgressBar(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$68(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mSongname_text:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$69(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mArtist_text:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/fiio/music/activity/PlayerMainActivity;Lcom/fiio/music/service/z;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mMusicServiceBinder:Lcom/fiio/music/service/z;

    return-void
.end method

.method static synthetic access$70(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mAlbum_text:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$71(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mSong_bit:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$72(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 774
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->tv_khz:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$73(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/widget/PointerTable2;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->pointerTable:Lcom/fiio/music/widget/PointerTable2;

    return-object v0
.end method

.method static synthetic access$74(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->img_uvline:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$75(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->img_uv_white_line:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$76(Lcom/fiio/music/activity/PlayerMainActivity;)[Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mImageViews:[Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$77(Lcom/fiio/music/activity/PlayerMainActivity;)V
    .locals 0

    .prologue
    .line 3582
    invoke-direct {p0}, Lcom/fiio/music/activity/PlayerMainActivity;->showLyricProgressIndicator()V

    return-void
.end method

.method static synthetic access$78(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mLrcListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$79(Lcom/fiio/music/activity/PlayerMainActivity;)I
    .locals 1

    .prologue
    .line 3669
    iget v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->indexOfCurSentence:I

    return v0
.end method

.method static synthetic access$8(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/SeekBar;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->sb_player_playprogress:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$80(Lcom/fiio/music/activity/PlayerMainActivity;Ljava/lang/String;JLjava/util/concurrent/ExecutorService;)V
    .locals 0

    .prologue
    .line 3594
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/fiio/music/activity/PlayerMainActivity;->setLyricIndicatorProgress(Ljava/lang/String;JLjava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method static synthetic access$81(Lcom/fiio/music/activity/PlayerMainActivity;Lcom/fiio/music/entity/Song;)V
    .locals 0

    .prologue
    .line 2513
    invoke-direct {p0, p1}, Lcom/fiio/music/activity/PlayerMainActivity;->playMainDeleteSong(Lcom/fiio/music/entity/Song;)V

    return-void
.end method

.method static synthetic access$82(Lcom/fiio/music/activity/PlayerMainActivity;Lcom/fiio/music/entity/Song;)V
    .locals 0

    .prologue
    .line 3144
    invoke-direct {p0, p1}, Lcom/fiio/music/activity/PlayerMainActivity;->createSongDetailDialog(Lcom/fiio/music/entity/Song;)V

    return-void
.end method

.method static synthetic access$83(Lcom/fiio/music/activity/PlayerMainActivity;)V
    .locals 0

    .prologue
    .line 2001
    invoke-direct {p0}, Lcom/fiio/music/activity/PlayerMainActivity;->addToPlayList()V

    return-void
.end method

.method static synthetic access$84(Lcom/fiio/music/activity/PlayerMainActivity;)V
    .locals 0

    .prologue
    .line 1889
    invoke-direct {p0}, Lcom/fiio/music/activity/PlayerMainActivity;->addToMyForvrite()V

    return-void
.end method

.method static synthetic access$85(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/custom/a;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->windownMenuDialog:Lcom/fiio/music/custom/a;

    return-object v0
.end method

.method static synthetic access$86(Lcom/fiio/music/activity/PlayerMainActivity;)Z
    .locals 1

    .prologue
    .line 4435
    invoke-direct {p0}, Lcom/fiio/music/activity/PlayerMainActivity;->isLocalMusicActivityPrevious()Z

    move-result v0

    return v0
.end method

.method static synthetic access$87(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/widget/VolumeDialog;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->volumedialog:Lcom/fiio/music/widget/VolumeDialog;

    return-object v0
.end method

.method static synthetic access$88(Lcom/fiio/music/activity/PlayerMainActivity;Z)V
    .locals 0

    .prologue
    .line 2922
    iput-boolean p1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->down:Z

    return-void
.end method

.method static synthetic access$89(Lcom/fiio/music/activity/PlayerMainActivity;)Z
    .locals 1

    .prologue
    .line 2922
    iget-boolean v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->down:Z

    return v0
.end method

.method static synthetic access$9(Lcom/fiio/music/activity/PlayerMainActivity;)I
    .locals 1

    .prologue
    .line 276
    iget v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    return v0
.end method

.method static synthetic access$90(Lcom/fiio/music/activity/PlayerMainActivity;)I
    .locals 1

    .prologue
    .line 2924
    iget v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->down_val:I

    return v0
.end method

.method static synthetic access$91(Lcom/fiio/music/activity/PlayerMainActivity;I)V
    .locals 0

    .prologue
    .line 2924
    iput p1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->down_val:I

    return-void
.end method

.method static synthetic access$92(Lcom/fiio/music/activity/PlayerMainActivity;I)V
    .locals 0

    .prologue
    .line 3104
    invoke-direct {p0, p1}, Lcom/fiio/music/activity/PlayerMainActivity;->sendMusicIntent(I)V

    return-void
.end method

.method static synthetic access$93(Lcom/fiio/music/activity/PlayerMainActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 3354
    invoke-direct {p0, p1, p2}, Lcom/fiio/music/activity/PlayerMainActivity;->loadLyricByHand(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$94(Lcom/fiio/music/activity/PlayerMainActivity;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->memoryPlaySwitch:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$95(Lcom/fiio/music/activity/PlayerMainActivity;Ljava/lang/String;Lcom/fiio/music/entity/Song;)V
    .locals 0

    .prologue
    .line 4106
    invoke-direct {p0, p1, p2}, Lcom/fiio/music/activity/PlayerMainActivity;->searchAndWriteLrc(Ljava/lang/String;Lcom/fiio/music/entity/Song;)V

    return-void
.end method

.method private addBottomPadding(Ljava/util/List;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/i/a;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 3638
    if-eqz p1, :cond_0

    .line 3639
    const/4 v0, 0x0

    :goto_0
    if-lt v0, p2, :cond_1

    .line 3643
    :cond_0
    return-void

    .line 3640
    :cond_1
    new-instance v1, Lcom/fiio/music/i/a;

    const-wide v2, 0x7fffffffffffffffL

    const-string v4, ""

    invoke-direct {v1, v2, v3, v4}, Lcom/fiio/music/i/a;-><init>(JLjava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3639
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private addToMyForvrite()V
    .locals 8

    .prologue
    const v7, 0x7f0201d9

    const v6, 0x7f0201d7

    const/4 v5, 0x2

    const/4 v4, 0x1

    const v3, 0x7f0c00f0

    .line 1890
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->playingSong2:Lcom/fiio/music/entity/Song;

    if-nez v0, :cond_1

    .line 1992
    :cond_0
    :goto_0
    return-void

    .line 1895
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    if-eqz v0, :cond_2

    .line 1896
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->h()Lcom/fiio/music/entity/Song;

    move-result-object v0

    .line 1897
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1898
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getTrack()I

    move-result v0

    if-nez v0, :cond_2

    .line 1899
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f0c00b9

    invoke-virtual {p0, v2}, Lcom/fiio/music/activity/PlayerMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    goto :goto_0

    .line 1905
    :cond_2
    const v0, 0x7f0c0054

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/PlayerMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1907
    new-instance v1, Lcom/fiio/music/util/bw;

    invoke-direct {v1, v0}, Lcom/fiio/music/util/bw;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->playListManager:Lcom/fiio/music/util/bw;

    .line 1908
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->playListManager:Lcom/fiio/music/util/bw;

    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->playingSong2:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->playingSong2:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/util/bw;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1910
    if-eqz v0, :cond_8

    .line 1912
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->songDao:Lcom/fiio/music/b/k;

    iget v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->songRealId:I

    invoke-virtual {v0, v1}, Lcom/fiio/music/b/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1913
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->playListManager:Lcom/fiio/music/util/bw;

    .line 1914
    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->playingSong2:Lcom/fiio/music/entity/Song;

    .line 1915
    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/PlayerMainActivity;->playingSong2:Lcom/fiio/music/entity/Song;

    invoke-virtual {v2}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1914
    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/util/bw;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1913
    if-nez v0, :cond_3

    .line 1918
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->toast:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Lcom/fiio/music/activity/PlayerMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->toast:Landroid/widget/Toast;

    .line 1930
    :cond_3
    :goto_1
    iget v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    if-ne v0, v4, :cond_5

    .line 1931
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->btn_favorite:Landroid/widget/ImageButton;

    const v1, 0x7f0201d6

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_0

    .line 1921
    :cond_4
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->playListManager:Lcom/fiio/music/util/bw;

    .line 1922
    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->playingSong2:Lcom/fiio/music/entity/Song;

    .line 1923
    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/PlayerMainActivity;->playingSong2:Lcom/fiio/music/entity/Song;

    invoke-virtual {v2}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1922
    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/util/bw;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1921
    if-nez v0, :cond_3

    .line 1926
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->toast:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Lcom/fiio/music/activity/PlayerMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->toast:Landroid/widget/Toast;

    goto :goto_1

    .line 1933
    :cond_5
    iget v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    if-ne v0, v5, :cond_6

    .line 1934
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->btn_favorite:Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_0

    .line 1936
    :cond_6
    iget v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    .line 1937
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->btn_favorite:Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1938
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->toast:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f0c01f6

    invoke-virtual {p0, v2}, Lcom/fiio/music/activity/PlayerMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->toast:Landroid/widget/Toast;

    goto/16 :goto_0

    .line 1940
    :cond_7
    iget v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1941
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->btn_favorite:Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1942
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->toast:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f0c01f6

    invoke-virtual {p0, v2}, Lcom/fiio/music/activity/PlayerMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->toast:Landroid/widget/Toast;

    goto/16 :goto_0

    .line 1946
    :cond_8
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->songDao:Lcom/fiio/music/b/k;

    iget v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->songRealId:I

    invoke-virtual {v0, v1}, Lcom/fiio/music/b/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->K()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1947
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->playListManager:Lcom/fiio/music/util/bw;

    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->playingSong2:Lcom/fiio/music/entity/Song;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/util/bw;->a(Lcom/fiio/music/entity/Song;I)Z

    move-result v0

    .line 1948
    if-nez v0, :cond_9

    .line 1950
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->toast:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Lcom/fiio/music/activity/PlayerMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->toast:Landroid/widget/Toast;

    .line 1977
    :cond_9
    :goto_2
    iget v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    if-ne v0, v4, :cond_d

    .line 1978
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->btn_favorite:Landroid/widget/ImageButton;

    const v1, 0x7f0201d8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_0

    .line 1953
    :cond_a
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->K()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1954
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->playListManager:Lcom/fiio/music/util/bw;

    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->playingSong2:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0, v1, v4}, Lcom/fiio/music/util/bw;->a(Lcom/fiio/music/entity/Song;I)Z

    move-result v0

    .line 1955
    if-nez v0, :cond_9

    .line 1957
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->toast:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mContext:Landroid/content/Context;

    .line 1958
    invoke-virtual {p0, v3}, Lcom/fiio/music/activity/PlayerMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1957
    invoke-static {v0, v1, v2}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->toast:Landroid/widget/Toast;

    goto :goto_2

    .line 1960
    :cond_b
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->Q()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1961
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->playListManager:Lcom/fiio/music/util/bw;

    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->playingSong2:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0, v1, v5}, Lcom/fiio/music/util/bw;->a(Lcom/fiio/music/entity/Song;I)Z

    move-result v0

    .line 1962
    if-nez v0, :cond_9

    .line 1964
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->toast:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mContext:Landroid/content/Context;

    .line 1965
    invoke-virtual {p0, v3}, Lcom/fiio/music/activity/PlayerMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1964
    invoke-static {v0, v1, v2}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->toast:Landroid/widget/Toast;

    goto :goto_2

    .line 1968
    :cond_c
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->playListManager:Lcom/fiio/music/util/bw;

    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->playingSong2:Lcom/fiio/music/entity/Song;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/util/bw;->a(Lcom/fiio/music/entity/Song;I)Z

    move-result v0

    .line 1969
    if-nez v0, :cond_9

    .line 1971
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->toast:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mContext:Landroid/content/Context;

    .line 1972
    invoke-virtual {p0, v3}, Lcom/fiio/music/activity/PlayerMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1971
    invoke-static {v0, v1, v2}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->toast:Landroid/widget/Toast;

    goto :goto_2

    .line 1980
    :cond_d
    iget v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    if-ne v0, v5, :cond_e

    .line 1981
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->btn_favorite:Landroid/widget/ImageButton;

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_0

    .line 1983
    :cond_e
    iget v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_f

    .line 1984
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->btn_favorite:Landroid/widget/ImageButton;

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1985
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->toast:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f0c01f5

    invoke-virtual {p0, v2}, Lcom/fiio/music/activity/PlayerMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->toast:Landroid/widget/Toast;

    goto/16 :goto_0

    .line 1986
    :cond_f
    iget v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1987
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->btn_favorite:Landroid/widget/ImageButton;

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1988
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->toast:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f0c01f5

    invoke-virtual {p0, v2}, Lcom/fiio/music/activity/PlayerMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->toast:Landroid/widget/Toast;

    goto/16 :goto_0
.end method

.method private addToPlayList()V
    .locals 4

    .prologue
    .line 2003
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    if-eqz v0, :cond_1

    .line 2004
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->h()Lcom/fiio/music/entity/Song;

    move-result-object v0

    .line 2005
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2006
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getTrack()I

    move-result v1

    if-nez v1, :cond_1

    .line 2007
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ".cue"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2008
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2009
    new-instance v2, Lcom/fiio/music/util/bw;

    invoke-direct {v2, v0}, Lcom/fiio/music/util/bw;-><init>(Ljava/lang/String;)V

    .line 2010
    iget-object v3, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0, v3, v1}, Lcom/fiio/music/util/bw;->a(Ljava/lang/String;Landroid/content/Context;Ljava/io/File;)I

    move-result v0

    .line 2011
    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0, v1}, Lcom/fiio/music/util/bw;->a(ILandroid/content/Context;)Z

    .line 2045
    :cond_0
    :goto_0
    return-void

    .line 2017
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->playingSong2:Lcom/fiio/music/entity/Song;

    if-eqz v0, :cond_0

    .line 2018
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->K()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->Q()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2019
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->l()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 2020
    const/4 v0, -0x1

    iput v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->songRealId:I

    .line 2024
    :goto_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2025
    const-string v1, "Song"

    iget-object v2, p0, Lcom/fiio/music/activity/PlayerMainActivity;->playingSong2:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2026
    const-string v1, "ChangeStyle"

    iget-boolean v2, p0, Lcom/fiio/music/activity/PlayerMainActivity;->changeboolean:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2027
    const-class v1, Lcom/fiio/music/activity/AddPlayListActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2028
    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/PlayerMainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2022
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->i()I

    move-result v0

    iput v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->songRealId:I

    goto :goto_1

    .line 2030
    :cond_3
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->K()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2031
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2032
    const-string v1, "Song"

    iget-object v2, p0, Lcom/fiio/music/activity/PlayerMainActivity;->playingSong2:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2033
    const-string v1, "ChangeStyle"

    iget-boolean v2, p0, Lcom/fiio/music/activity/PlayerMainActivity;->changeboolean:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2034
    const-class v1, Lcom/fiio/music/activity/AddPlayListActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2035
    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/PlayerMainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2036
    :cond_4
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->Q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2037
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2038
    const-string v1, "Song"

    iget-object v2, p0, Lcom/fiio/music/activity/PlayerMainActivity;->playingSong2:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2039
    const-string v1, "ChangeStyle"

    iget-boolean v2, p0, Lcom/fiio/music/activity/PlayerMainActivity;->changeboolean:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2040
    const-class v1, Lcom/fiio/music/activity/AddPlayListActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2041
    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/PlayerMainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method private addTopPadding(Ljava/util/List;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/i/a;",
            ">;I)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 3616
    if-nez p1, :cond_1

    .line 3628
    :cond_0
    return-void

    .line 3620
    :cond_1
    const-wide/16 v0, 0x0

    .line 3621
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_2

    .line 3622
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/i/a;

    invoke-virtual {v0}, Lcom/fiio/music/i/a;->a()J

    move-result-wide v0

    :cond_2
    move v2, v3

    .line 3625
    :goto_0
    if-ge v2, p2, :cond_0

    .line 3626
    new-instance v4, Lcom/fiio/music/i/a;

    const-string v5, ""

    invoke-direct {v4, v0, v1, v5}, Lcom/fiio/music/i/a;-><init>(JLjava/lang/String;)V

    invoke-interface {p1, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3625
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private bindSongInfoViews()V
    .locals 2

    .prologue
    .line 776
    const v0, 0x7f0b0229

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/PlayerMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mSongname_text:Landroid/widget/TextView;

    .line 777
    const v0, 0x7f0b022d

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/PlayerMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mAlbum_text:Landroid/widget/TextView;

    .line 778
    const v0, 0x7f0b0231

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/PlayerMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mArtist_text:Landroid/widget/TextView;

    .line 779
    const v0, 0x7f0b0232

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/PlayerMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mSong_bit:Landroid/widget/TextView;

    .line 780
    iget v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 781
    const v0, 0x7f0b0265

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/PlayerMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->tv_khz:Landroid/widget/TextView;

    .line 783
    :cond_0
    return-void
.end method

.method private bitmapblur(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 9

    .prologue
    const v0, 0x7f020424

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 3883
    const-string v1, "file://"

    const-string v2, ""

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 3884
    const-string v2, "zxy - - - - "

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "path  :    1 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3885
    invoke-static {v1}, Lcom/fiio/music/util/h;->m(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 3886
    if-nez v1, :cond_1

    .line 3887
    const/4 v1, 0x0

    .line 3888
    iget v2, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    if-ne v2, v5, :cond_2

    .line 3889
    const v0, 0x7f0201c6

    .line 3897
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/fiio/music/activity/PlayerMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v0

    .line 3906
    :cond_1
    const/4 v0, 0x0

    .line 3907
    if-eqz v1, :cond_4

    .line 3908
    invoke-direct {p0, p1, v1, p3}, Lcom/fiio/music/activity/PlayerMainActivity;->rsBlur(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3933
    :goto_1
    return-object v0

    .line 3890
    :cond_2
    iget v2, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    if-ne v2, v6, :cond_3

    .line 3891
    const v0, 0x7f020423

    .line 3892
    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    if-eq v2, v7, :cond_0

    .line 3894
    iget v2, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    if-eq v2, v8, :cond_0

    move v0, v1

    goto :goto_0

    .line 3912
    :cond_4
    const/4 v1, 0x0

    .line 3914
    :try_start_0
    iget v2, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    if-ne v2, v5, :cond_6

    .line 3915
    const-string v1, "default1.png"

    .line 3923
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/fiio/music/activity/PlayerMainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 3924
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 3925
    sget-object v3, Lcom/fiio/music/activity/PlayerMainActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "bitmap is null ?"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3926
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 3927
    invoke-direct {p0, p1, v2, p3}, Lcom/fiio/music/activity/PlayerMainActivity;->rsBlur(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    .line 3916
    :cond_6
    iget v2, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    if-ne v2, v6, :cond_7

    .line 3917
    const-string v1, "default2.png"

    goto :goto_2

    .line 3918
    :cond_7
    iget v2, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    if-ne v2, v7, :cond_8

    .line 3919
    const-string v1, "default3.png"

    goto :goto_2

    .line 3920
    :cond_8
    iget v2, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    if-ne v2, v8, :cond_5

    .line 3921
    const-string v1, "default4.png"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 3928
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private blockedSeekTo(I)V
    .locals 3

    .prologue
    .line 3709
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3710
    const-string v1, "com.fiio.music.service.meidaplayer"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3711
    invoke-virtual {p0}, Lcom/fiio/music/activity/PlayerMainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3712
    const-string v1, "flag"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3713
    const-string v1, "seekToMsec"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3715
    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/PlayerMainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 3716
    return-void
.end method

.method private createSongDetailDialog(Lcom/fiio/music/entity/Song;)V
    .locals 4

    .prologue
    .line 3145
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3147
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3148
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->toast:Landroid/widget/Toast;

    const v1, 0x7f0c00ea

    invoke-virtual {p0, v1}, Lcom/fiio/music/activity/PlayerMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->toast:Landroid/widget/Toast;

    .line 3165
    :goto_0
    return-void

    .line 3151
    :cond_0
    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getSize()I

    move-result v1

    if-nez v1, :cond_1

    .line 3152
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p1, v0}, Lcom/fiio/music/entity/Song;->setSize(I)V

    .line 3155
    :cond_1
    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getDurationTime()I

    move-result v0

    .line 3158
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/fiio/music/activity/SongInfoActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3159
    const-string v2, "ChangeStyle"

    iget-boolean v3, p0, Lcom/fiio/music/activity/PlayerMainActivity;->changeboolean:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3160
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 3161
    const-string v3, "duration"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3162
    const-string v0, "song"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3163
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3164
    invoke-virtual {p0, v1}, Lcom/fiio/music/activity/PlayerMainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private deleteAlbumArt()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    const v8, 0x7f04002a

    .line 4275
    .line 4276
    const-string v0, "NONE"

    .line 4277
    iget-object v2, p0, Lcom/fiio/music/activity/PlayerMainActivity;->playingSong2:Lcom/fiio/music/entity/Song;

    if-eqz v2, :cond_4

    .line 4281
    iget-object v2, p0, Lcom/fiio/music/activity/PlayerMainActivity;->playingSong2:Lcom/fiio/music/entity/Song;

    invoke-virtual {v2}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/fiio/music/activity/PlayerMainActivity;->playingSong2:Lcom/fiio/music/entity/Song;

    invoke-virtual {v2}, Lcom/fiio/music/entity/Song;->isSacd()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 4282
    :cond_0
    iget-object v2, p0, Lcom/fiio/music/activity/PlayerMainActivity;->playingSong2:Lcom/fiio/music/entity/Song;

    invoke-virtual {v2}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fiio/music/util/h;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4283
    iget-object v3, p0, Lcom/fiio/music/activity/PlayerMainActivity;->playingSong2:Lcom/fiio/music/entity/Song;

    invoke-virtual {v3}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v3

    .line 4284
    iget-object v4, p0, Lcom/fiio/music/activity/PlayerMainActivity;->playingSong2:Lcom/fiio/music/entity/Song;

    invoke-virtual {v4}, Lcom/fiio/music/entity/Song;->getTrack()I

    move-result v4

    .line 4285
    iget-object v5, p0, Lcom/fiio/music/activity/PlayerMainActivity;->playingSong2:Lcom/fiio/music/entity/Song;

    invoke-virtual {v5}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 4286
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "_track"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".jpg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 4287
    const-string v0, "JPG"

    .line 4303
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_2
    move-object v3, v1

    .line 4367
    :goto_1
    if-eqz v3, :cond_4

    .line 4369
    new-instance v0, Lcom/fiio/music/custom/g;

    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/fiio/music/custom/g;-><init>(Landroid/content/Context;)V

    .line 4370
    invoke-virtual {v0}, Lcom/fiio/music/custom/g;->a()Lcom/fiio/music/custom/f;

    move-result-object v4

    .line 4371
    invoke-virtual {v4}, Lcom/fiio/music/custom/f;->show()V

    .line 4372
    iget v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 4373
    invoke-virtual {v4}, Lcom/fiio/music/custom/f;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f040029

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    .line 4383
    :cond_3
    :goto_2
    const v0, 0x7f0b0079

    invoke-virtual {v4, v0}, Lcom/fiio/music/custom/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4384
    const v1, 0x7f0b007e

    invoke-virtual {v4, v1}, Lcom/fiio/music/custom/f;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 4385
    const v2, 0x7f0b007d

    invoke-virtual {v4, v2}, Lcom/fiio/music/custom/f;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 4387
    invoke-virtual {p0}, Lcom/fiio/music/activity/PlayerMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c010e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 4388
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4389
    new-instance v0, Lcom/fiio/music/activity/fn;

    invoke-direct {v0, p0, v3, v4}, Lcom/fiio/music/activity/fn;-><init>(Lcom/fiio/music/activity/PlayerMainActivity;Ljava/lang/String;Lcom/fiio/music/custom/f;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4408
    new-instance v0, Lcom/fiio/music/activity/fo;

    invoke-direct {v0, p0, v4}, Lcom/fiio/music/activity/fo;-><init>(Lcom/fiio/music/activity/PlayerMainActivity;Lcom/fiio/music/custom/f;)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4418
    :cond_4
    return-void

    .line 4288
    :cond_5
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "_track"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".bmp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 4289
    const-string v0, "BMP"

    goto/16 :goto_0

    .line 4290
    :cond_6
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "_track"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".png"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4291
    const-string v0, "PNG"

    goto/16 :goto_0

    .line 4293
    :cond_7
    iget-object v5, p0, Lcom/fiio/music/activity/PlayerMainActivity;->playingSong2:Lcom/fiio/music/entity/Song;

    invoke-virtual {v5}, Lcom/fiio/music/entity/Song;->isSacd()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4294
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "_sacd_track"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".jpg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 4295
    const-string v0, "JPG"

    goto/16 :goto_0

    .line 4296
    :cond_8
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "_sacd_track"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".bmp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 4297
    const-string v0, "BMP"

    goto/16 :goto_0

    .line 4298
    :cond_9
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "_sacd_track"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".png"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4299
    const-string v0, "PNG"

    goto/16 :goto_0

    .line 4303
    :sswitch_0
    const-string v5, "BMP"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4316
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->playingSong2:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4317
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "_track"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".bmp"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 4318
    goto/16 :goto_1

    .line 4303
    :sswitch_1
    const-string v5, "JPG"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4307
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->playingSong2:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4308
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "_track"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".jpg"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 4309
    goto/16 :goto_1

    .line 4303
    :sswitch_2
    const-string v5, "PNG"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4324
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->playingSong2:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 4325
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "_track"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".png"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 4326
    goto/16 :goto_1

    .line 4303
    :sswitch_3
    const-string v2, "NONE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_a
    move-object v3, v1

    goto/16 :goto_1

    .line 4309
    :cond_b
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->playingSong2:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isSacd()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 4310
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "_sacd_track"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".jpg"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 4313
    goto/16 :goto_1

    .line 4318
    :cond_c
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->playingSong2:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isSacd()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 4319
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "_sacd_track"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".bmp"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 4321
    goto/16 :goto_1

    .line 4326
    :cond_d
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->playingSong2:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isSacd()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 4327
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "_sacd_track"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".png"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 4330
    goto/16 :goto_1

    .line 4336
    :cond_e
    iget-object v2, p0, Lcom/fiio/music/activity/PlayerMainActivity;->playingSong2:Lcom/fiio/music/entity/Song;

    invoke-virtual {v2}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fiio/music/util/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4337
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 4338
    const-string v0, "JPG"

    .line 4347
    :cond_f
    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_1

    :cond_10
    :goto_4
    move-object v3, v1

    .line 4360
    goto/16 :goto_1

    .line 4339
    :cond_11
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".bmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 4340
    const-string v0, "BMP"

    goto :goto_3

    .line 4341
    :cond_12
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 4342
    const-string v0, "PNG"

    goto :goto_3

    .line 4347
    :sswitch_4
    const-string v3, "BMP"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 4354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".bmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 4355
    goto/16 :goto_1

    .line 4347
    :sswitch_5
    const-string v3, "JPG"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 4351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 4352
    goto/16 :goto_1

    .line 4347
    :sswitch_6
    const-string v3, "PNG"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 4357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 4358
    goto/16 :goto_1

    .line 4347
    :sswitch_7
    const-string v2, "NONE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_4

    .line 4374
    :cond_13
    iget v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_14

    .line 4375
    invoke-virtual {v4}, Lcom/fiio/music/custom/f;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/Window;->setContentView(I)V

    goto/16 :goto_2

    .line 4377
    :cond_14
    iget v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_15

    .line 4378
    invoke-virtual {v4}, Lcom/fiio/music/custom/f;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/Window;->setContentView(I)V

    goto/16 :goto_2

    .line 4379
    :cond_15
    iget v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 4380
    invoke-virtual {v4}, Lcom/fiio/music/custom/f;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/Window;->setContentView(I)V

    goto/16 :goto_2

    .line 4303
    :sswitch_data_0
    .sparse-switch
        0x10165 -> :sswitch_0
        0x11fc1 -> :sswitch_1
        0x13609 -> :sswitch_2
        0x24a738 -> :sswitch_3
    .end sparse-switch

    .line 4347
    :sswitch_data_1
    .sparse-switch
        0x10165 -> :sswitch_4
        0x11fc1 -> :sswitch_5
        0x13609 -> :sswitch_6
        0x24a738 -> :sswitch_7
    .end sparse-switch
.end method

.method private hideLyricProgressIndicator()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 3604
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->left:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 3605
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->lyricProgressIndicator:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3606
    return-void
.end method

.method private initImageLoader()V
    .locals 6

    .prologue
    const v5, 0x7f020424

    const v4, 0x7f020423

    const v3, 0x7f0201c6

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 684
    invoke-static {}, Lcom/b/a/b/f;->a()Lcom/b/a/b/f;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->imageLoader:Lcom/b/a/b/f;

    .line 687
    iget v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    if-ne v0, v1, :cond_1

    .line 688
    new-instance v0, Lcom/b/a/b/e;

    invoke-direct {v0}, Lcom/b/a/b/e;-><init>()V

    .line 689
    invoke-virtual {v0, v3}, Lcom/b/a/b/e;->b(I)Lcom/b/a/b/e;

    move-result-object v0

    .line 690
    invoke-virtual {v0, v3}, Lcom/b/a/b/e;->c(I)Lcom/b/a/b/e;

    move-result-object v0

    .line 691
    invoke-virtual {v0, v1}, Lcom/b/a/b/e;->a(Z)Lcom/b/a/b/e;

    move-result-object v0

    .line 692
    invoke-virtual {v0, v1}, Lcom/b/a/b/e;->b(Z)Lcom/b/a/b/e;

    move-result-object v0

    .line 693
    new-instance v1, Lcom/b/a/b/c/c;

    invoke-direct {v1}, Lcom/b/a/b/c/c;-><init>()V

    invoke-virtual {v0, v1}, Lcom/b/a/b/e;->a(Lcom/b/a/b/c/a;)Lcom/b/a/b/e;

    move-result-object v0

    .line 694
    invoke-virtual {v0}, Lcom/b/a/b/e;->d()Lcom/b/a/b/d;

    move-result-object v0

    .line 688
    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->options:Lcom/b/a/b/d;

    .line 714
    :cond_0
    :goto_0
    return-void

    .line 695
    :cond_1
    iget v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 696
    new-instance v0, Lcom/b/a/b/e;

    invoke-direct {v0}, Lcom/b/a/b/e;-><init>()V

    .line 697
    invoke-virtual {v0, v4}, Lcom/b/a/b/e;->b(I)Lcom/b/a/b/e;

    move-result-object v0

    .line 698
    invoke-virtual {v0, v4}, Lcom/b/a/b/e;->c(I)Lcom/b/a/b/e;

    move-result-object v0

    .line 699
    invoke-virtual {v0, v2}, Lcom/b/a/b/e;->a(Z)Lcom/b/a/b/e;

    move-result-object v0

    .line 700
    invoke-virtual {v0, v2}, Lcom/b/a/b/e;->b(Z)Lcom/b/a/b/e;

    move-result-object v0

    .line 701
    new-instance v1, Lcom/b/a/b/c/c;

    invoke-direct {v1}, Lcom/b/a/b/c/c;-><init>()V

    invoke-virtual {v0, v1}, Lcom/b/a/b/e;->a(Lcom/b/a/b/c/a;)Lcom/b/a/b/e;

    move-result-object v0

    .line 702
    invoke-virtual {v0}, Lcom/b/a/b/e;->d()Lcom/b/a/b/d;

    move-result-object v0

    .line 696
    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->options:Lcom/b/a/b/d;

    goto :goto_0

    .line 703
    :cond_2
    iget v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    .line 704
    iget v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 705
    :cond_3
    new-instance v0, Lcom/b/a/b/e;

    invoke-direct {v0}, Lcom/b/a/b/e;-><init>()V

    .line 706
    invoke-virtual {v0, v5}, Lcom/b/a/b/e;->b(I)Lcom/b/a/b/e;

    move-result-object v0

    .line 707
    invoke-virtual {v0, v5}, Lcom/b/a/b/e;->c(I)Lcom/b/a/b/e;

    move-result-object v0

    .line 708
    invoke-virtual {v0, v2}, Lcom/b/a/b/e;->a(Z)Lcom/b/a/b/e;

    move-result-object v0

    .line 709
    invoke-virtual {v0, v2}, Lcom/b/a/b/e;->b(Z)Lcom/b/a/b/e;

    move-result-object v0

    .line 710
    new-instance v1, Lcom/b/a/b/c/c;

    invoke-direct {v1}, Lcom/b/a/b/c/c;-><init>()V

    invoke-virtual {v0, v1}, Lcom/b/a/b/e;->a(Lcom/b/a/b/c/a;)Lcom/b/a/b/e;

    move-result-object v0

    .line 711
    invoke-virtual {v0}, Lcom/b/a/b/e;->d()Lcom/b/a/b/d;

    move-result-object v0

    .line 705
    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->options:Lcom/b/a/b/d;

    goto :goto_0
.end method

.method private initViewPage()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v1, 0x0

    .line 3371
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->handler:Landroid/os/Handler;

    .line 3372
    const v0, 0x7f0b0226

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/PlayerMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 3374
    const/4 v0, 0x0

    .line 3375
    const-string v2, "SelectAlbum"

    invoke-virtual {p0, v2, v1}, Lcom/fiio/music/activity/PlayerMainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 3376
    const-string v3, "albumPath"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3377
    if-eqz v2, :cond_2

    .line 3378
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "file://"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3394
    :cond_0
    :goto_0
    new-array v2, v8, [Ljava/lang/String;

    aput-object v0, v2, v1

    aput-object v0, v2, v5

    aput-object v0, v2, v7

    .line 3397
    array-length v0, v2

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mImageViews:[Landroid/widget/ImageView;

    move v0, v1

    .line 3398
    :goto_1
    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mImageViews:[Landroid/widget/ImageView;

    array-length v1, v1

    if-lt v0, v1, :cond_6

    .line 3429
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->myAdapter:Lcom/fiio/music/activity/PlayerMainActivity$MyAdapter;

    if-nez v0, :cond_1

    .line 3430
    new-instance v0, Lcom/fiio/music/activity/PlayerMainActivity$MyAdapter;

    invoke-direct {v0, p0}, Lcom/fiio/music/activity/PlayerMainActivity$MyAdapter;-><init>(Lcom/fiio/music/activity/PlayerMainActivity;)V

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->myAdapter:Lcom/fiio/music/activity/PlayerMainActivity$MyAdapter;

    .line 3432
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->myAdapter:Lcom/fiio/music/activity/PlayerMainActivity$MyAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 3435
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 3437
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mImageViews:[Landroid/widget/ImageView;

    array-length v1, v1

    const v2, 0xf4240

    mul-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 3438
    return-void

    .line 3380
    :cond_2
    iget v2, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    if-ne v2, v5, :cond_3

    .line 3381
    const-string v0, "drawable://2130837958"

    goto :goto_0

    .line 3383
    :cond_3
    iget v2, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    if-ne v2, v7, :cond_4

    .line 3384
    const-string v0, "drawable://2130838563"

    goto :goto_0

    .line 3386
    :cond_4
    iget v2, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    if-ne v2, v8, :cond_5

    .line 3387
    const-string v0, "drawable://2130838564"

    goto :goto_0

    .line 3388
    :cond_5
    iget v2, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 3389
    const-string v0, "drawable://2130838564"

    goto :goto_0

    .line 3399
    :cond_6
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 3400
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 3403
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3404
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 3406
    iget-object v3, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mImageViews:[Landroid/widget/ImageView;

    aput-object v1, v3, v0

    .line 3408
    iget-object v3, p0, Lcom/fiio/music/activity/PlayerMainActivity;->imageLoader:Lcom/b/a/b/f;

    aget-object v4, v2, v0

    iget-object v5, p0, Lcom/fiio/music/activity/PlayerMainActivity;->options:Lcom/b/a/b/d;

    invoke-virtual {v3, v4, v1, v5}, Lcom/b/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/b/a/b/d;)V

    .line 3409
    new-instance v3, Lcom/fiio/music/activity/fi;

    invoke-direct {v3, p0}, Lcom/fiio/music/activity/fi;-><init>(Lcom/fiio/music/activity/PlayerMainActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3398
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private initmPopupWindowView(Landroid/view/View;)V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v8, 0x0

    .line 2930
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->m()I

    move-result v6

    .line 2932
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->v()Ljava/util/List;

    move-result-object v10

    .line 2934
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2935
    invoke-virtual {p0}, Lcom/fiio/music/activity/PlayerMainActivity;->isTabAPlayingSong()Z

    move-result v0

    if-nez v0, :cond_0

    move v1, v8

    .line 2936
    :goto_0
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_3

    .line 2946
    :cond_0
    new-instance v0, Lcom/fiio/music/activity/fd;

    invoke-direct {v0, p0, v10}, Lcom/fiio/music/activity/fd;-><init>(Lcom/fiio/music/activity/PlayerMainActivity;Ljava/util/List;)V

    .line 2967
    new-instance v4, Lcom/fiio/music/activity/fe;

    invoke-direct {v4, p0}, Lcom/fiio/music/activity/fe;-><init>(Lcom/fiio/music/activity/PlayerMainActivity;)V

    .line 2987
    new-instance v7, Lcom/fiio/music/activity/ff;

    invoke-direct {v7, p0}, Lcom/fiio/music/activity/ff;-><init>(Lcom/fiio/music/activity/PlayerMainActivity;)V

    .line 3051
    invoke-virtual {p0}, Lcom/fiio/music/activity/PlayerMainActivity;->isTabAPlayingSong()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3053
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3054
    invoke-static {}, Lcom/fiio/music/util/cj;->a()Lcom/fiio/music/util/cj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/util/cj;->c()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3056
    invoke-static {}, Lcom/fiio/music/util/cj;->a()Lcom/fiio/music/util/cj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/util/cj;->b()Ljava/util/ArrayList;

    move-result-object v3

    .line 3069
    :cond_1
    new-instance v0, Lcom/fiio/music/util/FiioPopupWindow;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v2}, Lcom/fiio/music/service/h;->Z()Landroid/database/Cursor;

    move-result-object v2

    .line 3070
    iget-object v5, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v5}, Lcom/fiio/music/service/h;->Y()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-direct/range {v0 .. v7}, Lcom/fiio/music/util/FiioPopupWindow;-><init>(Landroid/content/Context;Landroid/database/Cursor;Ljava/util/ArrayList;Lcom/fiio/music/util/ae;IILcom/fiio/music/util/y;)V

    .line 3069
    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->rcsPopupWindow:Lcom/fiio/music/util/FiioPopupWindow;

    .line 3084
    :goto_1
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->rcsPopupWindow:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-virtual {v0}, Lcom/fiio/music/util/FiioPopupWindow;->a()V

    .line 3085
    if-eqz v9, :cond_6

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 3086
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->rcsPopupWindow:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-virtual {v0, v11}, Lcom/fiio/music/util/FiioPopupWindow;->setFocusable(Z)V

    .line 3094
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/fiio/music/activity/PlayerMainActivity;->isTabAPlayingSong()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3095
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->rcsPopupWindow:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-virtual {v0, p1, v11}, Lcom/fiio/music/util/FiioPopupWindow;->a(Landroid/view/View;I)V

    .line 3096
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->rcsPopupWindow:Lcom/fiio/music/util/FiioPopupWindow;

    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/FiioPopupWindow;->a(Lcom/fiio/music/service/h;)V

    .line 3101
    :goto_3
    return-void

    .line 2938
    :cond_3
    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2936
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 3060
    :cond_4
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->Z()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 3061
    if-eqz v1, :cond_1

    move v0, v8

    .line 3062
    :goto_4
    if-ge v0, v1, :cond_1

    .line 3063
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3062
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 3073
    :cond_5
    invoke-static {}, Lcom/fiio/music/util/cj;->a()Lcom/fiio/music/util/cj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/util/cj;->d()Z

    move-result v1

    if-nez v1, :cond_8

    .line 3075
    invoke-static {}, Lcom/fiio/music/util/cj;->a()Lcom/fiio/music/util/cj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/util/cj;->f()Ljava/util/ArrayList;

    move-result-object v3

    .line 3078
    :goto_5
    new-instance v1, Lcom/fiio/music/util/FiioPopupWindow;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 3079
    iget v4, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mPlayingSongPosition:I

    add-int/lit8 v5, v4, -0x1

    move-object v4, v0

    invoke-direct/range {v1 .. v7}, Lcom/fiio/music/util/FiioPopupWindow;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/fiio/music/util/x;IILcom/fiio/music/util/y;)V

    .line 3078
    iput-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->rcsPopupWindow:Lcom/fiio/music/util/FiioPopupWindow;

    .line 3081
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->rcsPopupWindow:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-virtual {v0, v10}, Lcom/fiio/music/util/FiioPopupWindow;->a(Ljava/util/List;)V

    move-object v9, v3

    goto :goto_1

    .line 3087
    :cond_6
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->Z()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3088
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->rcsPopupWindow:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-virtual {v0, v11}, Lcom/fiio/music/util/FiioPopupWindow;->setFocusable(Z)V

    goto :goto_2

    .line 3098
    :cond_7
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->rcsPopupWindow:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-virtual {v0, p1, v8}, Lcom/fiio/music/util/FiioPopupWindow;->a(Landroid/view/View;I)V

    .line 3099
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->rcsPopupWindow:Lcom/fiio/music/util/FiioPopupWindow;

    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/FiioPopupWindow;->a(Lcom/fiio/music/service/h;)V

    goto :goto_3

    :cond_8
    move-object v3, v9

    goto :goto_5
.end method

.method private isLocalMusicActivityPrevious()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 4436
    invoke-static {}, Lcom/fiio/music/a/c;->a()Lcom/fiio/music/a/c;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/fiio/music/a/c;->c(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    .line 4437
    if-nez v1, :cond_1

    .line 4442
    :cond_0
    :goto_0
    return v0

    .line 4438
    :cond_1
    const-string v2, "sin"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "previous activity name : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 4439
    const-class v2, Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4440
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private loadLyricByHand(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 3356
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/fiio/music/activity/SplashActivity;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".lrc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3357
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3359
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3362
    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mLyricLoadHelper:Lcom/fiio/music/h/e;

    invoke-virtual {v1, v0}, Lcom/fiio/music/h/e;->a(Ljava/lang/String;)Z

    .line 3367
    :cond_0
    return-void
.end method

.method private loadLyricFontSize()Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;
    .locals 3

    .prologue
    .line 3664
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/PlayerMainActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3665
    const-string v1, "com.fiio.music.lyric_font_size"

    .line 3666
    sget-object v2, Lcom/fiio/music/adapter/LyricAdapter;->DEFAULT_LYRIC_FONT_SIZE:Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;

    invoke-virtual {v2}, Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3665
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3664
    invoke-static {v0}, Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;->toLyricFontSize(Ljava/lang/String;)Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;

    move-result-object v0

    return-object v0
.end method

.method private playMainDeleteSong(Lcom/fiio/music/entity/Song;)V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const v2, 0x7f04002a

    .line 2515
    new-instance v0, Lcom/fiio/music/custom/g;

    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/fiio/music/custom/g;-><init>(Landroid/content/Context;)V

    .line 2516
    invoke-virtual {v0}, Lcom/fiio/music/custom/g;->a()Lcom/fiio/music/custom/f;

    move-result-object v3

    .line 2517
    invoke-virtual {v3}, Lcom/fiio/music/custom/f;->show()V

    .line 2518
    iget v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    if-ne v0, v6, :cond_2

    .line 2519
    invoke-virtual {v3}, Lcom/fiio/music/custom/f;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f040029

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    .line 2532
    :cond_0
    :goto_0
    const v0, 0x7f0b0079

    invoke-virtual {v3, v0}, Lcom/fiio/music/custom/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2533
    const v1, 0x7f0b007e

    invoke-virtual {v3, v1}, Lcom/fiio/music/custom/f;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2534
    const v2, 0x7f0b007d

    invoke-virtual {v3, v2}, Lcom/fiio/music/custom/f;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2536
    if-eqz p1, :cond_1

    .line 2537
    invoke-virtual {p0}, Lcom/fiio/music/activity/PlayerMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c00f2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2538
    new-array v5, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2540
    :cond_1
    new-instance v0, Lcom/fiio/music/activity/fb;

    invoke-direct {v0, p0, p1, v3}, Lcom/fiio/music/activity/fb;-><init>(Lcom/fiio/music/activity/PlayerMainActivity;Lcom/fiio/music/entity/Song;Lcom/fiio/music/custom/f;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2599
    new-instance v0, Lcom/fiio/music/activity/fc;

    invoke-direct {v0, p0, v3}, Lcom/fiio/music/activity/fc;-><init>(Lcom/fiio/music/activity/PlayerMainActivity;Lcom/fiio/music/custom/f;)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2605
    return-void

    .line 2521
    :cond_2
    iget v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 2522
    invoke-virtual {v3}, Lcom/fiio/music/custom/f;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setContentView(I)V

    goto :goto_0

    .line 2524
    :cond_3
    iget v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 2525
    invoke-virtual {v3}, Lcom/fiio/music/custom/f;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setContentView(I)V

    goto :goto_0

    .line 2527
    :cond_4
    iget v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2528
    invoke-virtual {v3}, Lcom/fiio/music/custom/f;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setContentView(I)V

    goto :goto_0
.end method

.method private playSongNextOrPrevious(I)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x12c

    .line 3514
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    if-eqz v0, :cond_0

    .line 3515
    packed-switch p1, :pswitch_data_0

    .line 3535
    :cond_0
    :goto_0
    return-void

    .line 3517
    :pswitch_0
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/fiio/music/activity/fj;

    invoke-direct {v1, p0}, Lcom/fiio/music/activity/fj;-><init>(Lcom/fiio/music/activity/PlayerMainActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 3525
    :pswitch_1
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/fiio/music/activity/fk;

    invoke-direct {v1, p0}, Lcom/fiio/music/activity/fk;-><init>(Lcom/fiio/music/activity/PlayerMainActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 3515
    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private rsBlur(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 3966
    invoke-static {p1}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v0

    .line 3972
    invoke-static {v0, p2}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v1

    .line 3973
    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v2

    .line 3976
    invoke-static {v0}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v3

    .line 3978
    invoke-virtual {v3, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 3981
    int-to-float v1, p3

    invoke-virtual {v3, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 3984
    invoke-virtual {v3, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 3987
    invoke-virtual {v2, p2}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 3989
    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->destroy()V

    .line 3991
    return-object p2
.end method

.method private saveLyricFontSize(Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;)V
    .locals 3

    .prologue
    .line 3651
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/PlayerMainActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3652
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3653
    const-string v1, "com.fiio.music.lyric_font_size"

    invoke-virtual {p1}, Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3654
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3655
    return-void
.end method

.method private searchAndWriteLrc(Ljava/lang/String;Lcom/fiio/music/entity/Song;)V
    .locals 4

    .prologue
    .line 4108
    const-string v0, "pc"

    invoke-static {v0, p1}, Lcom/fiio/music/network/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4110
    sget-object v1, Lcom/fiio/music/activity/PlayerMainActivity;->TAG_D:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "searchAndWriteLrc requestUrl = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4112
    invoke-static {}, Lcom/fiio/music/network/b/a;->a()Lcom/fiio/music/network/b/a;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/fiio/music/network/b/a;->a(Z)V

    .line 4114
    invoke-static {}, Lcom/fiio/music/network/b/a;->a()Lcom/fiio/music/network/b/a;

    new-instance v1, Lcom/fiio/music/activity/fm;

    invoke-direct {v1, p0, p2}, Lcom/fiio/music/activity/fm;-><init>(Lcom/fiio/music/activity/PlayerMainActivity;Lcom/fiio/music/entity/Song;)V

    invoke-static {v0, p1, v1}, Lcom/fiio/music/network/b/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/fiio/music/network/b/g;)Le/g;

    .line 4182
    return-void
.end method

.method private searchCloudMusic(Lcom/fiio/music/entity/Song;)V
    .locals 5

    .prologue
    .line 4008
    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v0

    .line 4010
    sget-object v1, Lcom/fiio/music/activity/PlayerMainActivity;->TAG_D:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "searchCloudMusic songNameToSearch = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4013
    const/16 v1, 0xfa

    invoke-static {v0, v1}, Lcom/fiio/music/network/a/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 4015
    sget-object v2, Lcom/fiio/music/activity/PlayerMainActivity;->TAG_D:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "searchCloudMusic requestUrl = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4017
    invoke-static {}, Lcom/fiio/music/network/b/a;->a()Lcom/fiio/music/network/b/a;

    new-instance v2, Lcom/fiio/music/activity/fl;

    invoke-direct {v2, p0, p1}, Lcom/fiio/music/activity/fl;-><init>(Lcom/fiio/music/activity/PlayerMainActivity;Lcom/fiio/music/entity/Song;)V

    invoke-static {v1, v0, v2}, Lcom/fiio/music/network/b/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/fiio/music/network/b/g;)Le/g;

    .line 4100
    return-void
.end method

.method private sendMusicIntent(I)V
    .locals 2

    .prologue
    .line 3105
    new-instance v0, Landroid/content/Intent;

    const-string v1, "LOCK_ACTION_ON_META"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3106
    const-string v1, "song_flag"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3107
    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3108
    return-void
.end method

.method private setImageBackground(I)V
    .locals 6

    .prologue
    const v5, 0x7f02059d

    const/4 v4, 0x2

    const/16 v3, 0x10

    const/16 v2, 0xf

    const/4 v1, 0x1

    .line 3541
    iget v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->lastIndex:I

    if-nez v0, :cond_2

    .line 3542
    if-ne p1, v1, :cond_1

    .line 3543
    invoke-direct {p0, v3}, Lcom/fiio/music/activity/PlayerMainActivity;->playSongNextOrPrevious(I)V

    .line 3547
    :goto_0
    iput p1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->lastIndex:I

    .line 3577
    :cond_0
    :goto_1
    return-void

    .line 3545
    :cond_1
    invoke-direct {p0, v2}, Lcom/fiio/music/activity/PlayerMainActivity;->playSongNextOrPrevious(I)V

    goto :goto_0

    .line 3548
    :cond_2
    iget v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->lastIndex:I

    if-ne v0, v4, :cond_5

    .line 3549
    if-ne p1, v1, :cond_4

    .line 3550
    invoke-direct {p0, v2}, Lcom/fiio/music/activity/PlayerMainActivity;->playSongNextOrPrevious(I)V

    .line 3554
    :cond_3
    :goto_2
    iput p1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->lastIndex:I

    goto :goto_1

    .line 3551
    :cond_4
    if-nez p1, :cond_3

    .line 3552
    invoke-direct {p0, v3}, Lcom/fiio/music/activity/PlayerMainActivity;->playSongNextOrPrevious(I)V

    goto :goto_2

    .line 3556
    :cond_5
    iget v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->lastIndex:I

    if-le v0, p1, :cond_6

    .line 3558
    invoke-direct {p0, v2}, Lcom/fiio/music/activity/PlayerMainActivity;->playSongNextOrPrevious(I)V

    .line 3562
    :goto_3
    iput p1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->lastIndex:I

    .line 3564
    iget v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    if-ne v0, v1, :cond_7

    .line 3565
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->ibtn_player_control_play:Landroid/widget/ImageButton;

    const v1, 0x7f02059b

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_1

    .line 3560
    :cond_6
    invoke-direct {p0, v3}, Lcom/fiio/music/activity/PlayerMainActivity;->playSongNextOrPrevious(I)V

    goto :goto_3

    .line 3567
    :cond_7
    iget v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    if-ne v0, v4, :cond_8

    .line 3568
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->ibtn_player_control_play:Landroid/widget/ImageButton;

    const v1, 0x7f02059c

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_1

    .line 3570
    :cond_8
    iget v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    .line 3571
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->ibtn_player_control_play:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_1

    .line 3572
    :cond_9
    iget v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 3573
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->ibtn_player_control_play:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method private setLyricIndicatorProgress(Ljava/lang/String;JLjava/util/concurrent/ExecutorService;)V
    .locals 2

    .prologue
    .line 3595
    iput-wide p2, p0, Lcom/fiio/music/activity/PlayerMainActivity;->startTime:J

    .line 3596
    iput-object p4, p0, Lcom/fiio/music/activity/PlayerMainActivity;->cachedThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 3597
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->right:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3598
    return-void
.end method

.method private setSongInfoOnProgressBar(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 3726
    iput-object p1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mSongNameStr:Ljava/lang/String;

    .line 3727
    iput-object p2, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mArtistNameStr:Ljava/lang/String;

    .line 3729
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->tv_player_song_info:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    invoke-virtual {v0, p1}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 3730
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->tv_player_artist:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3731
    return-void
.end method

.method private setSongPositionInfoOnProgressBar(II)V
    .locals 2

    .prologue
    .line 3739
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->play_list_count:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3740
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->play_list_position:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3741
    return-void
.end method

.method private showLrcDialog()V
    .locals 8

    .prologue
    .line 3312
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mContext:Landroid/content/Context;

    const v1, 0x7f040094

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 3313
    iget v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mScreenWidth:I

    add-int/lit8 v0, v0, -0x28

    invoke-virtual {v7, v0}, Landroid/view/View;->setMinimumWidth(I)V

    .line 3314
    new-instance v5, Landroid/app/Dialog;

    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mContext:Landroid/content/Context;

    const v1, 0x7f090009

    invoke-direct {v5, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 3316
    const v0, 0x7f0b01d4

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 3317
    const v0, 0x7f0b01d3

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 3318
    const v0, 0x7f0b01d1

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 3319
    const v0, 0x7f0b01d2

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 3321
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->playingSong2:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getArtist()Lcom/fiio/music/entity/Artist;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/entity/Artist;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3322
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->playingSong2:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3323
    new-instance v0, Lcom/fiio/music/activity/fh;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/fiio/music/activity/fh;-><init>(Lcom/fiio/music/activity/PlayerMainActivity;Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/app/Dialog;Landroid/widget/Button;)V

    .line 3348
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3349
    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3350
    invoke-virtual {v5, v7}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 3351
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 3352
    return-void
.end method

.method private showLyricProgressIndicator()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3583
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->left:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 3584
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->lyricProgressIndicator:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3585
    return-void
.end method

.method private showWindownMenuDialog(Landroid/content/Context;)V
    .locals 9

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x5

    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x4

    .line 2234
    iget v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    if-ne v0, v6, :cond_3

    .line 2235
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040191

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mWindownDialogView:Landroid/view/View;

    .line 2245
    :cond_0
    :goto_0
    new-instance v0, Lcom/fiio/music/custom/b;

    invoke-direct {v0, p1}, Lcom/fiio/music/custom/b;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mWindownDialogView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/fiio/music/custom/b;->a(Landroid/view/View;)Lcom/fiio/music/custom/b;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mWindownDialogView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/fiio/music/custom/b;->b(Landroid/view/View;)Lcom/fiio/music/custom/a;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->windownMenuDialog:Lcom/fiio/music/custom/a;

    .line 2246
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mWindownDialogView:Landroid/view/View;

    const v1, 0x7f0b0393

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/satellitemenu/SatelliteMenu;

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->satelliteMenu:Lcom/fiio/music/satellitemenu/SatelliteMenu;

    .line 2248
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->items:Ljava/util/List;

    .line 2249
    iget v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    if-ne v0, v6, :cond_6

    .line 2250
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->items:Ljava/util/List;

    new-instance v1, Lcom/fiio/music/satellitemenu/l;

    const v2, 0x7f020513

    invoke-direct {v1, v4, v2}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2251
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->l()I

    move-result v0

    if-eq v0, v5, :cond_1

    .line 2252
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->l()I

    move-result v0

    if-eq v0, v8, :cond_1

    .line 2253
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->l()I

    move-result v0

    if-eq v0, v7, :cond_1

    .line 2254
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->items:Ljava/util/List;

    new-instance v1, Lcom/fiio/music/satellitemenu/l;

    const/16 v2, 0x8

    const v3, 0x7f02050d

    invoke-direct {v1, v2, v3}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2255
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->items:Ljava/util/List;

    new-instance v1, Lcom/fiio/music/satellitemenu/l;

    const/4 v2, 0x7

    const v3, 0x7f02050e

    invoke-direct {v1, v2, v3}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2257
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->items:Ljava/util/List;

    new-instance v1, Lcom/fiio/music/satellitemenu/l;

    const v2, 0x7f02050f

    invoke-direct {v1, v6, v2}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2258
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->satelliteMenu:Lcom/fiio/music/satellitemenu/SatelliteMenu;

    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->items:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/fiio/music/satellitemenu/SatelliteMenu;->a(Ljava/util/List;)V

    .line 2259
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->satelliteMenu:Lcom/fiio/music/satellitemenu/SatelliteMenu;

    const v1, 0x7f020222

    invoke-virtual {v0, v1}, Lcom/fiio/music/satellitemenu/SatelliteMenu;->setDefaultMaimIcom(I)V

    .line 2260
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->satelliteMenu:Lcom/fiio/music/satellitemenu/SatelliteMenu;

    const v1, 0x7f020511

    invoke-virtual {v0, v1}, Lcom/fiio/music/satellitemenu/SatelliteMenu;->setCloseMaimIcom(I)V

    .line 2305
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->satelliteMenu:Lcom/fiio/music/satellitemenu/SatelliteMenu;

    new-instance v1, Lcom/fiio/music/activity/ez;

    invoke-direct {v1, p0}, Lcom/fiio/music/activity/ez;-><init>(Lcom/fiio/music/activity/PlayerMainActivity;)V

    invoke-virtual {v0, v1}, Lcom/fiio/music/satellitemenu/SatelliteMenu;->setOnItemClickedListener(Lcom/fiio/music/satellitemenu/h;)V

    .line 2421
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->satelliteMenu:Lcom/fiio/music/satellitemenu/SatelliteMenu;

    new-instance v1, Lcom/fiio/music/activity/fa;

    invoke-direct {v1, p0}, Lcom/fiio/music/activity/fa;-><init>(Lcom/fiio/music/activity/PlayerMainActivity;)V

    invoke-virtual {v0, v1}, Lcom/fiio/music/satellitemenu/SatelliteMenu;->setonClick(Lcom/fiio/music/satellitemenu/f;)V

    .line 2429
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->satelliteMenu:Lcom/fiio/music/satellitemenu/SatelliteMenu;

    invoke-virtual {v0}, Lcom/fiio/music/satellitemenu/SatelliteMenu;->b()V

    .line 2430
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->windownMenuDialog:Lcom/fiio/music/custom/a;

    invoke-virtual {v0}, Lcom/fiio/music/custom/a;->show()V

    .line 2431
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->satelliteMenu:Lcom/fiio/music/satellitemenu/SatelliteMenu;

    invoke-virtual {v0}, Lcom/fiio/music/satellitemenu/SatelliteMenu;->a()V

    .line 2432
    return-void

    .line 2237
    :cond_3
    iget v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    if-ne v0, v4, :cond_4

    .line 2238
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040191

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mWindownDialogView:Landroid/view/View;

    goto/16 :goto_0

    .line 2240
    :cond_4
    iget v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 2241
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040192

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mWindownDialogView:Landroid/view/View;

    goto/16 :goto_0

    .line 2242
    :cond_5
    iget v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    if-ne v0, v5, :cond_0

    .line 2243
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040192

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mWindownDialogView:Landroid/view/View;

    goto/16 :goto_0

    .line 2262
    :cond_6
    iget v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    if-ne v0, v4, :cond_8

    .line 2263
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->items:Ljava/util/List;

    new-instance v1, Lcom/fiio/music/satellitemenu/l;

    const v2, 0x7f020514

    invoke-direct {v1, v4, v2}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2264
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->l()I

    move-result v0

    if-eq v0, v5, :cond_7

    .line 2265
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->l()I

    move-result v0

    if-eq v0, v8, :cond_7

    .line 2266
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->l()I

    move-result v0

    if-eq v0, v7, :cond_7

    .line 2267
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->items:Ljava/util/List;

    new-instance v1, Lcom/fiio/music/satellitemenu/l;

    const/16 v2, 0x8

    const v3, 0x7f0204fc

    invoke-direct {v1, v2, v3}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2268
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->items:Ljava/util/List;

    new-instance v1, Lcom/fiio/music/satellitemenu/l;

    const/4 v2, 0x7

    const v3, 0x7f0204fe

    invoke-direct {v1, v2, v3}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2270
    :cond_7
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->items:Ljava/util/List;

    new-instance v1, Lcom/fiio/music/satellitemenu/l;

    const v2, 0x7f020510

    invoke-direct {v1, v6, v2}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2271
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->satelliteMenu:Lcom/fiio/music/satellitemenu/SatelliteMenu;

    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->items:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/fiio/music/satellitemenu/SatelliteMenu;->a(Ljava/util/List;)V

    .line 2272
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->satelliteMenu:Lcom/fiio/music/satellitemenu/SatelliteMenu;

    const v1, 0x7f020221

    invoke-virtual {v0, v1}, Lcom/fiio/music/satellitemenu/SatelliteMenu;->setDefaultMaimIcom(I)V

    .line 2273
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->satelliteMenu:Lcom/fiio/music/satellitemenu/SatelliteMenu;

    const v1, 0x7f020505

    invoke-virtual {v0, v1}, Lcom/fiio/music/satellitemenu/SatelliteMenu;->setCloseMaimIcom(I)V

    goto/16 :goto_1

    .line 2275
    :cond_8
    iget v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_9

    .line 2276
    iget v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    if-ne v0, v5, :cond_2

    .line 2277
    :cond_9
    const/4 v0, 0x0

    .line 2278
    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->playingSong2:Lcom/fiio/music/entity/Song;

    if-eqz v1, :cond_a

    .line 2279
    const v0, 0x7f0c0054

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/PlayerMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2280
    new-instance v1, Lcom/fiio/music/util/bw;

    invoke-direct {v1, v0}, Lcom/fiio/music/util/bw;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->playListManager:Lcom/fiio/music/util/bw;

    .line 2281
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->playListManager:Lcom/fiio/music/util/bw;

    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->playingSong2:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->playingSong2:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/util/bw;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 2283
    :cond_a
    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->items:Ljava/util/List;

    new-instance v2, Lcom/fiio/music/satellitemenu/l;

    const v3, 0x7f020514

    invoke-direct {v2, v4, v3}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2284
    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->l()I

    move-result v1

    if-eq v1, v5, :cond_b

    .line 2285
    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->l()I

    move-result v1

    if-eq v1, v8, :cond_b

    .line 2286
    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->l()I

    move-result v1

    if-eq v1, v7, :cond_b

    .line 2287
    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->items:Ljava/util/List;

    new-instance v2, Lcom/fiio/music/satellitemenu/l;

    const/16 v3, 0x8

    const v4, 0x7f0204fc

    invoke-direct {v2, v3, v4}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2288
    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->items:Ljava/util/List;

    new-instance v2, Lcom/fiio/music/satellitemenu/l;

    const/4 v3, 0x7

    const v4, 0x7f0204fe

    invoke-direct {v2, v3, v4}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2290
    :cond_b
    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->items:Ljava/util/List;

    new-instance v2, Lcom/fiio/music/satellitemenu/l;

    const v3, 0x7f020510

    invoke-direct {v2, v6, v3}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2291
    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->items:Ljava/util/List;

    new-instance v2, Lcom/fiio/music/satellitemenu/l;

    const/4 v3, 0x3

    const v4, 0x7f0204fb

    invoke-direct {v2, v3, v4}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2292
    if-eqz v0, :cond_c

    .line 2293
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->items:Ljava/util/List;

    new-instance v1, Lcom/fiio/music/satellitemenu/l;

    const v2, 0x7f0204fa

    invoke-direct {v1, v5, v2}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2297
    :goto_2
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->items:Ljava/util/List;

    new-instance v1, Lcom/fiio/music/satellitemenu/l;

    const v2, 0x7f020502

    invoke-direct {v1, v7, v2}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2298
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->items:Ljava/util/List;

    new-instance v1, Lcom/fiio/music/satellitemenu/l;

    const v2, 0x7f020509

    invoke-direct {v1, v8, v2}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2299
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->satelliteMenu:Lcom/fiio/music/satellitemenu/SatelliteMenu;

    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->items:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/fiio/music/satellitemenu/SatelliteMenu;->a(Ljava/util/List;)V

    .line 2300
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->satelliteMenu:Lcom/fiio/music/satellitemenu/SatelliteMenu;

    const v1, 0x7f020221

    invoke-virtual {v0, v1}, Lcom/fiio/music/satellitemenu/SatelliteMenu;->setDefaultMaimIcom(I)V

    .line 2301
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->satelliteMenu:Lcom/fiio/music/satellitemenu/SatelliteMenu;

    const v1, 0x7f020505

    invoke-virtual {v0, v1}, Lcom/fiio/music/satellitemenu/SatelliteMenu;->setCloseMaimIcom(I)V

    goto/16 :goto_1

    .line 2295
    :cond_c
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->items:Ljava/util/List;

    new-instance v1, Lcom/fiio/music/satellitemenu/l;

    const v2, 0x7f0204f9

    invoke-direct {v1, v5, v2}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public static stripExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 3171
    if-nez p0, :cond_1

    const/4 p0, 0x0

    .line 3174
    :cond_0
    :goto_0
    return-object p0

    .line 3172
    :cond_1
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 3173
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3174
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private updateAlbumShow()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v3, 0x1

    .line 3761
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->playingSong2:Lcom/fiio/music/entity/Song;

    if-nez v0, :cond_0

    .line 3762
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->h()Lcom/fiio/music/entity/Song;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->playingSong2:Lcom/fiio/music/entity/Song;

    .line 3764
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->playingSong2:Lcom/fiio/music/entity/Song;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->playingSong2:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 3877
    :cond_1
    :goto_0
    return-void

    .line 3768
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->J()Lcom/fiio/music/entity/Song;

    move-result-object v0

    .line 3769
    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->I()Lcom/fiio/music/entity/Song;

    move-result-object v1

    .line 3770
    iget-object v2, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v2}, Lcom/fiio/music/service/h;->l()I

    move-result v2

    if-ne v2, v6, :cond_b

    .line 3773
    iget-object v2, p0, Lcom/fiio/music/activity/PlayerMainActivity;->playingSong2:Lcom/fiio/music/entity/Song;

    iget v3, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    invoke-virtual {p0}, Lcom/fiio/music/activity/PlayerMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/fiio/music/activity/PlayerMainActivity;->imageLoader:Lcom/b/a/b/f;

    invoke-static {v2, v3, v4, v5}, Lcom/fiio/music/util/h;->a(Lcom/fiio/music/entity/Song;ILandroid/content/Context;Lcom/b/a/b/f;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/fiio/music/activity/PlayerMainActivity;->curAlbum:Ljava/lang/String;

    .line 3775
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/activity/PlayerMainActivity;->playingSong2:Lcom/fiio/music/entity/Song;

    invoke-virtual {v3}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 3776
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->curAlbum:Ljava/lang/String;

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->prevAlbum:Ljava/lang/String;

    .line 3783
    :cond_3
    :goto_1
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/fiio/music/activity/PlayerMainActivity;->playingSong2:Lcom/fiio/music/entity/Song;

    invoke-virtual {v2}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3784
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->curAlbum:Ljava/lang/String;

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->nextAlbum:Ljava/lang/String;

    .line 3792
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->O()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->Q()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3793
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->curAlbum:Ljava/lang/String;

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->prevAlbum:Ljava/lang/String;

    .line 3794
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->curAlbum:Ljava/lang/String;

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->nextAlbum:Ljava/lang/String;

    .line 3838
    :cond_5
    :goto_3
    sget-object v0, Lcom/fiio/music/activity/PlayerMainActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PlayMainActivity curAlbum = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fiio/music/activity/PlayerMainActivity;->curAlbum:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3847
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 3849
    iget-boolean v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->wasCurrAlbumUpdated:Z

    if-nez v1, :cond_6

    .line 3850
    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mImageViews:[Landroid/widget/ImageView;

    array-length v1, v1

    rem-int v1, v0, v1

    .line 3851
    iget-object v2, p0, Lcom/fiio/music/activity/PlayerMainActivity;->curAlbum:Ljava/lang/String;

    iget-object v3, p0, Lcom/fiio/music/activity/PlayerMainActivity;->imageLoader:Lcom/b/a/b/f;

    invoke-virtual {v3}, Lcom/b/a/b/f;->c()Lcom/b/a/a/a/a;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/b/a/c/a;->a(Ljava/lang/String;Lcom/b/a/a/a/a;)Z

    .line 3852
    iget-object v2, p0, Lcom/fiio/music/activity/PlayerMainActivity;->curAlbum:Ljava/lang/String;

    iget-object v3, p0, Lcom/fiio/music/activity/PlayerMainActivity;->imageLoader:Lcom/b/a/b/f;

    invoke-virtual {v3}, Lcom/b/a/b/f;->b()Lcom/b/a/a/b/c;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/b/a/c/f;->a(Ljava/lang/String;Lcom/b/a/a/b/c;)V

    .line 3854
    iget-object v2, p0, Lcom/fiio/music/activity/PlayerMainActivity;->imageLoader:Lcom/b/a/b/f;

    iget-object v3, p0, Lcom/fiio/music/activity/PlayerMainActivity;->curAlbum:Ljava/lang/String;

    iget-object v4, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mImageViews:[Landroid/widget/ImageView;

    aget-object v1, v4, v1

    iget-object v4, p0, Lcom/fiio/music/activity/PlayerMainActivity;->options:Lcom/b/a/b/d;

    invoke-virtual {v2, v3, v1, v4}, Lcom/b/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/b/a/b/d;)V

    .line 3857
    :cond_6
    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->imageLoader:Lcom/b/a/b/f;

    iget-object v2, p0, Lcom/fiio/music/activity/PlayerMainActivity;->curAlbum:Ljava/lang/String;

    iget-object v3, p0, Lcom/fiio/music/activity/PlayerMainActivity;->playview_bg:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/fiio/music/activity/PlayerMainActivity;->options:Lcom/b/a/b/d;

    invoke-virtual {v1, v2, v3, v4}, Lcom/b/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/b/a/b/d;)V

    .line 3859
    iget v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_7

    .line 3860
    iget v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    if-ne v1, v6, :cond_8

    .line 3861
    :cond_7
    invoke-virtual {p0}, Lcom/fiio/music/activity/PlayerMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/PlayerMainActivity;->curAlbum:Ljava/lang/String;

    const/16 v3, 0x19

    invoke-direct {p0, v1, v2, v3}, Lcom/fiio/music/activity/PlayerMainActivity;->bitmapblur(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 3862
    iget-object v2, p0, Lcom/fiio/music/activity/PlayerMainActivity;->iv_bottom_bitmap:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3867
    :cond_8
    add-int/lit8 v1, v0, -0x1

    iget-object v2, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mImageViews:[Landroid/widget/ImageView;

    array-length v2, v2

    rem-int/2addr v1, v2

    .line 3868
    iget-object v2, p0, Lcom/fiio/music/activity/PlayerMainActivity;->imageLoader:Lcom/b/a/b/f;

    iget-object v3, p0, Lcom/fiio/music/activity/PlayerMainActivity;->prevAlbum:Ljava/lang/String;

    iget-object v4, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mImageViews:[Landroid/widget/ImageView;

    aget-object v1, v4, v1

    iget-object v4, p0, Lcom/fiio/music/activity/PlayerMainActivity;->options:Lcom/b/a/b/d;

    invoke-virtual {v2, v3, v1, v4}, Lcom/b/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/b/a/b/d;)V

    .line 3870
    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mImageViews:[Landroid/widget/ImageView;

    array-length v1, v1

    rem-int/2addr v0, v1

    .line 3871
    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->imageLoader:Lcom/b/a/b/f;

    iget-object v2, p0, Lcom/fiio/music/activity/PlayerMainActivity;->nextAlbum:Ljava/lang/String;

    iget-object v3, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mImageViews:[Landroid/widget/ImageView;

    aget-object v0, v3, v0

    iget-object v3, p0, Lcom/fiio/music/activity/PlayerMainActivity;->options:Lcom/b/a/b/d;

    invoke-virtual {v1, v2, v0, v3}, Lcom/b/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/b/a/b/d;)V

    .line 3873
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->wasCurrAlbumUpdated:Z

    .line 3874
    const/4 v0, -0x1

    iput v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->nextOrPre:I

    goto/16 :goto_0

    .line 3778
    :cond_9
    if-eqz v0, :cond_3

    .line 3779
    iget-object v2, p0, Lcom/fiio/music/activity/PlayerMainActivity;->manager:Lcom/fiio/music/util/bh;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/fiio/music/util/bh;->a(Ljava/lang/String;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    .line 3780
    iget v2, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    invoke-virtual {p0}, Lcom/fiio/music/activity/PlayerMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/fiio/music/activity/PlayerMainActivity;->imageLoader:Lcom/b/a/b/f;

    invoke-static {v0, v2, v3, v4}, Lcom/fiio/music/util/h;->a(Lcom/fiio/music/entity/Song;ILandroid/content/Context;Lcom/b/a/b/f;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->prevAlbum:Ljava/lang/String;

    goto/16 :goto_1

    .line 3786
    :cond_a
    if-eqz v1, :cond_4

    .line 3787
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->manager:Lcom/fiio/music/util/bh;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/bh;->a(Ljava/lang/String;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    .line 3788
    iget v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    invoke-virtual {p0}, Lcom/fiio/music/activity/PlayerMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/activity/PlayerMainActivity;->imageLoader:Lcom/b/a/b/f;

    invoke-static {v0, v1, v2, v3}, Lcom/fiio/music/util/h;->a(Lcom/fiio/music/entity/Song;ILandroid/content/Context;Lcom/b/a/b/f;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->nextAlbum:Ljava/lang/String;

    goto/16 :goto_2

    .line 3797
    :cond_b
    iget v2, p0, Lcom/fiio/music/activity/PlayerMainActivity;->nextOrPre:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    .line 3799
    :pswitch_1
    iget v2, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    invoke-virtual {p0}, Lcom/fiio/music/activity/PlayerMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/fiio/music/activity/PlayerMainActivity;->imageLoader:Lcom/b/a/b/f;

    invoke-static {v0, v2, v3, v4}, Lcom/fiio/music/util/h;->a(Lcom/fiio/music/entity/Song;ILandroid/content/Context;Lcom/b/a/b/f;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->prevAlbum:Ljava/lang/String;

    .line 3800
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->playingSong2:Lcom/fiio/music/entity/Song;

    iget v2, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    invoke-virtual {p0}, Lcom/fiio/music/activity/PlayerMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/fiio/music/activity/PlayerMainActivity;->imageLoader:Lcom/b/a/b/f;

    invoke-static {v0, v2, v3, v4}, Lcom/fiio/music/util/h;->a(Lcom/fiio/music/entity/Song;ILandroid/content/Context;Lcom/b/a/b/f;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->curAlbum:Ljava/lang/String;

    .line 3801
    iget v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    invoke-virtual {p0}, Lcom/fiio/music/activity/PlayerMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/activity/PlayerMainActivity;->imageLoader:Lcom/b/a/b/f;

    invoke-static {v1, v0, v2, v3}, Lcom/fiio/music/util/h;->a(Lcom/fiio/music/entity/Song;ILandroid/content/Context;Lcom/b/a/b/f;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->nextAlbum:Ljava/lang/String;

    goto/16 :goto_3

    .line 3804
    :pswitch_2
    iget-object v2, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v2}, Lcom/fiio/music/service/h;->z()I

    move-result v2

    if-ne v2, v3, :cond_d

    .line 3805
    iget v2, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    invoke-virtual {p0}, Lcom/fiio/music/activity/PlayerMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/fiio/music/activity/PlayerMainActivity;->imageLoader:Lcom/b/a/b/f;

    invoke-static {v0, v2, v3, v4}, Lcom/fiio/music/util/h;->b(Lcom/fiio/music/entity/Song;ILandroid/content/Context;Lcom/b/a/b/f;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->prevAlbum:Ljava/lang/String;

    .line 3816
    :cond_c
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->playingSong2:Lcom/fiio/music/entity/Song;

    iget v2, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    invoke-virtual {p0}, Lcom/fiio/music/activity/PlayerMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/fiio/music/activity/PlayerMainActivity;->imageLoader:Lcom/b/a/b/f;

    invoke-static {v0, v2, v3, v4}, Lcom/fiio/music/util/h;->b(Lcom/fiio/music/entity/Song;ILandroid/content/Context;Lcom/b/a/b/f;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->curAlbum:Ljava/lang/String;

    .line 3819
    :goto_4
    iget v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    invoke-virtual {p0}, Lcom/fiio/music/activity/PlayerMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/activity/PlayerMainActivity;->imageLoader:Lcom/b/a/b/f;

    invoke-static {v1, v0, v2, v3}, Lcom/fiio/music/util/h;->b(Lcom/fiio/music/entity/Song;ILandroid/content/Context;Lcom/b/a/b/f;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->nextAlbum:Ljava/lang/String;

    goto/16 :goto_3

    .line 3808
    :cond_d
    iget-object v2, p0, Lcom/fiio/music/activity/PlayerMainActivity;->curAlbum:Ljava/lang/String;

    if-eqz v2, :cond_e

    .line 3809
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->curAlbum:Ljava/lang/String;

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->prevAlbum:Ljava/lang/String;

    .line 3813
    :goto_5
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->nextAlbum:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 3814
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->nextAlbum:Ljava/lang/String;

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->curAlbum:Ljava/lang/String;

    goto :goto_4

    .line 3811
    :cond_e
    iget v2, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    invoke-virtual {p0}, Lcom/fiio/music/activity/PlayerMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/fiio/music/activity/PlayerMainActivity;->imageLoader:Lcom/b/a/b/f;

    invoke-static {v0, v2, v3, v4}, Lcom/fiio/music/util/h;->b(Lcom/fiio/music/entity/Song;ILandroid/content/Context;Lcom/b/a/b/f;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->prevAlbum:Ljava/lang/String;

    goto :goto_5

    .line 3822
    :pswitch_3
    iget-object v2, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v2}, Lcom/fiio/music/service/h;->z()I

    move-result v2

    if-ne v2, v3, :cond_10

    .line 3823
    iget v2, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    invoke-virtual {p0}, Lcom/fiio/music/activity/PlayerMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/fiio/music/activity/PlayerMainActivity;->imageLoader:Lcom/b/a/b/f;

    invoke-static {v1, v2, v3, v4}, Lcom/fiio/music/util/h;->b(Lcom/fiio/music/entity/Song;ILandroid/content/Context;Lcom/b/a/b/f;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->nextAlbum:Ljava/lang/String;

    .line 3834
    :cond_f
    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->playingSong2:Lcom/fiio/music/entity/Song;

    iget v2, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    invoke-virtual {p0}, Lcom/fiio/music/activity/PlayerMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/fiio/music/activity/PlayerMainActivity;->imageLoader:Lcom/b/a/b/f;

    invoke-static {v1, v2, v3, v4}, Lcom/fiio/music/util/h;->b(Lcom/fiio/music/entity/Song;ILandroid/content/Context;Lcom/b/a/b/f;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->curAlbum:Ljava/lang/String;

    .line 3837
    :goto_6
    iget v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    invoke-virtual {p0}, Lcom/fiio/music/activity/PlayerMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/activity/PlayerMainActivity;->imageLoader:Lcom/b/a/b/f;

    invoke-static {v0, v1, v2, v3}, Lcom/fiio/music/util/h;->b(Lcom/fiio/music/entity/Song;ILandroid/content/Context;Lcom/b/a/b/f;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->prevAlbum:Ljava/lang/String;

    goto/16 :goto_3

    .line 3826
    :cond_10
    iget-object v2, p0, Lcom/fiio/music/activity/PlayerMainActivity;->curAlbum:Ljava/lang/String;

    if-eqz v2, :cond_11

    .line 3827
    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->curAlbum:Ljava/lang/String;

    iput-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->nextAlbum:Ljava/lang/String;

    .line 3831
    :goto_7
    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->prevAlbum:Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 3832
    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->prevAlbum:Ljava/lang/String;

    iput-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->curAlbum:Ljava/lang/String;

    goto :goto_6

    .line 3829
    :cond_11
    iget v2, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    invoke-virtual {p0}, Lcom/fiio/music/activity/PlayerMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/fiio/music/activity/PlayerMainActivity;->imageLoader:Lcom/b/a/b/f;

    invoke-static {v1, v2, v3, v4}, Lcom/fiio/music/util/h;->b(Lcom/fiio/music/entity/Song;ILandroid/content/Context;Lcom/b/a/b/f;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->nextAlbum:Ljava/lang/String;

    goto :goto_7

    .line 3797
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

.method private updateLyricShowByLineIndex(I)V
    .locals 3

    .prologue
    .line 3677
    iput p1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->indexOfCurSentence:I

    .line 3678
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mLyricAdapter:Lcom/fiio/music/adapter/LyricAdapter;

    invoke-virtual {v0}, Lcom/fiio/music/adapter/LyricAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 3679
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mLyricAdapter:Lcom/fiio/music/adapter/LyricAdapter;

    invoke-virtual {v0, p1}, Lcom/fiio/music/adapter/LyricAdapter;->setCurrentSentenceIndex(I)V

    .line 3680
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mLyricAdapter:Lcom/fiio/music/adapter/LyricAdapter;

    invoke-virtual {v0}, Lcom/fiio/music/adapter/LyricAdapter;->notifyDataSetChanged()V

    .line 3681
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->left:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3682
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mLrcListView:Landroid/widget/ListView;

    .line 3683
    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mLrcListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    const/16 v2, 0x1f4

    .line 3682
    invoke-virtual {v0, p1, v1, v2}, Landroid/widget/ListView;->smoothScrollToPositionFromTop(III)V

    .line 3686
    :cond_0
    return-void
.end method

.method private updateLyricShowByTime(J)V
    .locals 1

    .prologue
    .line 3695
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mLyricLoadHelper:Lcom/fiio/music/h/e;

    invoke-virtual {v0, p1, p2}, Lcom/fiio/music/h/e;->b(J)I

    move-result v0

    .line 3696
    invoke-direct {p0, v0}, Lcom/fiio/music/activity/PlayerMainActivity;->updateLyricShowByLineIndex(I)V

    .line 3697
    return-void
.end method

.method private uvStartAnimation()V
    .locals 8

    .prologue
    .line 672
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v1, -0x3dbc0000    # -49.0f

    const/high16 v2, -0x3dbc0000    # -49.0f

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 673
    new-instance v1, Landroid/view/animation/RotateAnimation;

    const/high16 v2, -0x3dbc0000    # -49.0f

    const/high16 v3, -0x3dbc0000    # -49.0f

    const/4 v4, 0x1

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v6, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct/range {v1 .. v7}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 674
    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 675
    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 676
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 677
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 678
    iget-object v2, p0, Lcom/fiio/music/activity/PlayerMainActivity;->img_uvline:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 679
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->img_uv_white_line:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 680
    return-void
.end method


# virtual methods
.method public native GetUvLevelLeft(I)F
.end method

.method public native GetUvLevelRight(I)F
.end method

.method public deleteForResetPlayerList(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 2607
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->m()I

    move-result v0

    .line 2608
    if-eqz v0, :cond_0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 2633
    :cond_0
    :goto_0
    return-void

    .line 2611
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->l()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2614
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->B()Ljava/lang/String;

    move-result-object v0

    .line 2615
    if-nez v0, :cond_2

    const-string v0, ""

    .line 2616
    :cond_2
    if-nez p3, :cond_3

    .line 2617
    const-string p3, ""

    .line 2618
    :cond_3
    const/4 v1, 0x1

    if-eq p2, v1, :cond_4

    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->l()I

    move-result v1

    if-ne v1, p2, :cond_0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2620
    :cond_4
    if-nez p1, :cond_5

    .line 2621
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fiio/music/service/h;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 2625
    :cond_5
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2626
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0, p1}, Lcom/fiio/music/service/h;->b(Ljava/lang/String;)V

    .line 2629
    :cond_6
    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    .line 2630
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->x()V

    goto :goto_0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 3

    .prologue
    .line 3746
    invoke-super {p0}, Lcom/fiio/music/activity/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3747
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    .line 3748
    invoke-virtual {v1}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 3749
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 3750
    return-object v0
.end method

.method public isMyLoveSong(Lcom/fiio/music/entity/Song;)V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const v5, 0x7f0201d9

    const v4, 0x7f0201d7

    .line 4200
    const v0, 0x7f0c0054

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/PlayerMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4202
    new-instance v1, Lcom/fiio/music/util/bw;

    invoke-direct {v1, v0}, Lcom/fiio/music/util/bw;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->playListManager:Lcom/fiio/music/util/bw;

    .line 4203
    if-eqz p1, :cond_0

    .line 4204
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->playListManager:Lcom/fiio/music/util/bw;

    .line 4205
    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v1

    .line 4204
    invoke-static {v0, v1}, Lcom/fiio/music/util/bw;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 4206
    const-string v1, "zxy - - - - "

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "xflag   :    "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fiio/music/util/aw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4207
    if-eqz v0, :cond_4

    .line 4208
    iget v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    if-ne v0, v6, :cond_1

    .line 4209
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->btn_favorite:Landroid/widget/ImageButton;

    const v1, 0x7f0201d8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 4234
    :cond_0
    :goto_0
    return-void

    .line 4211
    :cond_1
    iget v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    if-ne v0, v7, :cond_2

    .line 4212
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->btn_favorite:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 4214
    :cond_2
    iget v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    if-ne v0, v8, :cond_3

    .line 4215
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->btn_favorite:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 4216
    :cond_3
    iget v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 4217
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->btn_favorite:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 4221
    :cond_4
    iget v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    if-ne v0, v6, :cond_5

    .line 4222
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->btn_favorite:Landroid/widget/ImageButton;

    const v1, 0x7f0201d6

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 4223
    :cond_5
    iget v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    if-ne v0, v7, :cond_6

    .line 4224
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->btn_favorite:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 4226
    :cond_6
    iget v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    if-ne v0, v8, :cond_7

    .line 4227
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->btn_favorite:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 4228
    :cond_7
    iget v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 4229
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->btn_favorite:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method

.method protected isTabAPlayingSong()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 4427
    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->l()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 4428
    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->Z()Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4427
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadLyric(Lcom/fiio/music/entity/Song;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fiio/music/entity/Song;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 3182
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3285
    :cond_0
    :goto_0
    return-void

    .line 3188
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3189
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    .line 3190
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->stripExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3192
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".lrc"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3193
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3195
    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fiio/music/network/d/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3197
    if-eqz v3, :cond_0

    .line 3201
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".lrc"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3202
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3204
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3205
    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mLyricLoadHelper:Lcom/fiio/music/h/e;

    invoke-virtual {v1, v0}, Lcom/fiio/music/h/e;->a(Ljava/lang/String;)Z

    goto :goto_0

    .line 3207
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3208
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mLyricLoadHelper:Lcom/fiio/music/h/e;

    invoke-virtual {v0, v1}, Lcom/fiio/music/h/e;->a(Ljava/lang/String;)Z

    goto :goto_0

    .line 3212
    :cond_3
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mLyricAdapter:Lcom/fiio/music/adapter/LyricAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/LyricAdapter;->setLyric(Ljava/util/List;)V

    .line 3213
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mLyricAdapter:Lcom/fiio/music/adapter/LyricAdapter;

    invoke-virtual {v0}, Lcom/fiio/music/adapter/LyricAdapter;->notifyDataSetChanged()V

    .line 3222
    if-nez p2, :cond_4

    .line 3223
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/fiio/music/activity/SplashActivity;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fiio/music/network/d/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3224
    const-string v1, ".lrc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3223
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3229
    :goto_1
    sget-object v1, Lcom/fiio/music/activity/PlayerMainActivity;->TAG_D:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "default lyricFilePath ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3230
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3231
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3232
    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mLyricLoadHelper:Lcom/fiio/music/h/e;

    invoke-virtual {v1, v0}, Lcom/fiio/music/h/e;->a(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 3226
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/fiio/music/activity/SplashActivity;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/fiio/music/network/d/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3227
    const-string v1, ".lrc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3226
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 3238
    :cond_5
    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3239
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3241
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 3242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_track"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getTrack()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".lrc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3243
    sget-object v1, Lcom/fiio/music/activity/PlayerMainActivity;->TAG_D:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cueLrcFilePath = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3244
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3245
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3246
    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mLyricLoadHelper:Lcom/fiio/music/h/e;

    invoke-virtual {v1, v0}, Lcom/fiio/music/h/e;->a(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 3251
    :cond_6
    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->isSacd()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3252
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3254
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 3255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_sacd_track"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getTrack()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".lrc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3256
    sget-object v1, Lcom/fiio/music/activity/PlayerMainActivity;->TAG_D:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sacdLrcFilePath = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3257
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3258
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3259
    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mLyricLoadHelper:Lcom/fiio/music/h/e;

    invoke-virtual {v1, v0}, Lcom/fiio/music/h/e;->a(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 3264
    :cond_7
    invoke-virtual {p0}, Lcom/fiio/music/activity/PlayerMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "FiiOMusic"

    invoke-virtual {p0}, Lcom/fiio/music/activity/PlayerMainActivity;->getApplicationContext()Landroid/content/Context;

    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3266
    const-string v1, "autosearchlrc"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 3268
    sget-object v1, Lcom/fiio/music/activity/PlayerMainActivity;->TAG_D:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "loadLyric autoSearchLRc = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3270
    if-eqz v0, :cond_0

    .line 3271
    if-eqz p1, :cond_0

    .line 3272
    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/network/d/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3273
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/fiio/music/activity/SplashActivity;->b:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3274
    const-string v1, ".lrc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3273
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3275
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3276
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3277
    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mLyricLoadHelper:Lcom/fiio/music/h/e;

    invoke-virtual {v1, v0}, Lcom/fiio/music/h/e;->a(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 3279
    :cond_8
    invoke-direct {p0, p1}, Lcom/fiio/music/activity/PlayerMainActivity;->searchCloudMusic(Lcom/fiio/music/entity/Song;)V

    goto/16 :goto_0
.end method

.method public notifyDataAdapterInPupwindow(I)V
    .locals 3

    .prologue
    .line 3135
    const-string v0, "zxy - - - "

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "notifyDataAdapterInPupwindow :   "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fiio/music/activity/PlayerMainActivity;->rcsPopupWindow:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3136
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->rcsPopupWindow:Lcom/fiio/music/util/FiioPopupWindow;

    if-eqz v0, :cond_0

    .line 3137
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->rcsPopupWindow:Lcom/fiio/music/util/FiioPopupWindow;

    invoke-virtual {v0, p1}, Lcom/fiio/music/util/FiioPopupWindow;->a(I)V

    .line 3139
    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .prologue
    .line 4240
    invoke-super {p0, p1, p2, p3}, Lcom/fiio/music/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 4242
    packed-switch p2, :pswitch_data_0

    .line 4271
    :cond_0
    :goto_0
    return-void

    .line 4244
    :pswitch_0
    const-string v0, "lrcPath"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4246
    sget-object v1, Lcom/fiio/music/activity/PlayerMainActivity;->TAG_D:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onActivityResult lrcPath = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4247
    const-string v1, "songFilterName"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4248
    iget-object v2, p0, Lcom/fiio/music/activity/PlayerMainActivity;->playingSong2:Lcom/fiio/music/entity/Song;

    invoke-virtual {v2}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fiio/music/network/d/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4250
    sget-object v3, Lcom/fiio/music/activity/PlayerMainActivity;->TAG_D:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onActivityResult songFilterName = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : playingSongFilterName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4251
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4250
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4253
    if-eqz v0, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4254
    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mLyricLoadHelper:Lcom/fiio/music/h/e;

    invoke-virtual {v1, v0}, Lcom/fiio/music/h/e;->a(Ljava/lang/String;)Z

    .line 4257
    :cond_1
    const-string v0, "coverUrl"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4258
    sget-object v0, Lcom/fiio/music/activity/PlayerMainActivity;->TAG_D:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onActivityResult coverUrl = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4259
    const-string v0, "playingSong"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    .line 4260
    if-eqz v1, :cond_0

    .line 4262
    sget-object v2, Lcom/fiio/music/activity/PlayerMainActivity;->TAG_D:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cover exist ? "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/fiio/music/util/h;->a(Lcom/fiio/music/entity/Song;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4263
    invoke-static {v0}, Lcom/fiio/music/util/h;->a(Lcom/fiio/music/entity/Song;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4265
    invoke-static {}, Lcom/fiio/music/network/b/a;->a()Lcom/fiio/music/network/b/a;

    move-result-object v2

    invoke-virtual {v2, v1, v1, v0}, Lcom/fiio/music/network/b/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/fiio/music/entity/Song;)V

    goto/16 :goto_0

    .line 4242
    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v7, 0x3

    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 318
    invoke-super {p0, p1}, Lcom/fiio/music/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 319
    iput-boolean v5, p0, Lcom/fiio/music/activity/PlayerMainActivity;->isFinishing:Z

    .line 320
    invoke-virtual {p0}, Lcom/fiio/music/activity/PlayerMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 321
    const-string v0, "changeboolean"

    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->changeboolean:Z

    .line 324
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    .line 325
    invoke-virtual {p0}, Lcom/fiio/music/activity/PlayerMainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 328
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 330
    const/16 v2, 0x100

    .line 328
    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 340
    :cond_0
    invoke-virtual {p0}, Lcom/fiio/music/activity/PlayerMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/a;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    .line 342
    iget v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    if-ne v0, v3, :cond_6

    .line 343
    const v0, 0x7f0400b5

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/PlayerMainActivity;->setContentView(I)V

    .line 352
    :cond_1
    :goto_0
    iget v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    if-ne v0, v3, :cond_9

    .line 353
    new-array v0, v6, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/fiio/music/activity/PlayerMainActivity;->MODE_DRAWABLE_ID:[I

    .line 380
    :cond_2
    :goto_1
    iput-object p0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mContext:Landroid/content/Context;

    .line 381
    invoke-static {}, Lcom/fiio/music/a/c;->a()Lcom/fiio/music/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fiio/music/a/c;->a(Landroid/app/Activity;)V

    .line 382
    new-instance v0, Lcom/fiio/music/util/bh;

    invoke-direct {v0, p0}, Lcom/fiio/music/util/bh;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->manager:Lcom/fiio/music/util/bh;

    .line 383
    new-instance v0, Lcom/fiio/music/util/bz;

    iget-object v2, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/fiio/music/util/bz;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mPlayMainSavePageFlag:Lcom/fiio/music/util/bz;

    .line 384
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->h()Lcom/fiio/music/entity/Song;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 385
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->h()Lcom/fiio/music/entity/Song;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->playingSong2:Lcom/fiio/music/entity/Song;

    .line 389
    :goto_2
    const-string v0, "playerInfo"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 391
    invoke-direct {p0}, Lcom/fiio/music/activity/PlayerMainActivity;->initImageLoader()V

    .line 392
    invoke-direct {p0}, Lcom/fiio/music/activity/PlayerMainActivity;->initViewPage()V

    .line 393
    sget-object v1, Lcom/fiio/music/activity/PlayerMainActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    if-eqz v0, :cond_d

    .line 395
    aget-object v1, v0, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mPlayingSongPosition:I

    .line 396
    aget-object v1, v0, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mPlayingListSize:I

    .line 397
    aget-object v1, v0, v4

    iput-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mSongNameStr:Ljava/lang/String;

    .line 398
    aget-object v1, v0, v7

    iput-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mArtistNameStr:Ljava/lang/String;

    .line 399
    aget-object v1, v0, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->currentPosition:I

    .line 400
    const/4 v1, 0x5

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->currentDuration:I

    .line 401
    const/4 v1, 0x6

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->player_mode:I

    .line 406
    :goto_3
    new-instance v0, Lcom/fiio/music/b/k;

    invoke-direct {v0, p0}, Lcom/fiio/music/b/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->songDao:Lcom/fiio/music/b/k;

    .line 407
    invoke-virtual {p0}, Lcom/fiio/music/activity/PlayerMainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->view:Landroid/view/View;

    .line 408
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 409
    invoke-virtual {p0}, Lcom/fiio/music/activity/PlayerMainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 410
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mScreenHeight:I

    .line 411
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mScreenWidth:I

    .line 412
    new-instance v0, Lcom/fiio/music/widget/VolumeDialog;

    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/fiio/music/widget/VolumeDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->volumedialog:Lcom/fiio/music/widget/VolumeDialog;

    .line 413
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->volumedialog:Lcom/fiio/music/widget/VolumeDialog;

    iget-boolean v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->isFinishing:Z

    invoke-virtual {v0, v1}, Lcom/fiio/music/widget/VolumeDialog;->setActivityIsFinish(Z)V

    .line 414
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->params:Landroid/view/WindowManager$LayoutParams;

    .line 416
    const v0, 0x7f0b025c

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/PlayerMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 415
    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->btn_favorite:Landroid/widget/ImageButton;

    .line 418
    const v0, 0x7f0b024a

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/PlayerMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->ibtn_player_list:Landroid/widget/ImageButton;

    .line 420
    const v0, 0x7f0b0261

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/PlayerMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 419
    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->ibtn_player_control_menu:Landroid/widget/ImageButton;

    .line 422
    const v0, 0x7f0b025e

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/PlayerMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 421
    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->ibtn_player_control_mode:Landroid/widget/ImageButton;

    .line 424
    const v0, 0x7f0b025f

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/PlayerMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 423
    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->ibtn_player_control_pre:Landroid/widget/ImageButton;

    .line 426
    const v0, 0x7f0b0256

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/PlayerMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 425
    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->ibtn_player_control_play:Landroid/widget/ImageButton;

    .line 428
    const v0, 0x7f0b0260

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/PlayerMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 427
    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->ibtn_player_control_next:Landroid/widget/ImageButton;

    .line 429
    const v0, 0x7f0b025a

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/PlayerMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->ibtn_playview_eq:Landroid/widget/ImageButton;

    .line 430
    const v0, 0x7f0b025d

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/PlayerMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mPlayViewWindowMenu:Landroid/widget/ImageButton;

    .line 431
    const v0, 0x7f0b0240

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/PlayerMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->ibtn_player_view_search:Landroid/widget/ImageButton;

    .line 432
    const v0, 0x7f0b0242

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/PlayerMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->player_view_lrc_setting:Landroid/widget/ImageButton;

    .line 433
    const v0, 0x7f0b0244

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/PlayerMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->lrc_setting:Landroid/widget/ImageButton;

    .line 434
    const v0, 0x7f0b0243

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/PlayerMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->lrc_setting_layout:Landroid/widget/RelativeLayout;

    .line 436
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->lrc_setting_layout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0b0246

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 437
    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->lrc_setting_layout:Landroid/widget/RelativeLayout;

    const v2, 0x7f0b0245

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 438
    iget-object v2, p0, Lcom/fiio/music/activity/PlayerMainActivity;->lrc_setting_layout:Landroid/widget/RelativeLayout;

    const v3, 0x7f0b0247

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 439
    iget-object v3, p0, Lcom/fiio/music/activity/PlayerMainActivity;->lrc_setting_layout:Landroid/widget/RelativeLayout;

    const v4, 0x7f0b0248

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    .line 440
    iget-object v4, p0, Lcom/fiio/music/activity/PlayerMainActivity;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 441
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 442
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 443
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 444
    const v0, 0x7f0b025b

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/PlayerMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->playview_bluetooth:Landroid/widget/ImageButton;

    .line 445
    const v0, 0x7f0b0249

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/PlayerMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/widget/CurrentListPopupWindow;

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mCurrentListPopupWindow:Lcom/fiio/music/widget/CurrentListPopupWindow;

    .line 446
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mCurrentListPopupWindow:Lcom/fiio/music/widget/CurrentListPopupWindow;

    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->leftTouch:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/fiio/music/widget/CurrentListPopupWindow;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 449
    const v0, 0x7f0b023c

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/PlayerMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->ralativelayout_player_main:Landroid/widget/RelativeLayout;

    .line 450
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->ralativelayout_player_main:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 451
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->playview_bluetooth:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 452
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->ibtn_player_list:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 453
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->ibtn_player_control_menu:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 454
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->ibtn_player_control_mode:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 455
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->ibtn_player_control_pre:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 456
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->ibtn_player_control_play:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 457
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->ibtn_player_control_next:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 458
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->ibtn_playview_eq:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 459
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->ibtn_player_view_search:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 460
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->btn_favorite:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 461
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mPlayViewWindowMenu:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 462
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->player_view_lrc_setting:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 463
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->lrc_setting:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 465
    const v0, 0x7f0b0258

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/PlayerMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 464
    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->tv_player_playing_time:Landroid/widget/TextView;

    .line 466
    const v0, 0x7f0b0259

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/PlayerMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->tv_all_playing_time:Landroid/widget/TextView;

    .line 467
    const v0, 0x7f0b024f

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/PlayerMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->play_list_count:Landroid/widget/TextView;

    .line 468
    const v0, 0x7f0b024e

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/PlayerMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->play_list_position:Landroid/widget/TextView;

    .line 471
    const v0, 0x7f0b0251

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/PlayerMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    .line 470
    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->tv_player_song_info:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    .line 473
    const v0, 0x7f0b0252

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/PlayerMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 472
    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->tv_player_artist:Landroid/widget/TextView;

    .line 475
    const v0, 0x7f0b024c

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/PlayerMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->sb_player_playprogress:Landroid/widget/SeekBar;

    .line 477
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->sb_player_playprogress:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->seekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 478
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->sb_player_playprogress:Landroid/widget/SeekBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 479
    iget v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    if-ne v0, v7, :cond_3

    .line 480
    const v0, 0x7f0b0264

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/PlayerMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 481
    new-instance v1, Lcom/fiio/music/activity/eu;

    invoke-direct {v1, p0}, Lcom/fiio/music/activity/eu;-><init>(Lcom/fiio/music/activity/PlayerMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 506
    :cond_3
    const v0, 0x7f0b023d

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/PlayerMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->player_main_album:Landroid/view/ViewGroup;

    .line 507
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->player_main_album:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 508
    const v0, 0x7f0b0238

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/PlayerMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->playview_bg:Landroid/widget/ImageView;

    .line 509
    iget v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    if-eq v0, v7, :cond_4

    .line 510
    iget v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    if-ne v0, v6, :cond_5

    .line 511
    :cond_4
    const v0, 0x7f0b0263

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/PlayerMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->iv_bottom_bitmap:Landroid/widget/ImageView;

    .line 514
    :cond_5
    const v0, 0x7f0b023e

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/PlayerMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->player_main_info:Landroid/view/ViewGroup;

    .line 515
    const v0, 0x7f0b023f

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/PlayerMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->uv_table_view:Landroid/view/ViewGroup;

    .line 517
    invoke-direct {p0}, Lcom/fiio/music/activity/PlayerMainActivity;->bindSongInfoViews()V

    .line 519
    const v0, 0x7f0b0029

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/PlayerMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->player_main_lyric:Landroid/view/ViewGroup;

    .line 520
    const v0, 0x7f0b0234

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/PlayerMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mLrcListView:Landroid/widget/ListView;

    .line 521
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->player_main_lyric:Landroid/view/ViewGroup;

    const v1, 0x7f0b0233

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mLrcEmptyView:Landroid/widget/TextView;

    .line 522
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mLrcEmptyView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 529
    new-instance v0, Lcom/fiio/music/adapter/LyricAdapter;

    invoke-direct {p0}, Lcom/fiio/music/activity/PlayerMainActivity;->loadLyricFontSize()Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;

    move-result-object v1

    iget v2, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    invoke-direct {v0, p0, v1, v2, v5}, Lcom/fiio/music/adapter/LyricAdapter;-><init>(Landroid/content/Context;Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;IZ)V

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mLyricAdapter:Lcom/fiio/music/adapter/LyricAdapter;

    .line 530
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mLrcListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mLyricAdapter:Lcom/fiio/music/adapter/LyricAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 531
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mLrcListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mLrcEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 532
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mLrcListView:Landroid/widget/ListView;

    .line 533
    const/high16 v1, 0x10a0000

    .line 532
    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 535
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mLrcListView:Landroid/widget/ListView;

    new-instance v1, Lcom/fiio/music/activity/ev;

    invoke-direct {v1, p0}, Lcom/fiio/music/activity/ev;-><init>(Lcom/fiio/music/activity/PlayerMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 547
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mLrcListView:Landroid/widget/ListView;

    new-instance v1, Lcom/fiio/music/activity/ew;

    invoke-direct {v1, p0}, Lcom/fiio/music/activity/ew;-><init>(Lcom/fiio/music/activity/PlayerMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 615
    new-instance v0, Lcom/fiio/music/h/d;

    invoke-direct {v0}, Lcom/fiio/music/h/d;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mLyricDownloadManager:Lcom/fiio/music/h/d;

    .line 616
    new-instance v0, Lcom/fiio/music/h/e;

    invoke-direct {v0}, Lcom/fiio/music/h/e;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mLyricLoadHelper:Lcom/fiio/music/h/e;

    .line 617
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mLyricLoadHelper:Lcom/fiio/music/h/e;

    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mLyricListener:Lcom/fiio/music/h/g;

    invoke-virtual {v0, v1}, Lcom/fiio/music/h/e;->a(Lcom/fiio/music/h/g;)V

    .line 618
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mLrcEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 622
    const-string v0, "FiiOMusic"

    invoke-virtual {p0}, Lcom/fiio/music/activity/PlayerMainActivity;->getApplicationContext()Landroid/content/Context;

    invoke-virtual {p0, v0, v5}, Lcom/fiio/music/activity/PlayerMainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 623
    const-string v1, "autosearchlrc"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 625
    if-nez v0, :cond_e

    .line 626
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mLrcEmptyView:Landroid/widget/TextView;

    const v1, 0x7f0c01df

    invoke-virtual {p0, v1}, Lcom/fiio/music/activity/PlayerMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 631
    :goto_4
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->sb_player_playprogress:Landroid/widget/SeekBar;

    invoke-virtual {v0, v5}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 635
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/PlayerMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->audioManager:Landroid/media/AudioManager;

    .line 637
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 639
    new-instance v0, Lcom/fiio/music/service/h;

    invoke-direct {v0, p0}, Lcom/fiio/music/service/h;-><init>(Landroid/content/ContextWrapper;)V

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    .line 642
    const v0, 0x7f0b0235

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/PlayerMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->lyricProgressIndicator:Landroid/widget/RelativeLayout;

    .line 643
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->lyricProgressIndicator:Landroid/widget/RelativeLayout;

    const v1, 0x7f0b0237

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->right:Landroid/widget/TextView;

    .line 644
    const v0, 0x7f0b024b

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/PlayerMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->left:Landroid/widget/ImageButton;

    .line 646
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->left:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 649
    const-string v0, "memory"

    invoke-virtual {p0, v0, v5}, Lcom/fiio/music/activity/PlayerMainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->memoryPlaySharedPreferences:Landroid/content/SharedPreferences;

    .line 650
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->memoryPlaySharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "SWITCH"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->memoryPlaySwitch:Ljava/lang/Boolean;

    .line 651
    const v0, 0x7f0b038e

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/PlayerMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/widget/PointerTable2;

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->pointerTable:Lcom/fiio/music/widget/PointerTable2;

    .line 652
    const v0, 0x7f0b038f

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/PlayerMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->img_uvline:Landroid/widget/ImageView;

    .line 653
    const v0, 0x7f0b0390

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/PlayerMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->img_uv_white_line:Landroid/widget/ImageView;

    .line 654
    invoke-direct {p0}, Lcom/fiio/music/activity/PlayerMainActivity;->uvStartAnimation()V

    .line 655
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mConnectionListener:Lcom/fiio/music/service/l;

    invoke-virtual {v0, v1}, Lcom/fiio/music/service/h;->a(Lcom/fiio/music/service/l;)V

    .line 656
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->c()V

    .line 658
    new-instance v0, Lcom/fiio/music/activity/fy;

    invoke-direct {v0, p0, v5}, Lcom/fiio/music/activity/fy;-><init>(Lcom/fiio/music/activity/PlayerMainActivity;B)V

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerBroadcastReceiver:Lcom/fiio/music/activity/fy;

    .line 659
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerBroadcastReceiver:Lcom/fiio/music/activity/fy;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.fiio.music.player.brocast"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/fiio/music/activity/PlayerMainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 665
    invoke-static {}, Lcom/fiio/music/e/a/b;->a()Lcom/fiio/music/e/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->longPressCallBack:Lcom/fiio/music/e/a/a;

    invoke-virtual {v0, v1}, Lcom/fiio/music/e/a/b;->a(Lcom/fiio/music/e/a/a;)V

    .line 666
    return-void

    .line 344
    :cond_6
    iget v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    if-ne v0, v4, :cond_7

    .line 345
    const v0, 0x7f0400b6

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/PlayerMainActivity;->setContentView(I)V

    goto/16 :goto_0

    .line 346
    :cond_7
    iget v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    if-ne v0, v7, :cond_8

    .line 347
    const v0, 0x7f0400b7

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/PlayerMainActivity;->setContentView(I)V

    goto/16 :goto_0

    .line 348
    :cond_8
    iget v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    if-ne v0, v6, :cond_1

    .line 349
    const v0, 0x7f0400b9

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/PlayerMainActivity;->setContentView(I)V

    goto/16 :goto_0

    .line 360
    :cond_9
    iget v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    if-ne v0, v4, :cond_a

    .line 361
    new-array v0, v6, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/fiio/music/activity/PlayerMainActivity;->MODE_DRAWABLE_ID:[I

    goto/16 :goto_1

    .line 368
    :cond_a
    iget v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    if-eq v0, v7, :cond_b

    .line 369
    iget v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    if-ne v0, v6, :cond_2

    .line 370
    :cond_b
    new-array v0, v6, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/fiio/music/activity/PlayerMainActivity;->MODE_DRAWABLE_ID:[I

    goto/16 :goto_1

    .line 387
    :cond_c
    const-string v0, "playingSong"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->playingSong2:Lcom/fiio/music/entity/Song;

    goto/16 :goto_2

    .line 403
    :cond_d
    const-string v0, "CrPlayList"

    const-string v1, "playerInfo is null"

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 628
    :cond_e
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mLrcEmptyView:Landroid/widget/TextView;

    const v1, 0x7f0c01d7

    invoke-virtual {p0, v1}, Lcom/fiio/music/activity/PlayerMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 353
    nop

    :array_0
    .array-data 4
        0x7f0204bf
        0x7f0205b2
        0x7f0205ba
        0x7f0205b7
    .end array-data

    .line 361
    :array_1
    .array-data 4
        0x7f0204c0
        0x7f0205b3
        0x7f0205bb
        0x7f0205b8
    .end array-data

    .line 370
    :array_2
    .array-data 4
        0x7f0204c1
        0x7f0205b4
        0x7f0205bc
        0x7f0205b9
    .end array-data
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1402
    invoke-static {}, Lcom/fiio/music/e/a/b;->a()Lcom/fiio/music/e/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->longPressCallBack:Lcom/fiio/music/e/a/a;

    invoke-virtual {v0, v1}, Lcom/fiio/music/e/a/b;->b(Lcom/fiio/music/e/a/a;)V

    .line 1403
    iput-object v2, p0, Lcom/fiio/music/activity/PlayerMainActivity;->longPressCallBack:Lcom/fiio/music/e/a/a;

    .line 1405
    const-string v0, "media.audio.OpenUv"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1406
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->g()V

    .line 1408
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mMusicServiceBinder:Lcom/fiio/music/service/z;

    if-eqz v0, :cond_0

    .line 1409
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mMusicServiceBinder:Lcom/fiio/music/service/z;

    .line 1410
    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mOnPlaybackStateChangeListener:Lcom/fiio/music/g/a;

    invoke-virtual {v0, v1}, Lcom/fiio/music/service/z;->b(Lcom/fiio/music/g/a;)V

    .line 1411
    iput-object v2, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mMusicServiceBinder:Lcom/fiio/music/service/z;

    .line 1413
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerBroadcastReceiver:Lcom/fiio/music/activity/fy;

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/PlayerMainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1414
    invoke-static {}, Lcom/fiio/music/a/c;->a()Lcom/fiio/music/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fiio/music/a/c;->b(Landroid/app/Activity;)V

    .line 1419
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/PlayerMainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1421
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->isFinishing:Z

    .line 1422
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->volumedialog:Lcom/fiio/music/widget/VolumeDialog;

    iget-boolean v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->isFinishing:Z

    invoke-virtual {v0, v1}, Lcom/fiio/music/widget/VolumeDialog;->setActivityIsFinish(Z)V

    .line 1425
    invoke-super {p0}, Lcom/fiio/music/activity/BaseActivity;->onDestroy()V

    .line 1426
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3114
    const/16 v1, 0x19

    if-ne p1, v1, :cond_0

    .line 3115
    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->volumedialog:Lcom/fiio/music/widget/VolumeDialog;

    invoke-virtual {v1}, Lcom/fiio/music/widget/VolumeDialog;->a()V

    .line 3116
    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->volumedialog:Lcom/fiio/music/widget/VolumeDialog;

    invoke-virtual {v1}, Lcom/fiio/music/widget/VolumeDialog;->e()V

    .line 3117
    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->volumedialog:Lcom/fiio/music/widget/VolumeDialog;

    invoke-virtual {v1}, Lcom/fiio/music/widget/VolumeDialog;->g()V

    .line 3118
    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->volumedialog:Lcom/fiio/music/widget/VolumeDialog;

    invoke-virtual {v1}, Lcom/fiio/music/widget/VolumeDialog;->c()V

    .line 3127
    :goto_0
    return v0

    .line 3120
    :cond_0
    const/16 v1, 0x18

    if-ne p1, v1, :cond_1

    .line 3121
    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->volumedialog:Lcom/fiio/music/widget/VolumeDialog;

    invoke-virtual {v1}, Lcom/fiio/music/widget/VolumeDialog;->a()V

    .line 3122
    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->volumedialog:Lcom/fiio/music/widget/VolumeDialog;

    invoke-virtual {v1}, Lcom/fiio/music/widget/VolumeDialog;->f()V

    .line 3123
    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->volumedialog:Lcom/fiio/music/widget/VolumeDialog;

    invoke-virtual {v1}, Lcom/fiio/music/widget/VolumeDialog;->g()V

    .line 3124
    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->volumedialog:Lcom/fiio/music/widget/VolumeDialog;

    invoke-virtual {v1}, Lcom/fiio/music/widget/VolumeDialog;->c()V

    goto :goto_0

    .line 3127
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/fiio/music/activity/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 3481
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .prologue
    .line 3486
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 3491
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    if-eqz v0, :cond_0

    .line 3492
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->v()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 3493
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3494
    iput-boolean v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->wasCurrAlbumUpdated:Z

    .line 3495
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mImageViews:[Landroid/widget/ImageView;

    array-length v0, v0

    rem-int v0, p1, v0

    invoke-direct {p0, v0}, Lcom/fiio/music/activity/PlayerMainActivity;->setImageBackground(I)V

    .line 3506
    :cond_0
    :goto_0
    return-void

    .line 3496
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->l()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 3497
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->Z()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3498
    iput-boolean v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->wasCurrAlbumUpdated:Z

    .line 3499
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mImageViews:[Landroid/widget/ImageView;

    array-length v0, v0

    rem-int v0, p1, v0

    invoke-direct {p0, v0}, Lcom/fiio/music/activity/PlayerMainActivity;->setImageBackground(I)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 717
    iget-boolean v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->isDsdPlaying:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mPageNum:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 718
    invoke-static {}, Lcom/fiio/music/util/l;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 719
    const-string v0, "media.audio.OpenUv"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    :cond_0
    invoke-super {p0}, Lcom/fiio/music/activity/BaseActivity;->onPause()V

    .line 722
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 725
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->ibtn_player_control_mode:Landroid/widget/ImageButton;

    sget-object v1, Lcom/fiio/music/activity/PlayerMainActivity;->MODE_DRAWABLE_ID:[I

    iget v2, p0, Lcom/fiio/music/activity/PlayerMainActivity;->player_mode:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 726
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mPlayMainSavePageFlag:Lcom/fiio/music/util/bz;

    const-string v1, "playMainPageFlag"

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/bz;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mPageNum:I

    .line 727
    iget v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mPageNum:I

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/PlayerMainActivity;->swipPlayerMainView(I)V

    .line 732
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 733
    const-string v1, "com.fiio.music.dlna.networkunreachable"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 734
    const-string v1, "com.fiio.music.playmainactivity.downloadcoversuccess"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 735
    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/fiio/music/activity/PlayerMainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 736
    invoke-super {p0}, Lcom/fiio/music/activity/BaseActivity;->onResume()V

    .line 737
    return-void
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 740
    invoke-super {p0}, Lcom/fiio/music/activity/BaseActivity;->onStart()V

    .line 741
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->w()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->w()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->w()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_5

    .line 742
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->playingSong2:Lcom/fiio/music/entity/Song;

    if-eqz v0, :cond_4

    .line 743
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->playingSong2:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->playingSong2:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getArtist()Lcom/fiio/music/entity/Artist;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->playingSong2:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getArtist()Lcom/fiio/music/entity/Artist;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/entity/Artist;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/fiio/music/activity/PlayerMainActivity;->setSongInfoOnProgressBar(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    :goto_1
    invoke-virtual {p0}, Lcom/fiio/music/activity/PlayerMainActivity;->isTabAPlayingSong()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 751
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->Y()I

    move-result v0

    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->X()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/fiio/music/activity/PlayerMainActivity;->setSongPositionInfoOnProgressBar(II)V

    .line 758
    :goto_2
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->tv_player_playing_time:Landroid/widget/TextView;

    iget v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->currentPosition:I

    invoke-static {v1}, Lcom/fiio/music/util/h;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 761
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mLyricLoadHelper:Lcom/fiio/music/h/e;

    iget v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->currentPosition:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/fiio/music/h/e;->a(J)V

    .line 762
    iget v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->currentDuration:I

    if-lez v0, :cond_1

    .line 763
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->sb_player_playprogress:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->currentDuration:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 765
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->sb_player_playprogress:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->currentPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 767
    iget v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->player_mode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 768
    const/4 v0, 0x0

    iput v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->player_mode:I

    .line 770
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->ibtn_player_control_mode:Landroid/widget/ImageButton;

    sget-object v1, Lcom/fiio/music/activity/PlayerMainActivity;->MODE_DRAWABLE_ID:[I

    iget v2, p0, Lcom/fiio/music/activity/PlayerMainActivity;->player_mode:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 771
    const/4 v0, 0x1

    sput-boolean v0, Lcom/fiio/music/activity/PlayerMainActivity;->isActive:Z

    .line 772
    return-void

    .line 743
    :cond_3
    const v0, 0x7f0c00d4

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/PlayerMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 745
    :cond_4
    const-string v0, ""

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/fiio/music/activity/PlayerMainActivity;->setSongInfoOnProgressBar(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 747
    :cond_5
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mSongNameStr:Ljava/lang/String;

    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mArtistNameStr:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/fiio/music/activity/PlayerMainActivity;->setSongInfoOnProgressBar(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 755
    :cond_6
    iget v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mPlayingSongPosition:I

    iget v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mPlayingListSize:I

    invoke-direct {p0, v0, v1}, Lcom/fiio/music/activity/PlayerMainActivity;->setSongPositionInfoOnProgressBar(II)V

    goto :goto_2
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 1429
    invoke-super {p0}, Lcom/fiio/music/activity/BaseActivity;->onStop()V

    .line 1430
    const/4 v0, 0x0

    sput-boolean v0, Lcom/fiio/music/activity/PlayerMainActivity;->isActive:Z

    .line 1431
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    .prologue
    .line 4186
    invoke-super {p0, p1}, Lcom/fiio/music/activity/BaseActivity;->onWindowFocusChanged(Z)V

    .line 4188
    const-string v0, "zxy - - -   "

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " hasFocus  :   "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4189
    if-eqz p1, :cond_0

    .line 4190
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->playingSong2:Lcom/fiio/music/entity/Song;

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/PlayerMainActivity;->isMyLoveSong(Lcom/fiio/music/entity/Song;)V

    .line 4193
    :cond_0
    return-void
.end method

.method public playOrPause()V
    .locals 7

    .prologue
    const v6, 0x7f02059d

    const/4 v5, 0x1

    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    .line 2436
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->m()I

    move-result v0

    if-nez v0, :cond_1

    .line 2437
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->toastMsg:Landroid/widget/Toast;

    const v1, 0x7f0c00f4

    invoke-virtual {p0, v1}, Lcom/fiio/music/activity/PlayerMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->toastMsg:Landroid/widget/Toast;

    .line 2509
    :cond_0
    :goto_0
    return-void

    .line 2441
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->m()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 2442
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->toastMsg:Landroid/widget/Toast;

    const v1, 0x7f0c00f5

    invoke-virtual {p0, v1}, Lcom/fiio/music/activity/PlayerMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->toastMsg:Landroid/widget/Toast;

    goto :goto_0

    .line 2446
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->m()I

    move-result v0

    if-ne v0, v2, :cond_8

    .line 2447
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->newProgressesAddedWhenPause:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 2448
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->newProgressesAddedWhenPause:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->newProgressesAddedWhenPause:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2449
    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-nez v0, :cond_5

    .line 2450
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->u()V

    .line 2451
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->newProgressesAddedWhenPause:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2477
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->m()I

    move-result v0

    .line 2478
    if-eq v0, v3, :cond_4

    if-ne v0, v4, :cond_f

    .line 2479
    :cond_4
    iget v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    if-ne v0, v5, :cond_c

    .line 2480
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->ibtn_player_control_play:Landroid/widget/ImageButton;

    const v1, 0x7f02059b

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 2452
    :cond_5
    if-eqz v0, :cond_7

    .line 2453
    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->O()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->Q()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2454
    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->newProgressesAddedWhenPause:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2455
    invoke-direct {p0, v0}, Lcom/fiio/music/activity/PlayerMainActivity;->blockedSeekTo(I)V

    .line 2456
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0, v3}, Lcom/fiio/music/service/h;->b(I)V

    goto :goto_1

    .line 2458
    :cond_6
    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->t()V

    .line 2459
    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->newProgressesAddedWhenPause:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2460
    invoke-direct {p0, v0}, Lcom/fiio/music/activity/PlayerMainActivity;->blockedSeekTo(I)V

    goto :goto_1

    .line 2463
    :cond_7
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->toast:Landroid/widget/Toast;

    const v1, 0x7f0c00f6

    invoke-virtual {p0, v1}, Lcom/fiio/music/activity/PlayerMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->toast:Landroid/widget/Toast;

    goto :goto_1

    .line 2465
    :cond_8
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->memoryPlaySwitch:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->G()Z

    move-result v0

    if-nez v0, :cond_a

    .line 2466
    :cond_9
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->l()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->G()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2467
    :cond_a
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->H()Z

    move-result v0

    .line 2468
    if-nez v0, :cond_3

    .line 2469
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->toast:Landroid/widget/Toast;

    const v1, 0x7f0c00f4

    invoke-virtual {p0, v1}, Lcom/fiio/music/activity/PlayerMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->toast:Landroid/widget/Toast;

    goto/16 :goto_1

    .line 2472
    :cond_b
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->t()V

    goto/16 :goto_1

    .line 2482
    :cond_c
    iget v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    if-ne v0, v2, :cond_d

    .line 2483
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->ibtn_player_control_play:Landroid/widget/ImageButton;

    const v1, 0x7f02059c

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 2485
    :cond_d
    iget v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    if-ne v0, v3, :cond_e

    .line 2486
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->ibtn_player_control_play:Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 2488
    :cond_e
    iget v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    if-ne v0, v4, :cond_0

    .line 2489
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->ibtn_player_control_play:Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 2493
    :cond_f
    if-ne v0, v2, :cond_0

    .line 2494
    invoke-direct {p0}, Lcom/fiio/music/activity/PlayerMainActivity;->uvStartAnimation()V

    .line 2495
    iget v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    if-ne v0, v5, :cond_10

    .line 2496
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->ibtn_player_control_play:Landroid/widget/ImageButton;

    const v1, 0x7f02059e

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 2498
    :cond_10
    iget v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    if-ne v0, v2, :cond_11

    .line 2499
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->ibtn_player_control_play:Landroid/widget/ImageButton;

    const v1, 0x7f02059f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 2501
    :cond_11
    iget v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    if-ne v0, v3, :cond_12

    .line 2502
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->ibtn_player_control_play:Landroid/widget/ImageButton;

    const v1, 0x7f0205a0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 2504
    :cond_12
    iget v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    if-ne v0, v4, :cond_0

    .line 2505
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->ibtn_player_control_play:Landroid/widget/ImageButton;

    const v1, 0x7f0205a0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_0
.end method

.method public playerMusicByCurCursorList(I)Z
    .locals 8

    .prologue
    const v7, 0x7f02059d

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v0, 0x1

    .line 2715
    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->Z()Landroid/database/Cursor;

    move-result-object v1

    .line 2716
    invoke-static {v1, p1}, Lcom/fiio/music/util/h;->a(Landroid/database/Cursor;I)Lcom/fiio/music/entity/Song;

    move-result-object v2

    .line 2718
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2720
    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2721
    iget-object v2, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {p0}, Lcom/fiio/music/activity/PlayerMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v0}, Lcom/fiio/music/service/h;->a(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 2725
    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->m()I

    move-result v1

    .line 2726
    if-eq v1, v5, :cond_0

    if-ne v1, v6, :cond_6

    .line 2727
    :cond_0
    iget v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    if-ne v1, v0, :cond_3

    .line 2728
    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->ibtn_player_control_play:Landroid/widget/ImageButton;

    const v2, 0x7f02059b

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 2755
    :cond_1
    :goto_0
    return v0

    .line 2723
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 2730
    :cond_3
    iget v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    if-ne v1, v4, :cond_4

    .line 2731
    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->ibtn_player_control_play:Landroid/widget/ImageButton;

    const v2, 0x7f02059c

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 2733
    :cond_4
    iget v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    if-ne v1, v5, :cond_5

    .line 2734
    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->ibtn_player_control_play:Landroid/widget/ImageButton;

    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 2736
    :cond_5
    iget v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    if-ne v1, v6, :cond_1

    .line 2737
    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->ibtn_player_control_play:Landroid/widget/ImageButton;

    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 2741
    :cond_6
    if-ne v1, v4, :cond_1

    .line 2742
    iget v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    if-ne v1, v0, :cond_7

    .line 2743
    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->ibtn_player_control_play:Landroid/widget/ImageButton;

    const v2, 0x7f02059e

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 2745
    :cond_7
    iget v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    if-ne v1, v4, :cond_8

    .line 2746
    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->ibtn_player_control_play:Landroid/widget/ImageButton;

    const v2, 0x7f02059f

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 2748
    :cond_8
    iget v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    if-ne v1, v5, :cond_9

    .line 2749
    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->ibtn_player_control_play:Landroid/widget/ImageButton;

    const v2, 0x7f0205a0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 2750
    :cond_9
    iget v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    if-ne v1, v6, :cond_1

    .line 2751
    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->ibtn_player_control_play:Landroid/widget/ImageButton;

    const v2, 0x7f0205a0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public playerMusicByCurListItem(Ljava/util/List;I)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x6

    const/4 v10, 0x5

    const/4 v12, 0x4

    const/4 v2, 0x0

    .line 2766
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    .line 2767
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fiio/music/entity/Song;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    .line 2768
    invoke-static {v1}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v2

    .line 2919
    :goto_0
    return v0

    .line 2771
    :cond_0
    iget-object v3, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v3}, Lcom/fiio/music/service/h;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v4}, Lcom/fiio/music/service/h;->h()Lcom/fiio/music/entity/Song;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2772
    iget-object v3, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v3}, Lcom/fiio/music/service/h;->l()I

    move-result v3

    if-eq v3, v12, :cond_4

    .line 2773
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->t()V

    .line 2891
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->m()I

    move-result v0

    .line 2892
    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    if-ne v0, v12, :cond_22

    .line 2893
    :cond_2
    iget v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    .line 2894
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->ibtn_player_control_play:Landroid/widget/ImageButton;

    const v1, 0x7f02059b

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 2919
    :cond_3
    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    .line 2775
    :cond_4
    iget-object v3, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v3}, Lcom/fiio/music/service/h;->l()I

    move-result v3

    if-ne v3, v12, :cond_a

    .line 2776
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2778
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getTrack()I

    move-result v3

    .line 2779
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

    .line 2781
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 2782
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/fiio/music/util/n;->a(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2784
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2792
    :cond_5
    if-gez v3, :cond_7

    move v0, v2

    goto/16 :goto_0

    .line 2786
    :cond_6
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

    .line 2787
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    move v0, v2

    .line 2788
    goto/16 :goto_0

    .line 2793
    :cond_7
    new-instance v2, Lcom/fiio/music/util/j;

    iget-object v4, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mContext:Landroid/content/Context;

    invoke-direct {v2, v1, v0, v3, v4}, Lcom/fiio/music/util/j;-><init>(Ljava/io/File;Lcom/fiio/music/entity/Song;ILandroid/content/Context;)V

    .line 2794
    invoke-virtual {v2}, Lcom/fiio/music/util/j;->b()Lcom/fiio/music/entity/Song;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2795
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v2}, Lcom/fiio/music/util/j;->b()Lcom/fiio/music/entity/Song;

    move-result-object v1

    invoke-virtual {v2}, Lcom/fiio/music/util/j;->e()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1, v12}, Lcom/fiio/music/service/h;->a(Lcom/fiio/music/entity/Song;[Ljava/lang/String;Ljava/util/List;I)V

    goto/16 :goto_1

    .line 2798
    :cond_8
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isSacd()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2799
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->R()Lorg/justcodecs/dsd/SacdDataFormat;

    move-result-object v0

    .line 2800
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v2, v1, v12}, Lorg/justcodecs/dsd/SacdDataFormat;->playSacdFile(Ljava/io/File;II)V

    goto/16 :goto_1

    .line 2802
    :cond_9
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    iget-object v2, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v2}, Lcom/fiio/music/service/h;->l()I

    move-result v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v4}, Lcom/fiio/music/service/h;->w()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fiio/music/service/h;->a(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)V

    goto/16 :goto_1

    .line 2804
    :cond_a
    iget-object v3, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v3}, Lcom/fiio/music/service/h;->l()I

    move-result v3

    if-ne v3, v7, :cond_12

    .line 2805
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2806
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getTrack()I

    move-result v3

    .line 2807
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

    .line 2809
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 2810
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/fiio/music/util/n;->a(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2812
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2820
    :cond_b
    if-gez v3, :cond_d

    move v0, v2

    goto/16 :goto_0

    .line 2814
    :cond_c
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

    .line 2815
    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    move v0, v2

    .line 2816
    goto/16 :goto_0

    .line 2821
    :cond_d
    new-instance v2, Lcom/fiio/music/util/j;

    iget-object v4, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mContext:Landroid/content/Context;

    invoke-direct {v2, v1, v0, v3, v4}, Lcom/fiio/music/util/j;-><init>(Ljava/io/File;Lcom/fiio/music/entity/Song;ILandroid/content/Context;)V

    .line 2822
    invoke-virtual {v2}, Lcom/fiio/music/util/j;->b()Lcom/fiio/music/entity/Song;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2823
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v2}, Lcom/fiio/music/util/j;->b()Lcom/fiio/music/entity/Song;

    move-result-object v1

    invoke-virtual {v2}, Lcom/fiio/music/util/j;->e()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1, v7}, Lcom/fiio/music/service/h;->a(Lcom/fiio/music/entity/Song;[Ljava/lang/String;Ljava/util/List;I)V

    goto/16 :goto_1

    .line 2825
    :cond_e
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isSacd()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 2827
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getTrack()I

    move-result v1

    .line 2828
    new-instance v3, Ljava/io/File;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2829
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f

    move v0, v2

    goto/16 :goto_0

    .line 2830
    :cond_f
    if-gez v1, :cond_10

    move v0, v2

    goto/16 :goto_0

    .line 2831
    :cond_10
    new-instance v8, Lorg/justcodecs/dsd/SacdDataFormat;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    iget-object v3, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mContext:Landroid/content/Context;

    invoke-direct {v8, v0, v2, v3}, Lorg/justcodecs/dsd/SacdDataFormat;-><init>(Ljava/lang/String;Lcom/fiio/music/service/h;Landroid/content/Context;)V

    .line 2832
    invoke-virtual {v8}, Lorg/justcodecs/dsd/SacdDataFormat;->getSacdList()Ljava/util/List;

    move-result-object v0

    add-int/lit8 v2, v1, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lorg/justcodecs/dsd/Sacd;

    .line 2833
    invoke-virtual {v6}, Lorg/justcodecs/dsd/Sacd;->getStart()I

    move-result v0

    mul-int/lit16 v2, v0, 0x3e8

    .line 2834
    invoke-virtual {v6}, Lorg/justcodecs/dsd/Sacd;->getDuration()I

    move-result v0

    mul-int/lit16 v3, v0, 0x3e8

    .line 2835
    invoke-virtual {v6}, Lorg/justcodecs/dsd/Sacd;->getSongName()Ljava/lang/String;

    move-result-object v4

    .line 2836
    invoke-virtual {v6}, Lorg/justcodecs/dsd/Sacd;->getArtist()Ljava/lang/String;

    move-result-object v5

    .line 2837
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0, v8}, Lcom/fiio/music/service/h;->a(Lorg/justcodecs/dsd/SacdDataFormat;)V

    .line 2838
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v8}, Lorg/justcodecs/dsd/SacdDataFormat;->getSacdSongList()Ljava/util/List;

    move-result-object v8

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fiio/music/entity/Song;

    const-wide/32 v8, 0x2b1100

    invoke-virtual {v6}, Lorg/justcodecs/dsd/Sacd;->getStart()I

    move-result v6

    int-to-long v10, v6

    mul-long/2addr v8, v10

    move-object v6, p1

    invoke-virtual/range {v0 .. v9}, Lcom/fiio/music/service/h;->a(Lcom/fiio/music/entity/Song;IILjava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)V

    goto/16 :goto_1

    .line 2840
    :cond_11
    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v1, v0, v7, v5, v5}, Lcom/fiio/music/service/h;->b(Lcom/fiio/music/entity/Song;ILjava/lang/String;Ljava/util/List;)V

    goto/16 :goto_1

    .line 2842
    :cond_12
    iget-object v3, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v3}, Lcom/fiio/music/service/h;->l()I

    move-result v3

    if-ne v3, v10, :cond_1a

    .line 2843
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 2844
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getTrack()I

    move-result v3

    .line 2845
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

    .line 2846
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 2847
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/fiio/music/util/n;->a(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 2849
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2857
    :cond_13
    if-gez v3, :cond_15

    move v0, v2

    goto/16 :goto_0

    .line 2851
    :cond_14
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

    .line 2852
    if-eqz v1, :cond_13

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_13

    move v0, v2

    .line 2853
    goto/16 :goto_0

    .line 2858
    :cond_15
    new-instance v2, Lcom/fiio/music/util/j;

    iget-object v4, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mContext:Landroid/content/Context;

    invoke-direct {v2, v1, v0, v3, v4}, Lcom/fiio/music/util/j;-><init>(Ljava/io/File;Lcom/fiio/music/entity/Song;ILandroid/content/Context;)V

    .line 2859
    invoke-virtual {v2}, Lcom/fiio/music/util/j;->b()Lcom/fiio/music/entity/Song;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2860
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v2}, Lcom/fiio/music/util/j;->b()Lcom/fiio/music/entity/Song;

    move-result-object v1

    invoke-virtual {v2}, Lcom/fiio/music/util/j;->e()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1, v10}, Lcom/fiio/music/service/h;->a(Lcom/fiio/music/entity/Song;[Ljava/lang/String;Ljava/util/List;I)V

    goto/16 :goto_1

    .line 2861
    :cond_16
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isSacd()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 2862
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getTrack()I

    move-result v1

    .line 2863
    new-instance v3, Ljava/io/File;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2864
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_17

    move v0, v2

    goto/16 :goto_0

    .line 2865
    :cond_17
    if-gez v1, :cond_18

    move v0, v2

    goto/16 :goto_0

    .line 2866
    :cond_18
    new-instance v7, Lorg/justcodecs/dsd/SacdDataFormat;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    iget-object v3, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mContext:Landroid/content/Context;

    invoke-direct {v7, v0, v2, v3}, Lorg/justcodecs/dsd/SacdDataFormat;-><init>(Ljava/lang/String;Lcom/fiio/music/service/h;Landroid/content/Context;)V

    .line 2867
    invoke-virtual {v7}, Lorg/justcodecs/dsd/SacdDataFormat;->getSacdList()Ljava/util/List;

    move-result-object v0

    add-int/lit8 v2, v1, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lorg/justcodecs/dsd/Sacd;

    .line 2868
    invoke-virtual {v6}, Lorg/justcodecs/dsd/Sacd;->getStart()I

    move-result v0

    mul-int/lit16 v2, v0, 0x3e8

    .line 2869
    invoke-virtual {v6}, Lorg/justcodecs/dsd/Sacd;->getDuration()I

    move-result v0

    mul-int/lit16 v3, v0, 0x3e8

    .line 2870
    invoke-virtual {v6}, Lorg/justcodecs/dsd/Sacd;->getSongName()Ljava/lang/String;

    move-result-object v4

    .line 2871
    invoke-virtual {v6}, Lorg/justcodecs/dsd/Sacd;->getArtist()Ljava/lang/String;

    move-result-object v5

    .line 2872
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0, v7}, Lcom/fiio/music/service/h;->a(Lorg/justcodecs/dsd/SacdDataFormat;)V

    .line 2873
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v7}, Lorg/justcodecs/dsd/SacdDataFormat;->getSacdSongList()Ljava/util/List;

    move-result-object v7

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fiio/music/entity/Song;

    const-wide/32 v8, 0x2b1100

    invoke-virtual {v6}, Lorg/justcodecs/dsd/Sacd;->getStart()I

    move-result v6

    int-to-long v6, v6

    mul-long/2addr v8, v6

    move-object v6, p1

    move v7, v10

    invoke-virtual/range {v0 .. v9}, Lcom/fiio/music/service/h;->a(Lcom/fiio/music/entity/Song;IILjava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)V

    goto/16 :goto_1

    .line 2875
    :cond_19
    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v1, v0, v10, v5, v5}, Lcom/fiio/music/service/h;->b(Lcom/fiio/music/entity/Song;ILjava/lang/String;Ljava/util/List;)V

    goto/16 :goto_1

    .line 2878
    :cond_1a
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 2879
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1b

    move v0, v2

    goto/16 :goto_0

    .line 2880
    :cond_1b
    new-instance v1, Lcom/fiio/music/util/j;

    iget-object v2, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    iget-object v3, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/fiio/music/util/j;-><init>(Lcom/fiio/music/service/h;Landroid/content/Context;)V

    .line 2881
    iget-object v2, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v2}, Lcom/fiio/music/service/h;->l()I

    move-result v2

    invoke-virtual {v1, v0, p1, v2}, Lcom/fiio/music/util/j;->a(Lcom/fiio/music/entity/Song;Ljava/util/List;I)V

    goto/16 :goto_1

    .line 2882
    :cond_1c
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isSacd()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 2883
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1d

    move v0, v2

    goto/16 :goto_0

    .line 2884
    :cond_1d
    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    iget-object v2, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v2}, Lcom/fiio/music/service/h;->l()I

    move-result v2

    invoke-virtual {v1, v0, v2, p1}, Lcom/fiio/music/service/h;->a(Lcom/fiio/music/entity/Song;ILjava/util/List;)V

    goto/16 :goto_1

    .line 2886
    :cond_1e
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    iget-object v2, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v2}, Lcom/fiio/music/service/h;->l()I

    move-result v2

    iget-object v3, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v3}, Lcom/fiio/music/service/h;->B()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/fiio/music/service/h;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_1

    .line 2896
    :cond_1f
    iget v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_20

    .line 2897
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->ibtn_player_control_play:Landroid/widget/ImageButton;

    const v1, 0x7f02059c

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_2

    .line 2899
    :cond_20
    iget v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_21

    .line 2900
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->ibtn_player_control_play:Landroid/widget/ImageButton;

    const v1, 0x7f02059d

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_2

    .line 2901
    :cond_21
    iget v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    if-ne v0, v12, :cond_3

    .line 2902
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->ibtn_player_control_play:Landroid/widget/ImageButton;

    const v1, 0x7f02059d

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_2

    .line 2905
    :cond_22
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 2906
    iget v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_23

    .line 2907
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->ibtn_player_control_play:Landroid/widget/ImageButton;

    const v1, 0x7f02059e

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_2

    .line 2909
    :cond_23
    iget v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_24

    .line 2910
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->ibtn_player_control_play:Landroid/widget/ImageButton;

    const v1, 0x7f02059f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_2

    .line 2912
    :cond_24
    iget v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_25

    .line 2913
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->ibtn_player_control_play:Landroid/widget/ImageButton;

    const v1, 0x7f0205a0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_2

    .line 2914
    :cond_25
    iget v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->STYLE_PARAMTER:I

    if-ne v0, v12, :cond_3

    .line 2915
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->ibtn_player_control_play:Landroid/widget/ImageButton;

    const v1, 0x7f0205a0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_2
.end method

.method protected swipPlayerMainView(I)V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    const/4 v0, 0x1

    const/16 v3, 0x8

    .line 2642
    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->memoryPlaySwitch:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2643
    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->playingSong2:Lcom/fiio/music/entity/Song;

    if-nez v1, :cond_0

    .line 2645
    iput v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mPageNum:I

    move p1, v0

    .line 2649
    :cond_0
    iget-boolean v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->isDsdPlaying:Z

    if-nez v1, :cond_1

    invoke-static {}, Lcom/fiio/music/util/l;->e()Z

    move-result v1

    if-nez v1, :cond_5

    :cond_1
    if-ne p1, v5, :cond_5

    .line 2651
    iput v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mPageNum:I

    .line 2652
    invoke-static {}, Lcom/fiio/music/util/l;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2653
    const-string v1, "media.audio.OpenUv"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2656
    :cond_2
    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mPlayMainSavePageFlag:Lcom/fiio/music/util/bz;

    const-string v2, "playMainPageFlag"

    invoke-virtual {v1, v2, v0}, Lcom/fiio/music/util/bz;->a(Ljava/lang/String;I)V

    move p1, v0

    .line 2663
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->O()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->Q()Z

    move-result v1

    if-eqz v1, :cond_4

    if-ne p1, v5, :cond_4

    .line 2665
    iput v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->mPageNum:I

    move p1, v0

    .line 2668
    :cond_4
    packed-switch p1, :pswitch_data_0

    .line 2702
    :goto_1
    return-void

    .line 2657
    :cond_5
    if-eq p1, v5, :cond_3

    .line 2658
    invoke-static {}, Lcom/fiio/music/util/l;->e()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2659
    const-string v1, "media.audio.OpenUv"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2670
    :pswitch_0
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->player_main_album:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2671
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->player_main_lyric:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2672
    invoke-direct {p0}, Lcom/fiio/music/activity/PlayerMainActivity;->hideLyricProgressIndicator()V

    .line 2673
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->player_view_lrc_setting:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2674
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->lrc_setting_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2675
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->player_main_info:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2676
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->uv_table_view:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 2679
    :pswitch_1
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->player_main_album:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2680
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->player_main_lyric:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2681
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->player_view_lrc_setting:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2682
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->player_main_info:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2683
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->uv_table_view:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 2686
    :pswitch_2
    invoke-direct {p0}, Lcom/fiio/music/activity/PlayerMainActivity;->hideLyricProgressIndicator()V

    .line 2687
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->player_main_album:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2688
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->player_main_lyric:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2689
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->lrc_setting_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2690
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->player_view_lrc_setting:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2691
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->player_main_info:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2692
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->uv_table_view:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 2695
    :pswitch_3
    invoke-direct {p0}, Lcom/fiio/music/activity/PlayerMainActivity;->hideLyricProgressIndicator()V

    .line 2696
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->player_main_album:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2697
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->player_main_lyric:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2698
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->lrc_setting_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2699
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->player_view_lrc_setting:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2700
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->player_main_info:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2701
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity;->uv_table_view:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_1

    .line 2668
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
