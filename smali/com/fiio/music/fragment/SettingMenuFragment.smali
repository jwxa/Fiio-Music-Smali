.class public Lcom/fiio/music/fragment/SettingMenuFragment;
.super Landroid/support/v4/app/Fragment;
.source "SettingMenuFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final IMAGE_CODE:I = 0x111

.field private static final MINIMUM_AUTO_SLEEP_COUNTDOWN_TIME:I = 0xa

.field private static final TAG:Ljava/lang/String;

.field private static sleep_seekbar:Landroid/widget/SeekBar; = null

.field private static sleep_timeleft:Landroid/widget/TextView; = null

.field public static final slide_play_sp:Ljava/lang/String; = "slide_play"

.field public static final slide_play_state:Ljava/lang/String; = "slide_play_state"


# instance fields
.field private final MENU_SCAN_ACTIVITY_REQUESTCODE:I

.field private Memory:Ljava/lang/String;

.field private STYLE_PARAMTER:I

.field private autoRadioButton:Landroid/widget/RadioButton;

.field private cb_autosearchlrc:Landroid/widget/CheckBox;

.field private cb_lockscreen_lrc:Landroid/widget/CheckBox;

.field private changeStyleboolean:Z

.field private changestyle:Landroid/widget/RelativeLayout;

.field private checkBox:Landroid/widget/CheckBox;

.field private classifyAlbum:Landroid/widget/RadioButton;

.field private classifyArtist:Landroid/widget/RadioButton;

.field private classifyFolder:Landroid/widget/RadioButton;

.field private classifyStyle:Landroid/widget/RadioButton;

.field private defaultVoice:Landroid/widget/TextView;

.field private defaultVoiceSharedPreferences:Landroid/content/SharedPreferences;

.field private defaultVoiceSwitch:Ljava/lang/Boolean;

.field private defaultVoiceValue:I

.field private default_voice_text:Landroid/widget/TextView;

.field private dlnaCheck:Landroid/widget/CheckBox;

.field private dlnaIsCheck:Ljava/lang/Boolean;

.field private dlnaRadioButton:Landroid/widget/RadioButton;

.field private downloadPosition:Ljava/lang/Boolean;

.field private downloadPositionSharedPreferences:Landroid/content/SharedPreferences;

.field private dpCard:Landroid/widget/CheckBox;

.field private dpCardRL:Landroid/widget/RelativeLayout;

.field private dpInner:Landroid/widget/CheckBox;

.field private dpInnerRL:Landroid/widget/RelativeLayout;

.field private folderJump:Z

.field private folderJumpCheck:Landroid/widget/CheckBox;

.field folderJumpsongSharedPreferences:Landroid/content/SharedPreferences;

.field foldersongUtils:Lcom/fiio/music/util/an;

.field gridViewAdapter:Lcom/fiio/music/adapter/GridViewAdapter;

.field private isLockJudgment:Z

.field private listClassify:Ljava/lang/String;

.field private listClassifySharedPreferences:Landroid/content/SharedPreferences;

.field private list_classify_text:Landroid/widget/TextView;

.field private localMusicCheck:Landroid/widget/CheckBox;

.field private localMusicIsCheck:Ljava/lang/Boolean;

.field private localMusicRadioButton:Landroid/widget/RadioButton;

.field private mAboutLayout:Landroid/widget/RelativeLayout;

.field private mContext:Landroid/content/Context;

.field private mDefaultVolumeLayout:Landroid/widget/RelativeLayout;

.field private mExitBtn:Landroid/widget/Button;

.field private mGainValue:Landroid/widget/RelativeLayout;

.field private mIndividuaLayout:Landroid/widget/RelativeLayout;

.field private mLineCtr:Landroid/widget/RelativeLayout;

.field private mMaxVolumeLayout:Landroid/widget/RelativeLayout;

.field private mMemoryPlayLayout:Landroid/widget/RelativeLayout;

.field private mResetSQLLayout:Landroid/widget/RelativeLayout;

.field private mSlideMenuAutoShutdown:Landroid/widget/RelativeLayout;

.field private mSlideMenuDlDir:Landroid/widget/RelativeLayout;

.field private mSlideMenuPvCloud:Landroid/widget/RelativeLayout;

.field private mSlideMenuScanLayout:Landroid/widget/RelativeLayout;

.field private mSlideMenuSongUpdate:Landroid/widget/RelativeLayout;

.field private mStartHelpLayout:Landroid/widget/RelativeLayout;

.field private mTrackBalanceLayout:Landroid/widget/RelativeLayout;

.field private manualRadioButton:Landroid/widget/RadioButton;

.field private maxVoice:Landroid/widget/TextView;

.field private maxVoiceSharedPreferences:Landroid/content/SharedPreferences;

.field private maxVoiceValue:I

.field private max_voice_text:Landroid/widget/TextView;

.field private memoryPlaySettingCheck:Landroid/widget/CheckBox;

.field private memoryPlaySharedPreferences:Landroid/content/SharedPreferences;

.field private memoryPlaySwitch:Ljava/lang/Boolean;

.field private memory_play_text:Landroid/widget/TextView;

.field mm:Lcom/fiio/music/service/h;

.field private mostPlayCheck:Landroid/widget/CheckBox;

.field private mostPlayIsCheck:Ljava/lang/Boolean;

.field private mostPlayRadioButton:Ljava/lang/Boolean;

.field private mostPlayRadioButton1:Landroid/widget/RadioButton;

.field private mostPlayRadioButton2:Landroid/widget/RadioButton;

.field private mpList:Landroid/widget/RadioButton;

.field private mpLocation:Landroid/widget/RadioButton;

.field private musicLibUpdateMode:Ljava/lang/Boolean;

.field private musicLibUpdateSharedPreferences:Landroid/content/SharedPreferences;

.field private musicLibUpdateText:Landroid/widget/TextView;

.field openLockScreenSharePreferences:Landroid/content/SharedPreferences;

.field private open_lockscreencheckbox:Landroid/widget/CheckBox;

.field private personalizationSharedPreferences:Landroid/content/SharedPreferences;

.field private playListCheck:Landroid/widget/CheckBox;

.field private playListIsCheck:Ljava/lang/Boolean;

.field private playListRadioButton:Ljava/lang/Boolean;

.field private playListRadioButton1:Landroid/widget/RadioButton;

.field private playListRadioButton2:Landroid/widget/RadioButton;

.field private progress:I

.field private recentlyAddCheck:Landroid/widget/CheckBox;

.field private recentlyAddIsCheck:Ljava/lang/Boolean;

.field private recentlyAddRadioButton:Ljava/lang/Boolean;

.field private recentlyAddRadioButton1:Landroid/widget/RadioButton;

.field private recentlyAddRadioButton2:Landroid/widget/RadioButton;

.field private recentlyPlayCheck:Landroid/widget/CheckBox;

.field private recentlyPlayIsCheck:Ljava/lang/Boolean;

.field private recentlyPlayRadioButton:Ljava/lang/Boolean;

.field private recentlyPlayRadioButton1:Landroid/widget/RadioButton;

.field private recentlyPlayRadioButton2:Landroid/widget/RadioButton;

.field private rl_kuishe:Landroid/widget/RelativeLayout;

.field private rl_lockscreen_lrc:Landroid/widget/RelativeLayout;

.field private seekBar:Landroid/widget/SeekBar;

.field private selectAlbumSharePreferences:Landroid/content/SharedPreferences;

.field private select_album:Landroid/widget/RelativeLayout;

.field private sleepProgressValue:I

.field private sleepSharedPreferences:Landroid/content/SharedPreferences;

.field private sleepSwitch:Ljava/lang/Boolean;

.field slidePlaySharedPreferences:Landroid/content/SharedPreferences;

.field private slide_play_checkbox:Landroid/widget/CheckBox;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    const-class v0, Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fiio/music/fragment/SettingMenuFragment;->TAG:Ljava/lang/String;

    .line 1362
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 96
    const/4 v0, 0x1

    iput v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->MENU_SCAN_ACTIVITY_REQUESTCODE:I

    .line 196
    const/4 v0, 0x3

    iput v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->STYLE_PARAMTER:I

    .line 91
    return-void
.end method

.method static synthetic access$0(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->sleepSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$10(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->downloadPositionSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$11(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->dpInner:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$12(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->personalizationSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$13(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/widget/RadioButton;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->playListRadioButton1:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$14(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/widget/RadioButton;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->recentlyPlayRadioButton1:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$15(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/widget/RadioButton;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mostPlayRadioButton1:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$16(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/widget/RadioButton;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->recentlyAddRadioButton1:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$17(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->playListCheck:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$18(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->localMusicCheck:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$19(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->dlnaCheck:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$2(Lcom/fiio/music/fragment/SettingMenuFragment;)I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->sleepProgressValue:I

    return v0
.end method

.method static synthetic access$20(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->recentlyPlayCheck:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$21(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->recentlyAddCheck:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$22(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mostPlayCheck:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$23(Lcom/fiio/music/fragment/SettingMenuFragment;Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->playListIsCheck:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$24(Lcom/fiio/music/fragment/SettingMenuFragment;Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->recentlyPlayIsCheck:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$25(Lcom/fiio/music/fragment/SettingMenuFragment;Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mostPlayIsCheck:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$26(Lcom/fiio/music/fragment/SettingMenuFragment;Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->recentlyAddIsCheck:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$27(Lcom/fiio/music/fragment/SettingMenuFragment;Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->playListRadioButton:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$28(Lcom/fiio/music/fragment/SettingMenuFragment;Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->recentlyPlayRadioButton:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$29(Lcom/fiio/music/fragment/SettingMenuFragment;Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mostPlayRadioButton:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$3(Lcom/fiio/music/fragment/SettingMenuFragment;I)V
    .locals 0

    .prologue
    .line 124
    iput p1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->sleepProgressValue:I

    return-void
.end method

.method static synthetic access$30(Lcom/fiio/music/fragment/SettingMenuFragment;Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->recentlyAddRadioButton:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$31(Lcom/fiio/music/fragment/SettingMenuFragment;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->playListIsCheck:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$32(Lcom/fiio/music/fragment/SettingMenuFragment;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->playListRadioButton:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$33(Lcom/fiio/music/fragment/SettingMenuFragment;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->recentlyPlayIsCheck:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$34(Lcom/fiio/music/fragment/SettingMenuFragment;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->recentlyPlayRadioButton:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$35(Lcom/fiio/music/fragment/SettingMenuFragment;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mostPlayIsCheck:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$36(Lcom/fiio/music/fragment/SettingMenuFragment;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mostPlayRadioButton:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$37(Lcom/fiio/music/fragment/SettingMenuFragment;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->recentlyAddIsCheck:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$38(Lcom/fiio/music/fragment/SettingMenuFragment;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->recentlyAddRadioButton:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$39(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->selectAlbumSharePreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$4(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->checkBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$40(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/widget/SeekBar;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->seekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$41(Lcom/fiio/music/fragment/SettingMenuFragment;)I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->maxVoiceValue:I

    return v0
.end method

.method static synthetic access$42(Lcom/fiio/music/fragment/SettingMenuFragment;I)V
    .locals 0

    .prologue
    .line 150
    iput p1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->defaultVoiceValue:I

    return-void
.end method

.method static synthetic access$43(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->defaultVoice:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$44(Lcom/fiio/music/fragment/SettingMenuFragment;)I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->defaultVoiceValue:I

    return v0
.end method

.method static synthetic access$45(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->defaultVoiceSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$46(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->default_voice_text:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$47(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/widget/RadioButton;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mpList:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$48(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/widget/RadioButton;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mpLocation:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$49(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->memoryPlaySharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$5(I)I
    .locals 1

    .prologue
    .line 852
    invoke-static {p0}, Lcom/fiio/music/fragment/SettingMenuFragment;->toSleepProgressValue(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$50(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->memory_play_text:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$51(Lcom/fiio/music/fragment/SettingMenuFragment;I)V
    .locals 0

    .prologue
    .line 106
    iput p1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->progress:I

    return-void
.end method

.method static synthetic access$52(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->maxVoice:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$53(Lcom/fiio/music/fragment/SettingMenuFragment;)I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->progress:I

    return v0
.end method

.method static synthetic access$54(Lcom/fiio/music/fragment/SettingMenuFragment;I)V
    .locals 0

    .prologue
    .line 162
    iput p1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->maxVoiceValue:I

    return-void
.end method

.method static synthetic access$55(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->maxVoiceSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$56(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->max_voice_text:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$57(Lcom/fiio/music/fragment/SettingMenuFragment;)V
    .locals 0

    .prologue
    .line 1743
    invoke-direct {p0}, Lcom/fiio/music/fragment/SettingMenuFragment;->markPlayList()V

    return-void
.end method

.method static synthetic access$58(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->listClassifySharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$59(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/widget/RadioButton;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->classifyAlbum:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$6(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->musicLibUpdateSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$60(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->list_classify_text:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$61(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/widget/RadioButton;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->classifyFolder:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$62(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/widget/RadioButton;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->classifyArtist:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$63(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/widget/RadioButton;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->classifyStyle:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$64()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/fiio/music/fragment/SettingMenuFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/widget/RadioButton;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->manualRadioButton:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$8(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->musicLibUpdateText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$9(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->dpCard:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public static formatSleepProgressValue(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 863
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "min"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initView(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 355
    invoke-static {}, Lcom/fiio/music/util/an;->a()Lcom/fiio/music/util/an;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->foldersongUtils:Lcom/fiio/music/util/an;

    .line 357
    const v0, 0x7f0b02f8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mSlideMenuScanLayout:Landroid/widget/RelativeLayout;

    .line 358
    const v0, 0x7f0b02f5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mSlideMenuAutoShutdown:Landroid/widget/RelativeLayout;

    .line 359
    const v0, 0x7f0b02fa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mSlideMenuSongUpdate:Landroid/widget/RelativeLayout;

    .line 360
    const v0, 0x7f0b02fd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mSlideMenuDlDir:Landroid/widget/RelativeLayout;

    .line 361
    const v0, 0x7f0b02ff

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mSlideMenuPvCloud:Landroid/widget/RelativeLayout;

    .line 362
    const v0, 0x7f0b0301

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mIndividuaLayout:Landroid/widget/RelativeLayout;

    .line 363
    const v0, 0x7f0b030d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mLineCtr:Landroid/widget/RelativeLayout;

    .line 364
    const v0, 0x7f0b030f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mGainValue:Landroid/widget/RelativeLayout;

    .line 365
    const v0, 0x7f0b0310

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mTrackBalanceLayout:Landroid/widget/RelativeLayout;

    .line 366
    const v0, 0x7f0b0319

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mMemoryPlayLayout:Landroid/widget/RelativeLayout;

    .line 368
    const v0, 0x7f0b030e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->slide_play_checkbox:Landroid/widget/CheckBox;

    .line 369
    const v0, 0x7f0b031c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->folderJumpCheck:Landroid/widget/CheckBox;

    .line 370
    const v0, 0x7f0b0323

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mMaxVolumeLayout:Landroid/widget/RelativeLayout;

    .line 371
    const v0, 0x7f0b0326

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mResetSQLLayout:Landroid/widget/RelativeLayout;

    .line 372
    const v0, 0x7f0b0316

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mDefaultVolumeLayout:Landroid/widget/RelativeLayout;

    .line 374
    const v0, 0x7f0b0309

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mAboutLayout:Landroid/widget/RelativeLayout;

    .line 375
    const v0, 0x7f0b0307

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mStartHelpLayout:Landroid/widget/RelativeLayout;

    .line 376
    const v0, 0x7f0b02c9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mExitBtn:Landroid/widget/Button;

    .line 377
    const v0, 0x7f0b0320

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->changestyle:Landroid/widget/RelativeLayout;

    .line 380
    const v0, 0x7f0b032b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->cb_autosearchlrc:Landroid/widget/CheckBox;

    .line 381
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->cb_autosearchlrc:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 382
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mContext:Landroid/content/Context;

    const-string v1, "FiiOMusic"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 383
    const-string v0, "autosearchlrc"

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 384
    iget-object v2, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->cb_autosearchlrc:Landroid/widget/CheckBox;

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 386
    const v0, 0x7f0b031f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->cb_lockscreen_lrc:Landroid/widget/CheckBox;

    .line 387
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->cb_lockscreen_lrc:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 388
    const-string v0, "lockscreenlrc"

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 389
    iget-object v1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->cb_lockscreen_lrc:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 390
    const v0, 0x7f0b031e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->rl_lockscreen_lrc:Landroid/widget/RelativeLayout;

    .line 392
    const v0, 0x7f0b031d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->open_lockscreencheckbox:Landroid/widget/CheckBox;

    .line 393
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->open_lockscreencheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 397
    const v0, 0x7f0b0313

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->select_album:Landroid/widget/RelativeLayout;

    .line 398
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->select_album:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 401
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->changestyle:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 402
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mResetSQLLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 403
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mSlideMenuScanLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 404
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mSlideMenuAutoShutdown:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 405
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mSlideMenuSongUpdate:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 406
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mSlideMenuDlDir:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 407
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mSlideMenuPvCloud:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 408
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mIndividuaLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 409
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mLineCtr:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 410
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mGainValue:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 411
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mTrackBalanceLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 412
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mMemoryPlayLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 414
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->folderJumpCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 415
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mMaxVolumeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 416
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mDefaultVolumeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 418
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mAboutLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 419
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mStartHelpLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 420
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mExitBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 433
    invoke-virtual {p0}, Lcom/fiio/music/fragment/SettingMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "sleep"

    invoke-virtual {v0, v1, v3}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->sleepSharedPreferences:Landroid/content/SharedPreferences;

    .line 437
    invoke-virtual {p0}, Lcom/fiio/music/fragment/SettingMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "musiclib_update"

    invoke-virtual {v0, v1, v3}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->musicLibUpdateSharedPreferences:Landroid/content/SharedPreferences;

    .line 438
    const v0, 0x7f0b02fb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->musicLibUpdateText:Landroid/widget/TextView;

    .line 441
    invoke-virtual {p0}, Lcom/fiio/music/fragment/SettingMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "download_position"

    invoke-virtual {v0, v1, v3}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->downloadPositionSharedPreferences:Landroid/content/SharedPreferences;

    .line 444
    invoke-virtual {p0}, Lcom/fiio/music/fragment/SettingMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "personalization"

    invoke-virtual {v0, v1, v3}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->personalizationSharedPreferences:Landroid/content/SharedPreferences;

    .line 452
    invoke-virtual {p0}, Lcom/fiio/music/fragment/SettingMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "default_voice"

    invoke-virtual {v0, v1, v3}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->defaultVoiceSharedPreferences:Landroid/content/SharedPreferences;

    .line 453
    const v0, 0x7f0b0317

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->default_voice_text:Landroid/widget/TextView;

    .line 456
    invoke-virtual {p0}, Lcom/fiio/music/fragment/SettingMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "memory"

    invoke-virtual {v0, v1, v3}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->memoryPlaySharedPreferences:Landroid/content/SharedPreferences;

    .line 457
    const v0, 0x7f0b031a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->memory_play_text:Landroid/widget/TextView;

    .line 459
    invoke-virtual {p0}, Lcom/fiio/music/fragment/SettingMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "folderjump"

    invoke-virtual {v0, v1, v3}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->folderJumpsongSharedPreferences:Landroid/content/SharedPreferences;

    .line 461
    invoke-virtual {p0}, Lcom/fiio/music/fragment/SettingMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "LockScreen"

    invoke-virtual {v0, v1, v3}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->openLockScreenSharePreferences:Landroid/content/SharedPreferences;

    .line 463
    invoke-virtual {p0}, Lcom/fiio/music/fragment/SettingMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "SelectAlbum"

    invoke-virtual {v0, v1, v3}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->selectAlbumSharePreferences:Landroid/content/SharedPreferences;

    .line 465
    invoke-virtual {p0}, Lcom/fiio/music/fragment/SettingMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "slide_play"

    invoke-virtual {v0, v1, v3}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->slidePlaySharedPreferences:Landroid/content/SharedPreferences;

    .line 468
    invoke-virtual {p0}, Lcom/fiio/music/fragment/SettingMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "max_voice"

    invoke-virtual {v0, v1, v3}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->maxVoiceSharedPreferences:Landroid/content/SharedPreferences;

    .line 469
    const v0, 0x7f0b0324

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->max_voice_text:Landroid/widget/TextView;

    .line 474
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/fiio/music/util/l;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mExitBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 480
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->slidePlaySharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "slide_play_state"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 481
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->slide_play_checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 482
    invoke-static {}, Lcom/fiio/music/util/ap;->a()Lcom/fiio/music/util/ap;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/fiio/music/util/ap;->a(Z)V

    .line 487
    :goto_1
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->slide_play_checkbox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/fiio/music/fragment/k;

    invoke-direct {v1, p0}, Lcom/fiio/music/fragment/k;-><init>(Lcom/fiio/music/fragment/SettingMenuFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 510
    const v0, 0x7f0b0328

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->rl_kuishe:Landroid/widget/RelativeLayout;

    .line 511
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->rl_kuishe:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 514
    return-void

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mExitBtn:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 484
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->slide_play_checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 485
    invoke-static {}, Lcom/fiio/music/util/ap;->a()Lcom/fiio/music/util/ap;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/fiio/music/util/ap;->a(Z)V

    goto :goto_1
.end method

.method private lockScreenSetting(Lcom/fiio/music/activity/ListMainActivity;)V
    .locals 3

    .prologue
    .line 776
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->openLockScreenSharePreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 777
    iget-object v1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->open_lockscreencheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 778
    const-string v2, "isLock"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 781
    if-eqz v1, :cond_0

    .line 782
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->rl_lockscreen_lrc:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 786
    :goto_0
    return-void

    .line 784
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->rl_lockscreen_lrc:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private markPlayList()V
    .locals 8

    .prologue
    .line 1744
    new-instance v1, Lcom/fiio/music/b/j;

    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/fiio/music/b/j;-><init>(Landroid/content/Context;)V

    .line 1759
    new-instance v0, Lcom/fiio/music/util/bw;

    invoke-direct {v0}, Lcom/fiio/music/util/bw;-><init>()V

    .line 1760
    invoke-static {}, Lcom/fiio/music/util/bw;->a()Ljava/util/List;

    move-result-object v0

    .line 1762
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 1763
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1774
    :cond_1
    return-void

    .line 1763
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 1765
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Favorites.cfg"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "null.cfg"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1766
    new-instance v3, Lcom/fiio/music/entity/PlayerList;

    invoke-direct {v3}, Lcom/fiio/music/entity/PlayerList;-><init>()V

    .line 1767
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/fiio/music/entity/PlayerList;->setName(Ljava/lang/String;)V

    .line 1768
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0xbb8

    add-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Lcom/fiio/music/entity/PlayerList;->setDate(J)V

    .line 1769
    invoke-virtual {v1, v3}, Lcom/fiio/music/b/j;->a(Lcom/fiio/music/entity/PlayerList;)J

    goto :goto_0
.end method

.method private sendVipperUser()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1845
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mContext:Landroid/content/Context;

    const-string v1, "FiiOMusic"

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1847
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1849
    const-string v2, "clickCount"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1851
    sget-object v3, Lcom/fiio/music/fragment/SettingMenuFragment;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "clickCount = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1853
    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    .line 1854
    const-string v0, "clickCount"

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1855
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1856
    sget-object v0, Lcom/fiio/music/fragment/SettingMenuFragment;->TAG:Ljava/lang/String;

    const-string v1, "\u70b9\u51fb\u6b21\u6570\u5c0f\u4e8e2\uff0c\u4e0d\u505a\u8bf7\u6c42\uff01"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1910
    :cond_0
    :goto_0
    return-void

    .line 1860
    :cond_1
    const-string v3, "clickCount"

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1861
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1864
    const-string v2, "issend"

    invoke-interface {v0, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1866
    sget-object v2, Lcom/fiio/music/fragment/SettingMenuFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isVipperUserSend = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1870
    if-nez v0, :cond_0

    .line 1871
    const-string v0, "ro.serialno"

    const-string v2, ""

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1873
    sget-object v2, Lcom/fiio/music/fragment/SettingMenuFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sn = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1874
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1875
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://www.fiio.mobi:8080/FiiOMusicForApp/ServletForStatiticsVipper?sn="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1876
    sget-object v3, Lcom/fiio/music/fragment/SettingMenuFragment;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1877
    invoke-static {}, Lcom/fiio/music/network/b/a;->a()Lcom/fiio/music/network/b/a;

    .line 1878
    new-instance v3, Lcom/fiio/music/fragment/aj;

    invoke-direct {v3, p0, v1}, Lcom/fiio/music/fragment/aj;-><init>(Lcom/fiio/music/fragment/SettingMenuFragment;Landroid/content/SharedPreferences$Editor;)V

    invoke-static {v2, v0, v3}, Lcom/fiio/music/network/b/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/fiio/music/network/b/g;)Le/g;

    goto :goto_0
.end method

.method private settingFolderJumpSong(Lcom/fiio/music/activity/ListMainActivity;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 793
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->folderJumpsongSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 794
    new-instance v1, Lcom/fiio/music/service/h;

    invoke-virtual {p0}, Lcom/fiio/music/fragment/SettingMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/fiio/music/service/h;-><init>(Landroid/content/ContextWrapper;)V

    iput-object v1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mm:Lcom/fiio/music/service/h;

    .line 795
    iget-object v1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->folderJumpCheck:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 796
    iget-object v1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->foldersongUtils:Lcom/fiio/music/util/an;

    invoke-virtual {v1, v4}, Lcom/fiio/music/util/an;->a(Z)V

    .line 797
    iget-object v1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mm:Lcom/fiio/music/service/h;

    invoke-virtual {v1, v4}, Lcom/fiio/music/service/h;->a(Z)V

    .line 798
    const-string v1, "FolderJump"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 804
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 805
    return-void

    .line 800
    :cond_0
    iget-object v1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->foldersongUtils:Lcom/fiio/music/util/an;

    invoke-virtual {v1, v3}, Lcom/fiio/music/util/an;->a(Z)V

    .line 801
    iget-object v1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mm:Lcom/fiio/music/service/h;

    invoke-virtual {v1, v3}, Lcom/fiio/music/service/h;->a(Z)V

    .line 802
    const-string v1, "FolderJump"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method private settingMemoryPlay(Lcom/fiio/music/activity/ListMainActivity;)V
    .locals 3

    .prologue
    .line 1527
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->memoryPlaySharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1528
    iget-object v1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->memoryPlaySettingCheck:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1529
    const-string v1, "SWITCH"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1533
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1534
    return-void

    .line 1531
    :cond_0
    const-string v1, "SWITCH"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method private showDefaultVoice(Landroid/content/Context;)V
    .locals 8

    .prologue
    const v2, 0x7f04011f

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1427
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/fiio/music/fragment/SettingMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 1428
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 1430
    iget v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->STYLE_PARAMTER:I

    if-ne v0, v7, :cond_1

    .line 1431
    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f04011d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    .line 1440
    :cond_0
    :goto_0
    const v0, 0x7f0b0348

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1441
    const v1, 0x7f0b0347

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1442
    const v2, 0x7f0b0346

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->seekBar:Landroid/widget/SeekBar;

    .line 1443
    const v2, 0x7f0b02ed

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->defaultVoice:Landroid/widget/TextView;

    .line 1444
    const v2, 0x7f0b0349

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->checkBox:Landroid/widget/CheckBox;

    .line 1446
    iget-object v2, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->defaultVoiceSharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, "DEFAULT_VOICE"

    const/16 v5, 0xa

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->defaultVoiceValue:I

    .line 1447
    iget-object v2, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->defaultVoiceSharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, "SWITCH"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->defaultVoiceSwitch:Ljava/lang/Boolean;

    .line 1448
    iget-object v2, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->seekBar:Landroid/widget/SeekBar;

    iget v4, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->defaultVoiceValue:I

    add-int/lit8 v4, v4, -0xa

    invoke-virtual {v2, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1449
    iget-object v2, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->defaultVoice:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->defaultVoiceValue:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1450
    iget-object v2, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->defaultVoiceSwitch:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1452
    iget-object v2, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1458
    :goto_1
    new-instance v2, Lcom/fiio/music/util/cz;

    invoke-direct {v2, p1}, Lcom/fiio/music/util/cz;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1459
    iget-object v2, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->checkBox:Landroid/widget/CheckBox;

    new-instance v4, Lcom/fiio/music/fragment/t;

    invoke-direct {v4, p0}, Lcom/fiio/music/fragment/t;-><init>(Lcom/fiio/music/fragment/SettingMenuFragment;)V

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1472
    iget-object v2, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->seekBar:Landroid/widget/SeekBar;

    new-instance v4, Lcom/fiio/music/fragment/u;

    invoke-direct {v4, p0}, Lcom/fiio/music/fragment/u;-><init>(Lcom/fiio/music/fragment/SettingMenuFragment;)V

    invoke-virtual {v2, v4}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1497
    new-instance v2, Lcom/fiio/music/fragment/w;

    invoke-direct {v2, p0, v3}, Lcom/fiio/music/fragment/w;-><init>(Lcom/fiio/music/fragment/SettingMenuFragment;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1504
    new-instance v1, Lcom/fiio/music/fragment/x;

    invoke-direct {v1, p0, v3}, Lcom/fiio/music/fragment/x;-><init>(Lcom/fiio/music/fragment/SettingMenuFragment;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1522
    return-void

    .line 1432
    :cond_1
    iget v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->STYLE_PARAMTER:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1433
    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f04011e

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    goto/16 :goto_0

    .line 1434
    :cond_2
    iget v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->STYLE_PARAMTER:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 1435
    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setContentView(I)V

    goto/16 :goto_0

    .line 1436
    :cond_3
    iget v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->STYLE_PARAMTER:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1437
    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setContentView(I)V

    goto/16 :goto_0

    .line 1455
    :cond_4
    iget-object v2, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1456
    iget-object v2, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v6}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto :goto_1
.end method

.method private showDownloadPosition(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1020
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/fiio/music/fragment/SettingMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1021
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1022
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v2, 0x7f0400f8

    invoke-virtual {v0, v2}, Landroid/view/Window;->setContentView(I)V

    .line 1024
    const v0, 0x7f0b02bd

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->dpInner:Landroid/widget/CheckBox;

    .line 1025
    const v0, 0x7f0b02c3

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->dpCard:Landroid/widget/CheckBox;

    .line 1026
    const v0, 0x7f0b02b8

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->dpInnerRL:Landroid/widget/RelativeLayout;

    .line 1027
    const v0, 0x7f0b02be

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->dpCardRL:Landroid/widget/RelativeLayout;

    .line 1029
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->downloadPositionSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "DOWNLOAD_POSITION"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->downloadPosition:Ljava/lang/Boolean;

    .line 1030
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->downloadPosition:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1031
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->dpInner:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1035
    :goto_0
    new-instance v0, Lcom/fiio/music/util/cz;

    invoke-direct {v0, p1}, Lcom/fiio/music/util/cz;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1036
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->dpInner:Landroid/widget/CheckBox;

    new-instance v1, Lcom/fiio/music/fragment/l;

    invoke-direct {v1, p0}, Lcom/fiio/music/fragment/l;-><init>(Lcom/fiio/music/fragment/SettingMenuFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1047
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->dpCard:Landroid/widget/CheckBox;

    new-instance v1, Lcom/fiio/music/fragment/m;

    invoke-direct {v1, p0}, Lcom/fiio/music/fragment/m;-><init>(Lcom/fiio/music/fragment/SettingMenuFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1058
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->dpInnerRL:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/fiio/music/fragment/n;

    invoke-direct {v1, p0}, Lcom/fiio/music/fragment/n;-><init>(Lcom/fiio/music/fragment/SettingMenuFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1065
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->dpCardRL:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/fiio/music/fragment/o;

    invoke-direct {v1, p0}, Lcom/fiio/music/fragment/o;-><init>(Lcom/fiio/music/fragment/SettingMenuFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1073
    return-void

    .line 1033
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->dpCard:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method private showIndividuationAlertDialog(Landroid/content/Context;)V
    .locals 8

    .prologue
    const v4, 0x7f0400ff

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1084
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 1085
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 1086
    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 1088
    iget v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->STYLE_PARAMTER:I

    if-ne v0, v6, :cond_b

    .line 1089
    const v0, 0x7f0400fd

    invoke-virtual {v2, v0}, Landroid/view/Window;->setContentView(I)V

    .line 1097
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/fiio/music/fragment/SettingMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/activity/ListMainActivity;

    .line 1098
    invoke-virtual {v0}, Lcom/fiio/music/activity/ListMainActivity;->getMExpandableListAdapter()Lcom/fiio/music/adapter/TestExpandableListAdapter;

    move-result-object v4

    .line 1101
    iget-object v1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->personalizationSharedPreferences:Landroid/content/SharedPreferences;

    const-string v5, "PLAY_LIST"

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->playListIsCheck:Ljava/lang/Boolean;

    .line 1102
    iget-object v1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->personalizationSharedPreferences:Landroid/content/SharedPreferences;

    const-string v5, "LOCAL_MUSIC"

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->localMusicIsCheck:Ljava/lang/Boolean;

    .line 1103
    iget-object v1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->personalizationSharedPreferences:Landroid/content/SharedPreferences;

    const-string v5, "DLNA"

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->dlnaIsCheck:Ljava/lang/Boolean;

    .line 1104
    iget-object v1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->personalizationSharedPreferences:Landroid/content/SharedPreferences;

    const-string v5, "RECENTLY_PLAY"

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->recentlyPlayIsCheck:Ljava/lang/Boolean;

    .line 1105
    iget-object v1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->personalizationSharedPreferences:Landroid/content/SharedPreferences;

    const-string v5, "MOST_PLAY"

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mostPlayIsCheck:Ljava/lang/Boolean;

    .line 1106
    iget-object v1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->personalizationSharedPreferences:Landroid/content/SharedPreferences;

    const-string v5, "RECENTLY_ADD"

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->recentlyAddIsCheck:Ljava/lang/Boolean;

    .line 1107
    iget-object v1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->personalizationSharedPreferences:Landroid/content/SharedPreferences;

    const-string v5, "PLAY_LIST_RADIO_BUTTON"

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->playListRadioButton:Ljava/lang/Boolean;

    .line 1108
    iget-object v1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->personalizationSharedPreferences:Landroid/content/SharedPreferences;

    const-string v5, "RECENTLY_PLAY_RADIO_BUTTON"

    invoke-interface {v1, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->recentlyPlayRadioButton:Ljava/lang/Boolean;

    .line 1109
    iget-object v1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->personalizationSharedPreferences:Landroid/content/SharedPreferences;

    const-string v5, "MOST_PLAY_RADIO_BUTTON"

    invoke-interface {v1, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mostPlayRadioButton:Ljava/lang/Boolean;

    .line 1110
    iget-object v1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->personalizationSharedPreferences:Landroid/content/SharedPreferences;

    const-string v5, "RECENTLY_ADD_RADIO_BUTTON"

    invoke-interface {v1, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->recentlyAddRadioButton:Ljava/lang/Boolean;

    .line 1111
    new-instance v1, Lcom/fiio/music/util/cz;

    invoke-direct {v1, p1}, Lcom/fiio/music/util/cz;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1112
    const v1, 0x7f0b02ca

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->playListCheck:Landroid/widget/CheckBox;

    .line 1113
    const v1, 0x7f0b02ce

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->localMusicCheck:Landroid/widget/CheckBox;

    .line 1114
    const v1, 0x7f0b02d1

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->dlnaCheck:Landroid/widget/CheckBox;

    .line 1115
    const v1, 0x7f0b02d4

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->recentlyPlayCheck:Landroid/widget/CheckBox;

    .line 1116
    const v1, 0x7f0b02d8

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mostPlayCheck:Landroid/widget/CheckBox;

    .line 1117
    const v1, 0x7f0b02dc

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->recentlyAddCheck:Landroid/widget/CheckBox;

    .line 1118
    iget-object v1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->playListIsCheck:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1119
    iget-object v1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->playListCheck:Landroid/widget/CheckBox;

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1121
    :cond_1
    iget-object v1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->localMusicIsCheck:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1122
    iget-object v1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->localMusicCheck:Landroid/widget/CheckBox;

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1124
    :cond_2
    iget-object v1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->dlnaIsCheck:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1125
    iget-object v1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->dlnaCheck:Landroid/widget/CheckBox;

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1127
    :cond_3
    iget-object v1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->recentlyPlayIsCheck:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1128
    iget-object v1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->recentlyPlayCheck:Landroid/widget/CheckBox;

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1130
    :cond_4
    iget-object v1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mostPlayIsCheck:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1131
    iget-object v1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mostPlayCheck:Landroid/widget/CheckBox;

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1133
    :cond_5
    iget-object v1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->recentlyAddIsCheck:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1134
    iget-object v1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->recentlyAddCheck:Landroid/widget/CheckBox;

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1136
    :cond_6
    const v1, 0x7f0b02cd

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->playListRadioButton1:Landroid/widget/RadioButton;

    .line 1137
    const v1, 0x7f0b02cc

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->playListRadioButton2:Landroid/widget/RadioButton;

    .line 1138
    const v1, 0x7f0b02d7

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->recentlyPlayRadioButton1:Landroid/widget/RadioButton;

    .line 1139
    const v1, 0x7f0b02d6

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->recentlyPlayRadioButton2:Landroid/widget/RadioButton;

    .line 1140
    const v1, 0x7f0b02db

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mostPlayRadioButton1:Landroid/widget/RadioButton;

    .line 1141
    const v1, 0x7f0b02da

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mostPlayRadioButton2:Landroid/widget/RadioButton;

    .line 1142
    const v1, 0x7f0b02df

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->recentlyAddRadioButton1:Landroid/widget/RadioButton;

    .line 1143
    const v1, 0x7f0b02de

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->recentlyAddRadioButton2:Landroid/widget/RadioButton;

    .line 1144
    iget-object v1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->playListRadioButton2:Landroid/widget/RadioButton;

    invoke-virtual {v1, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1145
    iget-object v1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->recentlyPlayRadioButton2:Landroid/widget/RadioButton;

    invoke-virtual {v1, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1146
    iget-object v1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mostPlayRadioButton2:Landroid/widget/RadioButton;

    invoke-virtual {v1, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1147
    iget-object v1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->recentlyAddRadioButton2:Landroid/widget/RadioButton;

    invoke-virtual {v1, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1148
    iget-object v1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->playListRadioButton:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1149
    iget-object v1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->playListRadioButton1:Landroid/widget/RadioButton;

    invoke-virtual {v1, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1151
    :cond_7
    iget-object v1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->recentlyPlayRadioButton:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1152
    iget-object v1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->recentlyPlayRadioButton1:Landroid/widget/RadioButton;

    invoke-virtual {v1, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1154
    :cond_8
    iget-object v1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mostPlayRadioButton:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1155
    iget-object v1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mostPlayRadioButton1:Landroid/widget/RadioButton;

    invoke-virtual {v1, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1157
    :cond_9
    iget-object v1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->recentlyAddRadioButton:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1158
    iget-object v1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->recentlyAddRadioButton1:Landroid/widget/RadioButton;

    invoke-virtual {v1, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1160
    :cond_a
    const v1, 0x7f0b02d0

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->localMusicRadioButton:Landroid/widget/RadioButton;

    .line 1161
    const v1, 0x7f0b02d3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->dlnaRadioButton:Landroid/widget/RadioButton;

    .line 1164
    const v1, 0x7f0b02e1

    invoke-virtual {v2, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1165
    const v5, 0x7f0b02e0

    invoke-virtual {v2, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 1166
    new-instance v5, Lcom/fiio/music/fragment/p;

    invoke-direct {v5, p0, v3}, Lcom/fiio/music/fragment/p;-><init>(Lcom/fiio/music/fragment/SettingMenuFragment;Landroid/app/AlertDialog;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1174
    new-instance v2, Lcom/fiio/music/fragment/q;

    invoke-direct {v2, p0, v0, v4, v3}, Lcom/fiio/music/fragment/q;-><init>(Lcom/fiio/music/fragment/SettingMenuFragment;Lcom/fiio/music/activity/ListMainActivity;Lcom/fiio/music/adapter/TestExpandableListAdapter;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1293
    return-void

    .line 1090
    :cond_b
    iget v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->STYLE_PARAMTER:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    .line 1091
    const v0, 0x7f0400fe

    invoke-virtual {v2, v0}, Landroid/view/Window;->setContentView(I)V

    goto/16 :goto_0

    .line 1092
    :cond_c
    iget v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->STYLE_PARAMTER:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_d

    .line 1093
    invoke-virtual {v2, v4}, Landroid/view/Window;->setContentView(I)V

    goto/16 :goto_0

    .line 1094
    :cond_d
    iget v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->STYLE_PARAMTER:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1095
    invoke-virtual {v2, v4}, Landroid/view/Window;->setContentView(I)V

    goto/16 :goto_0
.end method

.method private showListClassify(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1778
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/fiio/music/fragment/SettingMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 1779
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 1780
    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1781
    const v1, 0x7f040103

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    .line 1783
    const v0, 0x7f0b02ea

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1784
    const v1, 0x7f0b02eb

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1785
    const v2, 0x7f0b02e6

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->classifyFolder:Landroid/widget/RadioButton;

    .line 1786
    const v2, 0x7f0b02e7

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->classifyAlbum:Landroid/widget/RadioButton;

    .line 1787
    const v2, 0x7f0b02e8

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->classifyArtist:Landroid/widget/RadioButton;

    .line 1788
    const v2, 0x7f0b02e9

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->classifyStyle:Landroid/widget/RadioButton;

    .line 1789
    new-instance v2, Lcom/fiio/music/util/cz;

    invoke-direct {v2, p1}, Lcom/fiio/music/util/cz;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1790
    iget-object v2, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->listClassifySharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, "LIST_CLASSIFY"

    const-string v5, ""

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->listClassify:Ljava/lang/String;

    .line 1791
    const-string v2, "STYLE"

    iget-object v4, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->listClassify:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1792
    iget-object v2, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->classifyStyle:Landroid/widget/RadioButton;

    invoke-virtual {v2, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1801
    :goto_0
    new-instance v2, Lcom/fiio/music/fragment/ah;

    invoke-direct {v2, p0, v3}, Lcom/fiio/music/fragment/ah;-><init>(Lcom/fiio/music/fragment/SettingMenuFragment;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1808
    new-instance v0, Lcom/fiio/music/fragment/ai;

    invoke-direct {v0, p0, v3}, Lcom/fiio/music/fragment/ai;-><init>(Lcom/fiio/music/fragment/SettingMenuFragment;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1829
    return-void

    .line 1793
    :cond_0
    const-string v2, "ALBUM"

    iget-object v4, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->listClassify:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1794
    iget-object v2, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->classifyAlbum:Landroid/widget/RadioButton;

    invoke-virtual {v2, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 1795
    :cond_1
    const-string v2, "ARTIST"

    iget-object v4, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->listClassify:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1796
    iget-object v2, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->classifyArtist:Landroid/widget/RadioButton;

    invoke-virtual {v2, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 1798
    :cond_2
    iget-object v2, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->classifyFolder:Landroid/widget/RadioButton;

    invoke-virtual {v2, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0
.end method

.method private showMaxVoice(Landroid/content/Context;)V
    .locals 6

    .prologue
    const v3, 0x7f040106

    .line 1627
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/fiio/music/fragment/SettingMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 1628
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 1630
    iget v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->STYLE_PARAMTER:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1631
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f040104

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    .line 1640
    :cond_0
    :goto_0
    const v0, 0x7f0b02ed

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->maxVoice:Landroid/widget/TextView;

    .line 1641
    const v0, 0x7f0b02ec

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->seekBar:Landroid/widget/SeekBar;

    .line 1642
    const v0, 0x7f0b02ee

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1643
    const v1, 0x7f0b02ef

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1645
    iget-object v3, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->maxVoiceSharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, "MAX_VOICE"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->maxVoiceValue:I

    .line 1646
    iget-object v3, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->seekBar:Landroid/widget/SeekBar;

    iget v4, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->maxVoiceValue:I

    add-int/lit8 v4, v4, -0xa

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1647
    iget-object v3, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->maxVoice:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->maxVoiceValue:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1648
    new-instance v3, Lcom/fiio/music/util/cz;

    invoke-direct {v3, p1}, Lcom/fiio/music/util/cz;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1649
    iget-object v3, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->seekBar:Landroid/widget/SeekBar;

    new-instance v4, Lcom/fiio/music/fragment/ab;

    invoke-direct {v4, p0}, Lcom/fiio/music/fragment/ab;-><init>(Lcom/fiio/music/fragment/SettingMenuFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1669
    new-instance v3, Lcom/fiio/music/fragment/ac;

    invoke-direct {v3, p0, v2}, Lcom/fiio/music/fragment/ac;-><init>(Lcom/fiio/music/fragment/SettingMenuFragment;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1676
    new-instance v0, Lcom/fiio/music/fragment/ad;

    invoke-direct {v0, p0, v2}, Lcom/fiio/music/fragment/ad;-><init>(Lcom/fiio/music/fragment/SettingMenuFragment;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1694
    return-void

    .line 1632
    :cond_1
    iget v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->STYLE_PARAMTER:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1633
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f040105

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    goto/16 :goto_0

    .line 1634
    :cond_2
    iget v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->STYLE_PARAMTER:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 1635
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->setContentView(I)V

    goto/16 :goto_0

    .line 1636
    :cond_3
    iget v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->STYLE_PARAMTER:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1637
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->setContentView(I)V

    goto/16 :goto_0
.end method

.method private showMemoryPlay(Landroid/content/Context;)V
    .locals 8

    .prologue
    const v2, 0x7f040109

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1537
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/fiio/music/fragment/SettingMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 1538
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 1540
    iget v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->STYLE_PARAMTER:I

    if-ne v0, v6, :cond_3

    .line 1541
    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f040107

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    .line 1554
    :cond_0
    :goto_0
    const v0, 0x7f0b02f0

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->checkBox:Landroid/widget/CheckBox;

    .line 1555
    const v0, 0x7f0b02f3

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1556
    const v1, 0x7f0b02f4

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1557
    const v2, 0x7f0b02f1

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mpList:Landroid/widget/RadioButton;

    .line 1558
    const v2, 0x7f0b02f2

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mpLocation:Landroid/widget/RadioButton;

    .line 1559
    new-instance v2, Lcom/fiio/music/util/cz;

    invoke-direct {v2, p1}, Lcom/fiio/music/util/cz;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1560
    iget-object v2, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->memoryPlaySharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, "SWITCH"

    invoke-interface {v2, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->memoryPlaySwitch:Ljava/lang/Boolean;

    .line 1561
    iget-object v2, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->memoryPlaySharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, "MEMORY"

    const-string v5, ""

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->Memory:Ljava/lang/String;

    .line 1563
    const-string v2, "LIST"

    iget-object v4, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->Memory:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1564
    iget-object v2, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1566
    iget-object v2, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mpList:Landroid/widget/RadioButton;

    invoke-virtual {v2, v6}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 1567
    iget-object v2, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mpLocation:Landroid/widget/RadioButton;

    invoke-virtual {v2, v6}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 1568
    iget-object v2, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mpList:Landroid/widget/RadioButton;

    invoke-virtual {v2, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1575
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->memoryPlaySwitch:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1576
    iget-object v2, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1578
    iget-object v2, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mpList:Landroid/widget/RadioButton;

    invoke-virtual {v2, v7}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 1579
    iget-object v2, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mpLocation:Landroid/widget/RadioButton;

    invoke-virtual {v2, v7}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 1582
    :cond_2
    iget-object v2, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->checkBox:Landroid/widget/CheckBox;

    new-instance v4, Lcom/fiio/music/fragment/y;

    invoke-direct {v4, p0}, Lcom/fiio/music/fragment/y;-><init>(Lcom/fiio/music/fragment/SettingMenuFragment;)V

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1596
    new-instance v2, Lcom/fiio/music/fragment/z;

    invoke-direct {v2, p0, v3}, Lcom/fiio/music/fragment/z;-><init>(Lcom/fiio/music/fragment/SettingMenuFragment;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1603
    new-instance v0, Lcom/fiio/music/fragment/aa;

    invoke-direct {v0, p0, v3}, Lcom/fiio/music/fragment/aa;-><init>(Lcom/fiio/music/fragment/SettingMenuFragment;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1624
    return-void

    .line 1542
    :cond_3
    iget v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->STYLE_PARAMTER:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 1543
    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f040108

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    goto/16 :goto_0

    .line 1544
    :cond_4
    iget v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->STYLE_PARAMTER:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 1545
    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setContentView(I)V

    goto/16 :goto_0

    .line 1546
    :cond_5
    iget v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->STYLE_PARAMTER:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1547
    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setContentView(I)V

    goto/16 :goto_0

    .line 1569
    :cond_6
    const-string v2, "LOCATION"

    iget-object v4, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->Memory:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1570
    iget-object v2, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1571
    iget-object v2, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mpList:Landroid/widget/RadioButton;

    invoke-virtual {v2, v6}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 1572
    iget-object v2, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mpLocation:Landroid/widget/RadioButton;

    invoke-virtual {v2, v6}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 1573
    iget-object v2, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mpLocation:Landroid/widget/RadioButton;

    invoke-virtual {v2, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1
.end method

.method private showPrivateCloudDialog(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 1076
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1077
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1078
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 1079
    new-instance v2, Lcom/fiio/music/util/cz;

    invoke-direct {v2, p1}, Lcom/fiio/music/util/cz;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1080
    const v0, 0x7f040116

    invoke-virtual {v1, v0}, Landroid/view/Window;->setContentView(I)V

    .line 1081
    return-void
.end method

.method private showResetSQLData(Landroid/content/Context;)V
    .locals 4

    .prologue
    const v3, 0x7f040119

    .line 1701
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/fiio/music/fragment/SettingMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 1702
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 1704
    iget v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->STYLE_PARAMTER:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1705
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f040117

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    .line 1716
    :cond_0
    :goto_0
    const v0, 0x7f0b02ee

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1717
    const v1, 0x7f0b02ef

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1718
    new-instance v3, Lcom/fiio/music/util/cz;

    invoke-direct {v3, p1}, Lcom/fiio/music/util/cz;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1719
    new-instance v3, Lcom/fiio/music/fragment/ae;

    invoke-direct {v3, p0, v2}, Lcom/fiio/music/fragment/ae;-><init>(Lcom/fiio/music/fragment/SettingMenuFragment;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1726
    new-instance v0, Lcom/fiio/music/fragment/af;

    invoke-direct {v0, p0, p1, v2}, Lcom/fiio/music/fragment/af;-><init>(Lcom/fiio/music/fragment/SettingMenuFragment;Landroid/content/Context;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1738
    return-void

    .line 1706
    :cond_1
    iget v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->STYLE_PARAMTER:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1707
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f040118

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    goto :goto_0

    .line 1708
    :cond_2
    iget v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->STYLE_PARAMTER:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 1709
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->setContentView(I)V

    goto :goto_0

    .line 1710
    :cond_3
    iget v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->STYLE_PARAMTER:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1711
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->setContentView(I)V

    goto :goto_0
.end method

.method private showSleepDialog(Landroid/content/Context;)V
    .locals 10

    .prologue
    const v2, 0x7f040122

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 867
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .line 868
    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 869
    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 870
    iget v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->STYLE_PARAMTER:I

    if-ne v0, v9, :cond_2

    .line 871
    const v0, 0x7f040120

    invoke-virtual {v3, v0}, Landroid/view/Window;->setContentView(I)V

    .line 879
    :cond_0
    :goto_0
    const v0, 0x7f0b034e

    invoke-virtual {v3, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 880
    const v1, 0x7f0b034d

    invoke-virtual {v3, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 882
    iget-object v2, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->sleepSharedPreferences:Landroid/content/SharedPreferences;

    const-string v5, "SLEEP_PROGRESS"

    invoke-interface {v2, v5, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->sleepProgressValue:I

    .line 883
    iget-object v2, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->sleepSharedPreferences:Landroid/content/SharedPreferences;

    const-string v5, "SLEEP_SWITCH"

    invoke-interface {v2, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->sleepSwitch:Ljava/lang/Boolean;

    .line 885
    const v2, 0x7f0b034a

    invoke-virtual {v3, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->checkBox:Landroid/widget/CheckBox;

    .line 886
    const v2, 0x7f0b034c

    invoke-virtual {v3, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 887
    const v5, 0x7f0b034b

    invoke-virtual {v3, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    .line 889
    sput-object v3, Lcom/fiio/music/fragment/SettingMenuFragment;->sleep_seekbar:Landroid/widget/SeekBar;

    .line 890
    sput-object v2, Lcom/fiio/music/fragment/SettingMenuFragment;->sleep_timeleft:Landroid/widget/TextView;

    .line 892
    new-instance v5, Lcom/fiio/music/c/b;

    invoke-virtual {p0}, Lcom/fiio/music/fragment/SettingMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v5, v6, v8}, Lcom/fiio/music/c/b;-><init>(Landroid/content/Context;Z)V

    .line 893
    const-string v6, "isFirstSleepSetting"

    invoke-virtual {v5, v6}, Lcom/fiio/music/c/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    .line 894
    const/16 v6, 0xa

    iput v6, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->sleepProgressValue:I

    .line 895
    const-string v6, "isFirstSleepSetting"

    const-string v7, "OK"

    invoke-virtual {v5, v6, v7}, Lcom/fiio/music/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    :cond_1
    iget v5, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->sleepProgressValue:I

    invoke-static {v5}, Lcom/fiio/music/fragment/SettingMenuFragment;->toSleepSeekBarProgress(I)I

    move-result v5

    .line 898
    invoke-virtual {v3, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 900
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->sleepProgressValue:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 901
    iget-object v5, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->sleepSwitch:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 902
    iget-object v5, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v5, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 906
    :goto_1
    new-instance v5, Lcom/fiio/music/util/cz;

    invoke-direct {v5, p1}, Lcom/fiio/music/util/cz;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 908
    new-instance v5, Lcom/fiio/music/fragment/ak;

    invoke-direct {v5, p0, v4}, Lcom/fiio/music/fragment/ak;-><init>(Lcom/fiio/music/fragment/SettingMenuFragment;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 931
    new-instance v0, Lcom/fiio/music/fragment/al;

    invoke-direct {v0, p0, v4}, Lcom/fiio/music/fragment/al;-><init>(Lcom/fiio/music/fragment/SettingMenuFragment;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 939
    new-instance v0, Lcom/fiio/music/fragment/am;

    invoke-direct {v0, p0, v2}, Lcom/fiio/music/fragment/am;-><init>(Lcom/fiio/music/fragment/SettingMenuFragment;Landroid/widget/TextView;)V

    invoke-virtual {v3, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 956
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->checkBox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/fiio/music/fragment/an;

    invoke-direct {v1, p0, v3}, Lcom/fiio/music/fragment/an;-><init>(Lcom/fiio/music/fragment/SettingMenuFragment;Landroid/widget/SeekBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 970
    return-void

    .line 872
    :cond_2
    iget v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->STYLE_PARAMTER:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 873
    const v0, 0x7f040121

    invoke-virtual {v3, v0}, Landroid/view/Window;->setContentView(I)V

    goto/16 :goto_0

    .line 874
    :cond_3
    iget v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->STYLE_PARAMTER:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 875
    invoke-virtual {v3, v2}, Landroid/view/Window;->setContentView(I)V

    goto/16 :goto_0

    .line 876
    :cond_4
    iget v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->STYLE_PARAMTER:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 877
    invoke-virtual {v3, v2}, Landroid/view/Window;->setContentView(I)V

    goto/16 :goto_0

    .line 904
    :cond_5
    invoke-virtual {v3, v8}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto :goto_1
.end method

.method private showSongUpdate(Landroid/content/Context;)V
    .locals 5

    .prologue
    const v3, 0x7f040102

    const/4 v4, 0x1

    .line 973
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/fiio/music/fragment/SettingMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 974
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 975
    iget v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->STYLE_PARAMTER:I

    if-ne v0, v4, :cond_1

    .line 976
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f040100

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    .line 984
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->musicLibUpdateSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "UPDATE_MODE"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->musicLibUpdateMode:Ljava/lang/Boolean;

    .line 985
    const v0, 0x7f0b02e2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->manualRadioButton:Landroid/widget/RadioButton;

    .line 986
    const v0, 0x7f0b02e3

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->autoRadioButton:Landroid/widget/RadioButton;

    .line 987
    const v0, 0x7f0b02e4

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 988
    const v1, 0x7f0b02e5

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 990
    iget-object v3, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->musicLibUpdateMode:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 991
    iget-object v3, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->manualRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 995
    :goto_1
    new-instance v3, Lcom/fiio/music/util/cz;

    invoke-direct {v3, p1}, Lcom/fiio/music/util/cz;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 996
    new-instance v3, Lcom/fiio/music/fragment/ao;

    invoke-direct {v3, p0, v2}, Lcom/fiio/music/fragment/ao;-><init>(Lcom/fiio/music/fragment/SettingMenuFragment;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1002
    new-instance v0, Lcom/fiio/music/fragment/ap;

    invoke-direct {v0, p0, v2}, Lcom/fiio/music/fragment/ap;-><init>(Lcom/fiio/music/fragment/SettingMenuFragment;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1017
    return-void

    .line 977
    :cond_1
    iget v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->STYLE_PARAMTER:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 978
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f040101

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    goto :goto_0

    .line 979
    :cond_2
    iget v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->STYLE_PARAMTER:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 980
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->setContentView(I)V

    goto :goto_0

    .line 981
    :cond_3
    iget v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->STYLE_PARAMTER:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 982
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->setContentView(I)V

    goto/16 :goto_0

    .line 993
    :cond_4
    iget-object v3, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->autoRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1
.end method

.method private showStyleSelect()V
    .locals 5

    .prologue
    const v4, 0x7f040031

    .line 687
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 688
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 689
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 690
    iget v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->STYLE_PARAMTER:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 691
    invoke-virtual {v1, v4}, Landroid/view/Window;->setContentView(I)V

    .line 701
    :cond_0
    :goto_0
    const v0, 0x7f0b0087

    invoke-virtual {v1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 703
    new-instance v3, Lcom/fiio/music/adapter/GridViewAdapter;

    invoke-virtual {p0}, Lcom/fiio/music/fragment/SettingMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/fiio/music/adapter/GridViewAdapter;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->gridViewAdapter:Lcom/fiio/music/adapter/GridViewAdapter;

    .line 704
    iget-object v3, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->gridViewAdapter:Lcom/fiio/music/adapter/GridViewAdapter;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 705
    const v0, 0x7f0b0089

    invoke-virtual {v1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 706
    const v3, 0x7f0b0088

    invoke-virtual {v1, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 707
    new-instance v3, Lcom/fiio/music/fragment/v;

    invoke-direct {v3, p0, v2}, Lcom/fiio/music/fragment/v;-><init>(Lcom/fiio/music/fragment/SettingMenuFragment;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 719
    new-instance v1, Lcom/fiio/music/fragment/ag;

    invoke-direct {v1, p0, v2}, Lcom/fiio/music/fragment/ag;-><init>(Lcom/fiio/music/fragment/SettingMenuFragment;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 769
    return-void

    .line 692
    :cond_1
    iget v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->STYLE_PARAMTER:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 693
    invoke-virtual {v1, v4}, Landroid/view/Window;->setContentView(I)V

    goto :goto_0

    .line 694
    :cond_2
    iget v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->STYLE_PARAMTER:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    .line 695
    invoke-virtual {v1, v4}, Landroid/view/Window;->setContentView(I)V

    goto :goto_0

    .line 696
    :cond_3
    iget v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->STYLE_PARAMTER:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    .line 697
    invoke-virtual {v1, v4}, Landroid/view/Window;->setContentView(I)V

    goto :goto_0
.end method

.method private showTheDiaLogForPic()V
    .locals 5

    .prologue
    const v4, 0x7f040125

    .line 1367
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 1368
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 1369
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 1370
    iget v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->STYLE_PARAMTER:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 1371
    const v0, 0x7f040123

    invoke-virtual {v1, v0}, Landroid/view/Window;->setContentView(I)V

    .line 1379
    :cond_0
    :goto_0
    const v0, 0x7f0b034f

    invoke-virtual {v1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1380
    const v3, 0x7f0b0350

    invoke-virtual {v1, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1381
    new-instance v3, Lcom/fiio/music/fragment/r;

    invoke-direct {v3, p0, v2}, Lcom/fiio/music/fragment/r;-><init>(Lcom/fiio/music/fragment/SettingMenuFragment;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1413
    new-instance v0, Lcom/fiio/music/fragment/s;

    invoke-direct {v0, p0, v2}, Lcom/fiio/music/fragment/s;-><init>(Lcom/fiio/music/fragment/SettingMenuFragment;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1423
    return-void

    .line 1372
    :cond_1
    iget v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->STYLE_PARAMTER:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 1373
    const v0, 0x7f040124

    invoke-virtual {v1, v0}, Landroid/view/Window;->setContentView(I)V

    goto :goto_0

    .line 1374
    :cond_2
    iget v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->STYLE_PARAMTER:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    .line 1375
    invoke-virtual {v1, v4}, Landroid/view/Window;->setContentView(I)V

    goto :goto_0

    .line 1376
    :cond_3
    iget v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->STYLE_PARAMTER:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    .line 1377
    invoke-virtual {v1, v4}, Landroid/view/Window;->setContentView(I)V

    goto :goto_0
.end method

.method private static toSleepProgressValue(I)I
    .locals 1

    .prologue
    .line 855
    const/16 v0, 0x3c

    if-gt p0, v0, :cond_0

    .line 856
    div-int/lit8 v0, p0, 0x3

    add-int/lit8 v0, v0, 0xa

    .line 858
    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p0, -0x1e

    goto :goto_0
.end method

.method private static toSleepSeekBarProgress(I)I
    .locals 1

    .prologue
    .line 843
    const/16 v0, 0xa

    if-gt p0, v0, :cond_0

    .line 844
    const/4 v0, 0x0

    .line 848
    :goto_0
    return v0

    .line 845
    :cond_0
    const/16 v0, 0x1e

    if-gt p0, v0, :cond_1

    .line 846
    add-int/lit8 v0, p0, -0xa

    mul-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 848
    :cond_1
    add-int/lit8 v0, p0, 0x1e

    goto :goto_0
.end method


# virtual methods
.method public getSleepSeekbar(Lcom/fiio/music/fragment/aq;)V
    .locals 1

    .prologue
    .line 1837
    sget-object v0, Lcom/fiio/music/fragment/SettingMenuFragment;->sleep_seekbar:Landroid/widget/SeekBar;

    .line 1838
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 232
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 239
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->sleepSwitch:Ljava/lang/Boolean;

    .line 240
    const/16 v0, 0xa

    iput v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->sleepProgressValue:I

    .line 242
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->sleepSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 243
    const-string v1, "SLEEP_SWITCH"

    iget-object v2, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->sleepSwitch:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 244
    const-string v1, "SLEEP_PROGRESS"

    iget v2, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->sleepProgressValue:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 245
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 257
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->musicLibUpdateSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "UPDATE_MODE"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->musicLibUpdateMode:Ljava/lang/Boolean;

    .line 258
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->musicLibUpdateMode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->musicLibUpdateText:Landroid/widget/TextView;

    const v1, 0x7f0c0081

    invoke-virtual {p0, v1}, Lcom/fiio/music/fragment/SettingMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->downloadPositionSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "DOWNLOAD_POSITION"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->downloadPosition:Ljava/lang/Boolean;

    .line 268
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->personalizationSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "PLAY_LIST"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->playListIsCheck:Ljava/lang/Boolean;

    .line 269
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->personalizationSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "LOCAL_MUSIC"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->localMusicIsCheck:Ljava/lang/Boolean;

    .line 270
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->personalizationSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "DLNA"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->dlnaIsCheck:Ljava/lang/Boolean;

    .line 271
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->personalizationSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "RECENTLY_PLAY"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->recentlyPlayIsCheck:Ljava/lang/Boolean;

    .line 272
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->personalizationSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "MOST_PLAY"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mostPlayIsCheck:Ljava/lang/Boolean;

    .line 274
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->personalizationSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "PLAY_LIST_RADIO_BUTTON"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->playListRadioButton:Ljava/lang/Boolean;

    .line 275
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->personalizationSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "RECENTLY_PLAY_RADIO_BUTTON"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->recentlyPlayRadioButton:Ljava/lang/Boolean;

    .line 276
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->personalizationSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "MOST_PLAY_RADIO_BUTTON"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mostPlayRadioButton:Ljava/lang/Boolean;

    .line 292
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->defaultVoiceSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "SWITCH"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->defaultVoiceSwitch:Ljava/lang/Boolean;

    .line 293
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->defaultVoiceSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "DEFAULT_VOICE"

    const/16 v2, 0x1e

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->defaultVoiceValue:I

    .line 294
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->defaultVoiceSwitch:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 295
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->default_voice_text:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->defaultVoiceValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    :goto_1
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->memoryPlaySharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "SWITCH"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->memoryPlaySwitch:Ljava/lang/Boolean;

    .line 303
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->memoryPlaySharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "MEMORY"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->Memory:Ljava/lang/String;

    .line 309
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->memoryPlaySwitch:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 310
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->memory_play_text:Landroid/widget/TextView;

    const-string v1, "OFF"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    :goto_2
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->folderJumpsongSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "FolderJump"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->folderJump:Z

    .line 318
    iget-boolean v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->folderJump:Z

    if-eqz v0, :cond_4

    .line 319
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->folderJumpCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 324
    :goto_3
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->openLockScreenSharePreferences:Landroid/content/SharedPreferences;

    const-string v1, "isLock"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->isLockJudgment:Z

    .line 325
    const-string v0, "zxy --   "

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setting :  isLockJudgment   :   "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->isLockJudgment:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->open_lockscreencheckbox:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->isLockJudgment:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 330
    iget-boolean v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->isLockJudgment:Z

    if-eqz v0, :cond_5

    .line 331
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->rl_lockscreen_lrc:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 337
    :goto_4
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->maxVoiceSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "MAX_VOICE"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->maxVoiceValue:I

    .line 338
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->max_voice_text:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->maxVoiceValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    return-void

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->musicLibUpdateText:Landroid/widget/TextView;

    const v1, 0x7f0c0082

    invoke-virtual {p0, v1}, Lcom/fiio/music/fragment/SettingMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->default_voice_text:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 311
    :cond_2
    const-string v0, "LIST"

    iget-object v1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->Memory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 312
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->memory_play_text:Landroid/widget/TextView;

    const v1, 0x7f0c0083

    invoke-virtual {p0, v1}, Lcom/fiio/music/fragment/SettingMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 314
    :cond_3
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->memory_play_text:Landroid/widget/TextView;

    const v1, 0x7f0c0084

    invoke-virtual {p0, v1}, Lcom/fiio/music/fragment/SettingMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 321
    :cond_4
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->folderJumpCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_3

    .line 333
    :cond_5
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->rl_lockscreen_lrc:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_4
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    .line 809
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 814
    const/16 v0, 0x111

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    .line 815
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 817
    iget-object v1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 819
    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 821
    const-string v2, "image"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 822
    iget-object v1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/fiio/music/util/ai;->a(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 823
    const-string v1, "zxy - - - - "

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "picturePath  :   "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fiio/music/util/aw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    if-eqz v0, :cond_0

    .line 828
    iget-object v1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->selectAlbumSharePreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "albumPath"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 830
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/ListMainActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/ListMainActivity;->updateAlbumWhenPlaying()V

    .line 838
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 518
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 680
    :goto_0
    return-void

    .line 522
    :sswitch_0
    invoke-direct {p0}, Lcom/fiio/music/fragment/SettingMenuFragment;->sendVipperUser()V

    .line 524
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mContext:Landroid/content/Context;

    const-string v1, "UserExperience"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 525
    const-string v1, "vipper"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 526
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/fiio/music/activity/UserExperienceActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 527
    const-string v1, "ChangeStyle"

    iget-boolean v2, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->changeStyleboolean:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 528
    const-string v1, "switch"

    sget v2, Lcom/fiio/music/activity/UserExperienceActivity;->a:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 529
    invoke-virtual {p0, v0}, Lcom/fiio/music/fragment/SettingMenuFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 531
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 532
    iget-object v1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/audlabs/vipereffect/main/MainActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 533
    invoke-virtual {p0, v0}, Lcom/fiio/music/fragment/SettingMenuFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 538
    :sswitch_1
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mContext:Landroid/content/Context;

    const-string v1, "FiiOMusic"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 539
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 541
    iget-object v1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->cb_autosearchlrc:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 542
    const-string v1, "autosearchlrc"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 543
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 545
    :cond_1
    const-string v1, "autosearchlrc"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 546
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 550
    :sswitch_2
    const-string v0, "dendy"

    const-string v1, "\u9501\u5c4f\u6b4c\u8bcd"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mContext:Landroid/content/Context;

    const-string v1, "FiiOMusic"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 552
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 554
    iget-object v1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->cb_lockscreen_lrc:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 555
    const-string v1, "lockscreenlrc"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 556
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 558
    :cond_2
    const-string v1, "lockscreenlrc"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 559
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 565
    :sswitch_3
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/ListMainActivity;

    invoke-direct {p0, v0}, Lcom/fiio/music/fragment/SettingMenuFragment;->showSleepDialog(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 568
    :sswitch_4
    invoke-static {}, Lcom/fiio/music/util/l;->e()Z

    move-result v0

    if-nez v0, :cond_4

    .line 570
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/fiio/music/util/ch;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 571
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v4, :cond_3

    .line 572
    invoke-virtual {p0}, Lcom/fiio/music/fragment/SettingMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v3

    aput-object v0, v2, v3

    invoke-static {v1, v2, v5, v5}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 574
    :cond_3
    invoke-virtual {p0}, Lcom/fiio/music/fragment/SettingMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1, v5, v5}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 576
    :cond_4
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/ListMainActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/ListMainActivity;->startScan()V

    goto/16 :goto_0

    .line 579
    :sswitch_5
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/ListMainActivity;

    invoke-direct {p0, v0}, Lcom/fiio/music/fragment/SettingMenuFragment;->showSongUpdate(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 582
    :sswitch_6
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/ListMainActivity;

    invoke-direct {p0, v0}, Lcom/fiio/music/fragment/SettingMenuFragment;->showDownloadPosition(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 585
    :sswitch_7
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/ListMainActivity;

    invoke-direct {p0, v0}, Lcom/fiio/music/fragment/SettingMenuFragment;->showPrivateCloudDialog(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 588
    :sswitch_8
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/ListMainActivity;

    invoke-direct {p0, v0}, Lcom/fiio/music/fragment/SettingMenuFragment;->showIndividuationAlertDialog(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 592
    :sswitch_9
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    .line 593
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$AudioSettingsActivity"

    .line 592
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 595
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 596
    invoke-virtual {p0, v1}, Lcom/fiio/music/fragment/SettingMenuFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 599
    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/fiio/music/fragment/SettingMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0c00e7

    invoke-virtual {p0, v1}, Lcom/fiio/music/fragment/SettingMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 604
    :sswitch_a
    :try_start_1
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$AudioSettingsActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 606
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 607
    invoke-virtual {p0, v1}, Lcom/fiio/music/fragment/SettingMenuFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 610
    :catch_1
    move-exception v0

    invoke-virtual {p0}, Lcom/fiio/music/fragment/SettingMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0c00e8

    invoke-virtual {p0, v1}, Lcom/fiio/music/fragment/SettingMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 615
    :sswitch_b
    :try_start_2
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$AudioSettingsActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 617
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 618
    invoke-virtual {p0, v1}, Lcom/fiio/music/fragment/SettingMenuFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 621
    :catch_2
    move-exception v0

    invoke-virtual {p0}, Lcom/fiio/music/fragment/SettingMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0c00e9

    invoke-virtual {p0, v1}, Lcom/fiio/music/fragment/SettingMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 626
    :sswitch_c
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/ListMainActivity;

    invoke-direct {p0, v0}, Lcom/fiio/music/fragment/SettingMenuFragment;->showDefaultVoice(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 629
    :sswitch_d
    invoke-direct {p0}, Lcom/fiio/music/fragment/SettingMenuFragment;->showTheDiaLogForPic()V

    goto/16 :goto_0

    .line 633
    :sswitch_e
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/ListMainActivity;

    invoke-direct {p0, v0}, Lcom/fiio/music/fragment/SettingMenuFragment;->showMemoryPlay(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 636
    :sswitch_f
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/ListMainActivity;

    invoke-direct {p0, v0}, Lcom/fiio/music/fragment/SettingMenuFragment;->settingFolderJumpSong(Lcom/fiio/music/activity/ListMainActivity;)V

    goto/16 :goto_0

    .line 639
    :sswitch_10
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/ListMainActivity;

    invoke-direct {p0, v0}, Lcom/fiio/music/fragment/SettingMenuFragment;->lockScreenSetting(Lcom/fiio/music/activity/ListMainActivity;)V

    goto/16 :goto_0

    .line 642
    :sswitch_11
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/ListMainActivity;

    invoke-direct {p0, v0}, Lcom/fiio/music/fragment/SettingMenuFragment;->showMaxVoice(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 648
    :sswitch_12
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/ListMainActivity;

    invoke-direct {p0, v0}, Lcom/fiio/music/fragment/SettingMenuFragment;->showResetSQLData(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 651
    :sswitch_13
    invoke-direct {p0}, Lcom/fiio/music/fragment/SettingMenuFragment;->showStyleSelect()V

    goto/16 :goto_0

    .line 665
    :sswitch_14
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/fiio/music/fragment/SettingMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/fiio/music/activity/AboutActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 666
    const-string v1, "ChangeStyle"

    iget-boolean v2, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->changeStyleboolean:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 667
    invoke-virtual {p0, v0}, Lcom/fiio/music/fragment/SettingMenuFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 670
    :sswitch_15
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/fiio/music/fragment/SettingMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/fiio/music/activity/GuideActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 671
    const-string v1, "guideMode"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 672
    invoke-virtual {p0, v0}, Lcom/fiio/music/fragment/SettingMenuFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 677
    :sswitch_16
    new-instance v0, Lcom/fiio/music/util/p;

    invoke-virtual {p0}, Lcom/fiio/music/fragment/SettingMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-boolean v2, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->changeStyleboolean:Z

    invoke-direct {v0, v1, v2}, Lcom/fiio/music/util/p;-><init>(Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 518
    :sswitch_data_0
    .sparse-switch
        0x7f0b02c9 -> :sswitch_16
        0x7f0b02f5 -> :sswitch_3
        0x7f0b02f8 -> :sswitch_4
        0x7f0b02fa -> :sswitch_5
        0x7f0b02fd -> :sswitch_6
        0x7f0b02ff -> :sswitch_7
        0x7f0b0301 -> :sswitch_8
        0x7f0b0307 -> :sswitch_15
        0x7f0b0309 -> :sswitch_14
        0x7f0b030d -> :sswitch_9
        0x7f0b030f -> :sswitch_a
        0x7f0b0310 -> :sswitch_b
        0x7f0b0313 -> :sswitch_d
        0x7f0b0316 -> :sswitch_c
        0x7f0b0319 -> :sswitch_e
        0x7f0b031c -> :sswitch_f
        0x7f0b031d -> :sswitch_10
        0x7f0b031f -> :sswitch_2
        0x7f0b0320 -> :sswitch_13
        0x7f0b0323 -> :sswitch_11
        0x7f0b0326 -> :sswitch_12
        0x7f0b0328 -> :sswitch_0
        0x7f0b032b -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 208
    invoke-virtual {p0}, Lcom/fiio/music/fragment/SettingMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mContext:Landroid/content/Context;

    .line 211
    iget-object v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/a;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->STYLE_PARAMTER:I

    .line 213
    const/4 v0, 0x0

    .line 215
    iget v1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->STYLE_PARAMTER:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 216
    const v0, 0x7f0400f9

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 224
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/fiio/music/fragment/SettingMenuFragment;->initView(Landroid/view/View;)V

    .line 227
    return-object v0

    .line 217
    :cond_1
    iget v1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->STYLE_PARAMTER:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 218
    const v0, 0x7f0400fa

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 219
    :cond_2
    iget v1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->STYLE_PARAMTER:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 220
    const v0, 0x7f0400fb

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 221
    :cond_3
    iget v1, p0, Lcom/fiio/music/fragment/SettingMenuFragment;->STYLE_PARAMTER:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 222
    const v0, 0x7f0400fc

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method
