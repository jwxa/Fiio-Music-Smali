.class public Lcom/fiio/music/activity/LocalMusicActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "LocalMusicActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final CUEPLAYER:I = 0x1

.field public static final M3UPLAYER:I = 0x2

.field public static final SACDPLAYER:I = 0x3

.field private static final TAG:Ljava/lang/String; = "xyz-LocalMusicActivity"

.field private static final cueSuffixs:Ljava/lang/String;

.field private static final isoSuffixs:Ljava/lang/String;

.field private static final m3uSuffixs:Ljava/lang/String;

.field private static final suffixs:Ljava/lang/String;


# instance fields
.field DirSongs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;"
        }
    .end annotation
.end field

.field public final LISTS_FLAG:I

.field public final SONG_FLAG:I

.field private STYLE_PARAMTER:I

.field private UI_IS_CHANGE:Z

.field a_zCountOrder:Z

.field private allsong_palyall:Landroid/widget/ImageView;

.field artist_displayChange_song:Z

.field private check_all_item_checkbox:Landroid/widget/CheckBox;

.field private check_all_textview:Landroid/widget/TextView;

.field private context:Landroid/content/Context;

.field countOrder:Z

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

.field private displaychang_list:Landroid/widget/ImageView;

.field file:Ljava/io/File;

.field fileItem:Lcom/fiio/music/entity/FileItem;

.field folderjump:Lcom/fiio/music/util/am;

.field private foldersongUtils:Lcom/fiio/music/util/an;

.field public fragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field gson:Lcom/a/a/aq;

.field private head_layout:Landroid/widget/RelativeLayout;

.field private ibtn_player_albumart:Landroid/widget/ImageView;

.field private ibtn_player_control:Landroid/widget/ImageButton;

.field private ibtn_player_next:Landroid/widget/ImageButton;

.field private ibtn_player_prev:Landroid/widget/ImageButton;

.field protected imageLoader:Lcom/b/a/b/f;

.field private isLongPressingMediaButton:Z

.field private itemAdapterCheckBoxFlag:Z

.field private iv_return_first_page:Landroid/widget/ImageView;

.field private local_music_listener:Landroid/view/View$OnClickListener;

.field private longPressCallBack:Lcom/fiio/music/e/a/a;

.field private mAritstNameStr:Ljava/lang/String;

.field private mBottomPlayBar:Landroid/view/View;

.field private mBottomSelectorView:Landroid/view/View;

.field private mConfigfragmentMenu:Landroid/widget/ImageView;

.field private mConnectionListener:Lcom/fiio/music/service/l;

.field private mListSearchBtn:Landroid/view/View;

.field mMusicManager:Lcom/fiio/music/util/bh;

.field private mPlayingSongPosition:I

.field private mRadioGroup_rgs:Landroid/widget/RadioGroup;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSongItemAdapter:Lcom/fiio/music/adapter/CueListItemAdapter;

.field private mSongNameStr:Ljava/lang/String;

.field private mTopTextView:Landroid/widget/TextView;

.field private mediaPlayerBroadcastReceiver:Lcom/fiio/music/activity/dg;

.field private mediaPlayerManager:Lcom/fiio/music/service/h;

.field private openFlag:Z

.field private options:Lcom/b/a/b/d;

.field private pageFlag:I

.field private passFilePath:Ljava/lang/String;

.field private pb_player_progress:Landroid/widget/ProgressBar;

.field private playListManager:Lcom/fiio/music/util/bw;

.field private playingSong:Lcom/fiio/music/entity/Song;

.field private progressBar:Landroid/widget/ProgressBar;

.field private rgs:Landroid/widget/RadioGroup;

.field private rpb_player_progress:Lcom/fiio/music/util/RoundProgressBar;

.field private sideBar:Lcom/fiio/music/widget/SideBar;

.field song:Lcom/fiio/music/entity/Song;

.field private songDao:Lcom/fiio/music/b/k;

.field private songListTab:Landroid/widget/LinearLayout;

.field private songNotFoundTab:Landroid/widget/RelativeLayout;

.field private songPath:Ljava/lang/String;

.field private songlist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;"
        }
    .end annotation
.end field

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

.field private tabAFm:Lcom/fiio/music/fragment/TabAFm;

.field private tabAdapter:Lcom/fiio/music/adapter/FragmentTabAdapter;

.field private tabBFm:Lcom/fiio/music/fragment/TabBFm;

.field private tabCFr:Lcom/fiio/music/fragment/TabCFr;

.field private tabDFm:Lcom/fiio/music/fragment/TabDFm;

.field private tabEFm:Lcom/fiio/music/fragment/TabEFm;

.field private tabSortType:Lcom/fiio/music/util/cr;

.field private toast:Landroid/widget/Toast;

.field private tv_player_artist:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

.field private tv_player_title:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

.field private type_name:Landroid/widget/TextView;

.field private type_num:Landroid/widget/TextView;

.field volumedialog:Lcom/fiio/music/widget/VolumeDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 205
    invoke-static {}, Lcom/fiio/music/util/bl;->d()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fiio/music/activity/LocalMusicActivity;->suffixs:Ljava/lang/String;

    .line 206
    invoke-static {}, Lcom/fiio/music/util/bl;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fiio/music/activity/LocalMusicActivity;->cueSuffixs:Ljava/lang/String;

    .line 207
    invoke-static {}, Lcom/fiio/music/util/bl;->c()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fiio/music/activity/LocalMusicActivity;->m3uSuffixs:Ljava/lang/String;

    .line 208
    invoke-static {}, Lcom/fiio/music/util/bl;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fiio/music/activity/LocalMusicActivity;->isoSuffixs:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 140
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 152
    iput-object v2, p0, Lcom/fiio/music/activity/LocalMusicActivity;->passFilePath:Ljava/lang/String;

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->fragments:Ljava/util/List;

    .line 198
    iput-boolean v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->countOrder:Z

    .line 200
    iput-boolean v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->a_zCountOrder:Z

    .line 201
    iput-boolean v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->artist_displayChange_song:Z

    .line 212
    iput-boolean v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->itemAdapterCheckBoxFlag:Z

    .line 221
    const/4 v0, 0x3

    iput v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    .line 223
    iput-boolean v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->openFlag:Z

    .line 226
    new-instance v0, Lcom/fiio/music/activity/cb;

    invoke-direct {v0, p0}, Lcom/fiio/music/activity/cb;-><init>(Lcom/fiio/music/activity/LocalMusicActivity;)V

    iput-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 651
    new-instance v0, Lcom/fiio/music/activity/cm;

    invoke-direct {v0, p0}, Lcom/fiio/music/activity/cm;-><init>(Lcom/fiio/music/activity/LocalMusicActivity;)V

    iput-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->local_music_listener:Landroid/view/View$OnClickListener;

    .line 743
    new-instance v0, Lcom/fiio/music/activity/cy;

    invoke-direct {v0, p0}, Lcom/fiio/music/activity/cy;-><init>(Lcom/fiio/music/activity/LocalMusicActivity;)V

    iput-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mConnectionListener:Lcom/fiio/music/service/l;

    .line 2437
    const/4 v0, 0x1

    iput v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->SONG_FLAG:I

    .line 2438
    const/4 v0, 0x2

    iput v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->LISTS_FLAG:I

    .line 4091
    iput-object v2, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mSongItemAdapter:Lcom/fiio/music/adapter/CueListItemAdapter;

    .line 4273
    iput-object v2, p0, Lcom/fiio/music/activity/LocalMusicActivity;->curAlbum:Ljava/lang/String;

    .line 4369
    iput-boolean v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->isLongPressingMediaButton:Z

    .line 4371
    new-instance v0, Lcom/fiio/music/activity/cz;

    invoke-direct {v0, p0}, Lcom/fiio/music/activity/cz;-><init>(Lcom/fiio/music/activity/LocalMusicActivity;)V

    iput-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->longPressCallBack:Lcom/fiio/music/e/a/a;

    .line 140
    return-void
.end method

.method private PlayerOrPause(Landroid/view/View;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 1626
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->m()I

    move-result v0

    if-nez v0, :cond_1

    .line 1627
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->toast:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/fiio/music/activity/LocalMusicActivity;->context:Landroid/content/Context;

    const v3, 0x7f0c00f4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->toast:Landroid/widget/Toast;

    .line 1682
    :cond_0
    :goto_0
    return-void

    .line 1630
    :cond_1
    if-nez p1, :cond_2

    .line 1632
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->m()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 1633
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->toast:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/fiio/music/activity/LocalMusicActivity;->context:Landroid/content/Context;

    const v3, 0x7f0c0105

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->toast:Landroid/widget/Toast;

    goto :goto_0

    .line 1637
    :cond_2
    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->G()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1641
    :cond_3
    const-string v0, "song_file_path"

    invoke-virtual {p0, v0, v6}, Lcom/fiio/music/activity/LocalMusicActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->curPlayingSongPreferences:Landroid/content/SharedPreferences;

    .line 1642
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->curPlayingSongPreferences:Landroid/content/SharedPreferences;

    const-string v1, "CurPlayingSongPath"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1643
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->curPlayingSongPreferences:Landroid/content/SharedPreferences;

    const-string v1, "CurPlayingSongPath"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1644
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1645
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->curPlayingSongPreferences:Landroid/content/SharedPreferences;

    const-string v1, "UNLATCH_SD_CARD"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1646
    const-string v0, "xyz"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u672c\u5730\u97f3\u4e50\u64ad\u653e this song="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v2}, Lcom/fiio/music/service/h;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1647
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->u()V

    .line 1656
    :goto_1
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->m()I

    move-result v0

    .line 1657
    invoke-direct {p0}, Lcom/fiio/music/activity/LocalMusicActivity;->updatePlayState()V

    .line 1658
    if-eq v0, v4, :cond_4

    if-ne v0, v5, :cond_a

    .line 1660
    :cond_4
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    if-ne v0, v7, :cond_7

    .line 1661
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->ibtn_player_control:Landroid/widget/ImageButton;

    const v1, 0x7f02055a

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1648
    :cond_5
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1649
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->t()V

    goto :goto_1

    .line 1651
    :cond_6
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->toast:Landroid/widget/Toast;

    const v1, 0x7f0c00f6

    invoke-virtual {p0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->toast:Landroid/widget/Toast;

    goto :goto_1

    .line 1662
    :cond_7
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    if-ne v0, v3, :cond_8

    .line 1663
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->ibtn_player_control:Landroid/widget/ImageButton;

    const v1, 0x7f02055b

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1664
    :cond_8
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    if-ne v0, v4, :cond_9

    .line 1665
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->ibtn_player_control:Landroid/widget/ImageButton;

    const v1, 0x7f02055c

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1666
    :cond_9
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    if-ne v0, v5, :cond_0

    .line 1667
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->ibtn_player_control:Landroid/widget/ImageButton;

    const v1, 0x7f02055d

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1670
    :cond_a
    if-ne v0, v3, :cond_0

    .line 1672
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    if-ne v0, v7, :cond_b

    .line 1673
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->ibtn_player_control:Landroid/widget/ImageButton;

    const v1, 0x7f02055f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1674
    :cond_b
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    if-ne v0, v3, :cond_c

    .line 1675
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->ibtn_player_control:Landroid/widget/ImageButton;

    const v1, 0x7f020560

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1676
    :cond_c
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    if-ne v0, v4, :cond_d

    .line 1677
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->ibtn_player_control:Landroid/widget/ImageButton;

    const v1, 0x7f020561

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1678
    :cond_d
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    if-ne v0, v5, :cond_0

    .line 1679
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->ibtn_player_control:Landroid/widget/ImageButton;

    const v1, 0x7f020562

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_0
.end method

.method private PlayerOrPauseByFileList()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x4

    const/4 v2, 0x3

    const/4 v1, 0x2

    .line 1688
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->t()V

    .line 1689
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->m()I

    move-result v0

    .line 1690
    invoke-direct {p0}, Lcom/fiio/music/activity/LocalMusicActivity;->updatePlayState()V

    .line 1691
    if-eq v0, v2, :cond_0

    if-ne v0, v3, :cond_5

    .line 1693
    :cond_0
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    if-ne v0, v4, :cond_2

    .line 1694
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->ibtn_player_control:Landroid/widget/ImageButton;

    const v1, 0x7f02055a

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 1715
    :cond_1
    :goto_0
    return-void

    .line 1695
    :cond_2
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    if-ne v0, v1, :cond_3

    .line 1696
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->ibtn_player_control:Landroid/widget/ImageButton;

    const v1, 0x7f02055b

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 1697
    :cond_3
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    if-ne v0, v2, :cond_4

    .line 1698
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->ibtn_player_control:Landroid/widget/ImageButton;

    const v1, 0x7f02055c

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 1699
    :cond_4
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    if-ne v0, v3, :cond_1

    .line 1700
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->ibtn_player_control:Landroid/widget/ImageButton;

    const v1, 0x7f02055d

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 1703
    :cond_5
    if-ne v0, v1, :cond_1

    .line 1705
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    if-ne v0, v4, :cond_6

    .line 1706
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->ibtn_player_control:Landroid/widget/ImageButton;

    const v1, 0x7f02055f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 1707
    :cond_6
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    if-ne v0, v1, :cond_7

    .line 1708
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->ibtn_player_control:Landroid/widget/ImageButton;

    const v1, 0x7f020560

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 1709
    :cond_7
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    if-ne v0, v2, :cond_8

    .line 1710
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->ibtn_player_control:Landroid/widget/ImageButton;

    const v1, 0x7f020561

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 1711
    :cond_8
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    if-ne v0, v3, :cond_1

    .line 1712
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->ibtn_player_control:Landroid/widget/ImageButton;

    const v1, 0x7f020562

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/entity/Song;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->playingSong:Lcom/fiio/music/entity/Song;

    return-object v0
.end method

.method static synthetic access$1(Lcom/fiio/music/activity/LocalMusicActivity;Lcom/fiio/music/entity/Song;)V
    .locals 0

    .prologue
    .line 4274
    invoke-direct {p0, p1}, Lcom/fiio/music/activity/LocalMusicActivity;->updateSmallAlbumShow(Lcom/fiio/music/entity/Song;)V

    return-void
.end method

.method static synthetic access$10(Lcom/fiio/music/activity/LocalMusicActivity;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1625
    invoke-direct {p0, p1}, Lcom/fiio/music/activity/LocalMusicActivity;->PlayerOrPause(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$11(Lcom/fiio/music/activity/LocalMusicActivity;)V
    .locals 0

    .prologue
    .line 4013
    invoke-direct {p0}, Lcom/fiio/music/activity/LocalMusicActivity;->gotoPlayMain()V

    return-void
.end method

.method static synthetic access$12(Lcom/fiio/music/activity/LocalMusicActivity;I)V
    .locals 0

    .prologue
    .line 4351
    invoke-direct {p0, p1}, Lcom/fiio/music/activity/LocalMusicActivity;->blockedSeekTo(I)V

    return-void
.end method

.method static synthetic access$13(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/adapter/FragmentTabAdapter;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabAdapter:Lcom/fiio/music/adapter/FragmentTabAdapter;

    return-object v0
.end method

.method static synthetic access$14(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabDFm;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    return-object v0
.end method

.method static synthetic access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    return-object v0
.end method

.method static synthetic access$16(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabEFm;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabEFm:Lcom/fiio/music/fragment/TabEFm;

    return-object v0
.end method

.method static synthetic access$17(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabCFr;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabCFr:Lcom/fiio/music/fragment/TabCFr;

    return-object v0
.end method

.method static synthetic access$18(Lcom/fiio/music/activity/LocalMusicActivity;)V
    .locals 0

    .prologue
    .line 1720
    invoke-direct {p0}, Lcom/fiio/music/activity/LocalMusicActivity;->updateSongItemList()V

    return-void
.end method

.method static synthetic access$19(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabAFm;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabAFm:Lcom/fiio/music/fragment/TabAFm;

    return-object v0
.end method

.method static synthetic access$2(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/b/a/b/d;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->options:Lcom/b/a/b/d;

    return-object v0
.end method

.method static synthetic access$20(Lcom/fiio/music/activity/LocalMusicActivity;Z)V
    .locals 0

    .prologue
    .line 4369
    iput-boolean p1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->isLongPressingMediaButton:Z

    return-void
.end method

.method static synthetic access$21(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/RoundProgressBar;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->rpb_player_progress:Lcom/fiio/music/util/RoundProgressBar;

    return-object v0
.end method

.method static synthetic access$22(Lcom/fiio/music/activity/LocalMusicActivity;)Z
    .locals 1

    .prologue
    .line 4369
    iget-boolean v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->isLongPressingMediaButton:Z

    return v0
.end method

.method static synthetic access$23(Lcom/fiio/music/activity/LocalMusicActivity;I)V
    .locals 0

    .prologue
    .line 155
    iput p1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->currentPosition:I

    return-void
.end method

.method static synthetic access$24(Lcom/fiio/music/activity/LocalMusicActivity;I)V
    .locals 0

    .prologue
    .line 155
    iput p1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->currentDuration:I

    return-void
.end method

.method static synthetic access$25(Lcom/fiio/music/activity/LocalMusicActivity;)I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->currentDuration:I

    return v0
.end method

.method static synthetic access$26(Lcom/fiio/music/activity/LocalMusicActivity;)I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->currentPosition:I

    return v0
.end method

.method static synthetic access$27(Lcom/fiio/music/activity/LocalMusicActivity;Lcom/fiio/music/entity/Song;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->playingSong:Lcom/fiio/music/entity/Song;

    return-void
.end method

.method static synthetic access$28(Lcom/fiio/music/activity/LocalMusicActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->songPath:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$29(Lcom/fiio/music/activity/LocalMusicActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mSongNameStr:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/service/h;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    return-object v0
.end method

.method static synthetic access$30(Lcom/fiio/music/activity/LocalMusicActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mAritstNameStr:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$31(Lcom/fiio/music/activity/LocalMusicActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mSongNameStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$32(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/widget/AlwaysMarqueeTextView;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tv_player_title:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    return-object v0
.end method

.method static synthetic access$33(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/widget/AlwaysMarqueeTextView;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tv_player_artist:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    return-object v0
.end method

.method static synthetic access$34(Lcom/fiio/music/activity/LocalMusicActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mAritstNameStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$35(Lcom/fiio/music/activity/LocalMusicActivity;)I
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    return v0
.end method

.method static synthetic access$36(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->ibtn_player_control:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$37(Lcom/fiio/music/activity/LocalMusicActivity;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->curSongList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$38(Lcom/fiio/music/activity/LocalMusicActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->curSongList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$39(Lcom/fiio/music/activity/LocalMusicActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->songPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$40(Lcom/fiio/music/activity/LocalMusicActivity;I)V
    .locals 0

    .prologue
    .line 155
    iput p1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mPlayingSongPosition:I

    return-void
.end method

.method static synthetic access$41(Lcom/fiio/music/activity/LocalMusicActivity;)V
    .locals 0

    .prologue
    .line 2399
    invoke-direct {p0}, Lcom/fiio/music/activity/LocalMusicActivity;->updatePlayState()V

    return-void
.end method

.method static synthetic access$42(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/adapter/CueListItemAdapter;
    .locals 1

    .prologue
    .line 4091
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mSongItemAdapter:Lcom/fiio/music/adapter/CueListItemAdapter;

    return-object v0
.end method

.method static synthetic access$43(Lcom/fiio/music/activity/LocalMusicActivity;)V
    .locals 0

    .prologue
    .line 912
    invoke-direct {p0}, Lcom/fiio/music/activity/LocalMusicActivity;->goFinish()V

    return-void
.end method

.method static synthetic access$44(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/cr;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabSortType:Lcom/fiio/music/util/cr;

    return-object v0
.end method

.method static synthetic access$45(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mBottomSelectorView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$46(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->check_all_item_checkbox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$47(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->check_all_textview:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$48(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mBottomPlayBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$49(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mConfigfragmentMenu:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/fiio/music/activity/LocalMusicActivity;)I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->pageFlag:I

    return v0
.end method

.method static synthetic access$50(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mListSearchBtn:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$51(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mTopTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$52(Lcom/fiio/music/activity/LocalMusicActivity;I)I
    .locals 1

    .prologue
    .line 3850
    invoke-direct {p0, p1}, Lcom/fiio/music/activity/LocalMusicActivity;->dp2px(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$53(Lcom/fiio/music/activity/LocalMusicActivity;ILjava/lang/String;IZLjava/lang/String;Ljava/util/List;I)V
    .locals 0

    .prologue
    .line 3068
    invoke-direct/range {p0 .. p7}, Lcom/fiio/music/activity/LocalMusicActivity;->createDeleteSongDialog(ILjava/lang/String;IZLjava/lang/String;Ljava/util/List;I)V

    return-void
.end method

.method static synthetic access$54(Lcom/fiio/music/activity/LocalMusicActivity;Lcom/fiio/music/util/bw;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->playListManager:Lcom/fiio/music/util/bw;

    return-void
.end method

.method static synthetic access$55(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/bw;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->playListManager:Lcom/fiio/music/util/bw;

    return-object v0
.end method

.method static synthetic access$56(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/b/k;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->songDao:Lcom/fiio/music/b/k;

    return-object v0
.end method

.method static synthetic access$57(Lcom/fiio/music/activity/LocalMusicActivity;Lcom/fiio/music/entity/Song;)V
    .locals 0

    .prologue
    .line 3162
    invoke-direct {p0, p1}, Lcom/fiio/music/activity/LocalMusicActivity;->creatPlayerListDialogX(Lcom/fiio/music/entity/Song;)V

    return-void
.end method

.method static synthetic access$58(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/an;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->foldersongUtils:Lcom/fiio/music/util/an;

    return-object v0
.end method

.method static synthetic access$59()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    sget-object v0, Lcom/fiio/music/activity/LocalMusicActivity;->suffixs:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/fiio/music/activity/LocalMusicActivity;Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 920
    invoke-direct {p0, p1, p2}, Lcom/fiio/music/activity/LocalMusicActivity;->showWindownMenuDialog(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$60()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    sget-object v0, Lcom/fiio/music/activity/LocalMusicActivity;->m3uSuffixs:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$61()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    sget-object v0, Lcom/fiio/music/activity/LocalMusicActivity;->isoSuffixs:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$62()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    sget-object v0, Lcom/fiio/music/activity/LocalMusicActivity;->cueSuffixs:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/fiio/music/activity/LocalMusicActivity;)Z
    .locals 1

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->UI_IS_CHANGE:Z

    return v0
.end method

.method static synthetic access$8(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/widget/Toast;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->toast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$9(Lcom/fiio/music/activity/LocalMusicActivity;Landroid/widget/Toast;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->toast:Landroid/widget/Toast;

    return-void
.end method

.method private blockedSeekTo(I)V
    .locals 3

    .prologue
    .line 4353
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4354
    const-string v1, "com.fiio.music.service.meidaplayer"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4355
    const-string v1, "flag"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4356
    const-string v1, "seekToMsec"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4357
    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/LocalMusicActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 4363
    return-void
.end method

.method private creatPlayerListDialogX(Lcom/fiio/music/entity/Song;)V
    .locals 3

    .prologue
    .line 3163
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3164
    const-string v1, "Song"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3165
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->context:Landroid/content/Context;

    const-class v2, Lcom/fiio/music/activity/AddPlayListActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 3166
    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/LocalMusicActivity;->startActivity(Landroid/content/Intent;)V

    .line 3167
    return-void
.end method

.method private createDeleteSongDialog(ILjava/lang/String;IZLjava/lang/String;Ljava/util/List;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 3071
    new-instance v0, Lcom/fiio/music/custom/g;

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/fiio/music/custom/g;-><init>(Landroid/content/Context;)V

    .line 3072
    invoke-virtual {v0}, Lcom/fiio/music/custom/g;->a()Lcom/fiio/music/custom/f;

    move-result-object v7

    .line 3073
    invoke-virtual {v7}, Lcom/fiio/music/custom/f;->show()V

    .line 3074
    iget-boolean v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->UI_IS_CHANGE:Z

    if-eqz v0, :cond_0

    .line 3075
    invoke-virtual {v7}, Lcom/fiio/music/custom/f;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f040029

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    .line 3079
    :goto_0
    const v0, 0x7f0b0079

    invoke-virtual {v7, v0}, Lcom/fiio/music/custom/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3080
    const v1, 0x7f0b007e

    invoke-virtual {v7, v1}, Lcom/fiio/music/custom/f;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    .line 3081
    const v1, 0x7f0b007d

    invoke-virtual {v7, v1}, Lcom/fiio/music/custom/f;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    .line 3082
    invoke-virtual {p0}, Lcom/fiio/music/activity/LocalMusicActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00f2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3083
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p5, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3084
    new-instance v0, Lcom/fiio/music/activity/cl;

    move-object v1, p0

    move v2, p1

    move-object/from16 v3, p6

    move v4, p3

    move v5, p4

    move/from16 v6, p7

    invoke-direct/range {v0 .. v7}, Lcom/fiio/music/activity/cl;-><init>(Lcom/fiio/music/activity/LocalMusicActivity;ILjava/util/List;IZILcom/fiio/music/custom/f;)V

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3154
    new-instance v0, Lcom/fiio/music/activity/cn;

    invoke-direct {v0, p0, v7}, Lcom/fiio/music/activity/cn;-><init>(Lcom/fiio/music/activity/LocalMusicActivity;Lcom/fiio/music/custom/f;)V

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3161
    return-void

    .line 3077
    :cond_0
    invoke-virtual {v7}, Lcom/fiio/music/custom/f;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f04002a

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    goto :goto_0
.end method

.method private dp2px(I)I
    .locals 3

    .prologue
    .line 3851
    const/4 v0, 0x1

    int-to-float v1, p1

    .line 3852
    invoke-virtual {p0}, Lcom/fiio/music/activity/LocalMusicActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 3851
    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private goFinish()V
    .locals 2

    .prologue
    .line 913
    invoke-static {}, Lcom/fiio/music/util/l;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 914
    const-string v0, "sin"

    const-string v1, "X5III LocalMusicActivity goFinish"

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    invoke-virtual {p0}, Lcom/fiio/music/activity/LocalMusicActivity;->finish()V

    .line 917
    :cond_0
    return-void
.end method

.method private gotoPlayMain()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 4014
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4015
    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    .line 4016
    iget-object v2, p0, Lcom/fiio/music/activity/LocalMusicActivity;->curSongList:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/fiio/music/activity/LocalMusicActivity;->curSongList:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/fiio/music/activity/LocalMusicActivity;->curSongList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 4017
    :cond_0
    const-string v2, "0"

    aput-object v2, v1, v5

    .line 4021
    :goto_0
    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/fiio/music/activity/LocalMusicActivity;->curSongList:Ljava/util/List;

    invoke-static {v4}, Lcom/fiio/music/util/h;->a(Ljava/util/List;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 4022
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mSongNameStr:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 4023
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mAritstNameStr:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 4024
    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/fiio/music/activity/LocalMusicActivity;->currentPosition:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 4025
    const/4 v2, 0x5

    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/fiio/music/activity/LocalMusicActivity;->currentDuration:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 4026
    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v4}, Lcom/fiio/music/service/h;->z()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 4027
    const-string v2, "changestyle"

    invoke-virtual {p0, v2, v5}, Lcom/fiio/music/activity/LocalMusicActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 4028
    const-string v3, "changeboolean"

    const-string v4, "styleChange"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4029
    const-string v2, "playerInfo"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 4030
    const-string v1, "playingSong"

    iget-object v2, p0, Lcom/fiio/music/activity/LocalMusicActivity;->playingSong:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4031
    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/LocalMusicActivity;->startActivity(Landroid/content/Intent;)V

    .line 4032
    return-void

    .line 4019
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mPlayingSongPosition:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    goto/16 :goto_0
.end method

.method private initBottomBar()V
    .locals 2

    .prologue
    .line 631
    const v0, 0x7f0b01d0

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/LocalMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mBottomPlayBar:Landroid/view/View;

    .line 632
    const v0, 0x7f0b0056

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/LocalMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->ibtn_player_albumart:Landroid/widget/ImageView;

    .line 633
    const v0, 0x7f0b005c

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/LocalMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->ibtn_player_control:Landroid/widget/ImageButton;

    .line 634
    const v0, 0x7f0b0058

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/LocalMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->ibtn_player_prev:Landroid/widget/ImageButton;

    .line 635
    const v0, 0x7f0b005d

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/LocalMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->ibtn_player_next:Landroid/widget/ImageButton;

    .line 636
    const v0, 0x7f0b005e

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/LocalMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    iput-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tv_player_title:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    .line 637
    const v0, 0x7f0b005f

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/LocalMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    iput-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tv_player_artist:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    .line 639
    const v0, 0x7f0b0059

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/LocalMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/util/RoundProgressBar;

    iput-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->rpb_player_progress:Lcom/fiio/music/util/RoundProgressBar;

    .line 642
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->ibtn_player_albumart:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->local_music_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 643
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->ibtn_player_control:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->local_music_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 644
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->ibtn_player_prev:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->local_music_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 645
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->ibtn_player_next:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->local_music_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 646
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mBottomPlayBar:Landroid/view/View;

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->local_music_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 647
    return-void
.end method

.method private initBottomSelector()V
    .locals 2

    .prologue
    .line 470
    const v0, 0x7f0b01cf

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/LocalMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mBottomSelectorView:Landroid/view/View;

    .line 471
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mBottomSelectorView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 472
    return-void
.end method

.method private initHeadBar()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 474
    const v0, 0x7f0b01c2

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/LocalMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->head_layout:Landroid/widget/RelativeLayout;

    .line 475
    const v0, 0x7f0b01c6

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/LocalMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->allsong_palyall:Landroid/widget/ImageView;

    .line 476
    const v0, 0x7f0b01c5

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/LocalMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->displaychang_list:Landroid/widget/ImageView;

    .line 477
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->displaychang_list:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 478
    const v0, 0x7f0b01c9

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/LocalMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->type_name:Landroid/widget/TextView;

    .line 479
    const v0, 0x7f0b01ca

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/LocalMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->type_num:Landroid/widget/TextView;

    .line 480
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabAdapter:Lcom/fiio/music/adapter/FragmentTabAdapter;

    invoke-virtual {v0}, Lcom/fiio/music/adapter/FragmentTabAdapter;->getCurrentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabAFm:Lcom/fiio/music/fragment/TabAFm;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->head_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 483
    :cond_0
    invoke-virtual {p0}, Lcom/fiio/music/activity/LocalMusicActivity;->showOrHideHeadBar()V

    .line 484
    return-void
.end method

.method private initImageLoader()V
    .locals 5

    .prologue
    const v1, 0x7f0201d4

    const/4 v4, 0x0

    const v3, 0x7f020423

    const/4 v2, 0x1

    .line 434
    invoke-static {}, Lcom/b/a/b/f;->a()Lcom/b/a/b/f;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->imageLoader:Lcom/b/a/b/f;

    .line 437
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    if-ne v0, v2, :cond_1

    .line 438
    new-instance v0, Lcom/b/a/b/e;

    invoke-direct {v0}, Lcom/b/a/b/e;-><init>()V

    .line 440
    invoke-virtual {v0, v1}, Lcom/b/a/b/e;->b(I)Lcom/b/a/b/e;

    move-result-object v0

    .line 441
    invoke-virtual {v0, v1}, Lcom/b/a/b/e;->c(I)Lcom/b/a/b/e;

    move-result-object v0

    .line 442
    invoke-virtual {v0, v2}, Lcom/b/a/b/e;->a(Z)Lcom/b/a/b/e;

    move-result-object v0

    .line 443
    invoke-virtual {v0, v2}, Lcom/b/a/b/e;->b(Z)Lcom/b/a/b/e;

    move-result-object v0

    .line 444
    sget-object v1, Lcom/b/a/b/a/e;->f:Lcom/b/a/b/a/e;

    invoke-virtual {v0, v1}, Lcom/b/a/b/e;->a(Lcom/b/a/b/a/e;)Lcom/b/a/b/e;

    move-result-object v0

    .line 446
    new-instance v1, Lcom/b/a/b/c/c;

    invoke-direct {v1}, Lcom/b/a/b/c/c;-><init>()V

    invoke-virtual {v0, v1}, Lcom/b/a/b/e;->a(Lcom/b/a/b/c/a;)Lcom/b/a/b/e;

    move-result-object v0

    .line 447
    invoke-virtual {v0}, Lcom/b/a/b/e;->d()Lcom/b/a/b/d;

    move-result-object v0

    .line 438
    iput-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->options:Lcom/b/a/b/d;

    .line 468
    :cond_0
    :goto_0
    return-void

    .line 448
    :cond_1
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 449
    new-instance v0, Lcom/b/a/b/e;

    invoke-direct {v0}, Lcom/b/a/b/e;-><init>()V

    .line 450
    invoke-virtual {v0, v3}, Lcom/b/a/b/e;->b(I)Lcom/b/a/b/e;

    move-result-object v0

    .line 451
    invoke-virtual {v0, v3}, Lcom/b/a/b/e;->c(I)Lcom/b/a/b/e;

    move-result-object v0

    .line 452
    invoke-virtual {v0, v4}, Lcom/b/a/b/e;->a(Z)Lcom/b/a/b/e;

    move-result-object v0

    .line 453
    invoke-virtual {v0, v2}, Lcom/b/a/b/e;->b(Z)Lcom/b/a/b/e;

    move-result-object v0

    .line 454
    sget-object v1, Lcom/b/a/b/a/e;->f:Lcom/b/a/b/a/e;

    invoke-virtual {v0, v1}, Lcom/b/a/b/e;->a(Lcom/b/a/b/a/e;)Lcom/b/a/b/e;

    move-result-object v0

    .line 455
    new-instance v1, Lcom/b/a/b/c/c;

    invoke-direct {v1}, Lcom/b/a/b/c/c;-><init>()V

    invoke-virtual {v0, v1}, Lcom/b/a/b/e;->a(Lcom/b/a/b/c/a;)Lcom/b/a/b/e;

    move-result-object v0

    .line 456
    invoke-virtual {v0}, Lcom/b/a/b/e;->d()Lcom/b/a/b/d;

    move-result-object v0

    .line 449
    iput-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->options:Lcom/b/a/b/d;

    goto :goto_0

    .line 457
    :cond_2
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 458
    new-instance v0, Lcom/b/a/b/e;

    invoke-direct {v0}, Lcom/b/a/b/e;-><init>()V

    .line 459
    invoke-virtual {v0, v3}, Lcom/b/a/b/e;->b(I)Lcom/b/a/b/e;

    move-result-object v0

    .line 460
    invoke-virtual {v0, v3}, Lcom/b/a/b/e;->c(I)Lcom/b/a/b/e;

    move-result-object v0

    .line 461
    invoke-virtual {v0, v4}, Lcom/b/a/b/e;->a(Z)Lcom/b/a/b/e;

    move-result-object v0

    .line 462
    invoke-virtual {v0, v2}, Lcom/b/a/b/e;->b(Z)Lcom/b/a/b/e;

    move-result-object v0

    .line 463
    sget-object v1, Lcom/b/a/b/a/e;->f:Lcom/b/a/b/a/e;

    invoke-virtual {v0, v1}, Lcom/b/a/b/e;->a(Lcom/b/a/b/a/e;)Lcom/b/a/b/e;

    move-result-object v0

    .line 464
    new-instance v1, Lcom/b/a/b/c/c;

    invoke-direct {v1}, Lcom/b/a/b/c/c;-><init>()V

    invoke-virtual {v0, v1}, Lcom/b/a/b/e;->a(Lcom/b/a/b/c/a;)Lcom/b/a/b/e;

    move-result-object v0

    .line 465
    invoke-virtual {v0}, Lcom/b/a/b/e;->d()Lcom/b/a/b/d;

    move-result-object v0

    .line 458
    iput-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->options:Lcom/b/a/b/d;

    goto :goto_0
.end method

.method private init_a_z_slideview()V
    .locals 2

    .prologue
    .line 791
    const v0, 0x7f0b0090

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/LocalMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/widget/SideBar;

    iput-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->sideBar:Lcom/fiio/music/widget/SideBar;

    .line 792
    const v0, 0x7f0b0092

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/LocalMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 793
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->sideBar:Lcom/fiio/music/widget/SideBar;

    invoke-virtual {v1, v0}, Lcom/fiio/music/widget/SideBar;->setTextView(Landroid/widget/TextView;)V

    .line 795
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->sideBar:Lcom/fiio/music/widget/SideBar;

    new-instance v1, Lcom/fiio/music/activity/dc;

    invoke-direct {v1, p0}, Lcom/fiio/music/activity/dc;-><init>(Lcom/fiio/music/activity/LocalMusicActivity;)V

    invoke-virtual {v0, v1}, Lcom/fiio/music/widget/SideBar;->setOnTouchingLetterChangedListener(Lcom/fiio/music/widget/l;)V

    .line 839
    return-void
.end method

.method private scanSingleDir(Ljava/io/File;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2161
    new-instance v1, Lorg/FiioGetMusicInfo/audio/AudioFileFilter;

    invoke-direct {v1, v0}, Lorg/FiioGetMusicInfo/audio/AudioFileFilter;-><init>(Z)V

    invoke-virtual {p1, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    .line 2162
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2163
    array-length v1, v2

    if-lez v1, :cond_0

    .line 2164
    array-length v4, v2

    move v1, v0

    :goto_0
    if-lt v1, v4, :cond_1

    .line 2180
    :cond_0
    return-object v3

    .line 2164
    :cond_1
    aget-object v0, v2, v1

    .line 2166
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->isHidden()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2167
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Lcom/fiio/music/activity/LocalMusicActivity;->suffixs:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "."

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/fiio/music/util/h;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2168
    iget-object v5, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mMusicManager:Lcom/fiio/music/util/bh;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/fiio/music/util/bh;->a(Ljava/lang/String;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    .line 2169
    if-eqz v0, :cond_2

    .line 2170
    const/4 v5, -0x1

    invoke-virtual {v0, v5}, Lcom/fiio/music/entity/Song;->setId_(I)V

    .line 2171
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2164
    :cond_2
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2176
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public static setSearchSongFlag(III)V
    .locals 3

    .prologue
    .line 4321
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 4322
    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 4323
    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 4324
    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 4325
    invoke-static {v0}, Lcom/fiio/music/activity/df;->a([Ljava/lang/String;)V

    .line 4326
    return-void
.end method

.method private showWindownMenuDialog(Landroid/content/Context;I)V
    .locals 10

    .prologue
    const v9, 0x7f02051c

    const v5, 0x7f020503

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 924
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040190

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 925
    new-instance v1, Lcom/fiio/music/custom/b;

    invoke-direct {v1, p1}, Lcom/fiio/music/custom/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/fiio/music/custom/b;->a(Landroid/view/View;)Lcom/fiio/music/custom/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fiio/music/custom/b;->b(Landroid/view/View;)Lcom/fiio/music/custom/a;

    move-result-object v1

    .line 926
    const v2, 0x7f0b0392

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/satellitemenu/SatelliteMenu;

    .line 928
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 931
    iget v3, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    if-ne v3, v6, :cond_9

    .line 932
    const/16 v3, 0xb

    if-ne p2, v3, :cond_2

    .line 933
    new-instance v3, Lcom/fiio/music/satellitemenu/l;

    const v4, 0x7f020504

    invoke-direct {v3, v6, v4}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 934
    new-instance v3, Lcom/fiio/music/satellitemenu/l;

    const v4, 0x7f020523

    invoke-direct {v3, v8, v4}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 935
    new-instance v3, Lcom/fiio/music/satellitemenu/l;

    const v4, 0x7f02051d

    invoke-direct {v3, v7, v4}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1043
    :cond_0
    :goto_0
    invoke-virtual {v0, v2}, Lcom/fiio/music/satellitemenu/SatelliteMenu;->a(Ljava/util/List;)V

    .line 1044
    iget v2, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    if-ne v2, v6, :cond_1a

    .line 1045
    const v2, 0x7f02028f

    invoke-virtual {v0, v2}, Lcom/fiio/music/satellitemenu/SatelliteMenu;->setDefaultMaimIcom(I)V

    .line 1046
    const v2, 0x7f020506

    invoke-virtual {v0, v2}, Lcom/fiio/music/satellitemenu/SatelliteMenu;->setCloseMaimIcom(I)V

    .line 1057
    :cond_1
    :goto_1
    new-instance v2, Lcom/fiio/music/activity/dd;

    invoke-direct {v2, p0}, Lcom/fiio/music/activity/dd;-><init>(Lcom/fiio/music/activity/LocalMusicActivity;)V

    invoke-virtual {v0, v2}, Lcom/fiio/music/satellitemenu/SatelliteMenu;->setOnItemClickedListener(Lcom/fiio/music/satellitemenu/h;)V

    .line 1315
    new-instance v2, Lcom/fiio/music/activity/de;

    invoke-direct {v2, p0, v1}, Lcom/fiio/music/activity/de;-><init>(Lcom/fiio/music/activity/LocalMusicActivity;Lcom/fiio/music/custom/a;)V

    invoke-virtual {v0, v2}, Lcom/fiio/music/satellitemenu/SatelliteMenu;->setonClick(Lcom/fiio/music/satellitemenu/f;)V

    .line 1321
    invoke-virtual {v0}, Lcom/fiio/music/satellitemenu/SatelliteMenu;->b()V

    .line 1322
    const/16 v2, 0xc8

    invoke-virtual {v0, v2}, Lcom/fiio/music/satellitemenu/SatelliteMenu;->settingHight(I)V

    .line 1323
    invoke-virtual {v1}, Lcom/fiio/music/custom/a;->show()V

    .line 1324
    invoke-virtual {v0}, Lcom/fiio/music/satellitemenu/SatelliteMenu;->a()V

    .line 1326
    return-void

    .line 937
    :cond_2
    if-nez p2, :cond_3

    .line 938
    new-instance v3, Lcom/fiio/music/satellitemenu/l;

    const v4, 0x7f02051d

    invoke-direct {v3, v8, v4}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 939
    new-instance v3, Lcom/fiio/music/satellitemenu/l;

    const v4, 0x7f020523

    invoke-direct {v3, v7, v4}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 940
    new-instance v3, Lcom/fiio/music/satellitemenu/l;

    const v4, 0x7f020504

    invoke-direct {v3, v6, v4}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 941
    :cond_3
    if-eq p2, v6, :cond_4

    if-eq p2, v7, :cond_4

    if-ne p2, v8, :cond_6

    .line 942
    :cond_4
    new-instance v3, Lcom/fiio/music/satellitemenu/l;

    const v4, 0x7f020504

    invoke-direct {v3, v6, v4}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 943
    new-instance v3, Lcom/fiio/music/satellitemenu/l;

    const v4, 0x7f020523

    invoke-direct {v3, v8, v4}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 944
    new-instance v3, Lcom/fiio/music/satellitemenu/l;

    const v4, 0x7f020521

    invoke-direct {v3, v7, v4}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 945
    new-instance v3, Lcom/fiio/music/satellitemenu/l;

    const/4 v4, 0x4

    const v5, 0x7f02051d

    invoke-direct {v3, v4, v5}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 946
    if-ne p2, v7, :cond_0

    .line 948
    iget-object v3, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabCFr:Lcom/fiio/music/fragment/TabCFr;

    invoke-virtual {v3}, Lcom/fiio/music/fragment/TabCFr;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 949
    iget-object v3, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabCFr:Lcom/fiio/music/fragment/TabCFr;

    invoke-virtual {v3}, Lcom/fiio/music/fragment/TabCFr;->getIsGridShow()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 950
    new-instance v3, Lcom/fiio/music/satellitemenu/l;

    const/4 v4, 0x5

    const v5, 0x7f02050a

    invoke-direct {v3, v4, v5}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 952
    :cond_5
    new-instance v3, Lcom/fiio/music/satellitemenu/l;

    const/4 v4, 0x5

    const v5, 0x7f020526

    invoke-direct {v3, v4, v5}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 956
    :cond_6
    const/16 v3, 0x2c

    if-ne p2, v3, :cond_7

    .line 957
    new-instance v3, Lcom/fiio/music/satellitemenu/l;

    const v4, 0x7f020504

    invoke-direct {v3, v6, v4}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 958
    new-instance v3, Lcom/fiio/music/satellitemenu/l;

    const v4, 0x7f020523

    invoke-direct {v3, v8, v4}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 959
    new-instance v3, Lcom/fiio/music/satellitemenu/l;

    const v4, 0x7f02051d

    invoke-direct {v3, v7, v4}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 960
    :cond_7
    const/16 v3, 0x16

    if-ne p2, v3, :cond_8

    .line 961
    new-instance v3, Lcom/fiio/music/satellitemenu/l;

    const v4, 0x7f020504

    invoke-direct {v3, v6, v4}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 964
    :cond_8
    new-instance v3, Lcom/fiio/music/satellitemenu/l;

    const v4, 0x7f020504

    invoke-direct {v3, v6, v4}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 966
    :cond_9
    iget v3, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    if-ne v3, v7, :cond_11

    .line 968
    const/16 v3, 0xb

    if-ne p2, v3, :cond_a

    .line 969
    new-instance v3, Lcom/fiio/music/satellitemenu/l;

    invoke-direct {v3, v6, v5}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 970
    new-instance v3, Lcom/fiio/music/satellitemenu/l;

    const v4, 0x7f020522

    invoke-direct {v3, v8, v4}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 971
    new-instance v3, Lcom/fiio/music/satellitemenu/l;

    invoke-direct {v3, v7, v9}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 973
    :cond_a
    if-nez p2, :cond_b

    .line 974
    new-instance v3, Lcom/fiio/music/satellitemenu/l;

    invoke-direct {v3, v6, v5}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 975
    new-instance v3, Lcom/fiio/music/satellitemenu/l;

    const v4, 0x7f020522

    invoke-direct {v3, v7, v4}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 976
    new-instance v3, Lcom/fiio/music/satellitemenu/l;

    invoke-direct {v3, v8, v9}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 977
    :cond_b
    if-eq p2, v6, :cond_c

    if-eq p2, v7, :cond_c

    if-ne p2, v8, :cond_e

    .line 978
    :cond_c
    new-instance v3, Lcom/fiio/music/satellitemenu/l;

    invoke-direct {v3, v6, v5}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 979
    new-instance v3, Lcom/fiio/music/satellitemenu/l;

    const v4, 0x7f020522

    invoke-direct {v3, v8, v4}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 980
    new-instance v3, Lcom/fiio/music/satellitemenu/l;

    const v4, 0x7f020520

    invoke-direct {v3, v7, v4}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 981
    new-instance v3, Lcom/fiio/music/satellitemenu/l;

    const/4 v4, 0x4

    invoke-direct {v3, v4, v9}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 982
    if-ne p2, v7, :cond_0

    .line 984
    iget-object v3, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabCFr:Lcom/fiio/music/fragment/TabCFr;

    invoke-virtual {v3}, Lcom/fiio/music/fragment/TabCFr;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 985
    iget-object v3, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabCFr:Lcom/fiio/music/fragment/TabCFr;

    invoke-virtual {v3}, Lcom/fiio/music/fragment/TabCFr;->getIsGridShow()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 986
    new-instance v3, Lcom/fiio/music/satellitemenu/l;

    const/4 v4, 0x5

    const v5, 0x7f02050b

    invoke-direct {v3, v4, v5}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 988
    :cond_d
    new-instance v3, Lcom/fiio/music/satellitemenu/l;

    const/4 v4, 0x5

    const v5, 0x7f020527

    invoke-direct {v3, v4, v5}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 992
    :cond_e
    const/16 v3, 0x2c

    if-ne p2, v3, :cond_f

    .line 993
    new-instance v3, Lcom/fiio/music/satellitemenu/l;

    invoke-direct {v3, v6, v5}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 994
    new-instance v3, Lcom/fiio/music/satellitemenu/l;

    const v4, 0x7f020522

    invoke-direct {v3, v8, v4}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 995
    new-instance v3, Lcom/fiio/music/satellitemenu/l;

    invoke-direct {v3, v7, v9}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 996
    :cond_f
    const/16 v3, 0x16

    if-ne p2, v3, :cond_10

    .line 997
    new-instance v3, Lcom/fiio/music/satellitemenu/l;

    invoke-direct {v3, v6, v5}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1000
    :cond_10
    new-instance v3, Lcom/fiio/music/satellitemenu/l;

    invoke-direct {v3, v6, v5}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1003
    :cond_11
    iget v3, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    if-eq v3, v8, :cond_12

    .line 1004
    iget v3, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 1006
    :cond_12
    const/16 v3, 0xb

    if-ne p2, v3, :cond_13

    .line 1007
    new-instance v3, Lcom/fiio/music/satellitemenu/l;

    invoke-direct {v3, v6, v5}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1008
    new-instance v3, Lcom/fiio/music/satellitemenu/l;

    const v4, 0x7f020522

    invoke-direct {v3, v8, v4}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1009
    new-instance v3, Lcom/fiio/music/satellitemenu/l;

    invoke-direct {v3, v7, v9}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1011
    :cond_13
    if-nez p2, :cond_14

    .line 1012
    new-instance v3, Lcom/fiio/music/satellitemenu/l;

    invoke-direct {v3, v6, v5}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1013
    new-instance v3, Lcom/fiio/music/satellitemenu/l;

    const v4, 0x7f020522

    invoke-direct {v3, v7, v4}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1014
    new-instance v3, Lcom/fiio/music/satellitemenu/l;

    invoke-direct {v3, v8, v9}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1015
    :cond_14
    if-eq p2, v6, :cond_15

    if-eq p2, v7, :cond_15

    if-ne p2, v8, :cond_17

    .line 1016
    :cond_15
    new-instance v3, Lcom/fiio/music/satellitemenu/l;

    invoke-direct {v3, v6, v5}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1017
    new-instance v3, Lcom/fiio/music/satellitemenu/l;

    const v4, 0x7f020522

    invoke-direct {v3, v8, v4}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1018
    new-instance v3, Lcom/fiio/music/satellitemenu/l;

    const v4, 0x7f020520

    invoke-direct {v3, v7, v4}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1019
    new-instance v3, Lcom/fiio/music/satellitemenu/l;

    const/4 v4, 0x4

    invoke-direct {v3, v4, v9}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1020
    if-ne p2, v7, :cond_0

    .line 1022
    iget-object v3, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabCFr:Lcom/fiio/music/fragment/TabCFr;

    invoke-virtual {v3}, Lcom/fiio/music/fragment/TabCFr;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1023
    iget-object v3, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabCFr:Lcom/fiio/music/fragment/TabCFr;

    invoke-virtual {v3}, Lcom/fiio/music/fragment/TabCFr;->getIsGridShow()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1024
    new-instance v3, Lcom/fiio/music/satellitemenu/l;

    const/4 v4, 0x5

    const v5, 0x7f02050b

    invoke-direct {v3, v4, v5}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1026
    :cond_16
    new-instance v3, Lcom/fiio/music/satellitemenu/l;

    const/4 v4, 0x5

    const v5, 0x7f020527

    invoke-direct {v3, v4, v5}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1030
    :cond_17
    const/16 v3, 0x2c

    if-ne p2, v3, :cond_18

    .line 1031
    new-instance v3, Lcom/fiio/music/satellitemenu/l;

    invoke-direct {v3, v6, v5}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1032
    new-instance v3, Lcom/fiio/music/satellitemenu/l;

    const v4, 0x7f020522

    invoke-direct {v3, v8, v4}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1033
    new-instance v3, Lcom/fiio/music/satellitemenu/l;

    invoke-direct {v3, v7, v9}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1034
    :cond_18
    const/16 v3, 0x16

    if-ne p2, v3, :cond_19

    .line 1035
    new-instance v3, Lcom/fiio/music/satellitemenu/l;

    invoke-direct {v3, v6, v5}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1038
    :cond_19
    new-instance v3, Lcom/fiio/music/satellitemenu/l;

    invoke-direct {v3, v6, v5}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1047
    :cond_1a
    iget v2, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    if-ne v2, v7, :cond_1b

    .line 1048
    const v2, 0x7f020290

    invoke-virtual {v0, v2}, Lcom/fiio/music/satellitemenu/SatelliteMenu;->setDefaultMaimIcom(I)V

    .line 1049
    const v2, 0x7f020505

    invoke-virtual {v0, v2}, Lcom/fiio/music/satellitemenu/SatelliteMenu;->setCloseMaimIcom(I)V

    goto/16 :goto_1

    .line 1050
    :cond_1b
    iget v2, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    if-ne v2, v8, :cond_1c

    .line 1051
    const v2, 0x7f020290

    invoke-virtual {v0, v2}, Lcom/fiio/music/satellitemenu/SatelliteMenu;->setDefaultMaimIcom(I)V

    .line 1052
    const v2, 0x7f020505

    invoke-virtual {v0, v2}, Lcom/fiio/music/satellitemenu/SatelliteMenu;->setCloseMaimIcom(I)V

    goto/16 :goto_1

    .line 1053
    :cond_1c
    iget v2, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 1054
    const v2, 0x7f020290

    invoke-virtual {v0, v2}, Lcom/fiio/music/satellitemenu/SatelliteMenu;->setDefaultMaimIcom(I)V

    .line 1055
    const v2, 0x7f020505

    invoke-virtual {v0, v2}, Lcom/fiio/music/satellitemenu/SatelliteMenu;->setCloseMaimIcom(I)V

    goto/16 :goto_1
.end method

.method private tabPerformClick()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 4330
    const-string v0, "zxy - - - "

    const-string v1, "tabPerformClick  - - - -   "

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4331
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    if-eqz v0, :cond_0

    .line 4332
    invoke-static {}, Lcom/fiio/music/activity/df;->b()[Ljava/lang/String;

    move-result-object v0

    .line 4333
    aget-object v1, v0, v5

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 4334
    iget-object v2, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabAdapter:Lcom/fiio/music/adapter/FragmentTabAdapter;

    iget-object v3, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabAdapter:Lcom/fiio/music/adapter/FragmentTabAdapter;

    invoke-virtual {v3}, Lcom/fiio/music/adapter/FragmentTabAdapter;->getRadioGroup()Landroid/widget/RadioGroup;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/fiio/music/adapter/FragmentTabAdapter;->tapPerformClick(Landroid/widget/RadioGroup;I)V

    .line 4335
    const-string v2, "zxy - - - "

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "tabPerformClick   "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Integer.parseInt(search_flag[2])  :   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fiio/music/util/aw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4336
    if-ne v1, v6, :cond_1

    .line 4337
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabCFr:Lcom/fiio/music/fragment/TabCFr;

    aget-object v0, v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v5, v0}, Lcom/fiio/music/fragment/TabCFr;->setSearchSong_flagAndId(ZI)V

    .line 4342
    :cond_0
    :goto_0
    return-void

    .line 4338
    :cond_1
    if-ne v1, v5, :cond_0

    .line 4339
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    aget-object v0, v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v5, v0}, Lcom/fiio/music/fragment/TabBFm;->setSearchSong_flagAndId(ZI)V

    goto :goto_0
.end method

.method private updatePlayState()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2400
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabAFm:Lcom/fiio/music/fragment/TabAFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabAFm;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabAFm:Lcom/fiio/music/fragment/TabAFm;

    iget-boolean v0, v0, Lcom/fiio/music/fragment/TabAFm;->isPause:Z

    if-nez v0, :cond_1

    .line 2401
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabAFm:Lcom/fiio/music/fragment/TabAFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabAFm;->tabAFGetListView()Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/test/simpleCursorSongAdapter;

    .line 2402
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->m()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/test/simpleCursorSongAdapter;->setPlayerState(I)V

    .line 2435
    :cond_0
    :goto_0
    return-void

    .line 2403
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->getTabFmPageNumber()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 2404
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->tabGetSongListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SongItemAdapter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2405
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->tabGetSongListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/adapter/SongItemAdapter;

    .line 2406
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->m()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/SongItemAdapter;->setPlayerState(I)V

    goto :goto_0

    .line 2408
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->tabGetSongListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/adapter/ListItemAdapter;

    .line 2409
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->m()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/ListItemAdapter;->setPlayerState(I)V

    goto :goto_0

    .line 2414
    :cond_3
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->getTabFmPageNumber()I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 2415
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->tabGetSongListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SongItemAdapter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2416
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->tabDFGetListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/adapter/SongItemAdapter;

    .line 2417
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->m()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/SongItemAdapter;->setPlayerState(I)V

    goto/16 :goto_0

    .line 2419
    :cond_4
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->tabGetSongListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/adapter/ListItemAdapter;

    .line 2420
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->m()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/ListItemAdapter;->setPlayerState(I)V

    goto/16 :goto_0

    .line 2422
    :cond_5
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabEFm:Lcom/fiio/music/fragment/TabEFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabEFm;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2423
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabEFm:Lcom/fiio/music/fragment/TabEFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabEFm;->tabEFGetListView()Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/adapter/FileListAdapter;

    .line 2424
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->m()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/FileListAdapter;->setPlayerState(I)V

    goto/16 :goto_0

    .line 2425
    :cond_6
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->getTabFmPageNumber()I

    move-result v0

    if-nez v0, :cond_7

    .line 2426
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->tabGetListView_0()Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/adapter/ListItemAdapter;

    .line 2427
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->m()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/ListItemAdapter;->setPlayerState(I)V

    goto/16 :goto_0

    .line 2431
    :cond_7
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->getTabFmPageNumber()I

    move-result v0

    if-nez v0, :cond_0

    .line 2432
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->tabGetListView_0()Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/adapter/ListItemAdapter;

    .line 2433
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->m()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/ListItemAdapter;->setPlayerState(I)V

    goto/16 :goto_0
.end method

.method private updateSmallAlbumShow(Lcom/fiio/music/entity/Song;)V
    .locals 4

    .prologue
    .line 4276
    if-nez p1, :cond_0

    .line 4277
    const-string v0, "xyz-LocalMusicActivity"

    const-string v1, "updateSmallAlbumShow playingSong is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4297
    :goto_0
    return-void

    .line 4281
    :cond_0
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    invoke-virtual {p0}, Lcom/fiio/music/activity/LocalMusicActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/LocalMusicActivity;->imageLoader:Lcom/b/a/b/f;

    invoke-static {p1, v0, v1, v2}, Lcom/fiio/music/util/h;->a(Lcom/fiio/music/entity/Song;ILandroid/content/Context;Lcom/b/a/b/f;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->curAlbum:Ljava/lang/String;

    .line 4283
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->curAlbum:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 4284
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 4285
    const-string v0, "drawable://2130837958"

    iput-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->curAlbum:Ljava/lang/String;

    .line 4295
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->imageLoader:Lcom/b/a/b/f;

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->curAlbum:Ljava/lang/String;

    iget-object v2, p0, Lcom/fiio/music/activity/LocalMusicActivity;->ibtn_player_albumart:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/fiio/music/activity/LocalMusicActivity;->options:Lcom/b/a/b/d;

    invoke-virtual {v0, v1, v2, v3}, Lcom/b/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/b/a/b/d;)V

    goto :goto_0

    .line 4287
    :cond_2
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 4288
    const-string v0, "drawable://2130838563"

    iput-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->curAlbum:Ljava/lang/String;

    goto :goto_1

    .line 4290
    :cond_3
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 4291
    const-string v0, "drawable://2130838564"

    iput-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->curAlbum:Ljava/lang/String;

    goto :goto_1
.end method

.method private updateSongItemList()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1722
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabAFm:Lcom/fiio/music/fragment/TabAFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabAFm;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabAFm:Lcom/fiio/music/fragment/TabAFm;

    iget-boolean v0, v0, Lcom/fiio/music/fragment/TabAFm;->isPause:Z

    if-nez v0, :cond_4

    .line 1723
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabAFm:Lcom/fiio/music/fragment/TabAFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabAFm;->tabAFGetListView()Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/test/simpleCursorSongAdapter;

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0, v1}, Lcom/fiio/music/test/simpleCursorSongAdapter;->setPlayerManager(Lcom/fiio/music/service/h;)V

    .line 1753
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->m()I

    move-result v0

    .line 1754
    if-eq v0, v4, :cond_1

    if-ne v0, v5, :cond_f

    .line 1755
    :cond_1
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    if-ne v0, v2, :cond_c

    .line 1756
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->ibtn_player_control:Landroid/widget/ImageButton;

    const v1, 0x7f02055a

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 1765
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tv_player_title:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1766
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tv_player_artist:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1782
    :cond_3
    :goto_2
    return-void

    .line 1724
    :cond_4
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->getTabFmPageNumber()I

    move-result v0

    if-ne v0, v2, :cond_6

    .line 1726
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->tabGetSongListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SongItemAdapter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1727
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->tabGetSongListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/adapter/SongItemAdapter;

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/SongItemAdapter;->setPlayerManager(Lcom/fiio/music/service/h;)V

    goto :goto_0

    .line 1729
    :cond_5
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->tabGetSongListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/adapter/ListItemAdapter;

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/ListItemAdapter;->setPlayerManager(Lcom/fiio/music/service/h;)V

    goto :goto_0

    .line 1733
    :cond_6
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabCFr:Lcom/fiio/music/fragment/TabCFr;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabCFr;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1734
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabCFr:Lcom/fiio/music/fragment/TabCFr;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabCFr;->getmAdapter()Lcom/fiio/music/adapter/QueryAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/adapter/QueryAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1735
    :cond_7
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->getTabFmPageNumber()I

    move-result v0

    if-ne v0, v2, :cond_9

    .line 1736
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->tabDFGetListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SongItemAdapter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1737
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->tabDFGetListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/adapter/SongItemAdapter;

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/SongItemAdapter;->setPlayerManager(Lcom/fiio/music/service/h;)V

    goto/16 :goto_0

    .line 1739
    :cond_8
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->tabDFGetListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/adapter/ListItemAdapter;

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/ListItemAdapter;->setPlayerManager(Lcom/fiio/music/service/h;)V

    goto/16 :goto_0

    .line 1742
    :cond_9
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabEFm:Lcom/fiio/music/fragment/TabEFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabEFm;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1743
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabEFm:Lcom/fiio/music/fragment/TabEFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabEFm;->tabEFGetListView()Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/adapter/FileListAdapter;

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/FileListAdapter;->setPlayerManager(Lcom/fiio/music/service/h;)V

    goto/16 :goto_0

    .line 1744
    :cond_a
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->getTabFmPageNumber()I

    move-result v0

    if-nez v0, :cond_b

    .line 1745
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->tabGetListView_0()Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/adapter/ListItemAdapter;

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/ListItemAdapter;->setPlayerManager(Lcom/fiio/music/service/h;)V

    goto/16 :goto_0

    .line 1748
    :cond_b
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->getTabFmPageNumber()I

    move-result v0

    if-nez v0, :cond_0

    .line 1749
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->tabGetListView_0()Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/adapter/ListItemAdapter;

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/ListItemAdapter;->setPlayerManager(Lcom/fiio/music/service/h;)V

    goto/16 :goto_0

    .line 1757
    :cond_c
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    if-ne v0, v3, :cond_d

    .line 1758
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->ibtn_player_control:Landroid/widget/ImageButton;

    const v1, 0x7f02055b

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 1759
    :cond_d
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    if-ne v0, v4, :cond_e

    .line 1760
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->ibtn_player_control:Landroid/widget/ImageButton;

    const v1, 0x7f02055c

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 1761
    :cond_e
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    if-ne v0, v5, :cond_2

    .line 1762
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->ibtn_player_control:Landroid/widget/ImageButton;

    const v1, 0x7f02055d

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 1768
    :cond_f
    if-ne v0, v3, :cond_3

    .line 1769
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    if-ne v0, v2, :cond_11

    .line 1770
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->ibtn_player_control:Landroid/widget/ImageButton;

    const v1, 0x7f02055f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 1779
    :cond_10
    :goto_3
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tv_player_title:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    invoke-virtual {v0, v6}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1780
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tv_player_artist:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    invoke-virtual {v0, v6}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_2

    .line 1771
    :cond_11
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    if-ne v0, v3, :cond_12

    .line 1772
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->ibtn_player_control:Landroid/widget/ImageButton;

    const v1, 0x7f020560

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_3

    .line 1773
    :cond_12
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    if-ne v0, v4, :cond_13

    .line 1774
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->ibtn_player_control:Landroid/widget/ImageButton;

    const v1, 0x7f020561

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_3

    .line 1775
    :cond_13
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    if-ne v0, v5, :cond_10

    .line 1776
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->ibtn_player_control:Landroid/widget/ImageButton;

    const v1, 0x7f020562

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_3
.end method


# virtual methods
.method public a_z_sideBar_show(Z)V
    .locals 2

    .prologue
    .line 784
    if-eqz p1, :cond_0

    .line 785
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->sideBar:Lcom/fiio/music/widget/SideBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fiio/music/widget/SideBar;->setVisibility(I)V

    .line 789
    :goto_0
    return-void

    .line 787
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->sideBar:Lcom/fiio/music/widget/SideBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/fiio/music/widget/SideBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public creatCueOrM3uListDialog(Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;I)V
    .locals 15

    .prologue
    .line 4093
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 4094
    const/4 v5, 0x1

    move/from16 v0, p4

    if-ne v0, v5, :cond_3

    if-eqz p2, :cond_3

    move-object/from16 v0, p2

    array-length v5, v0

    if-lez v5, :cond_3

    .line 4095
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4096
    move-object/from16 v0, p2

    array-length v6, v0

    const/4 v5, 0x0

    :goto_0
    if-lt v5, v6, :cond_2

    move-object v12, v2

    move-object v13, v3

    .line 4113
    :goto_1
    new-instance v2, Lcom/fiio/music/custom/g;

    iget-object v3, p0, Lcom/fiio/music/activity/LocalMusicActivity;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/fiio/music/custom/g;-><init>(Landroid/content/Context;)V

    .line 4114
    invoke-virtual {v2}, Lcom/fiio/music/custom/g;->a()Lcom/fiio/music/custom/f;

    move-result-object v14

    .line 4115
    iget-boolean v2, p0, Lcom/fiio/music/activity/LocalMusicActivity;->UI_IS_CHANGE:Z

    if-eqz v2, :cond_7

    .line 4116
    invoke-virtual {v14}, Lcom/fiio/music/custom/f;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x7f040022

    invoke-virtual {v2, v3}, Landroid/view/Window;->setContentView(I)V

    .line 4120
    :goto_2
    const v2, 0x7f0b006e

    invoke-virtual {v14, v2}, Lcom/fiio/music/custom/f;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/TextView;

    .line 4121
    const v2, 0x7f0b0072

    invoke-virtual {v14, v2}, Lcom/fiio/music/custom/f;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/TextView;

    .line 4122
    const v2, 0x7f0b0071

    invoke-virtual {v14, v2}, Lcom/fiio/music/custom/f;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/ListView;

    .line 4123
    new-instance v2, Landroid/view/ViewStub;

    invoke-direct {v2, p0}, Landroid/view/ViewStub;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 4124
    new-instance v2, Landroid/view/ViewStub;

    invoke-direct {v2, p0}, Landroid/view/ViewStub;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 4125
    const v2, 0x7f0b006f

    invoke-virtual {v14, v2}, Lcom/fiio/music/custom/f;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/ImageView;

    .line 4126
    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_8

    .line 4127
    new-instance v2, Lcom/fiio/music/adapter/CueListItemAdapter;

    iget-object v3, p0, Lcom/fiio/music/activity/LocalMusicActivity;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    const/4 v6, 0x1

    iget-boolean v7, p0, Lcom/fiio/music/activity/LocalMusicActivity;->UI_IS_CHANGE:Z

    invoke-direct/range {v2 .. v7}, Lcom/fiio/music/adapter/CueListItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/fiio/music/service/h;IZ)V

    iput-object v2, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mSongItemAdapter:Lcom/fiio/music/adapter/CueListItemAdapter;

    .line 4128
    iget-object v2, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mSongItemAdapter:Lcom/fiio/music/adapter/CueListItemAdapter;

    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fiio/music/adapter/CueListItemAdapter;->setPlayingSongFilePath(Ljava/lang/String;)V

    .line 4129
    iget-object v2, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mSongItemAdapter:Lcom/fiio/music/adapter/CueListItemAdapter;

    invoke-virtual {v10, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4130
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4131
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 4147
    :cond_0
    :goto_3
    new-instance v2, Lcom/fiio/music/activity/cv;

    move-object v3, p0

    move/from16 v4, p4

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    move-object v7, v14

    invoke-direct/range {v2 .. v7}, Lcom/fiio/music/activity/cv;-><init>(Lcom/fiio/music/activity/LocalMusicActivity;ILjava/lang/String;Ljava/io/File;Lcom/fiio/music/custom/f;)V

    invoke-virtual {v11, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4180
    new-instance v2, Lcom/fiio/music/activity/cw;

    move/from16 v0, p4

    move-object/from16 v1, p3

    invoke-direct {v2, p0, v0, v1}, Lcom/fiio/music/activity/cw;-><init>(Lcom/fiio/music/activity/LocalMusicActivity;ILjava/io/File;)V

    invoke-virtual {v10, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 4227
    new-instance v2, Lcom/fiio/music/activity/cx;

    invoke-direct {v2, p0, v14}, Lcom/fiio/music/activity/cx;-><init>(Lcom/fiio/music/activity/LocalMusicActivity;Lcom/fiio/music/custom/f;)V

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4235
    invoke-virtual {v14}, Lcom/fiio/music/custom/f;->show()V

    .line 4236
    new-instance v2, Lcom/fiio/music/util/cz;

    iget-object v3, p0, Lcom/fiio/music/activity/LocalMusicActivity;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/fiio/music/util/cz;-><init>(Landroid/content/Context;)V

    invoke-virtual {v14, v2}, Lcom/fiio/music/custom/f;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 4237
    :cond_1
    return-void

    .line 4096
    :cond_2
    aget-object v7, p2, v5

    .line 4097
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4096
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 4099
    :cond_3
    const/4 v5, 0x2

    move/from16 v0, p4

    if-ne v0, v5, :cond_5

    if-eqz p2, :cond_5

    move-object/from16 v0, p2

    array-length v5, v0

    if-lez v5, :cond_5

    .line 4100
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4101
    move-object/from16 v0, p2

    array-length v6, v0

    const/4 v5, 0x0

    :goto_4
    if-lt v5, v6, :cond_4

    move-object v12, v2

    move-object v13, v3

    .line 4104
    goto/16 :goto_1

    .line 4101
    :cond_4
    aget-object v7, p2, v5

    .line 4102
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4101
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 4104
    :cond_5
    const/4 v2, 0x3

    move/from16 v0, p4

    if-ne v0, v2, :cond_1

    .line 4105
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4106
    move-object/from16 v0, p2

    array-length v6, v0

    const/4 v5, 0x0

    :goto_5
    if-lt v5, v6, :cond_6

    move-object v12, v2

    move-object v13, v3

    .line 4109
    goto/16 :goto_1

    .line 4106
    :cond_6
    aget-object v7, p2, v5

    .line 4107
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4106
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 4118
    :cond_7
    invoke-virtual {v14}, Lcom/fiio/music/custom/f;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x7f040023

    invoke-virtual {v2, v3}, Landroid/view/Window;->setContentView(I)V

    goto/16 :goto_2

    .line 4132
    :cond_8
    const/4 v2, 0x2

    move/from16 v0, p4

    if-ne v0, v2, :cond_9

    .line 4133
    new-instance v2, Lcom/fiio/music/adapter/CueListItemAdapter;

    iget-object v3, p0, Lcom/fiio/music/activity/LocalMusicActivity;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    const/4 v6, 0x2

    iget-boolean v7, p0, Lcom/fiio/music/activity/LocalMusicActivity;->UI_IS_CHANGE:Z

    move-object v4, v13

    invoke-direct/range {v2 .. v7}, Lcom/fiio/music/adapter/CueListItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/fiio/music/service/h;IZ)V

    iput-object v2, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mSongItemAdapter:Lcom/fiio/music/adapter/CueListItemAdapter;

    .line 4134
    iget-object v2, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mSongItemAdapter:Lcom/fiio/music/adapter/CueListItemAdapter;

    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fiio/music/adapter/CueListItemAdapter;->setPlayingSongParentFilePath(Ljava/lang/String;)V

    .line 4135
    iget-object v2, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mSongItemAdapter:Lcom/fiio/music/adapter/CueListItemAdapter;

    invoke-virtual {v10, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4136
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4137
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Landroid/widget/ListView;->setVisibility(I)V

    goto/16 :goto_3

    .line 4138
    :cond_9
    const/4 v2, 0x3

    move/from16 v0, p4

    if-ne v0, v2, :cond_0

    .line 4139
    new-instance v2, Lcom/fiio/music/adapter/CueListItemAdapter;

    iget-object v3, p0, Lcom/fiio/music/activity/LocalMusicActivity;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    const/4 v6, 0x3

    iget-boolean v7, p0, Lcom/fiio/music/activity/LocalMusicActivity;->UI_IS_CHANGE:Z

    move-object v4, v12

    invoke-direct/range {v2 .. v7}, Lcom/fiio/music/adapter/CueListItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/fiio/music/service/h;IZ)V

    iput-object v2, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mSongItemAdapter:Lcom/fiio/music/adapter/CueListItemAdapter;

    .line 4140
    iget-object v2, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mSongItemAdapter:Lcom/fiio/music/adapter/CueListItemAdapter;

    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fiio/music/adapter/CueListItemAdapter;->setPlayingSongFilePath(Ljava/lang/String;)V

    .line 4141
    iget-object v2, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mSongItemAdapter:Lcom/fiio/music/adapter/CueListItemAdapter;

    invoke-virtual {v10, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4142
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4143
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Landroid/widget/ListView;->setVisibility(I)V

    goto/16 :goto_3
.end method

.method public createSongDetailDialog(Lcom/fiio/music/entity/Song;)V
    .locals 5

    .prologue
    const v4, 0x7f0c00ea

    const/4 v1, -0x1

    .line 3173
    .line 3174
    if-nez p1, :cond_0

    .line 3175
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->toast:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->context:Landroid/content/Context;

    invoke-virtual {p0, v4}, Lcom/fiio/music/activity/LocalMusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->toast:Landroid/widget/Toast;

    .line 3229
    :goto_0
    return-void

    .line 3178
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v0

    if-nez v0, :cond_6

    .line 3180
    :cond_1
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v0

    if-nez v0, :cond_6

    .line 3181
    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getId_()I

    move-result v0

    .line 3182
    iget-object v2, p0, Lcom/fiio/music/activity/LocalMusicActivity;->songDao:Lcom/fiio/music/b/k;

    invoke-virtual {v2, v0}, Lcom/fiio/music/b/k;->c(I)Lcom/fiio/music/entity/Song;

    move-result-object p1

    .line 3185
    :goto_1
    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3187
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 3188
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->toast:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->context:Landroid/content/Context;

    invoke-virtual {p0, v4}, Lcom/fiio/music/activity/LocalMusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->toast:Landroid/widget/Toast;

    goto :goto_0

    .line 3191
    :cond_2
    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getSize()I

    move-result v3

    if-ne v3, v1, :cond_3

    .line 3192
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {p1, v2}, Lcom/fiio/music/entity/Song;->setSize(I)V

    .line 3193
    iget-object v2, p0, Lcom/fiio/music/activity/LocalMusicActivity;->songDao:Lcom/fiio/music/b/k;

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getSize()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/fiio/music/b/k;->a(II)V

    .line 3196
    :cond_3
    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3198
    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getCue_duration()I

    move-result v2

    .line 3202
    :goto_2
    if-ne v2, v1, :cond_4

    .line 3204
    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    .line 3206
    :try_start_0
    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 3207
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepare()V

    .line 3208
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getDuration()I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3213
    :goto_3
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->release()V

    .line 3214
    :goto_4
    if-eq v2, v1, :cond_4

    .line 3217
    invoke-virtual {p1, v2}, Lcom/fiio/music/entity/Song;->setDurationTime(I)V

    .line 3219
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->songDao:Lcom/fiio/music/b/k;

    invoke-virtual {v1, v0, v2}, Lcom/fiio/music/b/k;->b(II)V

    .line 3223
    :cond_4
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->context:Landroid/content/Context;

    const-class v3, Lcom/fiio/music/activity/SongInfoActivity;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3224
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3225
    const-string v3, "duration"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3226
    const-string v2, "song"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3227
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3228
    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/LocalMusicActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3200
    :cond_5
    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getDurationTime()I

    move-result v2

    goto :goto_2

    :catch_0
    move-exception v4

    .line 3213
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->release()V

    goto :goto_4

    .line 3212
    :catchall_0
    move-exception v0

    .line 3213
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->release()V

    .line 3214
    throw v0

    .line 3213
    :catch_1
    move-exception v4

    goto :goto_3

    :catch_2
    move-exception v4

    goto :goto_3

    :cond_6
    move v0, v1

    goto/16 :goto_1
.end method

.method public deleteForResetPlayerList(IILjava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 2499
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->m()I

    move-result v0

    .line 2500
    if-eqz v0, :cond_0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 2534
    :cond_0
    :goto_0
    return-void

    .line 2503
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->l()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2506
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->B()Ljava/lang/String;

    move-result-object v0

    .line 2507
    if-nez v0, :cond_2

    const-string v0, ""

    .line 2508
    :cond_2
    if-eq p2, v3, :cond_3

    .line 2509
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->l()I

    move-result v1

    if-ne v1, p2, :cond_5

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2511
    :cond_3
    if-ne p1, v2, :cond_4

    .line 2512
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0, v2}, Lcom/fiio/music/service/h;->d(I)V

    goto :goto_0

    .line 2516
    :cond_4
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->i()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 2517
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0, p1}, Lcom/fiio/music/service/h;->d(I)V

    goto :goto_0

    .line 2521
    :cond_5
    if-ne p1, v2, :cond_6

    .line 2522
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0, v2}, Lcom/fiio/music/service/h;->d(I)V

    goto :goto_0

    .line 2526
    :cond_6
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->i()I

    move-result v0

    if-ne p1, v0, :cond_7

    .line 2527
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0, p1}, Lcom/fiio/music/service/h;->d(I)V

    .line 2530
    :cond_7
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->getTabFmPageNumber()I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->getDisplayChange_playlistOrAlbumlist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2531
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabBFm;->getInnerSongList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/service/h;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method public deleteSongOrLists(III)V
    .locals 4

    .prologue
    const/4 v2, -0x1

    .line 2450
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->m()I

    move-result v0

    .line 2451
    if-eqz v0, :cond_0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 2493
    :cond_0
    :goto_0
    return-void

    .line 2454
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->l()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2458
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 2460
    packed-switch p3, :pswitch_data_0

    goto :goto_0

    .line 2463
    :pswitch_0
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->i()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 2464
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0, p1}, Lcom/fiio/music/service/h;->d(I)V

    goto :goto_0

    .line 2466
    :cond_2
    if-ne p1, v2, :cond_3

    .line 2467
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0, v2}, Lcom/fiio/music/service/h;->d(I)V

    goto :goto_0

    .line 2470
    :cond_3
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->W()Ljava/util/List;

    move-result-object v1

    .line 2472
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2479
    :goto_1
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0, v1}, Lcom/fiio/music/service/h;->a(Ljava/util/List;)V

    goto :goto_0

    .line 2472
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    .line 2473
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getId_()I

    move-result v3

    if-ne v3, p1, :cond_4

    .line 2474
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2486
    :pswitch_1
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->F()V

    goto :goto_0

    .line 2460
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 899
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 900
    return-void
.end method

.method public folderJumpForplayerMusic(Ljava/io/File;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 2081
    invoke-static {}, Lcom/fiio/music/util/an;->a()Lcom/fiio/music/util/an;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->foldersongUtils:Lcom/fiio/music/util/an;

    .line 2082
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2083
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->toast:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->context:Landroid/content/Context;

    const v2, 0x7f0c00f9

    invoke-virtual {p0, v2}, Lcom/fiio/music/activity/LocalMusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->toast:Landroid/widget/Toast;

    .line 2117
    :cond_0
    :goto_0
    return-void

    .line 2086
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->foldersongUtils:Lcom/fiio/music/util/an;

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/an;->c(Ljava/lang/String;)V

    .line 2087
    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->passFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->foldersongUtils:Lcom/fiio/music/util/an;

    invoke-virtual {v0}, Lcom/fiio/music/util/an;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2089
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->foldersongUtils:Lcom/fiio/music/util/an;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/an;->b(Z)V

    .line 2091
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2092
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    iget-object v2, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mMusicManager:Lcom/fiio/music/util/bh;

    iget-object v2, p0, Lcom/fiio/music/activity/LocalMusicActivity;->context:Landroid/content/Context;

    invoke-virtual {v1, v0, v2}, Lcom/fiio/music/service/h;->a(Ljava/io/File;Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->songlist:Ljava/util/List;

    .line 2093
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->songlist:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2097
    :cond_3
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->K()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2098
    invoke-direct {p0}, Lcom/fiio/music/activity/LocalMusicActivity;->PlayerOrPauseByFileList()V

    .line 2116
    :cond_4
    :goto_1
    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->passFilePath:Ljava/lang/String;

    goto :goto_0

    .line 2100
    :cond_5
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    if-ne v0, v5, :cond_7

    .line 2101
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->ibtn_player_control:Landroid/widget/ImageButton;

    const v1, 0x7f02055a

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 2110
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 2111
    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/activity/LocalMusicActivity;->songlist:Ljava/util/List;

    iget-object v4, p0, Lcom/fiio/music/activity/LocalMusicActivity;->context:Landroid/content/Context;

    .line 2110
    invoke-virtual {v0, v1, v2, v3}, Lcom/fiio/music/service/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 2112
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabEFm:Lcom/fiio/music/fragment/TabEFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabEFm;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabEFm:Lcom/fiio/music/fragment/TabEFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabEFm;->getTabFmPageNumber()I

    move-result v0

    if-ne v0, v5, :cond_4

    .line 2113
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabEFm:Lcom/fiio/music/fragment/TabEFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabEFm;->tabEFGetListView()Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/adapter/FileListAdapter;

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/FileListAdapter;->setPlayerManager(Lcom/fiio/music/service/h;)V

    goto :goto_1

    .line 2102
    :cond_7
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    .line 2103
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->ibtn_player_control:Landroid/widget/ImageButton;

    const v1, 0x7f02055b

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_2

    .line 2104
    :cond_8
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    .line 2105
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->ibtn_player_control:Landroid/widget/ImageButton;

    const v1, 0x7f02055c

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_2

    .line 2106
    :cond_9
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    .line 2107
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->ibtn_player_control:Landroid/widget/ImageButton;

    const v1, 0x7f02055d

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_2
.end method

.method public footCanceAll()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1573
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->pageFlag:I

    if-nez v0, :cond_1

    .line 1574
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabAFm:Lcom/fiio/music/fragment/TabAFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabAFm;->getSongItemAdapter()Lcom/fiio/music/test/simpleCursorSongAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1575
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabAFm:Lcom/fiio/music/fragment/TabAFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabAFm;->getSongItemAdapter()Lcom/fiio/music/test/simpleCursorSongAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/test/simpleCursorSongAdapter;->footViewCanceAll()V

    .line 1621
    :cond_0
    :goto_0
    return-void

    .line 1576
    :cond_1
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->pageFlag:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_4

    .line 1577
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->getDisplayChange_playlistOrAlbumlist()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->getSongItemAdapter()Lcom/fiio/music/adapter/SongItemAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1578
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->getSongItemAdapter()Lcom/fiio/music/adapter/SongItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/adapter/SongItemAdapter;->footViewCanceAll()V

    goto :goto_0

    .line 1579
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->getDisplayChange_playlistOrAlbumlist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1580
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->getWhichAdapterInner()I

    move-result v0

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->getInnerListItemAdapter()Lcom/fiio/music/adapter/ListItemAdapter;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1581
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->getInnerListItemAdapter()Lcom/fiio/music/adapter/ListItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/adapter/ListItemAdapter;->footViewCanceAll()V

    goto :goto_0

    .line 1582
    :cond_3
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->getWhichAdapterInner()I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->getInnerSongItemAdapter()Lcom/fiio/music/adapter/SongItemAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1583
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->getInnerSongItemAdapter()Lcom/fiio/music/adapter/SongItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/adapter/SongItemAdapter;->footViewCanceAll()V

    goto :goto_0

    .line 1586
    :cond_4
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->pageFlag:I

    const/16 v1, 0x16

    if-ne v0, v1, :cond_5

    .line 1587
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabCFr:Lcom/fiio/music/fragment/TabCFr;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabCFr;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1588
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabCFr:Lcom/fiio/music/fragment/TabCFr;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabCFr;->getmAdapter()Lcom/fiio/music/adapter/QueryAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1589
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabCFr:Lcom/fiio/music/fragment/TabCFr;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabCFr;->getmAdapter()Lcom/fiio/music/adapter/QueryAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/adapter/QueryAdapter;->footViewCanceAll()V

    goto :goto_0

    .line 1594
    :cond_5
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->pageFlag:I

    const/16 v1, 0x21

    if-ne v0, v1, :cond_8

    .line 1595
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->getDisplayChange_playlistOrAlbumlist()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->getSongItemAdapter()Lcom/fiio/music/adapter/SongItemAdapter;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1596
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->getSongItemAdapter()Lcom/fiio/music/adapter/SongItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/adapter/SongItemAdapter;->footViewCanceAll()V

    goto/16 :goto_0

    .line 1597
    :cond_6
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->getDisplayChange_playlistOrAlbumlist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1598
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->getWhichAdapterInner()I

    move-result v0

    if-ne v0, v2, :cond_7

    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->getInnerListItemAdapter()Lcom/fiio/music/adapter/ListItemAdapter;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1599
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->getInnerListItemAdapter()Lcom/fiio/music/adapter/ListItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/adapter/ListItemAdapter;->footViewCanceAll()V

    goto/16 :goto_0

    .line 1600
    :cond_7
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->getWhichAdapterInner()I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->getInnerSongItemAdapter()Lcom/fiio/music/adapter/SongItemAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1601
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->getInnerSongItemAdapter()Lcom/fiio/music/adapter/SongItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/adapter/SongItemAdapter;->footViewCanceAll()V

    goto/16 :goto_0

    .line 1605
    :cond_8
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->pageFlag:I

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabEFm:Lcom/fiio/music/fragment/TabEFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabEFm;->getFileListAdapter()Lcom/fiio/music/adapter/FileListAdapter;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 1606
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabEFm:Lcom/fiio/music/fragment/TabEFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabEFm;->getFileListAdapter()Lcom/fiio/music/adapter/FileListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/adapter/FileListAdapter;->footViewCanceAll()V

    goto/16 :goto_0

    .line 1607
    :cond_9
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->pageFlag:I

    if-ne v0, v2, :cond_a

    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->getListItemAdapter()Lcom/fiio/music/adapter/ListItemAdapter;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 1608
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->getListItemAdapter()Lcom/fiio/music/adapter/ListItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/adapter/ListItemAdapter;->footViewCanceAll()V

    goto/16 :goto_0

    .line 1609
    :cond_a
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->pageFlag:I

    if-ne v0, v3, :cond_b

    .line 1610
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabCFr:Lcom/fiio/music/fragment/TabCFr;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabCFr;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1611
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabCFr:Lcom/fiio/music/fragment/TabCFr;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabCFr;->getmAdapter()Lcom/fiio/music/adapter/QueryAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1612
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabCFr:Lcom/fiio/music/fragment/TabCFr;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabCFr;->getmAdapter()Lcom/fiio/music/adapter/QueryAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/adapter/QueryAdapter;->footViewCanceAll()V

    goto/16 :goto_0

    .line 1618
    :cond_b
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->pageFlag:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->getListItemAdapter()Lcom/fiio/music/adapter/ListItemAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1619
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->getListItemAdapter()Lcom/fiio/music/adapter/ListItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/adapter/ListItemAdapter;->footViewCanceAll()V

    goto/16 :goto_0
.end method

.method public footSelectAll()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1528
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->pageFlag:I

    if-nez v0, :cond_1

    .line 1529
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabAFm:Lcom/fiio/music/fragment/TabAFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabAFm;->getSongItemAdapter()Lcom/fiio/music/test/simpleCursorSongAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/test/simpleCursorSongAdapter;->footViewSelectAll()V

    .line 1571
    :cond_0
    :goto_0
    return-void

    .line 1530
    :cond_1
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->pageFlag:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_4

    .line 1531
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->getDisplayChange_playlistOrAlbumlist()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1532
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->getSongItemAdapter()Lcom/fiio/music/adapter/SongItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/adapter/SongItemAdapter;->footViewSelectAll()V

    goto :goto_0

    .line 1533
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->getDisplayChange_playlistOrAlbumlist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1534
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->getWhichAdapterInner()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 1535
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->getInnerListItemAdapter()Lcom/fiio/music/adapter/ListItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/adapter/ListItemAdapter;->footViewSelectAll()V

    goto :goto_0

    .line 1536
    :cond_3
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->getWhichAdapterInner()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 1537
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->getInnerSongItemAdapter()Lcom/fiio/music/adapter/SongItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/adapter/SongItemAdapter;->footViewSelectAll()V

    goto :goto_0

    .line 1540
    :cond_4
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->pageFlag:I

    const/16 v1, 0x16

    if-ne v0, v1, :cond_5

    .line 1541
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabCFr:Lcom/fiio/music/fragment/TabCFr;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabCFr;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1542
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabCFr:Lcom/fiio/music/fragment/TabCFr;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabCFr;->getmAdapter()Lcom/fiio/music/adapter/QueryAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/adapter/QueryAdapter;->footViewSelectAll()V

    goto :goto_0

    .line 1546
    :cond_5
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->pageFlag:I

    const/16 v1, 0x21

    if-ne v0, v1, :cond_8

    .line 1547
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->getDisplayChange_playlistOrAlbumlist()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1548
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->getSongItemAdapter()Lcom/fiio/music/adapter/SongItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/adapter/SongItemAdapter;->footViewSelectAll()V

    goto :goto_0

    .line 1549
    :cond_6
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->getDisplayChange_playlistOrAlbumlist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1550
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->getWhichAdapterInner()I

    move-result v0

    if-ne v0, v2, :cond_7

    .line 1551
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->getInnerListItemAdapter()Lcom/fiio/music/adapter/ListItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/adapter/ListItemAdapter;->footViewSelectAll()V

    goto/16 :goto_0

    .line 1552
    :cond_7
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->getWhichAdapterInner()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 1553
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->getInnerSongItemAdapter()Lcom/fiio/music/adapter/SongItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/adapter/SongItemAdapter;->footViewSelectAll()V

    goto/16 :goto_0

    .line 1557
    :cond_8
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->pageFlag:I

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_9

    .line 1559
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabEFm:Lcom/fiio/music/fragment/TabEFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabEFm;->getFileListAdapter()Lcom/fiio/music/adapter/FileListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/adapter/FileListAdapter;->footViewSelectAll()V

    goto/16 :goto_0

    .line 1560
    :cond_9
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->pageFlag:I

    if-ne v0, v2, :cond_a

    .line 1561
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->getListItemAdapter()Lcom/fiio/music/adapter/ListItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/adapter/ListItemAdapter;->footViewSelectAll()V

    goto/16 :goto_0

    .line 1562
    :cond_a
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->pageFlag:I

    if-ne v0, v3, :cond_b

    .line 1563
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabCFr:Lcom/fiio/music/fragment/TabCFr;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabCFr;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1564
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabCFr:Lcom/fiio/music/fragment/TabCFr;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabCFr;->getmAdapter()Lcom/fiio/music/adapter/QueryAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/adapter/QueryAdapter;->footViewSelectAll()V

    goto/16 :goto_0

    .line 1568
    :cond_b
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->pageFlag:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1569
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->getListItemAdapter()Lcom/fiio/music/adapter/ListItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/adapter/ListItemAdapter;->footViewSelectAll()V

    goto/16 :goto_0
.end method

.method public footSelectAllCheckBoxState(Z)V
    .locals 1

    .prologue
    .line 1524
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->check_all_item_checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1525
    return-void
.end method

.method public getAlbumTabTitle()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 4243
    const/4 v0, 0x0

    .line 4244
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabBFm;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabBFm;->getTabFmPageNumber()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 4245
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->getTitleString()Ljava/lang/String;

    move-result-object v0

    .line 4247
    :cond_0
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabCFr:Lcom/fiio/music/fragment/TabCFr;

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabCFr;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4248
    const-string v0, "#_tabCFm"

    .line 4250
    :cond_1
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabDFm;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabDFm;->getTabFmPageNumber()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 4251
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->getTitleString()Ljava/lang/String;

    move-result-object v0

    .line 4253
    :cond_2
    return-object v0
.end method

.method public getBottomBarTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4257
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mSongNameStr:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaPlayerManager()Lcom/fiio/music/service/h;
    .locals 1

    .prologue
    .line 879
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    return-object v0
.end method

.method public getSongListByFileItemPlay(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2153
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2154
    invoke-direct {p0, v0}, Lcom/fiio/music/activity/LocalMusicActivity;->scanSingleDir(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    .line 2155
    return-object v0
.end method

.method public getSongListByParentPath(Ljava/io/File;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2122
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 2123
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2124
    if-eqz v2, :cond_0

    array-length v0, v2

    if-lez v0, :cond_0

    .line 2125
    array-length v4, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v4, :cond_1

    .line 2148
    :cond_0
    return-object v3

    .line 2125
    :cond_1
    aget-object v0, v2, v1

    .line 2127
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->isHidden()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2128
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2129
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2130
    sget-object v5, Lcom/fiio/music/activity/LocalMusicActivity;->suffixs:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "."

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2131
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/fiio/music/util/h;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2130
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    .line 2131
    if-eqz v5, :cond_2

    .line 2132
    iget-object v5, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mMusicManager:Lcom/fiio/music/util/bh;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/fiio/music/util/bh;->a(Ljava/lang/String;)Lcom/fiio/music/entity/Song;

    move-result-object v5

    .line 2133
    if-eqz v5, :cond_2

    .line 2134
    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Lcom/fiio/music/entity/Song;->setId_(I)V

    .line 2135
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2139
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2140
    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/LocalMusicActivity;->getSongListByParentPath(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2125
    :cond_3
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2144
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public initSwipeListView(Lcom/fiio/music/swipemenulistview/SwipeMenuListView;)V
    .locals 2

    .prologue
    .line 3242
    new-instance v0, Lcom/fiio/music/activity/co;

    invoke-direct {v0, p0}, Lcom/fiio/music/activity/co;-><init>(Lcom/fiio/music/activity/LocalMusicActivity;)V

    .line 3260
    new-instance v1, Lcom/fiio/music/activity/cp;

    invoke-direct {v1, p0}, Lcom/fiio/music/activity/cp;-><init>(Lcom/fiio/music/activity/LocalMusicActivity;)V

    .line 3282
    invoke-virtual {p1, v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setMenuCreator(Lcom/fiio/music/swipemenulistview/c;)V

    .line 3283
    invoke-virtual {p1, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setMenuLeftCreator(Lcom/fiio/music/swipemenulistview/c;)V

    .line 3285
    new-instance v0, Lcom/fiio/music/activity/cq;

    invoke-direct {v0, p0}, Lcom/fiio/music/activity/cq;-><init>(Lcom/fiio/music/activity/LocalMusicActivity;)V

    invoke-virtual {p1, v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setOnMenuItemClickListener(Lcom/fiio/music/swipemenulistview/g;)V

    .line 3828
    new-instance v0, Lcom/fiio/music/activity/ct;

    invoke-direct {v0, p0}, Lcom/fiio/music/activity/ct;-><init>(Lcom/fiio/music/activity/LocalMusicActivity;)V

    invoke-virtual {p1, v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setOnSwipeListener(Lcom/fiio/music/swipemenulistview/i;)V

    .line 3841
    new-instance v0, Lcom/fiio/music/activity/cu;

    invoke-direct {v0, p0}, Lcom/fiio/music/activity/cu;-><init>(Lcom/fiio/music/activity/LocalMusicActivity;)V

    .line 3840
    invoke-virtual {p1, v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setOnMenuStateChangeListener(Lcom/fiio/music/swipemenulistview/h;)V

    .line 3849
    return-void
.end method

.method public initSwipeListViewFour(Lcom/fiio/music/swipemenulistview/SwipeMenuListView;)V
    .locals 2

    .prologue
    .line 2672
    new-instance v0, Lcom/fiio/music/activity/cg;

    invoke-direct {v0, p0}, Lcom/fiio/music/activity/cg;-><init>(Lcom/fiio/music/activity/LocalMusicActivity;)V

    .line 2685
    new-instance v1, Lcom/fiio/music/activity/ch;

    invoke-direct {v1, p0}, Lcom/fiio/music/activity/ch;-><init>(Lcom/fiio/music/activity/LocalMusicActivity;)V

    .line 2711
    invoke-virtual {p1, v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setMenuCreator(Lcom/fiio/music/swipemenulistview/c;)V

    .line 2712
    invoke-virtual {p1, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setMenuLeftCreator(Lcom/fiio/music/swipemenulistview/c;)V

    .line 2714
    new-instance v0, Lcom/fiio/music/activity/ci;

    invoke-direct {v0, p0}, Lcom/fiio/music/activity/ci;-><init>(Lcom/fiio/music/activity/LocalMusicActivity;)V

    invoke-virtual {p1, v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setOnMenuItemClickListener(Lcom/fiio/music/swipemenulistview/g;)V

    .line 3032
    new-instance v0, Lcom/fiio/music/activity/cj;

    invoke-direct {v0, p0}, Lcom/fiio/music/activity/cj;-><init>(Lcom/fiio/music/activity/LocalMusicActivity;)V

    invoke-virtual {p1, v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setOnSwipeListener(Lcom/fiio/music/swipemenulistview/i;)V

    .line 3045
    new-instance v0, Lcom/fiio/music/activity/ck;

    invoke-direct {v0, p0}, Lcom/fiio/music/activity/ck;-><init>(Lcom/fiio/music/activity/LocalMusicActivity;)V

    .line 3044
    invoke-virtual {p1, v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setOnMenuStateChangeListener(Lcom/fiio/music/swipemenulistview/h;)V

    .line 3053
    return-void
.end method

.method public isItemAdapterCheckBoxFlag()Z
    .locals 1

    .prologue
    .line 4261
    iget-boolean v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->itemAdapterCheckBoxFlag:Z

    return v0
.end method

.method public isTabAVisible()Z
    .locals 1

    .prologue
    .line 4268
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabAFm:Lcom/fiio/music/fragment/TabAFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabAFm;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4269
    const/4 v0, 0x1

    .line 4270
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public multiSetDataAfterDelInFileItemAdapter(Ljava/util/List;)V
    .locals 1
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
    .line 4056
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabEFm:Lcom/fiio/music/fragment/TabEFm;

    invoke-virtual {v0, p1}, Lcom/fiio/music/fragment/TabEFm;->multiAfterDel(Ljava/util/List;)V

    .line 4057
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 736
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 737
    const-string v0, "xyz-LocalMusicActivity"

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

    .line 738
    if-ne p1, v3, :cond_0

    if-ne p2, v3, :cond_0

    .line 739
    const-string v0, "xyz-LocalMusicActivity"

    const-string v1, "init after scan..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->A()V

    .line 742
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11

    .prologue
    const v10, 0x7f0c00f9

    const/4 v9, 0x2

    const/4 v3, 0x1

    const/4 v8, 0x3

    const/4 v2, 0x0

    .line 3870
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    .line 3873
    const v0, 0x7f0b01c6

    if-ne v4, v0, :cond_3

    .line 3874
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabAdapter:Lcom/fiio/music/adapter/FragmentTabAdapter;

    invoke-virtual {v0}, Lcom/fiio/music/adapter/FragmentTabAdapter;->getCurrentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3875
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v0, v2}, Lcom/fiio/music/fragment/TabBFm;->getcurFilePath(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 3876
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->toast:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->context:Landroid/content/Context;

    invoke-virtual {p0, v10}, Lcom/fiio/music/activity/LocalMusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v1, v5}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->toast:Landroid/widget/Toast;

    .line 3903
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabAdapter:Lcom/fiio/music/adapter/FragmentTabAdapter;

    invoke-virtual {v0}, Lcom/fiio/music/adapter/FragmentTabAdapter;->getCurrentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabCFr:Lcom/fiio/music/fragment/TabCFr;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3904
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabCFr:Lcom/fiio/music/fragment/TabCFr;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabCFr;->getmAdapter()Lcom/fiio/music/adapter/QueryAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/fiio/music/adapter/QueryAdapter;->songList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 3905
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabCFr:Lcom/fiio/music/fragment/TabCFr;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabCFr;->getmAdapter()Lcom/fiio/music/adapter/QueryAdapter;

    move-result-object v0

    iget-object v5, v0, Lcom/fiio/music/adapter/QueryAdapter;->songList:Ljava/util/List;

    .line 3906
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    .line 3907
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 3908
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->toast:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->context:Landroid/content/Context;

    invoke-virtual {p0, v10}, Lcom/fiio/music/activity/LocalMusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v1, v5}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->toast:Landroid/widget/Toast;

    .line 3917
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabAdapter:Lcom/fiio/music/adapter/FragmentTabAdapter;

    invoke-virtual {v0}, Lcom/fiio/music/adapter/FragmentTabAdapter;->getCurrentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3918
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v0, v2}, Lcom/fiio/music/fragment/TabDFm;->getcurFilePath(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 3919
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->toast:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->context:Landroid/content/Context;

    invoke-virtual {p0, v10}, Lcom/fiio/music/activity/LocalMusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v1, v5}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->toast:Landroid/widget/Toast;

    .line 3936
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabAdapter:Lcom/fiio/music/adapter/FragmentTabAdapter;

    invoke-virtual {v0}, Lcom/fiio/music/adapter/FragmentTabAdapter;->getCurrentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabEFm:Lcom/fiio/music/fragment/TabEFm;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3938
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabEFm:Lcom/fiio/music/fragment/TabEFm;

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabEFm;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3939
    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/LocalMusicActivity;->playerMusicByFileItemR(Ljava/io/File;)V

    .line 3944
    :cond_3
    const v0, 0x7f0b01c5

    if-ne v4, v0, :cond_1d

    .line 3945
    const-string v0, "AlbumAndSong"

    invoke-virtual {p0, v0, v2}, Lcom/fiio/music/activity/LocalMusicActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3946
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3947
    iget-boolean v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->artist_displayChange_song:Z

    if-eqz v0, :cond_d

    move v0, v2

    :goto_3
    iput-boolean v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->artist_displayChange_song:Z

    .line 3948
    iget-boolean v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->artist_displayChange_song:Z

    if-eqz v0, :cond_10

    .line 3949
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    iget-boolean v2, p0, Lcom/fiio/music/activity/LocalMusicActivity;->artist_displayChange_song:Z

    invoke-virtual {v0, v2}, Lcom/fiio/music/fragment/TabBFm;->setDisplayChange_playlistOrAlbumlist(Z)V

    .line 3951
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    if-ne v0, v3, :cond_e

    .line 3952
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->displaychang_list:Landroid/widget/ImageView;

    const v2, 0x7f0200bf

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3959
    :cond_4
    :goto_4
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->changeDisplayMode()V

    .line 3960
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->getSongItemAdapter()Lcom/fiio/music/adapter/SongItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/adapter/SongItemAdapter;->cancelSelect()V

    .line 3975
    :goto_5
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "albumOrSongtabB"

    iget-boolean v2, p0, Lcom/fiio/music/activity/LocalMusicActivity;->artist_displayChange_song:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4011
    :cond_5
    :goto_6
    return-void

    .line 3878
    :cond_6
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->getDisplayChange_playlistOrAlbumlist()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3879
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabBFm;->getFirstSong()Lcom/fiio/music/entity/Song;

    move-result-object v1

    .line 3880
    iget-object v5, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v5}, Lcom/fiio/music/fragment/TabBFm;->getsongcondition()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v6}, Lcom/fiio/music/fragment/TabBFm;->getSongList()Ljava/util/List;

    move-result-object v6

    .line 3879
    invoke-virtual {v0, v1, v9, v5, v6}, Lcom/fiio/music/activity/LocalMusicActivity;->playerMusicByItem(Lcom/fiio/music/entity/Song;ILjava/lang/String;Ljava/util/List;)V

    goto/16 :goto_0

    .line 3882
    :cond_7
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->tabGetSongListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SongItemAdapter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3883
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->getInnerSongList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabBFm;->getInnerAlbumId()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v5}, Lcom/fiio/music/fragment/TabBFm;->getInnerSongList()Ljava/util/List;

    move-result-object v5

    invoke-virtual {p0, v0, v8, v1, v5}, Lcom/fiio/music/activity/LocalMusicActivity;->playerMusicByItem(Lcom/fiio/music/entity/Song;ILjava/lang/String;Ljava/util/List;)V

    .line 3884
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabBFm;->getInnerSongList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/service/h;->b(Ljava/util/List;)V

    goto/16 :goto_0

    .line 3886
    :cond_8
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->getInnerAllAlbumSongList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    .line 3887
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabBFm;->getInnerArtistId()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v5}, Lcom/fiio/music/fragment/TabBFm;->getInnerAllAlbumSongList()Ljava/util/List;

    move-result-object v5

    .line 3886
    invoke-virtual {p0, v0, v9, v1, v5}, Lcom/fiio/music/activity/LocalMusicActivity;->playerMusicByItem(Lcom/fiio/music/entity/Song;ILjava/lang/String;Ljava/util/List;)V

    .line 3888
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabBFm;->getInnerAllAlbumSongList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/service/h;->b(Ljava/util/List;)V

    goto/16 :goto_0

    .line 3910
    :cond_9
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->context:Landroid/content/Context;

    check-cast v1, Lcom/fiio/music/activity/LocalMusicActivity;

    .line 3911
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getAlbum()Lcom/fiio/music/entity/Album;

    move-result-object v7

    invoke-virtual {v7}, Lcom/fiio/music/entity/Album;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3910
    invoke-virtual {v1, v0, v8, v6, v5}, Lcom/fiio/music/activity/LocalMusicActivity;->playerMusicByItem(Lcom/fiio/music/entity/Song;ILjava/lang/String;Ljava/util/List;)V

    .line 3912
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabCFr:Lcom/fiio/music/fragment/TabCFr;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabCFr;->getmAdapter()Lcom/fiio/music/adapter/QueryAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/adapter/QueryAdapter;->notifyDataSetChanged()V

    goto/16 :goto_1

    .line 3921
    :cond_a
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->getDisplayChange_playlistOrAlbumlist()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3922
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabDFm;->getFirstSong()Lcom/fiio/music/entity/Song;

    move-result-object v1

    const/16 v5, 0xa

    .line 3923
    iget-object v6, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v6}, Lcom/fiio/music/fragment/TabDFm;->getsongcondition()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v7}, Lcom/fiio/music/fragment/TabDFm;->getSongList()Ljava/util/List;

    move-result-object v7

    .line 3922
    invoke-virtual {v0, v1, v5, v6, v7}, Lcom/fiio/music/activity/LocalMusicActivity;->playerMusicByItem(Lcom/fiio/music/entity/Song;ILjava/lang/String;Ljava/util/List;)V

    goto/16 :goto_2

    .line 3925
    :cond_b
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->tabGetSongListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SongItemAdapter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3926
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->getInnerSongList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabDFm;->getInnerAlbumId()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v5}, Lcom/fiio/music/fragment/TabDFm;->getInnerSongList()Ljava/util/List;

    move-result-object v5

    invoke-virtual {p0, v0, v8, v1, v5}, Lcom/fiio/music/activity/LocalMusicActivity;->playerMusicByItem(Lcom/fiio/music/entity/Song;ILjava/lang/String;Ljava/util/List;)V

    .line 3927
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabDFm;->getInnerSongList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/service/h;->b(Ljava/util/List;)V

    goto/16 :goto_2

    .line 3929
    :cond_c
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->getInnerAllAlbumSongList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    .line 3930
    const/16 v1, 0xa

    iget-object v5, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v5}, Lcom/fiio/music/fragment/TabDFm;->getInnerstyleId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v6}, Lcom/fiio/music/fragment/TabDFm;->getInnerAllAlbumSongList()Ljava/util/List;

    move-result-object v6

    .line 3929
    invoke-virtual {p0, v0, v1, v5, v6}, Lcom/fiio/music/activity/LocalMusicActivity;->playerMusicByItem(Lcom/fiio/music/entity/Song;ILjava/lang/String;Ljava/util/List;)V

    .line 3931
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabDFm;->getInnerAllAlbumSongList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/service/h;->b(Ljava/util/List;)V

    goto/16 :goto_2

    :cond_d
    move v0, v3

    .line 3947
    goto/16 :goto_3

    .line 3953
    :cond_e
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    if-ne v0, v9, :cond_f

    .line 3954
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->displaychang_list:Landroid/widget/ImageView;

    const v2, 0x7f0200c0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    .line 3955
    :cond_f
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    if-ne v0, v8, :cond_4

    .line 3956
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->displaychang_list:Landroid/widget/ImageView;

    const v2, 0x7f0200c1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    .line 3962
    :cond_10
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    iget-boolean v2, p0, Lcom/fiio/music/activity/LocalMusicActivity;->artist_displayChange_song:Z

    invoke-virtual {v0, v2}, Lcom/fiio/music/fragment/TabBFm;->setDisplayChange_playlistOrAlbumlist(Z)V

    .line 3964
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    if-ne v0, v3, :cond_12

    .line 3965
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->displaychang_list:Landroid/widget/ImageView;

    const v2, 0x7f0200bc

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3972
    :cond_11
    :goto_7
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->changeDisplayMode()V

    .line 3973
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->getInnerListItemAdapter()Lcom/fiio/music/adapter/ListItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/adapter/ListItemAdapter;->cancelSelect()V

    goto/16 :goto_5

    .line 3966
    :cond_12
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    if-ne v0, v9, :cond_13

    .line 3967
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->displaychang_list:Landroid/widget/ImageView;

    const v2, 0x7f0200bd

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_7

    .line 3968
    :cond_13
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    if-ne v0, v8, :cond_11

    .line 3969
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->displaychang_list:Landroid/widget/ImageView;

    const v2, 0x7f0200be

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_7

    .line 3976
    :cond_14
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3977
    iget-boolean v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->artist_displayChange_song:Z

    if-eqz v0, :cond_16

    :goto_8
    iput-boolean v2, p0, Lcom/fiio/music/activity/LocalMusicActivity;->artist_displayChange_song:Z

    .line 3978
    iget-boolean v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->artist_displayChange_song:Z

    if-eqz v0, :cond_19

    .line 3979
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    iget-boolean v2, p0, Lcom/fiio/music/activity/LocalMusicActivity;->artist_displayChange_song:Z

    invoke-virtual {v0, v2}, Lcom/fiio/music/fragment/TabDFm;->setDisplayChange_playlistOrAlbumlist(Z)V

    .line 3980
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    if-ne v0, v3, :cond_17

    .line 3981
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->displaychang_list:Landroid/widget/ImageView;

    const v2, 0x7f0200bf

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3988
    :cond_15
    :goto_9
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->changeDisplayMode()V

    .line 3989
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->getSongItemAdapter()Lcom/fiio/music/adapter/SongItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/adapter/SongItemAdapter;->cancelSelect()V

    .line 4004
    :goto_a
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "albumOrSongtabD"

    iget-boolean v2, p0, Lcom/fiio/music/activity/LocalMusicActivity;->artist_displayChange_song:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_6

    :cond_16
    move v2, v3

    .line 3977
    goto :goto_8

    .line 3982
    :cond_17
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    if-ne v0, v9, :cond_18

    .line 3983
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->displaychang_list:Landroid/widget/ImageView;

    const v2, 0x7f0200c0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_9

    .line 3984
    :cond_18
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    if-ne v0, v8, :cond_15

    .line 3985
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->displaychang_list:Landroid/widget/ImageView;

    const v2, 0x7f0200c1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_9

    .line 3991
    :cond_19
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    iget-boolean v2, p0, Lcom/fiio/music/activity/LocalMusicActivity;->artist_displayChange_song:Z

    invoke-virtual {v0, v2}, Lcom/fiio/music/fragment/TabDFm;->setDisplayChange_playlistOrAlbumlist(Z)V

    .line 3993
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    if-ne v0, v3, :cond_1b

    .line 3994
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->displaychang_list:Landroid/widget/ImageView;

    const v2, 0x7f0200bc

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4001
    :cond_1a
    :goto_b
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->changeDisplayMode()V

    .line 4002
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->getInnerListItemAdapter()Lcom/fiio/music/adapter/ListItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/adapter/ListItemAdapter;->cancelSelect()V

    goto :goto_a

    .line 3995
    :cond_1b
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    if-ne v0, v9, :cond_1c

    .line 3996
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->displaychang_list:Landroid/widget/ImageView;

    const v2, 0x7f0200bd

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_b

    .line 3997
    :cond_1c
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    if-ne v0, v8, :cond_1a

    .line 3998
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->displaychang_list:Landroid/widget/ImageView;

    const v2, 0x7f0200be

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_b

    .line 4006
    :cond_1d
    const v0, 0x7f0b01c7

    if-ne v4, v0, :cond_5

    .line 4007
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->head_layout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4008
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabEFm:Lcom/fiio/music/fragment/TabEFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabEFm;->ChangePageForFirst()V

    goto/16 :goto_6
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const v7, 0x7f0b01b8

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 260
    const-string v0, "xyz-LocalMusicActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 262
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 263
    invoke-virtual {p0}, Lcom/fiio/music/activity/LocalMusicActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 264
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 266
    :cond_0
    invoke-virtual {p0}, Lcom/fiio/music/activity/LocalMusicActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 267
    const-string v1, "changeboolean"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->UI_IS_CHANGE:Z

    .line 269
    invoke-virtual {p0}, Lcom/fiio/music/activity/LocalMusicActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/fiio/music/util/a;->a(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    .line 271
    iget v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 272
    const v1, 0x7f040090

    invoke-virtual {p0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->setContentView(I)V

    .line 281
    :cond_1
    :goto_0
    iput-object p0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->context:Landroid/content/Context;

    .line 282
    invoke-static {}, Lcom/fiio/music/a/c;->a()Lcom/fiio/music/a/c;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/fiio/music/a/c;->a(Landroid/app/Activity;)V

    .line 283
    new-instance v1, Lcom/fiio/music/util/cr;

    iget-object v2, p0, Lcom/fiio/music/activity/LocalMusicActivity;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/fiio/music/util/cr;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabSortType:Lcom/fiio/music/util/cr;

    .line 285
    new-instance v1, Lcom/fiio/music/service/h;

    invoke-virtual {p0}, Lcom/fiio/music/activity/LocalMusicActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/fiio/music/service/h;-><init>(Landroid/content/ContextWrapper;)V

    iput-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    .line 286
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    iget-object v2, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mConnectionListener:Lcom/fiio/music/service/l;

    invoke-virtual {v1, v2}, Lcom/fiio/music/service/h;->a(Lcom/fiio/music/service/l;)V

    .line 287
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->c()V

    .line 288
    new-instance v1, Lcom/fiio/music/widget/VolumeDialog;

    invoke-direct {v1, p0}, Lcom/fiio/music/widget/VolumeDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->volumedialog:Lcom/fiio/music/widget/VolumeDialog;

    .line 290
    new-instance v1, Lcom/fiio/music/fragment/TabAFm;

    invoke-direct {v1}, Lcom/fiio/music/fragment/TabAFm;-><init>()V

    iput-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabAFm:Lcom/fiio/music/fragment/TabAFm;

    .line 291
    new-instance v1, Lcom/fiio/music/fragment/TabBFm;

    invoke-direct {v1}, Lcom/fiio/music/fragment/TabBFm;-><init>()V

    iput-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    .line 293
    new-instance v1, Lcom/fiio/music/fragment/TabCFr;

    invoke-direct {v1}, Lcom/fiio/music/fragment/TabCFr;-><init>()V

    iput-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabCFr:Lcom/fiio/music/fragment/TabCFr;

    .line 294
    new-instance v1, Lcom/fiio/music/fragment/TabDFm;

    invoke-direct {v1}, Lcom/fiio/music/fragment/TabDFm;-><init>()V

    iput-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    .line 295
    new-instance v1, Lcom/fiio/music/fragment/TabEFm;

    invoke-direct {v1}, Lcom/fiio/music/fragment/TabEFm;-><init>()V

    iput-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabEFm:Lcom/fiio/music/fragment/TabEFm;

    .line 296
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->fragments:Ljava/util/List;

    iget-object v2, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabAFm:Lcom/fiio/music/fragment/TabAFm;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->fragments:Ljava/util/List;

    iget-object v2, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->fragments:Ljava/util/List;

    iget-object v2, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabCFr:Lcom/fiio/music/fragment/TabCFr;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->fragments:Ljava/util/List;

    iget-object v2, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->fragments:Ljava/util/List;

    iget-object v2, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabEFm:Lcom/fiio/music/fragment/TabEFm;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    invoke-static {}, Lcom/fiio/music/util/an;->a()Lcom/fiio/music/util/an;

    move-result-object v1

    iput-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->foldersongUtils:Lcom/fiio/music/util/an;

    .line 303
    new-instance v1, Lcom/fiio/music/util/bh;

    invoke-direct {v1, p0}, Lcom/fiio/music/util/bh;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mMusicManager:Lcom/fiio/music/util/bh;

    .line 304
    invoke-static {p0}, Lcom/fiio/music/util/am;->a(Landroid/content/Context;)Lcom/fiio/music/util/am;

    move-result-object v1

    iput-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->folderjump:Lcom/fiio/music/util/am;

    .line 305
    invoke-virtual {p0}, Lcom/fiio/music/activity/LocalMusicActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "playerInfo"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 307
    if-eqz v1, :cond_2

    .line 308
    aget-object v2, v1, v3

    iput-object v2, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mSongNameStr:Ljava/lang/String;

    .line 309
    aget-object v1, v1, v5

    iput-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mAritstNameStr:Ljava/lang/String;

    .line 311
    :cond_2
    const-string v1, "OPEN_FLAG"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->openFlag:Z

    .line 312
    const-string v0, "long"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "open = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/fiio/music/activity/LocalMusicActivity;->openFlag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-boolean v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->openFlag:Z

    if-eqz v0, :cond_3

    .line 314
    const-string v0, "show_cur_tab"

    invoke-virtual {p0, v0, v4}, Lcom/fiio/music/activity/LocalMusicActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 316
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 317
    const-string v1, "SHOW_CUR_FRAG"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 318
    const-string v1, "SHOW_CUR_TAB"

    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 319
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 321
    :cond_3
    const v0, 0x7f0b01ba

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/LocalMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mRadioGroup_rgs:Landroid/widget/RadioGroup;

    .line 322
    new-instance v0, Lcom/fiio/music/adapter/FragmentTabAdapter;

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->fragments:Ljava/util/List;

    const v2, 0x7f0b01cc

    iget-object v3, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mRadioGroup_rgs:Landroid/widget/RadioGroup;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/fiio/music/adapter/FragmentTabAdapter;-><init>(Landroid/support/v4/app/FragmentActivity;Ljava/util/List;ILandroid/widget/RadioGroup;)V

    iput-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabAdapter:Lcom/fiio/music/adapter/FragmentTabAdapter;

    .line 323
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabAdapter:Lcom/fiio/music/adapter/FragmentTabAdapter;

    new-instance v1, Lcom/fiio/music/activity/da;

    invoke-direct {v1, p0}, Lcom/fiio/music/activity/da;-><init>(Lcom/fiio/music/activity/LocalMusicActivity;)V

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/FragmentTabAdapter;->setOnRgsExtraCheckedChangedListener(Lcom/fiio/music/adapter/FragmentTabAdapter$OnRgsExtraCheckedChangedListener;)V

    .line 383
    new-instance v0, Lcom/fiio/music/b/k;

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/fiio/music/b/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->songDao:Lcom/fiio/music/b/k;

    .line 384
    invoke-direct {p0}, Lcom/fiio/music/activity/LocalMusicActivity;->init_a_z_slideview()V

    .line 385
    const v0, 0x7f0b01ce

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/LocalMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mConfigfragmentMenu:Landroid/widget/ImageView;

    .line 386
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mConfigfragmentMenu:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->local_music_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 387
    const v0, 0x7f0b01b7

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/LocalMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mListSearchBtn:Landroid/view/View;

    .line 388
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mListSearchBtn:Landroid/view/View;

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->local_music_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 389
    const v0, 0x7f0b01b9

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/LocalMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->check_all_item_checkbox:Landroid/widget/CheckBox;

    .line 390
    invoke-virtual {p0, v7}, Lcom/fiio/music/activity/LocalMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->check_all_textview:Landroid/widget/TextView;

    .line 391
    const v0, 0x7f0b01b6

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/LocalMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mTopTextView:Landroid/widget/TextView;

    .line 392
    const v0, 0x7f0b01cd

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/LocalMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->progressBar:Landroid/widget/ProgressBar;

    .line 393
    const v0, 0x7f0b01c7

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/LocalMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->iv_return_first_page:Landroid/widget/ImageView;

    .line 394
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->iv_return_first_page:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 395
    invoke-direct {p0}, Lcom/fiio/music/activity/LocalMusicActivity;->initBottomBar()V

    .line 396
    invoke-direct {p0}, Lcom/fiio/music/activity/LocalMusicActivity;->initHeadBar()V

    .line 397
    invoke-direct {p0}, Lcom/fiio/music/activity/LocalMusicActivity;->initBottomSelector()V

    .line 399
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->check_all_item_checkbox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/fiio/music/activity/db;

    invoke-direct {v1, p0}, Lcom/fiio/music/activity/db;-><init>(Lcom/fiio/music/activity/LocalMusicActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 411
    invoke-direct {p0}, Lcom/fiio/music/activity/LocalMusicActivity;->initImageLoader()V

    .line 412
    const v0, 0x7f0b01c0

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/LocalMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->songNotFoundTab:Landroid/widget/RelativeLayout;

    .line 413
    const v0, 0x7f0b008f

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/LocalMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->songListTab:Landroid/widget/LinearLayout;

    .line 414
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->songNotFoundTab:Landroid/widget/RelativeLayout;

    const v1, 0x7f0b020e

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 415
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->local_music_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 418
    new-instance v0, Lcom/fiio/music/activity/dg;

    invoke-direct {v0, p0, v4}, Lcom/fiio/music/activity/dg;-><init>(Lcom/fiio/music/activity/LocalMusicActivity;B)V

    iput-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerBroadcastReceiver:Lcom/fiio/music/activity/dg;

    .line 419
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerBroadcastReceiver:Lcom/fiio/music/activity/dg;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.fiio.music.player.brocast"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 421
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 422
    const-string v1, "com.fiio.music.playmainactivity.downloadcoversuccess"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 423
    const-string v1, "com.fiio.music.delectcover"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 424
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/fiio/music/activity/LocalMusicActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 430
    invoke-static {}, Lcom/fiio/music/e/a/b;->a()Lcom/fiio/music/e/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->longPressCallBack:Lcom/fiio/music/e/a/a;

    invoke-virtual {v0, v1}, Lcom/fiio/music/e/a/b;->a(Lcom/fiio/music/e/a/a;)V

    .line 432
    return-void

    .line 273
    :cond_4
    iget v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    if-ne v1, v3, :cond_5

    .line 274
    const v1, 0x7f040091

    invoke-virtual {p0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->setContentView(I)V

    goto/16 :goto_0

    .line 275
    :cond_5
    iget v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    if-ne v1, v5, :cond_6

    .line 276
    const v1, 0x7f040092

    invoke-virtual {p0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->setContentView(I)V

    goto/16 :goto_0

    .line 277
    :cond_6
    iget v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    if-ne v1, v6, :cond_1

    .line 278
    const v1, 0x7f040093

    invoke-virtual {p0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->setContentView(I)V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 886
    invoke-static {}, Lcom/fiio/music/e/a/b;->a()Lcom/fiio/music/e/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->longPressCallBack:Lcom/fiio/music/e/a/a;

    invoke-virtual {v0, v1}, Lcom/fiio/music/e/a/b;->b(Lcom/fiio/music/e/a/a;)V

    .line 887
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->longPressCallBack:Lcom/fiio/music/e/a/a;

    .line 890
    const-string v0, "xyz-LocalMusicActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->g()V

    .line 892
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerBroadcastReceiver:Lcom/fiio/music/activity/dg;

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/LocalMusicActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 893
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/LocalMusicActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 894
    invoke-static {}, Lcom/fiio/music/a/c;->a()Lcom/fiio/music/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fiio/music/a/c;->b(Landroid/app/Activity;)V

    .line 895
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 896
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6

    .prologue
    const/16 v5, 0x18

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2538
    const/4 v2, 0x4

    if-ne p1, v2, :cond_14

    .line 2539
    iget-object v2, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabAFm:Lcom/fiio/music/fragment/TabAFm;

    invoke-virtual {v2}, Lcom/fiio/music/fragment/TabAFm;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabAFm:Lcom/fiio/music/fragment/TabAFm;

    invoke-virtual {v2}, Lcom/fiio/music/fragment/TabAFm;->getSongItemAdapter()Lcom/fiio/music/test/simpleCursorSongAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fiio/music/test/simpleCursorSongAdapter;->getShowCheckBoxState()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2540
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabAFm:Lcom/fiio/music/fragment/TabAFm;

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabAFm;->getSongItemAdapter()Lcom/fiio/music/test/simpleCursorSongAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/test/simpleCursorSongAdapter;->cancelSelect()V

    .line 2665
    :cond_0
    :goto_0
    return v0

    .line 2543
    :cond_1
    iget-object v2, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v2}, Lcom/fiio/music/fragment/TabBFm;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2544
    iget-object v2, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v2}, Lcom/fiio/music/fragment/TabBFm;->getTabFmPageNumber()I

    move-result v2

    if-ne v2, v1, :cond_7

    .line 2545
    iget-object v2, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v2}, Lcom/fiio/music/fragment/TabBFm;->getDisplayChange_playlistOrAlbumlist()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2546
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabBFm;->getSongItemAdapter()Lcom/fiio/music/adapter/SongItemAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/adapter/SongItemAdapter;->getShowCheckBoxState()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2547
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabBFm;->getSongItemAdapter()Lcom/fiio/music/adapter/SongItemAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/adapter/SongItemAdapter;->cancelSelect()V

    goto :goto_0

    .line 2549
    :cond_2
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v1, v0}, Lcom/fiio/music/fragment/TabBFm;->setTabFmPageNumber(I)V

    .line 2550
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v1, v0, v0, v4, v4}, Lcom/fiio/music/fragment/TabBFm;->jumpPage(IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2552
    :cond_3
    iget-object v2, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v2}, Lcom/fiio/music/fragment/TabBFm;->getDisplayChange_playlistOrAlbumlist()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2553
    iget-object v2, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v2}, Lcom/fiio/music/fragment/TabBFm;->getWhichAdapterInner()I

    move-result v2

    if-ne v2, v1, :cond_5

    .line 2554
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabBFm;->getInnerListItemAdapter()Lcom/fiio/music/adapter/ListItemAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/adapter/ListItemAdapter;->getShowCheckBoxState()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2555
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabBFm;->getInnerListItemAdapter()Lcom/fiio/music/adapter/ListItemAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/adapter/ListItemAdapter;->cancelSelect()V

    goto :goto_0

    .line 2557
    :cond_4
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v1, v0}, Lcom/fiio/music/fragment/TabBFm;->setTabFmPageNumber(I)V

    .line 2558
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v1, v0, v0, v4, v4}, Lcom/fiio/music/fragment/TabBFm;->jumpPage(IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2560
    :cond_5
    iget-object v2, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v2}, Lcom/fiio/music/fragment/TabBFm;->getWhichAdapterInner()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 2561
    iget-object v2, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v2}, Lcom/fiio/music/fragment/TabBFm;->getInnerSongItemAdapter()Lcom/fiio/music/adapter/SongItemAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fiio/music/adapter/SongItemAdapter;->getShowCheckBoxState()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2562
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabBFm;->getInnerSongItemAdapter()Lcom/fiio/music/adapter/SongItemAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/adapter/SongItemAdapter;->cancelSelect()V

    goto/16 :goto_0

    .line 2564
    :cond_6
    iget-object v2, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v2, v1}, Lcom/fiio/music/fragment/TabBFm;->setTabFmPageNumber(I)V

    .line 2565
    iget-object v2, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    iget-object v3, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v3}, Lcom/fiio/music/fragment/TabBFm;->getsongcondition()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v0, v3, v4}, Lcom/fiio/music/fragment/TabBFm;->jumpPage(IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2570
    :cond_7
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabBFm;->getTabFmPageNumber()I

    move-result v1

    if-nez v1, :cond_13

    .line 2571
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabBFm;->getListItemAdapter()Lcom/fiio/music/adapter/ListItemAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/adapter/ListItemAdapter;->getShowCheckBoxState()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 2572
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabBFm;->getListItemAdapter()Lcom/fiio/music/adapter/ListItemAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/adapter/ListItemAdapter;->cancelSelect()V

    goto/16 :goto_0

    .line 2593
    :cond_8
    iget-object v2, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabCFr:Lcom/fiio/music/fragment/TabCFr;

    invoke-virtual {v2}, Lcom/fiio/music/fragment/TabCFr;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2594
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabCFr:Lcom/fiio/music/fragment/TabCFr;

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabCFr;->getPageNumber()I

    move-result v1

    if-nez v1, :cond_9

    .line 2596
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabCFr:Lcom/fiio/music/fragment/TabCFr;

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabCFr;->getmAdapter()Lcom/fiio/music/adapter/QueryAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/adapter/QueryAdapter;->getShowCheckBoxState()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 2597
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabCFr:Lcom/fiio/music/fragment/TabCFr;

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabCFr;->getmAdapter()Lcom/fiio/music/adapter/QueryAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/adapter/QueryAdapter;->cancelSelect()V

    goto/16 :goto_0

    .line 2602
    :cond_9
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabCFr:Lcom/fiio/music/fragment/TabCFr;

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabCFr;->getmAdapter()Lcom/fiio/music/adapter/QueryAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/adapter/QueryAdapter;->getShowCheckBoxState()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2603
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabCFr:Lcom/fiio/music/fragment/TabCFr;

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabCFr;->getmAdapter()Lcom/fiio/music/adapter/QueryAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/adapter/QueryAdapter;->cancelSelect()V

    goto/16 :goto_0

    .line 2605
    :cond_a
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabCFr:Lcom/fiio/music/fragment/TabCFr;

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabCFr;->onKeyBack()V

    goto/16 :goto_0

    .line 2609
    :cond_b
    iget-object v2, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v2}, Lcom/fiio/music/fragment/TabDFm;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 2610
    iget-object v2, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v2}, Lcom/fiio/music/fragment/TabDFm;->getTabFmPageNumber()I

    move-result v2

    if-ne v2, v1, :cond_11

    .line 2611
    iget-object v2, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v2}, Lcom/fiio/music/fragment/TabDFm;->getDisplayChange_playlistOrAlbumlist()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2612
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabDFm;->getSongItemAdapter()Lcom/fiio/music/adapter/SongItemAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/adapter/SongItemAdapter;->getShowCheckBoxState()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2613
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabDFm;->getSongItemAdapter()Lcom/fiio/music/adapter/SongItemAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/adapter/SongItemAdapter;->cancelSelect()V

    goto/16 :goto_0

    .line 2615
    :cond_c
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v1, v0}, Lcom/fiio/music/fragment/TabDFm;->setTabFmPageNumber(I)V

    .line 2616
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v1, v0, v0, v4, v4}, Lcom/fiio/music/fragment/TabDFm;->jumpPage(IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2618
    :cond_d
    iget-object v2, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v2}, Lcom/fiio/music/fragment/TabDFm;->getDisplayChange_playlistOrAlbumlist()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2619
    iget-object v2, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v2}, Lcom/fiio/music/fragment/TabDFm;->getWhichAdapterInner()I

    move-result v2

    if-ne v2, v1, :cond_f

    .line 2620
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabDFm;->getInnerListItemAdapter()Lcom/fiio/music/adapter/ListItemAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/adapter/ListItemAdapter;->getShowCheckBoxState()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2621
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabDFm;->getInnerListItemAdapter()Lcom/fiio/music/adapter/ListItemAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/adapter/ListItemAdapter;->cancelSelect()V

    goto/16 :goto_0

    .line 2623
    :cond_e
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v1, v0}, Lcom/fiio/music/fragment/TabDFm;->setTabFmPageNumber(I)V

    .line 2624
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v1, v0, v0, v4, v4}, Lcom/fiio/music/fragment/TabDFm;->jumpPage(IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2626
    :cond_f
    iget-object v2, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v2}, Lcom/fiio/music/fragment/TabDFm;->getWhichAdapterInner()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 2627
    iget-object v2, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v2}, Lcom/fiio/music/fragment/TabDFm;->getInnerSongItemAdapter()Lcom/fiio/music/adapter/SongItemAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fiio/music/adapter/SongItemAdapter;->getShowCheckBoxState()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2628
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabDFm;->getInnerSongItemAdapter()Lcom/fiio/music/adapter/SongItemAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/adapter/SongItemAdapter;->cancelSelect()V

    goto/16 :goto_0

    .line 2630
    :cond_10
    iget-object v2, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v2, v1}, Lcom/fiio/music/fragment/TabDFm;->setTabFmPageNumber(I)V

    .line 2631
    iget-object v2, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    iget-object v3, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v3}, Lcom/fiio/music/fragment/TabDFm;->getsongcondition()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v0, v3, v4}, Lcom/fiio/music/fragment/TabDFm;->jumpPage(IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2636
    :cond_11
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabDFm;->getTabFmPageNumber()I

    move-result v1

    if-nez v1, :cond_13

    .line 2637
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabDFm;->getListItemAdapter()Lcom/fiio/music/adapter/ListItemAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/adapter/ListItemAdapter;->getShowCheckBoxState()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 2638
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabDFm;->getListItemAdapter()Lcom/fiio/music/adapter/ListItemAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/adapter/ListItemAdapter;->cancelSelect()V

    goto/16 :goto_0

    .line 2643
    :cond_12
    iget-object v2, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabEFm:Lcom/fiio/music/fragment/TabEFm;

    invoke-virtual {v2}, Lcom/fiio/music/fragment/TabEFm;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 2644
    iget-object v2, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabEFm:Lcom/fiio/music/fragment/TabEFm;

    invoke-virtual {v2}, Lcom/fiio/music/fragment/TabEFm;->getTabFmPageNumber()I

    move-result v2

    if-ne v2, v1, :cond_13

    .line 2646
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabEFm:Lcom/fiio/music/fragment/TabEFm;

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabEFm;->backKey()Z

    move-result v1

    .line 2647
    if-eqz v1, :cond_0

    .line 2665
    :cond_13
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_0

    .line 2655
    :cond_14
    const/16 v2, 0x19

    if-eq p1, v2, :cond_15

    if-ne p1, v5, :cond_13

    .line 2656
    :cond_15
    new-instance v2, Lcom/fiio/music/widget/VolumeDialog;

    invoke-direct {v2, p0}, Lcom/fiio/music/widget/VolumeDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/fiio/music/activity/LocalMusicActivity;->volumedialog:Lcom/fiio/music/widget/VolumeDialog;

    .line 2657
    const/16 v2, 0x19

    if-ne p1, v2, :cond_16

    .line 2658
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->volumedialog:Lcom/fiio/music/widget/VolumeDialog;

    invoke-virtual {v0, v1}, Lcom/fiio/music/widget/VolumeDialog;->a(Z)V

    move v0, v1

    .line 2659
    goto/16 :goto_0

    .line 2660
    :cond_16
    if-ne p1, v5, :cond_13

    .line 2661
    iget-object v2, p0, Lcom/fiio/music/activity/LocalMusicActivity;->volumedialog:Lcom/fiio/music/widget/VolumeDialog;

    invoke-virtual {v2, v0}, Lcom/fiio/music/widget/VolumeDialog;->a(Z)V

    move v0, v1

    .line 2662
    goto/16 :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 907
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->volumedialog:Lcom/fiio/music/widget/VolumeDialog;

    invoke-virtual {v0}, Lcom/fiio/music/widget/VolumeDialog;->d()V

    .line 908
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 909
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 843
    const-string v0, "xyz-LocalMusicActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 847
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 850
    const-string v0, "LocalMusic --- onStart"

    invoke-static {v0}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;)V

    .line 851
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 852
    invoke-virtual {p0}, Lcom/fiio/music/activity/LocalMusicActivity;->setTabContent()V

    .line 853
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mSongNameStr:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 854
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tv_player_title:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mSongNameStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 855
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tv_player_artist:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mAritstNameStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 857
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->Z()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabAFm:Lcom/fiio/music/fragment/TabAFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabAFm;->isVisible()Z

    move-result v0

    if-nez v0, :cond_2

    .line 858
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->w()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->w()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->w()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 859
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tv_player_title:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    const v1, 0x7f0c00e4

    invoke-virtual {p0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 860
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tv_player_artist:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    const v1, 0x7f0c00e5

    invoke-virtual {p0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 861
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 862
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->ibtn_player_control:Landroid/widget/ImageButton;

    const v1, 0x7f02055f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 873
    :cond_2
    :goto_0
    invoke-static {}, Lcom/fiio/music/activity/df;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 874
    invoke-direct {p0}, Lcom/fiio/music/activity/LocalMusicActivity;->tabPerformClick()V

    .line 877
    :cond_3
    return-void

    .line 863
    :cond_4
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 864
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->ibtn_player_control:Landroid/widget/ImageButton;

    const v1, 0x7f020560

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 865
    :cond_5
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    .line 866
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->ibtn_player_control:Landroid/widget/ImageButton;

    const v1, 0x7f020561

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 867
    :cond_6
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 868
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->ibtn_player_control:Landroid/widget/ImageButton;

    const v1, 0x7f020562

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 903
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 904
    return-void
.end method

.method public playerMusicByFileItem(Ljava/io/File;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x4

    .line 1991
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1992
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->toast:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->context:Landroid/content/Context;

    const v2, 0x7f0c00f9

    invoke-virtual {p0, v2}, Lcom/fiio/music/activity/LocalMusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->toast:Landroid/widget/Toast;

    .line 2023
    :goto_0
    return-void

    .line 1995
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->passFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1996
    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/LocalMusicActivity;->getSongListByFileItemPlay(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->songlist:Ljava/util/List;

    .line 1998
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabSortType:Lcom/fiio/music/util/cr;

    const-string v1, "tabEFm"

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    move-result v0

    .line 1999
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabSortType:Lcom/fiio/music/util/cr;

    const-string v2, "AZtabEFM"

    invoke-virtual {v1, v2}, Lcom/fiio/music/util/cr;->b(Ljava/lang/String;)I

    move-result v1

    .line 2000
    iget-object v2, p0, Lcom/fiio/music/activity/LocalMusicActivity;->songlist:Ljava/util/List;

    invoke-static {v2, v0, v1}, Lcom/fiio/music/util/cn;->a(Ljava/util/List;II)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->songlist:Ljava/util/List;

    .line 2002
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->K()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2003
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->l()I

    move-result v0

    if-ne v0, v4, :cond_3

    .line 2004
    invoke-direct {p0}, Lcom/fiio/music/activity/LocalMusicActivity;->PlayerOrPauseByFileList()V

    .line 2022
    :cond_2
    :goto_1
    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->passFilePath:Ljava/lang/String;

    goto :goto_0

    .line 2006
    :cond_3
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    if-ne v0, v5, :cond_5

    .line 2007
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->ibtn_player_control:Landroid/widget/ImageButton;

    const v1, 0x7f02055a

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 2016
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 2017
    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/activity/LocalMusicActivity;->songlist:Ljava/util/List;

    .line 2016
    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/fiio/music/service/h;->a(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)V

    .line 2018
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabEFm:Lcom/fiio/music/fragment/TabEFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabEFm;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabEFm:Lcom/fiio/music/fragment/TabEFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabEFm;->getTabFmPageNumber()I

    move-result v0

    if-ne v0, v5, :cond_2

    .line 2019
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabEFm:Lcom/fiio/music/fragment/TabEFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabEFm;->tabEFGetListView()Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/adapter/FileListAdapter;

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/FileListAdapter;->setPlayerManager(Lcom/fiio/music/service/h;)V

    goto :goto_1

    .line 2008
    :cond_5
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 2009
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->ibtn_player_control:Landroid/widget/ImageButton;

    const v1, 0x7f02055b

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_2

    .line 2010
    :cond_6
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    .line 2011
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->ibtn_player_control:Landroid/widget/ImageButton;

    const v1, 0x7f02055c

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_2

    .line 2012
    :cond_7
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    if-ne v0, v4, :cond_4

    .line 2013
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->ibtn_player_control:Landroid/widget/ImageButton;

    const v1, 0x7f02055d

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_2
.end method

.method public playerMusicByFileItemR(Ljava/io/File;)V
    .locals 7

    .prologue
    const/4 v4, 0x4

    const/4 v6, 0x1

    .line 1903
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1905
    invoke-static {}, Lcom/fiio/music/util/an;->a()Lcom/fiio/music/util/an;

    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mMusicManager:Lcom/fiio/music/util/bh;

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/fiio/music/util/an;->a(Ljava/io/File;Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 1906
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1907
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->toast:Landroid/widget/Toast;

    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    .line 1908
    const v2, 0x7f0c00fa

    invoke-virtual {p0, v2}, Lcom/fiio/music/activity/LocalMusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1907
    invoke-static {v1, v0, v2}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->toast:Landroid/widget/Toast;

    .line 1950
    :cond_0
    :goto_0
    return-void

    .line 1911
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1912
    invoke-direct {p0}, Lcom/fiio/music/activity/LocalMusicActivity;->PlayerOrPauseByFileList()V

    goto :goto_0

    .line 1914
    :cond_2
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    if-ne v0, v6, :cond_6

    .line 1915
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->ibtn_player_control:Landroid/widget/ImageButton;

    const v1, 0x7f02055a

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 1924
    :cond_3
    :goto_1
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    .line 1925
    if-eqz v0, :cond_5

    .line 1926
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1927
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getTrack()I

    move-result v3

    .line 1928
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

    .line 1929
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1930
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

    .line 1931
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1935
    :cond_4
    if-ltz v3, :cond_0

    .line 1936
    new-instance v4, Lcom/fiio/music/util/j;

    iget-object v5, p0, Lcom/fiio/music/activity/LocalMusicActivity;->context:Landroid/content/Context;

    invoke-direct {v4, v1, v0, v3, v5}, Lcom/fiio/music/util/j;-><init>(Ljava/io/File;Lcom/fiio/music/entity/Song;ILandroid/content/Context;)V

    .line 1937
    invoke-virtual {v4}, Lcom/fiio/music/util/j;->b()Lcom/fiio/music/entity/Song;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1938
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v4}, Lcom/fiio/music/util/j;->b()Lcom/fiio/music/entity/Song;

    move-result-object v1

    invoke-virtual {v4}, Lcom/fiio/music/util/j;->e()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/fiio/music/service/h;->a(Lcom/fiio/music/entity/Song;[Ljava/lang/String;Ljava/util/List;I)V

    .line 1945
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabEFm:Lcom/fiio/music/fragment/TabEFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabEFm;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabEFm:Lcom/fiio/music/fragment/TabEFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabEFm;->getTabFmPageNumber()I

    move-result v0

    if-ne v0, v6, :cond_0

    .line 1946
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabEFm:Lcom/fiio/music/fragment/TabEFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabEFm;->tabEFGetListView()Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/adapter/FileListAdapter;

    .line 1947
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/FileListAdapter;->setPlayerManager(Lcom/fiio/music/service/h;)V

    goto/16 :goto_0

    .line 1916
    :cond_6
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    .line 1917
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->ibtn_player_control:Landroid/widget/ImageButton;

    const v1, 0x7f02055b

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 1918
    :cond_7
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    .line 1919
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->ibtn_player_control:Landroid/widget/ImageButton;

    const v1, 0x7f02055c

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 1920
    :cond_8
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    if-ne v0, v4, :cond_3

    .line 1921
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->ibtn_player_control:Landroid/widget/ImageButton;

    const v1, 0x7f02055d

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 1942
    :cond_9
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v4, v3, v2}, Lcom/fiio/music/service/h;->b(Lcom/fiio/music/entity/Song;ILjava/lang/String;Ljava/util/List;)V

    goto :goto_2
.end method

.method public playerMusicByItem(Landroid/view/View;ILjava/lang/String;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1860
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/adapter/SongItemAdapter$ViewHolder;

    .line 1861
    iget-object v0, v0, Lcom/fiio/music/adapter/SongItemAdapter$ViewHolder;->tv_song_list_item_bottom:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    invoke-virtual {v0}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1860
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1862
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->songDao:Lcom/fiio/music/b/k;

    invoke-virtual {v1, v0}, Lcom/fiio/music/b/k;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1863
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->toast:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->context:Landroid/content/Context;

    const v2, 0x7f0c00f9

    invoke-virtual {p0, v2}, Lcom/fiio/music/activity/LocalMusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->toast:Landroid/widget/Toast;

    .line 1898
    :cond_0
    :goto_0
    return-void

    .line 1866
    :cond_1
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->i()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->l()I

    move-result v1

    if-ne p2, v1, :cond_2

    .line 1867
    invoke-direct {p0, p1}, Lcom/fiio/music/activity/LocalMusicActivity;->PlayerOrPause(Landroid/view/View;)V

    goto :goto_0

    .line 1869
    :cond_2
    iget v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    if-ne v1, v3, :cond_4

    .line 1870
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->ibtn_player_control:Landroid/widget/ImageButton;

    const v2, 0x7f02055a

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 1879
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v1, v0, p2, p3, p4}, Lcom/fiio/music/service/h;->a(IILjava/lang/String;Ljava/util/List;)V

    .line 1880
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabAFm:Lcom/fiio/music/fragment/TabAFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabAFm;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1881
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabAFm:Lcom/fiio/music/fragment/TabAFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabAFm;->tabAFGetListView()Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/adapter/SongItemAdapter;

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/SongItemAdapter;->setPlayerManager(Lcom/fiio/music/service/h;)V

    goto :goto_0

    .line 1871
    :cond_4
    iget v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 1872
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->ibtn_player_control:Landroid/widget/ImageButton;

    const v2, 0x7f02055b

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_1

    .line 1873
    :cond_5
    iget v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_6

    .line 1874
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->ibtn_player_control:Landroid/widget/ImageButton;

    const v2, 0x7f02055c

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_1

    .line 1875
    :cond_6
    iget v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 1876
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->ibtn_player_control:Landroid/widget/ImageButton;

    const v2, 0x7f02055d

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_1

    .line 1882
    :cond_7
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->getTabFmPageNumber()I

    move-result v0

    if-ne v0, v3, :cond_8

    .line 1883
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->tabGetSongListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/adapter/SongItemAdapter;

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/SongItemAdapter;->setPlayerManager(Lcom/fiio/music/service/h;)V

    goto/16 :goto_0

    .line 1884
    :cond_8
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabCFr:Lcom/fiio/music/fragment/TabCFr;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabCFr;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabCFr:Lcom/fiio/music/fragment/TabCFr;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabCFr;->getmAdapter()Lcom/fiio/music/adapter/QueryAdapter;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 1885
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabCFr:Lcom/fiio/music/fragment/TabCFr;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabCFr;->getmAdapter()Lcom/fiio/music/adapter/QueryAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/adapter/QueryAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 1886
    :cond_9
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->getTabFmPageNumber()I

    move-result v0

    if-ne v0, v3, :cond_a

    .line 1887
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->tabDFGetListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/adapter/SongItemAdapter;

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/SongItemAdapter;->setPlayerManager(Lcom/fiio/music/service/h;)V

    goto/16 :goto_0

    .line 1888
    :cond_a
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabEFm:Lcom/fiio/music/fragment/TabEFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabEFm;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1889
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabEFm:Lcom/fiio/music/fragment/TabEFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabEFm;->tabEFGetListView()Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/adapter/FileListAdapter;

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/FileListAdapter;->setPlayerManager(Lcom/fiio/music/service/h;)V

    goto/16 :goto_0

    .line 1890
    :cond_b
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->getTabFmPageNumber()I

    move-result v0

    if-nez v0, :cond_c

    .line 1891
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->tabGetListView_0()Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/adapter/ListItemAdapter;

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/ListItemAdapter;->setPlayerManager(Lcom/fiio/music/service/h;)V

    goto/16 :goto_0

    .line 1892
    :cond_c
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabCFr:Lcom/fiio/music/fragment/TabCFr;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabCFr;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabCFr:Lcom/fiio/music/fragment/TabCFr;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabCFr;->getmAdapter()Lcom/fiio/music/adapter/QueryAdapter;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 1893
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabCFr:Lcom/fiio/music/fragment/TabCFr;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabCFr;->getmAdapter()Lcom/fiio/music/adapter/QueryAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/adapter/QueryAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 1894
    :cond_d
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->getTabFmPageNumber()I

    move-result v0

    if-nez v0, :cond_0

    .line 1895
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->tabGetListView_0()Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/adapter/ListItemAdapter;

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/ListItemAdapter;->setPlayerManager(Lcom/fiio/music/service/h;)V

    goto/16 :goto_0
.end method

.method public playerMusicByItem(Lcom/fiio/music/entity/Song;ILjava/lang/String;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fiio/music/entity/Song;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 1787
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->h()Lcom/fiio/music/entity/Song;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->h()Lcom/fiio/music/entity/Song;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1789
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/fiio/music/activity/LocalMusicActivity;->PlayerOrPause(Landroid/view/View;)V

    .line 1855
    :cond_0
    :goto_0
    return-void

    .line 1791
    :cond_1
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    if-ne v0, v4, :cond_4

    .line 1792
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->ibtn_player_control:Landroid/widget/ImageButton;

    const v1, 0x7f02055a

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 1801
    :cond_2
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1802
    invoke-interface {v0, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1804
    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->isSacd()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1806
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2, p3, v0}, Lcom/fiio/music/service/h;->a(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)V

    .line 1828
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabAFm:Lcom/fiio/music/fragment/TabAFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabAFm;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1829
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabAFm:Lcom/fiio/music/fragment/TabAFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabAFm;->tabAFGetListView()Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/adapter/SongItemAdapter;

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/SongItemAdapter;->setPlayerManager(Lcom/fiio/music/service/h;)V

    goto :goto_0

    .line 1793
    :cond_4
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 1794
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->ibtn_player_control:Landroid/widget/ImageButton;

    const v1, 0x7f02055b

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_1

    .line 1795
    :cond_5
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    .line 1796
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->ibtn_player_control:Landroid/widget/ImageButton;

    const v1, 0x7f02055c

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_1

    .line 1797
    :cond_6
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 1798
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->ibtn_player_control:Landroid/widget/ImageButton;

    const v1, 0x7f02055d

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_1

    .line 1807
    :cond_7
    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1809
    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1810
    new-instance v1, Lcom/fiio/music/util/j;

    iget-object v2, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    iget-object v3, p0, Lcom/fiio/music/activity/LocalMusicActivity;->context:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/fiio/music/util/j;-><init>(Lcom/fiio/music/service/h;Landroid/content/Context;)V

    .line 1811
    invoke-virtual {v1, p1, v0, p2}, Lcom/fiio/music/util/j;->a(Lcom/fiio/music/entity/Song;Ljava/util/List;I)V

    .line 1812
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0, p3}, Lcom/fiio/music/service/h;->e(Ljava/lang/String;)V

    .line 1813
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->getSongItemAdapter()Lcom/fiio/music/adapter/SongItemAdapter;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 1814
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->getSongItemAdapter()Lcom/fiio/music/adapter/SongItemAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/SongItemAdapter;->setPlayerManager(Lcom/fiio/music/service/h;)V

    goto :goto_2

    .line 1817
    :cond_8
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->getSongItemAdapter()Lcom/fiio/music/adapter/SongItemAdapter;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 1818
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->getSongItemAdapter()Lcom/fiio/music/adapter/SongItemAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/SongItemAdapter;->setPlayerManager(Lcom/fiio/music/service/h;)V

    goto/16 :goto_2

    .line 1819
    :cond_9
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabCFr:Lcom/fiio/music/fragment/TabCFr;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabCFr;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabCFr:Lcom/fiio/music/fragment/TabCFr;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabCFr;->getmAdapter()Lcom/fiio/music/adapter/QueryAdapter;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1820
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabCFr:Lcom/fiio/music/fragment/TabCFr;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabCFr;->getmAdapter()Lcom/fiio/music/adapter/QueryAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/adapter/QueryAdapter;->notifyDataSetChanged()V

    goto/16 :goto_2

    .line 1822
    :cond_a
    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->isSacd()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1823
    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1824
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v1, p3}, Lcom/fiio/music/service/h;->e(Ljava/lang/String;)V

    .line 1825
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v1, p1, p2, v0}, Lcom/fiio/music/service/h;->a(Lcom/fiio/music/entity/Song;ILjava/util/List;)V

    goto/16 :goto_2

    .line 1830
    :cond_b
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->getTabFmPageNumber()I

    move-result v0

    if-ne v0, v4, :cond_d

    .line 1832
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->tabGetSongListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SongItemAdapter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1833
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->tabGetSongListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/adapter/SongItemAdapter;

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/SongItemAdapter;->setPlayerManager(Lcom/fiio/music/service/h;)V

    goto/16 :goto_0

    .line 1835
    :cond_c
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->tabGetSongListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/adapter/ListItemAdapter;

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/ListItemAdapter;->setPlayerManager(Lcom/fiio/music/service/h;)V

    goto/16 :goto_0

    .line 1837
    :cond_d
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabCFr:Lcom/fiio/music/fragment/TabCFr;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabCFr;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabCFr:Lcom/fiio/music/fragment/TabCFr;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabCFr;->getmAdapter()Lcom/fiio/music/adapter/QueryAdapter;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 1838
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabCFr:Lcom/fiio/music/fragment/TabCFr;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabCFr;->getmAdapter()Lcom/fiio/music/adapter/QueryAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/adapter/QueryAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 1839
    :cond_e
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->getTabFmPageNumber()I

    move-result v0

    if-ne v0, v4, :cond_10

    .line 1840
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->tabGetSongListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SongItemAdapter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1841
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->tabGetSongListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/adapter/SongItemAdapter;

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/SongItemAdapter;->setPlayerManager(Lcom/fiio/music/service/h;)V

    goto/16 :goto_0

    .line 1843
    :cond_f
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->tabGetSongListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/adapter/ListItemAdapter;

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/ListItemAdapter;->setPlayerManager(Lcom/fiio/music/service/h;)V

    goto/16 :goto_0

    .line 1845
    :cond_10
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabEFm:Lcom/fiio/music/fragment/TabEFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabEFm;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1846
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabEFm:Lcom/fiio/music/fragment/TabEFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabEFm;->tabEFGetListView()Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/adapter/FileListAdapter;

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/FileListAdapter;->setPlayerManager(Lcom/fiio/music/service/h;)V

    goto/16 :goto_0

    .line 1847
    :cond_11
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->getTabFmPageNumber()I

    move-result v0

    if-nez v0, :cond_12

    .line 1848
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->tabGetListView_0()Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/adapter/ListItemAdapter;

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/ListItemAdapter;->setPlayerManager(Lcom/fiio/music/service/h;)V

    goto/16 :goto_0

    .line 1849
    :cond_12
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabCFr:Lcom/fiio/music/fragment/TabCFr;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabCFr;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabCFr:Lcom/fiio/music/fragment/TabCFr;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabCFr;->getmAdapter()Lcom/fiio/music/adapter/QueryAdapter;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1850
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabCFr:Lcom/fiio/music/fragment/TabCFr;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabCFr;->getmAdapter()Lcom/fiio/music/adapter/QueryAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/adapter/QueryAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 1851
    :cond_13
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->getTabFmPageNumber()I

    move-result v0

    if-nez v0, :cond_0

    .line 1852
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->tabGetListView_0()Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/adapter/ListItemAdapter;

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/ListItemAdapter;->setPlayerManager(Lcom/fiio/music/service/h;)V

    goto/16 :goto_0
.end method

.method public playerMusicByM3UItem(Ljava/io/File;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    .line 2031
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2032
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->toast:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->context:Landroid/content/Context;

    const v2, 0x7f0c00f9

    invoke-virtual {p0, v2}, Lcom/fiio/music/activity/LocalMusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->toast:Landroid/widget/Toast;

    .line 2050
    :cond_0
    :goto_0
    return-void

    .line 2035
    :cond_1
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    if-ne v0, v3, :cond_3

    .line 2036
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->ibtn_player_control:Landroid/widget/ImageButton;

    const v1, 0x7f02055a

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 2045
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 2046
    const/4 v2, 0x0

    .line 2045
    invoke-virtual {v0, v1, v4, v2, p2}, Lcom/fiio/music/service/h;->a(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)V

    .line 2047
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabEFm:Lcom/fiio/music/fragment/TabEFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabEFm;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabEFm:Lcom/fiio/music/fragment/TabEFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabEFm;->getTabFmPageNumber()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 2048
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabEFm:Lcom/fiio/music/fragment/TabEFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabEFm;->tabEFGetListView()Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/adapter/FileListAdapter;

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/FileListAdapter;->setPlayerManager(Lcom/fiio/music/service/h;)V

    goto :goto_0

    .line 2037
    :cond_3
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 2038
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->ibtn_player_control:Landroid/widget/ImageButton;

    const v1, 0x7f02055b

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_1

    .line 2039
    :cond_4
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 2040
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->ibtn_player_control:Landroid/widget/ImageButton;

    const v1, 0x7f02055c

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_1

    .line 2041
    :cond_5
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    if-ne v0, v4, :cond_2

    .line 2042
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->ibtn_player_control:Landroid/widget/ImageButton;

    const v1, 0x7f02055d

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method public playerMusicBySACDItem(Ljava/io/File;ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2059
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2060
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->toast:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->context:Landroid/content/Context;

    const v2, 0x7f0c00f9

    invoke-virtual {p0, v2}, Lcom/fiio/music/activity/LocalMusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->toast:Landroid/widget/Toast;

    .line 2073
    :cond_0
    :goto_0
    return-void

    .line 2063
    :cond_1
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 2064
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->ibtn_player_control:Landroid/widget/ImageButton;

    const v1, 0x7f02055a

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 2065
    :cond_2
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 2066
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->ibtn_player_control:Landroid/widget/ImageButton;

    const v1, 0x7f02055b

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 2067
    :cond_3
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 2068
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->ibtn_player_control:Landroid/widget/ImageButton;

    const v1, 0x7f02055c

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 2069
    :cond_4
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2070
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->ibtn_player_control:Landroid/widget/ImageButton;

    const v1, 0x7f02055d

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public playerMusicFolder(Ljava/io/File;Lcom/fiio/music/util/bh;Z)V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1958
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1959
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->foldersongUtils:Lcom/fiio/music/util/an;

    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->context:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/fiio/music/util/an;->a(Ljava/io/File;Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 1960
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 1961
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->toast:Landroid/widget/Toast;

    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    const v2, 0x7f0c00fa

    invoke-virtual {p0, v2}, Lcom/fiio/music/activity/LocalMusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->toast:Landroid/widget/Toast;

    .line 1989
    :cond_0
    :goto_0
    return-void

    .line 1964
    :cond_1
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabSortType:Lcom/fiio/music/util/cr;

    const-string v2, "tabBfmFir"

    invoke-virtual {v1, v2}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    move-result v1

    .line 1965
    iget-object v2, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabSortType:Lcom/fiio/music/util/cr;

    const-string v3, "sortBFm"

    invoke-virtual {v2, v3}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    move-result v2

    .line 1966
    invoke-static {v0, v2, v1}, Lcom/fiio/music/util/cn;->e(Ljava/util/List;II)Ljava/util/List;

    move-result-object v1

    .line 1967
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v2}, Lcom/fiio/music/service/h;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1968
    invoke-direct {p0}, Lcom/fiio/music/activity/LocalMusicActivity;->PlayerOrPauseByFileList()V

    goto :goto_0

    .line 1970
    :cond_2
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    if-ne v0, v5, :cond_4

    .line 1971
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->ibtn_player_control:Landroid/widget/ImageButton;

    const v2, 0x7f02055a

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 1980
    :cond_3
    :goto_1
    if-eqz p3, :cond_7

    .line 1981
    iget-object v2, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/fiio/music/activity/LocalMusicActivity;->context:Landroid/content/Context;

    invoke-virtual {v2, v0, v3, v1}, Lcom/fiio/music/service/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 1985
    :goto_2
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabEFm:Lcom/fiio/music/fragment/TabEFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabEFm;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabEFm:Lcom/fiio/music/fragment/TabEFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabEFm;->getTabFmPageNumber()I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 1986
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabEFm:Lcom/fiio/music/fragment/TabEFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabEFm;->tabEFGetListView()Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/adapter/FileListAdapter;

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/FileListAdapter;->setPlayerManager(Lcom/fiio/music/service/h;)V

    goto :goto_0

    .line 1972
    :cond_4
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    .line 1973
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->ibtn_player_control:Landroid/widget/ImageButton;

    const v2, 0x7f02055b

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_1

    .line 1974
    :cond_5
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_6

    .line 1975
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->ibtn_player_control:Landroid/widget/ImageButton;

    const v2, 0x7f02055c

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_1

    .line 1976
    :cond_6
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    if-ne v0, v6, :cond_3

    .line 1977
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->ibtn_player_control:Landroid/widget/ImageButton;

    const v2, 0x7f02055d

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_1

    .line 1983
    :cond_7
    iget-object v2, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v6, v3, v1}, Lcom/fiio/music/service/h;->a(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)V

    goto :goto_2
.end method

.method public setDataAfterDelInFileItemAdapter(Ljava/util/List;)V
    .locals 1
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
    .line 4052
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabEFm:Lcom/fiio/music/fragment/TabEFm;

    invoke-virtual {v0, p1}, Lcom/fiio/music/fragment/TabEFm;->afterDel(Ljava/util/List;)V

    .line 4053
    return-void
.end method

.method public setDataAfterDelInListItemAdapter()V
    .locals 1

    .prologue
    .line 4043
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->getTabFmPageNumber()I

    move-result v0

    if-nez v0, :cond_0

    .line 4044
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->afterDel()V

    .line 4047
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->getTabFmPageNumber()I

    move-result v0

    if-nez v0, :cond_1

    .line 4048
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->afterDel()V

    .line 4049
    :cond_1
    return-void
.end method

.method public setDataAfterDelInSongItemApdapter()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 4061
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->afterDel()V

    .line 4063
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->afterDel()V

    .line 4064
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->getTabFmPageNumber()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 4066
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->initListItem()V

    .line 4072
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->getTabFmPageNumber()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 4074
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->initListItem()V

    .line 4076
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabCFr:Lcom/fiio/music/fragment/TabCFr;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabCFr;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4077
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabCFr:Lcom/fiio/music/fragment/TabCFr;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabCFr;->reGetList()V

    .line 4080
    :cond_2
    return-void
.end method

.method protected setFootViewInterface()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1329
    new-instance v0, Lcom/fiio/music/activity/cc;

    invoke-direct {v0, p0}, Lcom/fiio/music/activity/cc;-><init>(Lcom/fiio/music/activity/LocalMusicActivity;)V

    .line 1350
    iget v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->pageFlag:I

    if-nez v1, :cond_1

    .line 1351
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabAFm:Lcom/fiio/music/fragment/TabAFm;

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabAFm;->getSongItemAdapter()Lcom/fiio/music/test/simpleCursorSongAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fiio/music/test/simpleCursorSongAdapter;->setFootViewItf(Lcom/fiio/music/util/dc;)V

    .line 1352
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabAFm:Lcom/fiio/music/fragment/TabAFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabAFm;->getSongItemAdapter()Lcom/fiio/music/test/simpleCursorSongAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mBottomSelectorView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/fiio/music/test/simpleCursorSongAdapter;->setFootView(Landroid/view/View;)V

    .line 1408
    :cond_0
    :goto_0
    return-void

    .line 1353
    :cond_1
    iget v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->pageFlag:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_4

    .line 1354
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabBFm;->getDisplayChange_playlistOrAlbumlist()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1355
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabBFm;->getSongItemAdapter()Lcom/fiio/music/adapter/SongItemAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fiio/music/adapter/SongItemAdapter;->setFootViewItf(Lcom/fiio/music/util/dc;)V

    .line 1356
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->getSongItemAdapter()Lcom/fiio/music/adapter/SongItemAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mBottomSelectorView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/SongItemAdapter;->setFootView(Landroid/view/View;)V

    goto :goto_0

    .line 1357
    :cond_2
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabBFm;->getDisplayChange_playlistOrAlbumlist()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1358
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabBFm;->getWhichAdapterInner()I

    move-result v1

    if-ne v1, v3, :cond_3

    .line 1359
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabBFm;->getInnerListItemAdapter()Lcom/fiio/music/adapter/ListItemAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fiio/music/adapter/ListItemAdapter;->setFootViewItf(Lcom/fiio/music/util/dc;)V

    .line 1360
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->getInnerListItemAdapter()Lcom/fiio/music/adapter/ListItemAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mBottomSelectorView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/ListItemAdapter;->setFootView(Landroid/view/View;)V

    goto :goto_0

    .line 1361
    :cond_3
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabBFm;->getWhichAdapterInner()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 1362
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabBFm;->getInnerSongItemAdapter()Lcom/fiio/music/adapter/SongItemAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fiio/music/adapter/SongItemAdapter;->setFootViewItf(Lcom/fiio/music/util/dc;)V

    .line 1363
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->getInnerSongItemAdapter()Lcom/fiio/music/adapter/SongItemAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mBottomSelectorView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/SongItemAdapter;->setFootView(Landroid/view/View;)V

    goto :goto_0

    .line 1366
    :cond_4
    iget v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->pageFlag:I

    const/16 v2, 0x16

    if-ne v1, v2, :cond_5

    .line 1367
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabCFr:Lcom/fiio/music/fragment/TabCFr;

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabCFr;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1368
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabCFr:Lcom/fiio/music/fragment/TabCFr;

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabCFr;->getmAdapter()Lcom/fiio/music/adapter/QueryAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fiio/music/adapter/QueryAdapter;->setFootViewItf(Lcom/fiio/music/util/dc;)V

    .line 1369
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabCFr:Lcom/fiio/music/fragment/TabCFr;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabCFr;->getmAdapter()Lcom/fiio/music/adapter/QueryAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mBottomSelectorView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/QueryAdapter;->setFootView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1374
    :cond_5
    iget v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->pageFlag:I

    const/16 v2, 0x21

    if-ne v1, v2, :cond_8

    .line 1375
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabDFm;->getDisplayChange_playlistOrAlbumlist()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1376
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabDFm;->getSongItemAdapter()Lcom/fiio/music/adapter/SongItemAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fiio/music/adapter/SongItemAdapter;->setFootViewItf(Lcom/fiio/music/util/dc;)V

    .line 1377
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->getSongItemAdapter()Lcom/fiio/music/adapter/SongItemAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mBottomSelectorView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/SongItemAdapter;->setFootView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1378
    :cond_6
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabDFm;->getDisplayChange_playlistOrAlbumlist()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1379
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabDFm;->getWhichAdapterInner()I

    move-result v1

    if-ne v1, v3, :cond_7

    .line 1380
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabDFm;->getInnerListItemAdapter()Lcom/fiio/music/adapter/ListItemAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fiio/music/adapter/ListItemAdapter;->setFootViewItf(Lcom/fiio/music/util/dc;)V

    .line 1381
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->getInnerListItemAdapter()Lcom/fiio/music/adapter/ListItemAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mBottomSelectorView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/ListItemAdapter;->setFootView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1382
    :cond_7
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabDFm;->getWhichAdapterInner()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 1383
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabDFm;->getInnerSongItemAdapter()Lcom/fiio/music/adapter/SongItemAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fiio/music/adapter/SongItemAdapter;->setFootViewItf(Lcom/fiio/music/util/dc;)V

    .line 1384
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->getInnerSongItemAdapter()Lcom/fiio/music/adapter/SongItemAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mBottomSelectorView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/SongItemAdapter;->setFootView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1388
    :cond_8
    iget v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->pageFlag:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 1390
    iget v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->pageFlag:I

    if-ne v1, v3, :cond_9

    .line 1391
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabBFm;->getListItemAdapter()Lcom/fiio/music/adapter/ListItemAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fiio/music/adapter/ListItemAdapter;->setFootViewItf(Lcom/fiio/music/util/dc;)V

    .line 1392
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->getListItemAdapter()Lcom/fiio/music/adapter/ListItemAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mBottomSelectorView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/ListItemAdapter;->setFootView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1393
    :cond_9
    iget v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->pageFlag:I

    if-ne v1, v4, :cond_a

    .line 1394
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabCFr:Lcom/fiio/music/fragment/TabCFr;

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabCFr;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1395
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabCFr:Lcom/fiio/music/fragment/TabCFr;

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabCFr;->getmAdapter()Lcom/fiio/music/adapter/QueryAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fiio/music/adapter/QueryAdapter;->setFootViewItf(Lcom/fiio/music/util/dc;)V

    .line 1396
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabCFr:Lcom/fiio/music/fragment/TabCFr;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabCFr;->getmAdapter()Lcom/fiio/music/adapter/QueryAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mBottomSelectorView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/QueryAdapter;->setFootView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1401
    :cond_a
    iget v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->pageFlag:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_b

    .line 1402
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabDFm;->getListItemAdapter()Lcom/fiio/music/adapter/ListItemAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fiio/music/adapter/ListItemAdapter;->setFootViewItf(Lcom/fiio/music/util/dc;)V

    .line 1403
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->getListItemAdapter()Lcom/fiio/music/adapter/ListItemAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mBottomSelectorView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/ListItemAdapter;->setFootView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1404
    :cond_b
    iget v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->pageFlag:I

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_0

    .line 1405
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabEFm:Lcom/fiio/music/fragment/TabEFm;

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabEFm;->getFileListAdapter()Lcom/fiio/music/adapter/FileListAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fiio/music/adapter/FileListAdapter;->setFootViewItf(Lcom/fiio/music/util/dc;)V

    .line 1406
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabEFm:Lcom/fiio/music/fragment/TabEFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabEFm;->getFileListAdapter()Lcom/fiio/music/adapter/FileListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mBottomSelectorView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/FileListAdapter;->setFootView(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method public setItemAdapterCheckBoxFlag(Z)V
    .locals 0

    .prologue
    .line 4264
    iput-boolean p1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->itemAdapterCheckBoxFlag:Z

    .line 4265
    return-void
.end method

.method public setProgressBarRun(Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 4035
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4036
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 4040
    :goto_0
    return-void

    .line 4038
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public setTabContent()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 3859
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->songDao:Lcom/fiio/music/b/k;

    invoke-virtual {v0}, Lcom/fiio/music/b/k;->a()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabAdapter:Lcom/fiio/music/adapter/FragmentTabAdapter;

    invoke-virtual {v0}, Lcom/fiio/music/adapter/FragmentTabAdapter;->getCurrentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabEFm:Lcom/fiio/music/fragment/TabEFm;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3860
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->songNotFoundTab:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3861
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->songListTab:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3866
    :goto_0
    return-void

    .line 3863
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->songNotFoundTab:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3864
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->songListTab:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method protected showBulkManage()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 1410
    new-instance v0, Lcom/fiio/music/activity/cd;

    invoke-direct {v0, p0}, Lcom/fiio/music/activity/cd;-><init>(Lcom/fiio/music/activity/LocalMusicActivity;)V

    .line 1428
    new-instance v1, Lcom/fiio/music/activity/ce;

    invoke-direct {v1, p0}, Lcom/fiio/music/activity/ce;-><init>(Lcom/fiio/music/activity/LocalMusicActivity;)V

    .line 1447
    new-instance v2, Lcom/fiio/music/activity/cf;

    invoke-direct {v2, p0}, Lcom/fiio/music/activity/cf;-><init>(Lcom/fiio/music/activity/LocalMusicActivity;)V

    .line 1463
    iget v3, p0, Lcom/fiio/music/activity/LocalMusicActivity;->pageFlag:I

    if-nez v3, :cond_1

    .line 1464
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabAFm:Lcom/fiio/music/fragment/TabAFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabAFm;->getSongItemAdapter()Lcom/fiio/music/test/simpleCursorSongAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/test/simpleCursorSongAdapter;->showFootView()V

    .line 1465
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabAFm:Lcom/fiio/music/fragment/TabAFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabAFm;->getSongItemAdapter()Lcom/fiio/music/test/simpleCursorSongAdapter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/fiio/music/test/simpleCursorSongAdapter;->setUpdataInfoTitle(Lcom/fiio/music/test/h;)V

    .line 1521
    :cond_0
    :goto_0
    return-void

    .line 1466
    :cond_1
    iget v2, p0, Lcom/fiio/music/activity/LocalMusicActivity;->pageFlag:I

    const/16 v3, 0xb

    if-ne v2, v3, :cond_4

    .line 1467
    iget-object v2, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v2}, Lcom/fiio/music/fragment/TabBFm;->getDisplayChange_playlistOrAlbumlist()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1468
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabBFm;->getSongItemAdapter()Lcom/fiio/music/adapter/SongItemAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/adapter/SongItemAdapter;->showFootView()V

    .line 1469
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabBFm;->getSongItemAdapter()Lcom/fiio/music/adapter/SongItemAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fiio/music/adapter/SongItemAdapter;->setUpdataInfoTitle(Lcom/fiio/music/adapter/SongItemAdapter$UpdataInfoTitle;)V

    goto :goto_0

    .line 1470
    :cond_2
    iget-object v2, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v2}, Lcom/fiio/music/fragment/TabBFm;->getDisplayChange_playlistOrAlbumlist()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1471
    iget-object v2, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v2}, Lcom/fiio/music/fragment/TabBFm;->getWhichAdapterInner()I

    move-result v2

    if-ne v2, v4, :cond_3

    .line 1472
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->getInnerListItemAdapter()Lcom/fiio/music/adapter/ListItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/adapter/ListItemAdapter;->showFootView()V

    .line 1473
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->getInnerListItemAdapter()Lcom/fiio/music/adapter/ListItemAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/ListItemAdapter;->setUpdataInfoTitle(Lcom/fiio/music/adapter/ListItemAdapter$UpdataInfoTitle;)V

    goto :goto_0

    .line 1474
    :cond_3
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabBFm;->getWhichAdapterInner()I

    move-result v1

    if-ne v1, v5, :cond_0

    .line 1475
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabBFm;->getInnerSongItemAdapter()Lcom/fiio/music/adapter/SongItemAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/adapter/SongItemAdapter;->showFootView()V

    .line 1476
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabBFm;->getInnerSongItemAdapter()Lcom/fiio/music/adapter/SongItemAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fiio/music/adapter/SongItemAdapter;->setUpdataInfoTitle(Lcom/fiio/music/adapter/SongItemAdapter$UpdataInfoTitle;)V

    goto :goto_0

    .line 1479
    :cond_4
    iget v2, p0, Lcom/fiio/music/activity/LocalMusicActivity;->pageFlag:I

    const/16 v3, 0x16

    if-ne v2, v3, :cond_5

    .line 1480
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabCFr:Lcom/fiio/music/fragment/TabCFr;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabCFr;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1481
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabCFr:Lcom/fiio/music/fragment/TabCFr;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabCFr;->getmAdapter()Lcom/fiio/music/adapter/QueryAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/adapter/QueryAdapter;->showFootView()V

    goto :goto_0

    .line 1486
    :cond_5
    iget v2, p0, Lcom/fiio/music/activity/LocalMusicActivity;->pageFlag:I

    const/16 v3, 0x21

    if-ne v2, v3, :cond_8

    .line 1487
    iget-object v2, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v2}, Lcom/fiio/music/fragment/TabDFm;->getDisplayChange_playlistOrAlbumlist()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1488
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabDFm;->getSongItemAdapter()Lcom/fiio/music/adapter/SongItemAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/adapter/SongItemAdapter;->showFootView()V

    .line 1489
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabDFm;->getSongItemAdapter()Lcom/fiio/music/adapter/SongItemAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fiio/music/adapter/SongItemAdapter;->setUpdataInfoTitle(Lcom/fiio/music/adapter/SongItemAdapter$UpdataInfoTitle;)V

    goto/16 :goto_0

    .line 1490
    :cond_6
    iget-object v2, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v2}, Lcom/fiio/music/fragment/TabDFm;->getDisplayChange_playlistOrAlbumlist()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1491
    iget-object v2, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v2}, Lcom/fiio/music/fragment/TabDFm;->getWhichAdapterInner()I

    move-result v2

    if-ne v2, v4, :cond_7

    .line 1492
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->getInnerListItemAdapter()Lcom/fiio/music/adapter/ListItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/adapter/ListItemAdapter;->showFootView()V

    .line 1493
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->getInnerListItemAdapter()Lcom/fiio/music/adapter/ListItemAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/ListItemAdapter;->setUpdataInfoTitle(Lcom/fiio/music/adapter/ListItemAdapter$UpdataInfoTitle;)V

    goto/16 :goto_0

    .line 1494
    :cond_7
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabDFm;->getWhichAdapterInner()I

    move-result v1

    if-ne v1, v5, :cond_0

    .line 1495
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabDFm;->getInnerSongItemAdapter()Lcom/fiio/music/adapter/SongItemAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/adapter/SongItemAdapter;->showFootView()V

    .line 1496
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabDFm;->getInnerSongItemAdapter()Lcom/fiio/music/adapter/SongItemAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fiio/music/adapter/SongItemAdapter;->setUpdataInfoTitle(Lcom/fiio/music/adapter/SongItemAdapter$UpdataInfoTitle;)V

    goto/16 :goto_0

    .line 1500
    :cond_8
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->pageFlag:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    .line 1502
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->pageFlag:I

    if-ne v0, v4, :cond_9

    .line 1503
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->getListItemAdapter()Lcom/fiio/music/adapter/ListItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/adapter/ListItemAdapter;->showFootView()V

    .line 1504
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->getListItemAdapter()Lcom/fiio/music/adapter/ListItemAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/ListItemAdapter;->setUpdataInfoTitle(Lcom/fiio/music/adapter/ListItemAdapter$UpdataInfoTitle;)V

    goto/16 :goto_0

    .line 1505
    :cond_9
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->pageFlag:I

    if-ne v0, v5, :cond_a

    .line 1506
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabCFr:Lcom/fiio/music/fragment/TabCFr;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabCFr;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1507
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabCFr:Lcom/fiio/music/fragment/TabCFr;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabCFr;->getmAdapter()Lcom/fiio/music/adapter/QueryAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/adapter/QueryAdapter;->showFootView()V

    goto/16 :goto_0

    .line 1513
    :cond_a
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->pageFlag:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_b

    .line 1514
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->getListItemAdapter()Lcom/fiio/music/adapter/ListItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/adapter/ListItemAdapter;->showFootView()V

    .line 1515
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->getListItemAdapter()Lcom/fiio/music/adapter/ListItemAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/ListItemAdapter;->setUpdataInfoTitle(Lcom/fiio/music/adapter/ListItemAdapter$UpdataInfoTitle;)V

    goto/16 :goto_0

    .line 1516
    :cond_b
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->pageFlag:I

    const/16 v2, 0x2c

    if-ne v0, v2, :cond_0

    .line 1517
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabEFm:Lcom/fiio/music/fragment/TabEFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabEFm;->getFileListAdapter()Lcom/fiio/music/adapter/FileListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/adapter/FileListAdapter;->showFootView()V

    .line 1518
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabEFm:Lcom/fiio/music/fragment/TabEFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabEFm;->getFileListAdapter()Lcom/fiio/music/adapter/FileListAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/FileListAdapter;->setUpdataInfoTitle(Lcom/fiio/music/adapter/ListItemAdapter$UpdataInfoTitle;)V

    goto/16 :goto_0
.end method

.method public showOrHideHeadBar()V
    .locals 9

    .prologue
    const/16 v3, 0xb

    const/4 v8, 0x4

    const/16 v7, 0x8

    const/4 v6, 0x0

    const/4 v2, 0x1

    .line 486
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabAdapter:Lcom/fiio/music/adapter/FragmentTabAdapter;

    invoke-virtual {v0}, Lcom/fiio/music/adapter/FragmentTabAdapter;->getCurrentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabAFm:Lcom/fiio/music/fragment/TabAFm;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 487
    iput v6, p0, Lcom/fiio/music/activity/LocalMusicActivity;->pageFlag:I

    .line 488
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->head_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 548
    :cond_0
    :goto_0
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->pageFlag:I

    if-ne v0, v8, :cond_b

    .line 549
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mConfigfragmentMenu:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 553
    :goto_1
    return-void

    .line 490
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabAdapter:Lcom/fiio/music/adapter/FragmentTabAdapter;

    invoke-virtual {v0}, Lcom/fiio/music/adapter/FragmentTabAdapter;->getCurrentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 491
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->getTabFmPageNumber()I

    move-result v0

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->getDisplayChange_playlistOrAlbumlist()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 492
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->head_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 493
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->getTitleString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabBFm;->getDateSize()I

    move-result v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/fiio/music/activity/LocalMusicActivity;->updateHeadBar(Ljava/lang/String;IZ)V

    .line 494
    iput v3, p0, Lcom/fiio/music/activity/LocalMusicActivity;->pageFlag:I

    goto :goto_0

    .line 495
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->getTabFmPageNumber()I

    move-result v0

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->getDisplayChange_playlistOrAlbumlist()Z

    move-result v0

    if-nez v0, :cond_3

    .line 496
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->head_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 497
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->getTitleString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabBFm;->getAlbumListSize()I

    move-result v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/fiio/music/activity/LocalMusicActivity;->updateHeadBar(Ljava/lang/String;IZ)V

    .line 498
    iput v3, p0, Lcom/fiio/music/activity/LocalMusicActivity;->pageFlag:I

    goto :goto_0

    .line 500
    :cond_3
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->head_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 501
    iput v2, p0, Lcom/fiio/music/activity/LocalMusicActivity;->pageFlag:I

    goto :goto_0

    .line 512
    :cond_4
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabAdapter:Lcom/fiio/music/adapter/FragmentTabAdapter;

    invoke-virtual {v0}, Lcom/fiio/music/adapter/FragmentTabAdapter;->getCurrentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabCFr:Lcom/fiio/music/fragment/TabCFr;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 513
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabCFr:Lcom/fiio/music/fragment/TabCFr;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabCFr;->getPageNumber()I

    move-result v0

    if-nez v0, :cond_5

    .line 515
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->head_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 516
    const/4 v0, 0x2

    iput v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->pageFlag:I

    goto/16 :goto_0

    .line 519
    :cond_5
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->head_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 520
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabCFr:Lcom/fiio/music/fragment/TabCFr;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabCFr;->getHeaderTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabCFr:Lcom/fiio/music/fragment/TabCFr;

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabCFr;->getHeaderSize()I

    move-result v1

    invoke-virtual {p0, v0, v1, v6}, Lcom/fiio/music/activity/LocalMusicActivity;->updateHeadBar(Ljava/lang/String;IZ)V

    .line 521
    const/16 v0, 0x16

    iput v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->pageFlag:I

    goto/16 :goto_0

    .line 523
    :cond_6
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabAdapter:Lcom/fiio/music/adapter/FragmentTabAdapter;

    invoke-virtual {v0}, Lcom/fiio/music/adapter/FragmentTabAdapter;->getCurrentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 524
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->getTabFmPageNumber()I

    move-result v0

    if-ne v0, v2, :cond_7

    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->getDisplayChange_playlistOrAlbumlist()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 525
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->head_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 526
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->getTitleString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabDFm;->getDateSize()I

    move-result v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/fiio/music/activity/LocalMusicActivity;->updateHeadBar(Ljava/lang/String;IZ)V

    .line 527
    const/16 v0, 0x21

    iput v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->pageFlag:I

    goto/16 :goto_0

    .line 528
    :cond_7
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->getTabFmPageNumber()I

    move-result v0

    if-ne v0, v2, :cond_8

    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->getDisplayChange_playlistOrAlbumlist()Z

    move-result v0

    if-nez v0, :cond_8

    .line 529
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->head_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 530
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->getTitleString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabDFm;->getAlbumListSize()I

    move-result v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/fiio/music/activity/LocalMusicActivity;->updateHeadBar(Ljava/lang/String;IZ)V

    .line 531
    const/16 v0, 0x21

    iput v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->pageFlag:I

    goto/16 :goto_0

    .line 533
    :cond_8
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->head_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 534
    const/4 v0, 0x3

    iput v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->pageFlag:I

    goto/16 :goto_0

    .line 537
    :cond_9
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabAdapter:Lcom/fiio/music/adapter/FragmentTabAdapter;

    invoke-virtual {v0}, Lcom/fiio/music/adapter/FragmentTabAdapter;->getCurrentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabEFm:Lcom/fiio/music/fragment/TabEFm;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabEFm:Lcom/fiio/music/fragment/TabEFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabEFm;->getTabFmPageNumber()I

    move-result v0

    if-ne v0, v2, :cond_a

    .line 539
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->head_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 540
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabEFm:Lcom/fiio/music/fragment/TabEFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabEFm;->getTitleString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabEFm:Lcom/fiio/music/fragment/TabEFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabEFm;->getTotalSize()J

    move-result-wide v2

    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabEFm:Lcom/fiio/music/fragment/TabEFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabEFm;->getFreeSize()J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/fiio/music/activity/LocalMusicActivity;->updateHeadBarOfFile(Ljava/lang/String;JJ)V

    .line 541
    const/16 v0, 0x2c

    iput v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->pageFlag:I

    goto/16 :goto_0

    .line 543
    :cond_a
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->head_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 544
    iput v8, p0, Lcom/fiio/music/activity/LocalMusicActivity;->pageFlag:I

    goto/16 :goto_0

    .line 551
    :cond_b
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->mConfigfragmentMenu:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method public tabCFrDeleteSong(ILjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3057
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    .line 3058
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getId_()I

    move-result v1

    .line 3059
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v2

    .line 3060
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v5

    .line 3061
    const/4 v4, 0x1

    const/16 v7, 0x16

    move-object v0, p0

    move v3, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/fiio/music/activity/LocalMusicActivity;->createDeleteSongDialog(ILjava/lang/String;IZLjava/lang/String;Ljava/util/List;I)V

    .line 3063
    return-void
.end method

.method public updateHeadBar(I)V
    .locals 5

    .prologue
    .line 616
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->type_num:Landroid/widget/TextView;

    .line 617
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->context:Landroid/content/Context;

    const v2, 0x7f0c00de

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 616
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 618
    return-void
.end method

.method public updateHeadBar(Ljava/lang/String;IZ)V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 555
    const-string v0, "AlbumAndSong"

    invoke-virtual {p0, v0, v4}, Lcom/fiio/music/activity/LocalMusicActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 556
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabAdapter:Lcom/fiio/music/adapter/FragmentTabAdapter;

    invoke-virtual {v1}, Lcom/fiio/music/adapter/FragmentTabAdapter;->getCurrentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabBFm;->getTabFmPageNumber()I

    move-result v1

    if-ne v1, v3, :cond_7

    .line 557
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->displaychang_list:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 558
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->iv_return_first_page:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 559
    if-eqz p3, :cond_1

    .line 560
    const-string v1, "albumOrSongtabB"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->artist_displayChange_song:Z

    .line 561
    iget-boolean v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->artist_displayChange_song:Z

    if-eqz v0, :cond_4

    .line 562
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    if-ne v0, v3, :cond_2

    .line 563
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->displaychang_list:Landroid/widget/ImageView;

    const v1, 0x7f0200bf

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 578
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    iget-boolean v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->artist_displayChange_song:Z

    invoke-virtual {v0, v1}, Lcom/fiio/music/fragment/TabBFm;->setDisplayChange_playlistOrAlbumlist(Z)V

    .line 579
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabBFm:Lcom/fiio/music/fragment/TabBFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->changeDisplayMode()V

    .line 610
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->type_name:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 611
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->type_num:Landroid/widget/TextView;

    .line 612
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->context:Landroid/content/Context;

    const v2, 0x7f0c00de

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 611
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 614
    return-void

    .line 564
    :cond_2
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    if-ne v0, v5, :cond_3

    .line 565
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->displaychang_list:Landroid/widget/ImageView;

    const v1, 0x7f0200c0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 566
    :cond_3
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    if-ne v0, v6, :cond_0

    .line 567
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->displaychang_list:Landroid/widget/ImageView;

    const v1, 0x7f0200c1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 570
    :cond_4
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    if-ne v0, v3, :cond_5

    .line 571
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->displaychang_list:Landroid/widget/ImageView;

    const v1, 0x7f0200bc

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 572
    :cond_5
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    if-ne v0, v5, :cond_6

    .line 573
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->displaychang_list:Landroid/widget/ImageView;

    const v1, 0x7f0200bd

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 574
    :cond_6
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    if-ne v0, v6, :cond_0

    .line 575
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->displaychang_list:Landroid/widget/ImageView;

    const v1, 0x7f0200be

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 581
    :cond_7
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabAdapter:Lcom/fiio/music/adapter/FragmentTabAdapter;

    invoke-virtual {v1}, Lcom/fiio/music/adapter/FragmentTabAdapter;->getCurrentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabDFm;->getTabFmPageNumber()I

    move-result v1

    if-ne v1, v3, :cond_e

    .line 582
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->displaychang_list:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 583
    iget-object v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->iv_return_first_page:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 584
    if-eqz p3, :cond_1

    .line 585
    const-string v1, "albumOrSongtabD"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->artist_displayChange_song:Z

    .line 586
    iget-boolean v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->artist_displayChange_song:Z

    if-eqz v0, :cond_b

    .line 587
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    if-ne v0, v3, :cond_9

    .line 588
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->displaychang_list:Landroid/widget/ImageView;

    const v1, 0x7f0200bf

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 603
    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    iget-boolean v1, p0, Lcom/fiio/music/activity/LocalMusicActivity;->artist_displayChange_song:Z

    invoke-virtual {v0, v1}, Lcom/fiio/music/fragment/TabDFm;->setDisplayChange_playlistOrAlbumlist(Z)V

    .line 604
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->tabDFm:Lcom/fiio/music/fragment/TabDFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->changeDisplayMode()V

    goto/16 :goto_1

    .line 589
    :cond_9
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    if-ne v0, v5, :cond_a

    .line 590
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->displaychang_list:Landroid/widget/ImageView;

    const v1, 0x7f0200c0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 591
    :cond_a
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    if-ne v0, v6, :cond_8

    .line 592
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->displaychang_list:Landroid/widget/ImageView;

    const v1, 0x7f0200c1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 595
    :cond_b
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    if-ne v0, v3, :cond_c

    .line 596
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->displaychang_list:Landroid/widget/ImageView;

    const v1, 0x7f0200bc

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 597
    :cond_c
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    if-ne v0, v5, :cond_d

    .line 598
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->displaychang_list:Landroid/widget/ImageView;

    const v1, 0x7f0200bd

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 599
    :cond_d
    iget v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->STYLE_PARAMTER:I

    if-ne v0, v6, :cond_8

    .line 600
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->displaychang_list:Landroid/widget/ImageView;

    const v1, 0x7f0200be

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 607
    :cond_e
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->displaychang_list:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 608
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->iv_return_first_page:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method public updateHeadBarOfFile(Ljava/lang/String;JJ)V
    .locals 4

    .prologue
    .line 620
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->displaychang_list:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 621
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->iv_return_first_page:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 622
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->type_name:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 623
    iget-object v0, p0, Lcom/fiio/music/activity/LocalMusicActivity;->type_num:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/fiio/music/activity/LocalMusicActivity;->context:Landroid/content/Context;

    const v3, 0x7f0c00b7

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 624
    invoke-static {p4, p5}, Lcom/fiio/music/util/ch;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 625
    iget-object v2, p0, Lcom/fiio/music/activity/LocalMusicActivity;->context:Landroid/content/Context;

    const v3, 0x7f0c00b8

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2, p3}, Lcom/fiio/music/util/ch;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 623
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 627
    return-void
.end method
