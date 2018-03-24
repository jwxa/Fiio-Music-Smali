.class public Lcom/fiio/music/activity/MyMusicListActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "MyMusicListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final SONGLISTLOCATE:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private PlayListIcon:I

.field private STYLE_PARAMTER:I

.field private characterParser:Lcom/fiio/music/util/f;

.field private check_all_item_checkbox:Landroid/widget/CheckBox;

.field private check_all_textview:Landroid/widget/TextView;

.field private condition:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private curPlayList:Ljava/lang/String;

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

.field private ibtn_player_albumart:Landroid/widget/ImageView;

.field private ibtn_player_control:Landroid/widget/ImageButton;

.field private ibtn_player_next:Landroid/widget/ImageButton;

.field private ibtn_player_prev:Landroid/widget/ImageButton;

.field private imageButtonListener:Landroid/view/View$OnClickListener;

.field protected imageLoader:Lcom/b/a/b/f;

.field private initTask:Lcom/fiio/music/activity/eo;

.field private isLongPressingMediaButton:Z

.field private itemAdapterCheckBoxFlag:Z

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

.field private loading:Landroid/widget/ProgressBar;

.field private longPressCallBack:Lcom/fiio/music/e/a/a;

.field private mAddListImageButton:Landroid/widget/ImageButton;

.field private mAritstNameStr:Ljava/lang/String;

.field private mBottomPlayBar:Landroid/view/View;

.field private mBottomSelectorView:Landroid/view/View;

.field private mConfigfragmentMenu:Landroid/widget/ImageView;

.field private mConnectionListener:Lcom/fiio/music/service/l;

.field private mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mPlayListAdapter:Lcom/fiio/music/adapter/PlayListAdapter;

.field private mPlayListSearch:Landroid/widget/ImageButton;

.field private mPlayingSongPosition:I

.field private mPosition:I

.field private mSongItemAdapter:Lcom/fiio/music/adapter/SongItemAdapter;

.field private mSongNameStr:Ljava/lang/String;

.field private mediaPlayerBroadcastReceiver:Lcom/fiio/music/activity/ep;

.field private mediaPlayerManager:Lcom/fiio/music/service/h;

.field private my_list_change_content_listener:Landroid/widget/AdapterView$OnItemClickListener;

.field private my_list_change_content_looglistener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private my_list_content_title:Landroid/widget/TextView;

.field private my_play_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

.field private my_song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

.field private options:Lcom/b/a/b/d;

.field private pageNumber:I

.field private pinyinComparator:Lcom/fiio/music/util/br;

.field private playListManager:Lcom/fiio/music/util/bw;

.field private playPos:I

.field private playerListDao:Lcom/fiio/music/b/j;

.field private playingSong:Lcom/fiio/music/entity/Song;

.field private rl_list_content:Landroid/view/ViewGroup;

.field private rpb_player_progress:Lcom/fiio/music/util/RoundProgressBar;

.field private songDao:Lcom/fiio/music/b/k;

.field private songRealId:I

.field private sortDataList:Lcom/fiio/music/util/cm;

.field private sortType:I

.field sortTypeEfm:Lcom/fiio/music/util/cr;

.field private sourceDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/i/d;",
            ">;"
        }
    .end annotation
.end field

.field private tabSortType:Lcom/fiio/music/util/cr;

.field private toast:Landroid/widget/Toast;

.field private top:I

.field private tv_player_artist:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

.field private tv_player_title:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

.field private volumedialog:Lcom/fiio/music/widget/VolumeDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 106
    const-class v0, Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fiio/music/activity/MyMusicListActivity;->TAG:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 104
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 122
    iput v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->pageNumber:I

    .line 125
    iput v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->top:I

    .line 132
    iput-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->condition:Ljava/lang/String;

    .line 145
    iput-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 146
    iput v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->playPos:I

    .line 166
    iput-boolean v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->itemAdapterCheckBoxFlag:Z

    .line 172
    const/4 v0, 0x3

    iput v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->STYLE_PARAMTER:I

    .line 363
    new-instance v0, Lcom/fiio/music/activity/dn;

    invoke-direct {v0, p0}, Lcom/fiio/music/activity/dn;-><init>(Lcom/fiio/music/activity/MyMusicListActivity;)V

    iput-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->imageButtonListener:Landroid/view/View$OnClickListener;

    .line 466
    new-instance v0, Lcom/fiio/music/activity/ea;

    invoke-direct {v0, p0}, Lcom/fiio/music/activity/ea;-><init>(Lcom/fiio/music/activity/MyMusicListActivity;)V

    iput-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mConnectionListener:Lcom/fiio/music/service/l;

    .line 715
    new-instance v0, Lcom/fiio/music/activity/eh;

    invoke-direct {v0, p0}, Lcom/fiio/music/activity/eh;-><init>(Lcom/fiio/music/activity/MyMusicListActivity;)V

    iput-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->my_list_change_content_listener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 912
    new-instance v0, Lcom/fiio/music/activity/ei;

    invoke-direct {v0, p0}, Lcom/fiio/music/activity/ei;-><init>(Lcom/fiio/music/activity/MyMusicListActivity;)V

    iput-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->my_list_change_content_looglistener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 2277
    iput-boolean v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->isLongPressingMediaButton:Z

    .line 2279
    new-instance v0, Lcom/fiio/music/activity/ej;

    invoke-direct {v0, p0}, Lcom/fiio/music/activity/ej;-><init>(Lcom/fiio/music/activity/MyMusicListActivity;)V

    iput-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->longPressCallBack:Lcom/fiio/music/e/a/a;

    .line 104
    return-void
.end method

.method private PlayerOrPause(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 898
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->m()I

    move-result v0

    if-nez v0, :cond_0

    .line 899
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->toast:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->context:Landroid/content/Context;

    const v2, 0x7f0c00f4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->toast:Landroid/widget/Toast;

    .line 911
    :goto_0
    return-void

    .line 902
    :cond_0
    if-nez p1, :cond_1

    .line 904
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->m()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 905
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->toast:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->context:Landroid/content/Context;

    const v2, 0x7f0c0105

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->toast:Landroid/widget/Toast;

    goto :goto_0

    .line 909
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->t()V

    .line 910
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->my_song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    invoke-virtual {v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/adapter/SongItemAdapter;

    iget-object v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->m()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/SongItemAdapter;->setPlayerState(I)V

    goto :goto_0
.end method

.method private PlayerOrPause2(Landroid/view/View;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 407
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->m()I

    move-result v0

    if-nez v0, :cond_1

    .line 408
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->toast:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/fiio/music/activity/MyMusicListActivity;->context:Landroid/content/Context;

    const v3, 0x7f0c00f4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->toast:Landroid/widget/Toast;

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 411
    :cond_1
    if-nez p1, :cond_2

    .line 413
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->m()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 414
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->toast:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/fiio/music/activity/MyMusicListActivity;->context:Landroid/content/Context;

    const v3, 0x7f0c0105

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->toast:Landroid/widget/Toast;

    goto :goto_0

    .line 418
    :cond_2
    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->G()Z

    move-result v0

    if-nez v0, :cond_0

    .line 422
    :cond_3
    const-string v0, "song_file_path"

    invoke-virtual {p0, v0, v7}, Lcom/fiio/music/activity/MyMusicListActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->curPlayingSongPreferences:Landroid/content/SharedPreferences;

    .line 423
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->curPlayingSongPreferences:Landroid/content/SharedPreferences;

    const-string v1, "CurPlayingSongPath"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 424
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->curPlayingSongPreferences:Landroid/content/SharedPreferences;

    const-string v1, "CurPlayingSongPath"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 425
    iget-object v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 426
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->curPlayingSongPreferences:Landroid/content/SharedPreferences;

    const-string v1, "UNLATCH_SD_CARD"

    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 427
    const-string v0, "xyz"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u672c\u5730\u97f3\u4e50\u64ad\u653e this song="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v2}, Lcom/fiio/music/service/h;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->u()V

    .line 436
    :goto_1
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->m()I

    move-result v1

    .line 437
    iget v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->pageNumber:I

    if-ne v0, v3, :cond_4

    .line 438
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->my_song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    invoke-virtual {v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/adapter/SongItemAdapter;

    .line 439
    iget-object v2, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v2}, Lcom/fiio/music/service/h;->m()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/fiio/music/adapter/SongItemAdapter;->setPlayerState(I)V

    .line 441
    :cond_4
    if-eq v1, v5, :cond_5

    if-ne v1, v6, :cond_b

    .line 442
    :cond_5
    iget v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->STYLE_PARAMTER:I

    if-ne v0, v3, :cond_8

    .line 443
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->ibtn_player_control:Landroid/widget/ImageButton;

    const v1, 0x7f02055a

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 430
    :cond_6
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 431
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->t()V

    goto :goto_1

    .line 433
    :cond_7
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->toast:Landroid/widget/Toast;

    const v1, 0x7f0c00f6

    invoke-virtual {p0, v1}, Lcom/fiio/music/activity/MyMusicListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->toast:Landroid/widget/Toast;

    goto :goto_1

    .line 444
    :cond_8
    iget v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->STYLE_PARAMTER:I

    if-ne v0, v4, :cond_9

    .line 445
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->ibtn_player_control:Landroid/widget/ImageButton;

    const v1, 0x7f02055b

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 446
    :cond_9
    iget v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->STYLE_PARAMTER:I

    if-ne v0, v5, :cond_a

    .line 447
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->ibtn_player_control:Landroid/widget/ImageButton;

    const v1, 0x7f02055c

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 448
    :cond_a
    iget v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->STYLE_PARAMTER:I

    if-ne v0, v6, :cond_0

    .line 449
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->ibtn_player_control:Landroid/widget/ImageButton;

    const v1, 0x7f02055d

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 452
    :cond_b
    if-ne v1, v4, :cond_0

    .line 453
    iget v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->STYLE_PARAMTER:I

    if-ne v0, v3, :cond_c

    .line 454
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->ibtn_player_control:Landroid/widget/ImageButton;

    const v1, 0x7f02055f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 455
    :cond_c
    iget v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->STYLE_PARAMTER:I

    if-ne v0, v4, :cond_d

    .line 456
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->ibtn_player_control:Landroid/widget/ImageButton;

    const v1, 0x7f020560

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 457
    :cond_d
    iget v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->STYLE_PARAMTER:I

    if-ne v0, v5, :cond_e

    .line 458
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->ibtn_player_control:Landroid/widget/ImageButton;

    const v1, 0x7f020561

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 459
    :cond_e
    iget v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->STYLE_PARAMTER:I

    if-ne v0, v6, :cond_0

    .line 460
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->ibtn_player_control:Landroid/widget/ImageButton;

    const v1, 0x7f020562

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_0
.end method

.method static synthetic access$0(Lcom/fiio/music/activity/MyMusicListActivity;IILjava/lang/String;)V
    .locals 0

    .prologue
    .line 929
    invoke-direct {p0, p1, p2, p3}, Lcom/fiio/music/activity/MyMusicListActivity;->doPlayList(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/fiio/music/activity/MyMusicListActivity;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$10(Lcom/fiio/music/activity/MyMusicListActivity;IILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 652
    invoke-direct {p0, p1, p2, p3}, Lcom/fiio/music/activity/MyMusicListActivity;->jumpPage(IILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$11(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/adapter/SongItemAdapter;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mSongItemAdapter:Lcom/fiio/music/adapter/SongItemAdapter;

    return-object v0
.end method

.method static synthetic access$12(Lcom/fiio/music/activity/MyMusicListActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->condition:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$13(Lcom/fiio/music/activity/MyMusicListActivity;)Landroid/widget/Toast;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->toast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$14(Lcom/fiio/music/activity/MyMusicListActivity;Landroid/widget/Toast;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->toast:Landroid/widget/Toast;

    return-void
.end method

.method static synthetic access$15(Lcom/fiio/music/activity/MyMusicListActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->curPlayList:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$16(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/swipemenulistview/SwipeMenuListView;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->my_song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    return-object v0
.end method

.method static synthetic access$17(Lcom/fiio/music/activity/MyMusicListActivity;Landroid/view/View;Lcom/fiio/music/entity/Song;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 874
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/fiio/music/activity/MyMusicListActivity;->playerMusicBySongItem(Landroid/view/View;Lcom/fiio/music/entity/Song;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$18(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/b/j;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->playerListDao:Lcom/fiio/music/b/j;

    return-object v0
.end method

.method static synthetic access$19(Lcom/fiio/music/activity/MyMusicListActivity;Z)V
    .locals 0

    .prologue
    .line 2277
    iput-boolean p1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->isLongPressingMediaButton:Z

    return-void
.end method

.method static synthetic access$2(Lcom/fiio/music/activity/MyMusicListActivity;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1270
    invoke-direct {p0, p1}, Lcom/fiio/music/activity/MyMusicListActivity;->showWindownMenuDialog(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$20(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/util/RoundProgressBar;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->rpb_player_progress:Lcom/fiio/music/util/RoundProgressBar;

    return-object v0
.end method

.method static synthetic access$21(Lcom/fiio/music/activity/MyMusicListActivity;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->loading:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$22(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/util/bw;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->playListManager:Lcom/fiio/music/util/bw;

    return-object v0
.end method

.method static synthetic access$23(Lcom/fiio/music/activity/MyMusicListActivity;)Z
    .locals 1

    .prologue
    .line 2277
    iget-boolean v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->isLongPressingMediaButton:Z

    return v0
.end method

.method static synthetic access$24(Lcom/fiio/music/activity/MyMusicListActivity;I)V
    .locals 0

    .prologue
    .line 159
    iput p1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->currentPosition:I

    return-void
.end method

.method static synthetic access$25(Lcom/fiio/music/activity/MyMusicListActivity;I)V
    .locals 0

    .prologue
    .line 159
    iput p1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->currentDuration:I

    return-void
.end method

.method static synthetic access$26(Lcom/fiio/music/activity/MyMusicListActivity;)I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->currentDuration:I

    return v0
.end method

.method static synthetic access$27(Lcom/fiio/music/activity/MyMusicListActivity;)I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->currentPosition:I

    return v0
.end method

.method static synthetic access$28(Lcom/fiio/music/activity/MyMusicListActivity;Lcom/fiio/music/entity/Song;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->playingSong:Lcom/fiio/music/entity/Song;

    return-void
.end method

.method static synthetic access$29(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/entity/Song;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->playingSong:Lcom/fiio/music/entity/Song;

    return-object v0
.end method

.method static synthetic access$3(Lcom/fiio/music/activity/MyMusicListActivity;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 406
    invoke-direct {p0, p1}, Lcom/fiio/music/activity/MyMusicListActivity;->PlayerOrPause2(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$30(Lcom/fiio/music/activity/MyMusicListActivity;I)V
    .locals 0

    .prologue
    .line 158
    iput p1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->songRealId:I

    return-void
.end method

.method static synthetic access$31(Lcom/fiio/music/activity/MyMusicListActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mSongNameStr:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$32(Lcom/fiio/music/activity/MyMusicListActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mAritstNameStr:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$33(Lcom/fiio/music/activity/MyMusicListActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mSongNameStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$34(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/widget/AlwaysMarqueeTextView;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->tv_player_title:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    return-object v0
.end method

.method static synthetic access$35(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/widget/AlwaysMarqueeTextView;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->tv_player_artist:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    return-object v0
.end method

.method static synthetic access$36(Lcom/fiio/music/activity/MyMusicListActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mAritstNameStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$37(Lcom/fiio/music/activity/MyMusicListActivity;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->curSongList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$38(Lcom/fiio/music/activity/MyMusicListActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->curSongList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$39(Lcom/fiio/music/activity/MyMusicListActivity;I)V
    .locals 0

    .prologue
    .line 158
    iput p1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mPlayingSongPosition:I

    return-void
.end method

.method static synthetic access$4(Lcom/fiio/music/activity/MyMusicListActivity;)V
    .locals 0

    .prologue
    .line 2189
    invoke-direct {p0}, Lcom/fiio/music/activity/MyMusicListActivity;->gotoPlayMain()V

    return-void
.end method

.method static synthetic access$40(Lcom/fiio/music/activity/MyMusicListActivity;)I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->STYLE_PARAMTER:I

    return v0
.end method

.method static synthetic access$41(Lcom/fiio/music/activity/MyMusicListActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->ibtn_player_albumart:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$42(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/b/a/b/d;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->options:Lcom/b/a/b/d;

    return-object v0
.end method

.method static synthetic access$43(Lcom/fiio/music/activity/MyMusicListActivity;)V
    .locals 0

    .prologue
    .line 482
    invoke-direct {p0}, Lcom/fiio/music/activity/MyMusicListActivity;->updataSongItemState()V

    return-void
.end method

.method static synthetic access$44(Lcom/fiio/music/activity/MyMusicListActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->curPlayList:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$45(Lcom/fiio/music/activity/MyMusicListActivity;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->ibtn_player_control:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$46(Lcom/fiio/music/activity/MyMusicListActivity;I)V
    .locals 0

    .prologue
    .line 125
    iput p1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mPosition:I

    return-void
.end method

.method static synthetic access$47(Lcom/fiio/music/activity/MyMusicListActivity;I)V
    .locals 0

    .prologue
    .line 125
    iput p1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->top:I

    return-void
.end method

.method static synthetic access$48(Lcom/fiio/music/activity/MyMusicListActivity;I)I
    .locals 1

    .prologue
    .line 1265
    invoke-direct {p0, p1}, Lcom/fiio/music/activity/MyMusicListActivity;->dp2px(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$49(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/b/k;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->songDao:Lcom/fiio/music/b/k;

    return-object v0
.end method

.method static synthetic access$5(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/service/h;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    return-object v0
.end method

.method static synthetic access$50(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/util/cr;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->tabSortType:Lcom/fiio/music/util/cr;

    return-object v0
.end method

.method static synthetic access$51(Lcom/fiio/music/activity/MyMusicListActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->list:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$52(Lcom/fiio/music/activity/MyMusicListActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mBottomSelectorView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$53(Lcom/fiio/music/activity/MyMusicListActivity;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->check_all_item_checkbox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$54(Lcom/fiio/music/activity/MyMusicListActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->check_all_textview:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$55(Lcom/fiio/music/activity/MyMusicListActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mBottomPlayBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$56(Lcom/fiio/music/activity/MyMusicListActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mConfigfragmentMenu:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$57(Lcom/fiio/music/activity/MyMusicListActivity;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mAddListImageButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$58(Lcom/fiio/music/activity/MyMusicListActivity;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mPlayListSearch:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$6(Lcom/fiio/music/activity/MyMusicListActivity;I)V
    .locals 0

    .prologue
    .line 2266
    invoke-direct {p0, p1}, Lcom/fiio/music/activity/MyMusicListActivity;->blockedSeekTo(I)V

    return-void
.end method

.method static synthetic access$7(Lcom/fiio/music/activity/MyMusicListActivity;)V
    .locals 0

    .prologue
    .line 520
    invoke-direct {p0}, Lcom/fiio/music/activity/MyMusicListActivity;->updataSongItemList()V

    return-void
.end method

.method static synthetic access$8(Lcom/fiio/music/activity/MyMusicListActivity;)I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->pageNumber:I

    return v0
.end method

.method static synthetic access$9(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/adapter/PlayListAdapter;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mPlayListAdapter:Lcom/fiio/music/adapter/PlayListAdapter;

    return-object v0
.end method

.method private blockedSeekTo(I)V
    .locals 3

    .prologue
    .line 2268
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.fiio.music.service.meidaplayer"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2269
    const-string v1, "flag"

    const/16 v2, 0x8

    .line 2268
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 2270
    const-string v1, "seekToMsec"

    .line 2269
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 2268
    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/MyMusicListActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2272
    return-void
.end method

.method private doPlayList(IILjava/lang/String;)V
    .locals 14

    .prologue
    .line 932
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->context:Landroid/content/Context;

    invoke-direct {v2, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 935
    const/4 v9, 0x0

    .line 936
    iget v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->STYLE_PARAMTER:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    .line 937
    const v1, 0x7f0400a3

    const/4 v3, 0x0

    invoke-static {p0, v1, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 946
    :cond_0
    :goto_0
    const v1, 0x7f0b0080

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 948
    const v3, 0x7f0b0082

    invoke-virtual {v9, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 949
    const/4 v7, 0x0

    .line 952
    if-nez p1, :cond_5

    .line 953
    iget-object v4, p0, Lcom/fiio/music/activity/MyMusicListActivity;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0073

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 954
    iget-object v4, p0, Lcom/fiio/music/activity/MyMusicListActivity;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0076

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 956
    const/4 v4, 0x1

    new-array v4, v4, [Landroid/text/InputFilter;

    const/4 v5, 0x0

    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    const/16 v8, 0xc8

    invoke-direct {v6, v8}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v6, v4, v5

    .line 957
    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 963
    :cond_1
    :goto_1
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 964
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    .line 967
    const v1, 0x7f0b020b

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/Button;

    .line 968
    new-instance v1, Lcom/fiio/music/activity/el;

    move-object v2, p0

    move v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v8}, Lcom/fiio/music/activity/el;-><init>(Lcom/fiio/music/activity/MyMusicListActivity;Landroid/widget/EditText;IILjava/lang/String;Ljava/lang/String;Landroid/app/AlertDialog;)V

    invoke-virtual {v10, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1012
    const v1, 0x7f0b020a

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1013
    new-instance v2, Lcom/fiio/music/activity/em;

    invoke-direct {v2, p0, v8}, Lcom/fiio/music/activity/em;-><init>(Lcom/fiio/music/activity/MyMusicListActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1022
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    .line 1025
    new-instance v1, Lcom/fiio/music/activity/en;

    invoke-direct {v1, p0, v3}, Lcom/fiio/music/activity/en;-><init>(Lcom/fiio/music/activity/MyMusicListActivity;Landroid/widget/EditText;)V

    invoke-virtual {v8, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 1032
    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    .line 1033
    return-void

    .line 938
    :cond_2
    iget v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->STYLE_PARAMTER:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    .line 939
    const v1, 0x7f0400a4

    const/4 v3, 0x0

    invoke-static {p0, v1, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    goto/16 :goto_0

    .line 940
    :cond_3
    iget v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->STYLE_PARAMTER:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_4

    .line 941
    const v1, 0x7f0400a4

    const/4 v3, 0x0

    invoke-static {p0, v1, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    goto/16 :goto_0

    .line 942
    :cond_4
    iget v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->STYLE_PARAMTER:I

    const/4 v3, 0x4

    if-ne v1, v3, :cond_0

    .line 943
    const v1, 0x7f0400a4

    const/4 v3, 0x0

    invoke-static {p0, v1, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    goto/16 :goto_0

    .line 958
    :cond_5
    const/4 v4, 0x1

    if-ne p1, v4, :cond_1

    .line 959
    iget-object v4, p0, Lcom/fiio/music/activity/MyMusicListActivity;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0074

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 960
    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 961
    invoke-virtual {v3}, Landroid/widget/EditText;->selectAll()V

    goto/16 :goto_1
.end method

.method private dp2px(I)I
    .locals 3

    .prologue
    .line 1266
    const/4 v0, 0x1

    int-to-float v1, p1

    .line 1267
    invoke-virtual {p0}, Lcom/fiio/music/activity/MyMusicListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 1266
    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private getListAndfilledData(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/i/d;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x1

    .line 1523
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 1524
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 1544
    return-object v3

    .line 1525
    :cond_0
    new-instance v4, Lcom/fiio/music/i/d;

    invoke-direct {v4}, Lcom/fiio/music/i/d;-><init>()V

    .line 1526
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v7

    invoke-virtual {v4, v0}, Lcom/fiio/music/i/d;->a(Ljava/lang/String;)V

    .line 1527
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {v4, v0}, Lcom/fiio/music/i/d;->d(Ljava/lang/String;)V

    .line 1528
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v0, v0, v5

    invoke-virtual {v4, v0}, Lcom/fiio/music/i/d;->c(Ljava/lang/String;)V

    .line 1529
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v5, 0x3

    aget-object v0, v0, v5

    invoke-virtual {v4, v0}, Lcom/fiio/music/i/d;->b(Ljava/lang/String;)V

    .line 1531
    iget-object v5, p0, Lcom/fiio/music/activity/MyMusicListActivity;->characterParser:Lcom/fiio/music/util/f;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {v5, v0}, Lcom/fiio/music/util/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1532
    const-string v0, "0"

    .line 1533
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    .line 1534
    invoke-virtual {v5, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 1537
    :cond_1
    const-string v5, "[A-Z]"

    invoke-virtual {v0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1538
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/fiio/music/i/d;->f(Ljava/lang/String;)V

    .line 1542
    :goto_1
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1524
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1540
    :cond_2
    const-string v0, "#"

    invoke-virtual {v4, v0}, Lcom/fiio/music/i/d;->f(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private gotoPlayMain()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2191
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2193
    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    .line 2194
    iget-object v2, p0, Lcom/fiio/music/activity/MyMusicListActivity;->curSongList:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/fiio/music/activity/MyMusicListActivity;->curSongList:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/fiio/music/activity/MyMusicListActivity;->curSongList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 2195
    :cond_0
    const-string v2, "0"

    aput-object v2, v1, v4

    .line 2199
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/fiio/music/activity/MyMusicListActivity;->curSongList:Ljava/util/List;

    invoke-static {v3}, Lcom/fiio/music/util/h;->a(Ljava/util/List;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 2200
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mSongNameStr:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 2201
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mAritstNameStr:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 2202
    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/fiio/music/activity/MyMusicListActivity;->currentPosition:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2203
    const/4 v2, 0x5

    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/fiio/music/activity/MyMusicListActivity;->currentDuration:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2204
    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v4}, Lcom/fiio/music/service/h;->z()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2205
    const-string v2, "changeboolean"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2206
    const-string v2, "playerInfo"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 2207
    const-string v1, "playingSong"

    iget-object v2, p0, Lcom/fiio/music/activity/MyMusicListActivity;->playingSong:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2208
    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/MyMusicListActivity;->startActivity(Landroid/content/Intent;)V

    .line 2209
    return-void

    .line 2197
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mPlayingSongPosition:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    goto :goto_0
.end method

.method private initBottomBar()V
    .locals 2

    .prologue
    .line 1587
    const v0, 0x7f0b01d0

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/MyMusicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mBottomPlayBar:Landroid/view/View;

    .line 1588
    const v0, 0x7f0b0056

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/MyMusicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->ibtn_player_albumart:Landroid/widget/ImageView;

    .line 1589
    const v0, 0x7f0b005c

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/MyMusicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->ibtn_player_control:Landroid/widget/ImageButton;

    .line 1590
    const v0, 0x7f0b0058

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/MyMusicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->ibtn_player_prev:Landroid/widget/ImageButton;

    .line 1591
    const v0, 0x7f0b005d

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/MyMusicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->ibtn_player_next:Landroid/widget/ImageButton;

    .line 1592
    const v0, 0x7f0b005e

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/MyMusicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    iput-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->tv_player_title:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    .line 1593
    const v0, 0x7f0b005f

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/MyMusicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    iput-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->tv_player_artist:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    .line 1595
    const v0, 0x7f0b0059

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/MyMusicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/util/RoundProgressBar;

    iput-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->rpb_player_progress:Lcom/fiio/music/util/RoundProgressBar;

    .line 1598
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->ibtn_player_albumart:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->imageButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1599
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->ibtn_player_control:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->imageButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1600
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->ibtn_player_prev:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->imageButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1601
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->ibtn_player_next:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->imageButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1602
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mBottomPlayBar:Landroid/view/View;

    iget-object v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->imageButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1603
    return-void
.end method

.method private initBottomSelector()V
    .locals 2

    .prologue
    .line 1548
    const v0, 0x7f0b01cf

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/MyMusicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mBottomSelectorView:Landroid/view/View;

    .line 1549
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mBottomSelectorView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1550
    const v0, 0x7f0b01b9

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/MyMusicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->check_all_item_checkbox:Landroid/widget/CheckBox;

    .line 1551
    const v0, 0x7f0b01b8

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/MyMusicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->check_all_textview:Landroid/widget/TextView;

    .line 1552
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->check_all_item_checkbox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/fiio/music/activity/dy;

    invoke-direct {v1, p0}, Lcom/fiio/music/activity/dy;-><init>(Lcom/fiio/music/activity/MyMusicListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1564
    return-void
.end method

.method private initImageLoader()V
    .locals 5

    .prologue
    const v4, 0x7f020424

    const v1, 0x7f0201d4

    const v3, 0x7f020423

    const/4 v2, 0x1

    .line 268
    invoke-static {}, Lcom/b/a/b/f;->a()Lcom/b/a/b/f;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->imageLoader:Lcom/b/a/b/f;

    .line 270
    iget v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->STYLE_PARAMTER:I

    if-ne v0, v2, :cond_1

    .line 271
    new-instance v0, Lcom/b/a/b/e;

    invoke-direct {v0}, Lcom/b/a/b/e;-><init>()V

    .line 272
    invoke-virtual {v0, v1}, Lcom/b/a/b/e;->a(I)Lcom/b/a/b/e;

    move-result-object v0

    .line 273
    invoke-virtual {v0, v1}, Lcom/b/a/b/e;->b(I)Lcom/b/a/b/e;

    move-result-object v0

    .line 274
    invoke-virtual {v0, v1}, Lcom/b/a/b/e;->c(I)Lcom/b/a/b/e;

    move-result-object v0

    .line 275
    invoke-virtual {v0, v2}, Lcom/b/a/b/e;->a(Z)Lcom/b/a/b/e;

    move-result-object v0

    .line 276
    invoke-virtual {v0, v2}, Lcom/b/a/b/e;->b(Z)Lcom/b/a/b/e;

    move-result-object v0

    .line 278
    new-instance v1, Lcom/b/a/b/c/c;

    invoke-direct {v1}, Lcom/b/a/b/c/c;-><init>()V

    invoke-virtual {v0, v1}, Lcom/b/a/b/e;->a(Lcom/b/a/b/c/a;)Lcom/b/a/b/e;

    move-result-object v0

    .line 279
    invoke-virtual {v0}, Lcom/b/a/b/e;->d()Lcom/b/a/b/d;

    move-result-object v0

    .line 271
    iput-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->options:Lcom/b/a/b/d;

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    iget v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->STYLE_PARAMTER:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 281
    new-instance v0, Lcom/b/a/b/e;

    invoke-direct {v0}, Lcom/b/a/b/e;-><init>()V

    .line 282
    invoke-virtual {v0, v3}, Lcom/b/a/b/e;->a(I)Lcom/b/a/b/e;

    move-result-object v0

    .line 283
    invoke-virtual {v0, v3}, Lcom/b/a/b/e;->b(I)Lcom/b/a/b/e;

    move-result-object v0

    .line 284
    invoke-virtual {v0, v3}, Lcom/b/a/b/e;->c(I)Lcom/b/a/b/e;

    move-result-object v0

    .line 285
    invoke-virtual {v0, v2}, Lcom/b/a/b/e;->a(Z)Lcom/b/a/b/e;

    move-result-object v0

    .line 286
    invoke-virtual {v0, v2}, Lcom/b/a/b/e;->b(Z)Lcom/b/a/b/e;

    move-result-object v0

    .line 288
    new-instance v1, Lcom/b/a/b/c/c;

    invoke-direct {v1}, Lcom/b/a/b/c/c;-><init>()V

    invoke-virtual {v0, v1}, Lcom/b/a/b/e;->a(Lcom/b/a/b/c/a;)Lcom/b/a/b/e;

    move-result-object v0

    .line 289
    invoke-virtual {v0}, Lcom/b/a/b/e;->d()Lcom/b/a/b/d;

    move-result-object v0

    .line 281
    iput-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->options:Lcom/b/a/b/d;

    goto :goto_0

    .line 290
    :cond_2
    iget v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->STYLE_PARAMTER:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 291
    new-instance v0, Lcom/b/a/b/e;

    invoke-direct {v0}, Lcom/b/a/b/e;-><init>()V

    .line 292
    invoke-virtual {v0, v4}, Lcom/b/a/b/e;->a(I)Lcom/b/a/b/e;

    move-result-object v0

    .line 293
    invoke-virtual {v0, v4}, Lcom/b/a/b/e;->b(I)Lcom/b/a/b/e;

    move-result-object v0

    .line 294
    invoke-virtual {v0, v4}, Lcom/b/a/b/e;->c(I)Lcom/b/a/b/e;

    move-result-object v0

    .line 295
    invoke-virtual {v0, v2}, Lcom/b/a/b/e;->a(Z)Lcom/b/a/b/e;

    move-result-object v0

    .line 296
    invoke-virtual {v0, v2}, Lcom/b/a/b/e;->b(Z)Lcom/b/a/b/e;

    move-result-object v0

    .line 298
    new-instance v1, Lcom/b/a/b/c/c;

    invoke-direct {v1}, Lcom/b/a/b/c/c;-><init>()V

    invoke-virtual {v0, v1}, Lcom/b/a/b/e;->a(Lcom/b/a/b/c/a;)Lcom/b/a/b/e;

    move-result-object v0

    .line 299
    invoke-virtual {v0}, Lcom/b/a/b/e;->d()Lcom/b/a/b/d;

    move-result-object v0

    .line 291
    iput-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->options:Lcom/b/a/b/d;

    goto :goto_0

    .line 300
    :cond_3
    iget v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->STYLE_PARAMTER:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 301
    new-instance v0, Lcom/b/a/b/e;

    invoke-direct {v0}, Lcom/b/a/b/e;-><init>()V

    .line 302
    invoke-virtual {v0, v3}, Lcom/b/a/b/e;->a(I)Lcom/b/a/b/e;

    move-result-object v0

    .line 303
    invoke-virtual {v0, v3}, Lcom/b/a/b/e;->b(I)Lcom/b/a/b/e;

    move-result-object v0

    .line 304
    invoke-virtual {v0, v3}, Lcom/b/a/b/e;->c(I)Lcom/b/a/b/e;

    move-result-object v0

    .line 305
    invoke-virtual {v0, v2}, Lcom/b/a/b/e;->a(Z)Lcom/b/a/b/e;

    move-result-object v0

    .line 306
    invoke-virtual {v0, v2}, Lcom/b/a/b/e;->b(Z)Lcom/b/a/b/e;

    move-result-object v0

    .line 308
    new-instance v1, Lcom/b/a/b/c/c;

    invoke-direct {v1}, Lcom/b/a/b/c/c;-><init>()V

    invoke-virtual {v0, v1}, Lcom/b/a/b/e;->a(Lcom/b/a/b/c/a;)Lcom/b/a/b/e;

    move-result-object v0

    .line 309
    invoke-virtual {v0}, Lcom/b/a/b/e;->d()Lcom/b/a/b/d;

    move-result-object v0

    .line 301
    iput-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->options:Lcom/b/a/b/d;

    goto/16 :goto_0
.end method

.method private initSongItemSwipeListView()V
    .locals 3

    .prologue
    .line 1821
    new-instance v0, Lcom/fiio/music/activity/dz;

    invoke-direct {v0, p0}, Lcom/fiio/music/activity/dz;-><init>(Lcom/fiio/music/activity/MyMusicListActivity;)V

    .line 1841
    new-instance v1, Lcom/fiio/music/activity/eb;

    invoke-direct {v1, p0}, Lcom/fiio/music/activity/eb;-><init>(Lcom/fiio/music/activity/MyMusicListActivity;)V

    .line 1863
    iget-object v2, p0, Lcom/fiio/music/activity/MyMusicListActivity;->my_song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    invoke-virtual {v2, v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setMenuCreator(Lcom/fiio/music/swipemenulistview/c;)V

    .line 1864
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->my_song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setMenuLeftCreator(Lcom/fiio/music/swipemenulistview/c;)V

    .line 1866
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->my_song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    new-instance v1, Lcom/fiio/music/activity/ec;

    invoke-direct {v1, p0}, Lcom/fiio/music/activity/ec;-><init>(Lcom/fiio/music/activity/MyMusicListActivity;)V

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setOnMenuItemClickListener(Lcom/fiio/music/swipemenulistview/g;)V

    .line 1994
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->my_song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    new-instance v1, Lcom/fiio/music/activity/ef;

    invoke-direct {v1, p0}, Lcom/fiio/music/activity/ef;-><init>(Lcom/fiio/music/activity/MyMusicListActivity;)V

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setOnSwipeListener(Lcom/fiio/music/swipemenulistview/i;)V

    .line 2006
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->my_song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    new-instance v1, Lcom/fiio/music/activity/eg;

    invoke-direct {v1, p0}, Lcom/fiio/music/activity/eg;-><init>(Lcom/fiio/music/activity/MyMusicListActivity;)V

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setOnMenuStateChangeListener(Lcom/fiio/music/swipemenulistview/h;)V

    .line 2015
    return-void
.end method

.method private initSwipeListView()V
    .locals 3

    .prologue
    .line 1079
    new-instance v0, Lcom/fiio/music/activity/do;

    invoke-direct {v0, p0}, Lcom/fiio/music/activity/do;-><init>(Lcom/fiio/music/activity/MyMusicListActivity;)V

    .line 1099
    new-instance v1, Lcom/fiio/music/activity/dp;

    invoke-direct {v1, p0}, Lcom/fiio/music/activity/dp;-><init>(Lcom/fiio/music/activity/MyMusicListActivity;)V

    .line 1134
    iget-object v2, p0, Lcom/fiio/music/activity/MyMusicListActivity;->my_play_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    invoke-virtual {v2, v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setMenuCreator(Lcom/fiio/music/swipemenulistview/c;)V

    .line 1135
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->my_play_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setMenuLeftCreator(Lcom/fiio/music/swipemenulistview/c;)V

    .line 1137
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->my_play_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    new-instance v1, Lcom/fiio/music/activity/dq;

    invoke-direct {v1, p0}, Lcom/fiio/music/activity/dq;-><init>(Lcom/fiio/music/activity/MyMusicListActivity;)V

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setOnMenuItemClickListener(Lcom/fiio/music/swipemenulistview/g;)V

    .line 1241
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->my_play_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    new-instance v1, Lcom/fiio/music/activity/dt;

    invoke-direct {v1, p0}, Lcom/fiio/music/activity/dt;-><init>(Lcom/fiio/music/activity/MyMusicListActivity;)V

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setOnSwipeListener(Lcom/fiio/music/swipemenulistview/i;)V

    .line 1255
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->my_play_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    new-instance v1, Lcom/fiio/music/activity/du;

    invoke-direct {v1, p0}, Lcom/fiio/music/activity/du;-><init>(Lcom/fiio/music/activity/MyMusicListActivity;)V

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setOnMenuStateChangeListener(Lcom/fiio/music/swipemenulistview/h;)V

    .line 1264
    return-void
.end method

.method private jumpPage(IILjava/lang/Object;)V
    .locals 8

    .prologue
    .line 653
    if-nez p1, :cond_4

    .line 655
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->playListManager:Lcom/fiio/music/util/bw;

    invoke-static {}, Lcom/fiio/music/util/bw;->a()Ljava/util/List;

    move-result-object v0

    .line 656
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 666
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->playerListDao:Lcom/fiio/music/b/j;

    invoke-virtual {v0}, Lcom/fiio/music/b/j;->a()Ljava/util/List;

    move-result-object v0

    .line 667
    iget-object v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->tabSortType:Lcom/fiio/music/util/cr;

    const-string v2, "playList"

    invoke-virtual {v1, v2}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->sortType:I

    .line 668
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 669
    iget-object v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->sortDataList:Lcom/fiio/music/util/cm;

    iget v2, p0, Lcom/fiio/music/activity/MyMusicListActivity;->sortType:I

    invoke-virtual {v1, v2, v0}, Lcom/fiio/music/util/cm;->a(ILjava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->list:Ljava/util/List;

    .line 670
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->my_list_content_title:Landroid/widget/TextView;

    const v1, 0x7f0c0052

    invoke-virtual {p0, v1}, Lcom/fiio/music/activity/MyMusicListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 671
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mPlayListAdapter:Lcom/fiio/music/adapter/PlayListAdapter;

    if-nez v0, :cond_3

    .line 672
    new-instance v0, Lcom/fiio/music/adapter/PlayListAdapter;

    .line 673
    iget-object v2, p0, Lcom/fiio/music/activity/MyMusicListActivity;->list:Ljava/util/List;

    iget v3, p0, Lcom/fiio/music/activity/MyMusicListActivity;->PlayListIcon:I

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    iget v7, p0, Lcom/fiio/music/activity/MyMusicListActivity;->STYLE_PARAMTER:I

    move-object v1, p0

    move-object v6, p0

    invoke-direct/range {v0 .. v7}, Lcom/fiio/music/adapter/PlayListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;IZLcom/fiio/music/service/h;Landroid/view/View$OnClickListener;I)V

    .line 672
    iput-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mPlayListAdapter:Lcom/fiio/music/adapter/PlayListAdapter;

    .line 677
    :goto_1
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->my_play_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    iget-object v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mPlayListAdapter:Lcom/fiio/music/adapter/PlayListAdapter;

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 678
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->my_play_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    iget-object v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->my_list_change_content_listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 680
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->my_play_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    iget-object v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->my_list_change_content_looglistener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 681
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->my_list_content_title:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 682
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->my_song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setVisibility(I)V

    .line 683
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->my_play_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setVisibility(I)V

    .line 684
    iput p1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->pageNumber:I

    .line 712
    :cond_1
    :goto_2
    return-void

    .line 656
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 657
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/fiio/music/activity/MyMusicListActivity;->isEquals(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "null.cfg"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 658
    new-instance v2, Lcom/fiio/music/entity/PlayerList;

    invoke-direct {v2}, Lcom/fiio/music/entity/PlayerList;-><init>()V

    .line 659
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/fiio/music/entity/PlayerList;->setName(Ljava/lang/String;)V

    .line 660
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0xbb8

    add-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Lcom/fiio/music/entity/PlayerList;->setDate(J)V

    .line 661
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->playerListDao:Lcom/fiio/music/b/j;

    invoke-virtual {v0, v2}, Lcom/fiio/music/b/j;->a(Lcom/fiio/music/entity/PlayerList;)J

    goto/16 :goto_0

    .line 675
    :cond_3
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mPlayListAdapter:Lcom/fiio/music/adapter/PlayListAdapter;

    iget-object v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->list:Ljava/util/List;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/adapter/PlayListAdapter;->setDate(Ljava/util/List;Z)V

    goto :goto_1

    .line 686
    :cond_4
    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    .line 687
    check-cast p3, Lcom/fiio/music/adapter/PlayListAdapter$ViewHolder;

    iget-object v7, p3, Lcom/fiio/music/adapter/PlayListAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    .line 688
    invoke-virtual {v7}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->condition:Ljava/lang/String;

    .line 689
    new-instance v0, Lcom/fiio/music/adapter/SongItemAdapter;

    iget-object v2, p0, Lcom/fiio/music/activity/MyMusicListActivity;->data:Ljava/util/List;

    iget-object v3, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    const/4 v4, 0x6

    iget-object v5, p0, Lcom/fiio/music/activity/MyMusicListActivity;->my_song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    iget v6, p0, Lcom/fiio/music/activity/MyMusicListActivity;->STYLE_PARAMTER:I

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/fiio/music/adapter/SongItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/fiio/music/service/h;ILcom/fiio/music/swipemenulistview/SwipeMenuListView;I)V

    iput-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mSongItemAdapter:Lcom/fiio/music/adapter/SongItemAdapter;

    .line 690
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->my_song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    iget-object v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mSongItemAdapter:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 691
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->my_song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    iget-object v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->my_list_change_content_listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 692
    const v0, 0x7f0b0001

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->curPlayList:Ljava/lang/String;

    .line 694
    iget-object v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->my_list_content_title:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 695
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->initTask:Lcom/fiio/music/activity/eo;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->initTask:Lcom/fiio/music/activity/eo;

    invoke-virtual {v0}, Lcom/fiio/music/activity/eo;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_5

    .line 696
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->initTask:Lcom/fiio/music/activity/eo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fiio/music/activity/eo;->cancel(Z)Z

    .line 698
    :cond_5
    new-instance v0, Lcom/fiio/music/activity/eo;

    invoke-direct {v0, p0}, Lcom/fiio/music/activity/eo;-><init>(Lcom/fiio/music/activity/MyMusicListActivity;)V

    iput-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->initTask:Lcom/fiio/music/activity/eo;

    .line 699
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->initTask:Lcom/fiio/music/activity/eo;

    iget-object v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/activity/eo;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 700
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->my_play_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setVisibility(I)V

    .line 701
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->my_song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setVisibility(I)V

    .line 702
    iput p1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->pageNumber:I

    goto/16 :goto_2

    .line 703
    :cond_6
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 704
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->my_song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setVisibility(I)V

    .line 705
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->my_list_content_title:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 707
    new-instance v0, Lcom/fiio/music/adapter/SongItemAdapter;

    iget-object v2, p0, Lcom/fiio/music/activity/MyMusicListActivity;->data:Ljava/util/List;

    iget-object v3, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    const/4 v4, 0x6

    iget-object v5, p0, Lcom/fiio/music/activity/MyMusicListActivity;->my_song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    iget v6, p0, Lcom/fiio/music/activity/MyMusicListActivity;->STYLE_PARAMTER:I

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/fiio/music/adapter/SongItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/fiio/music/service/h;ILcom/fiio/music/swipemenulistview/SwipeMenuListView;I)V

    iput-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mSongItemAdapter:Lcom/fiio/music/adapter/SongItemAdapter;

    .line 708
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->my_song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    iget-object v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mSongItemAdapter:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 709
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->my_play_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    iget-object v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mPlayListAdapter:Lcom/fiio/music/adapter/PlayListAdapter;

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_2
.end method

.method private playerMusicBySongItem(Landroid/view/View;Lcom/fiio/music/entity/Song;ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 875
    if-nez p2, :cond_0

    .line 895
    :goto_0
    return-void

    .line 876
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/adapter/SongItemAdapter$ViewHolder;

    .line 877
    iget-object v0, v0, Lcom/fiio/music/adapter/SongItemAdapter$ViewHolder;->tv_song_list_item_top:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    invoke-virtual {v0}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 878
    invoke-virtual {p2}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v1

    .line 879
    iget-object v2, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v2}, Lcom/fiio/music/service/h;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v2}, Lcom/fiio/music/service/h;->l()I

    move-result v2

    if-ne p3, v2, :cond_1

    iget-object v2, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v2}, Lcom/fiio/music/service/h;->h()Lcom/fiio/music/entity/Song;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 880
    invoke-direct {p0, p1}, Lcom/fiio/music/activity/MyMusicListActivity;->PlayerOrPause(Landroid/view/View;)V

    goto :goto_0

    .line 882
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 884
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->my_song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    invoke-virtual {v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/adapter/SongItemAdapter;

    iget-object v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/SongItemAdapter;->setPlayerManager(Lcom/fiio/music/service/h;)V

    .line 886
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->my_list_content_title:Landroid/widget/TextView;

    const v1, 0x7f0b0001

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->curPlayList:Ljava/lang/String;

    goto :goto_0

    .line 889
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 890
    iget-object v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->data:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 892
    iget-object v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    iget-object v2, p0, Lcom/fiio/music/activity/MyMusicListActivity;->curPlayList:Ljava/lang/String;

    invoke-virtual {v1, p2, p3, v2, v0}, Lcom/fiio/music/service/h;->b(Lcom/fiio/music/entity/Song;ILjava/lang/String;Ljava/util/List;)V

    .line 893
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->my_song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    invoke-virtual {v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/adapter/SongItemAdapter;

    iget-object v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/SongItemAdapter;->setPlayerManager(Lcom/fiio/music/service/h;)V

    goto/16 :goto_0
.end method

.method private showWindownMenuDialog(Landroid/content/Context;)V
    .locals 9

    .prologue
    const v4, 0x7f020503

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 1273
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040190

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1274
    new-instance v1, Lcom/fiio/music/custom/b;

    invoke-direct {v1, p1}, Lcom/fiio/music/custom/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/fiio/music/custom/b;->a(Landroid/view/View;)Lcom/fiio/music/custom/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fiio/music/custom/b;->b(Landroid/view/View;)Lcom/fiio/music/custom/a;

    move-result-object v1

    .line 1275
    const v2, 0x7f0b0392

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/satellitemenu/SatelliteMenu;

    .line 1276
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1277
    iget v3, p0, Lcom/fiio/music/activity/MyMusicListActivity;->STYLE_PARAMTER:I

    if-ne v3, v5, :cond_3

    .line 1278
    iget v3, p0, Lcom/fiio/music/activity/MyMusicListActivity;->pageNumber:I

    if-nez v3, :cond_2

    .line 1279
    new-instance v3, Lcom/fiio/music/satellitemenu/l;

    const v4, 0x7f020504

    invoke-direct {v3, v5, v4}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1280
    new-instance v3, Lcom/fiio/music/satellitemenu/l;

    const v4, 0x7f020523

    invoke-direct {v3, v6, v4}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1281
    new-instance v3, Lcom/fiio/music/satellitemenu/l;

    const v4, 0x7f02051d

    invoke-direct {v3, v7, v4}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1326
    :cond_0
    :goto_0
    invoke-virtual {v0, v2}, Lcom/fiio/music/satellitemenu/SatelliteMenu;->a(Ljava/util/List;)V

    .line 1327
    iget v2, p0, Lcom/fiio/music/activity/MyMusicListActivity;->STYLE_PARAMTER:I

    if-ne v2, v5, :cond_9

    .line 1328
    const v2, 0x7f02028f

    invoke-virtual {v0, v2}, Lcom/fiio/music/satellitemenu/SatelliteMenu;->setDefaultMaimIcom(I)V

    .line 1329
    const v2, 0x7f020506

    invoke-virtual {v0, v2}, Lcom/fiio/music/satellitemenu/SatelliteMenu;->setCloseMaimIcom(I)V

    .line 1345
    :cond_1
    :goto_1
    new-instance v2, Lcom/fiio/music/activity/dv;

    invoke-direct {v2, p0}, Lcom/fiio/music/activity/dv;-><init>(Lcom/fiio/music/activity/MyMusicListActivity;)V

    invoke-virtual {v0, v2}, Lcom/fiio/music/satellitemenu/SatelliteMenu;->setOnItemClickedListener(Lcom/fiio/music/satellitemenu/h;)V

    .line 1416
    new-instance v2, Lcom/fiio/music/activity/dw;

    invoke-direct {v2, p0, v1}, Lcom/fiio/music/activity/dw;-><init>(Lcom/fiio/music/activity/MyMusicListActivity;Lcom/fiio/music/custom/a;)V

    invoke-virtual {v0, v2}, Lcom/fiio/music/satellitemenu/SatelliteMenu;->setonClick(Lcom/fiio/music/satellitemenu/f;)V

    .line 1422
    invoke-virtual {v0}, Lcom/fiio/music/satellitemenu/SatelliteMenu;->b()V

    .line 1423
    const/16 v2, 0xc8

    invoke-virtual {v0, v2}, Lcom/fiio/music/satellitemenu/SatelliteMenu;->settingHight(I)V

    .line 1424
    invoke-virtual {v1}, Lcom/fiio/music/custom/a;->show()V

    .line 1425
    invoke-virtual {v0}, Lcom/fiio/music/satellitemenu/SatelliteMenu;->a()V

    .line 1427
    return-void

    .line 1282
    :cond_2
    iget v3, p0, Lcom/fiio/music/activity/MyMusicListActivity;->pageNumber:I

    if-ne v3, v5, :cond_0

    .line 1283
    new-instance v3, Lcom/fiio/music/satellitemenu/l;

    const v4, 0x7f020504

    invoke-direct {v3, v5, v4}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1284
    new-instance v3, Lcom/fiio/music/satellitemenu/l;

    const v4, 0x7f020523

    invoke-direct {v3, v6, v4}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1285
    new-instance v3, Lcom/fiio/music/satellitemenu/l;

    const v4, 0x7f02051d

    invoke-direct {v3, v7, v4}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1286
    new-instance v3, Lcom/fiio/music/satellitemenu/l;

    const v4, 0x7f02051b

    invoke-direct {v3, v8, v4}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1288
    :cond_3
    iget v3, p0, Lcom/fiio/music/activity/MyMusicListActivity;->STYLE_PARAMTER:I

    if-ne v3, v6, :cond_5

    .line 1289
    iget v3, p0, Lcom/fiio/music/activity/MyMusicListActivity;->pageNumber:I

    if-nez v3, :cond_4

    .line 1290
    new-instance v3, Lcom/fiio/music/satellitemenu/l;

    invoke-direct {v3, v5, v4}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1291
    new-instance v3, Lcom/fiio/music/satellitemenu/l;

    const v4, 0x7f020522

    invoke-direct {v3, v6, v4}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1292
    new-instance v3, Lcom/fiio/music/satellitemenu/l;

    const v4, 0x7f02051c

    invoke-direct {v3, v7, v4}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1293
    :cond_4
    iget v3, p0, Lcom/fiio/music/activity/MyMusicListActivity;->pageNumber:I

    if-ne v3, v5, :cond_0

    .line 1294
    new-instance v3, Lcom/fiio/music/satellitemenu/l;

    invoke-direct {v3, v5, v4}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1295
    new-instance v3, Lcom/fiio/music/satellitemenu/l;

    const v4, 0x7f020522

    invoke-direct {v3, v6, v4}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1296
    new-instance v3, Lcom/fiio/music/satellitemenu/l;

    const v4, 0x7f02051c

    invoke-direct {v3, v7, v4}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1297
    new-instance v3, Lcom/fiio/music/satellitemenu/l;

    const v4, 0x7f02051a

    invoke-direct {v3, v8, v4}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1300
    :cond_5
    iget v3, p0, Lcom/fiio/music/activity/MyMusicListActivity;->STYLE_PARAMTER:I

    if-ne v3, v7, :cond_7

    .line 1301
    iget v3, p0, Lcom/fiio/music/activity/MyMusicListActivity;->pageNumber:I

    if-nez v3, :cond_6

    .line 1302
    new-instance v3, Lcom/fiio/music/satellitemenu/l;

    invoke-direct {v3, v5, v4}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1303
    new-instance v3, Lcom/fiio/music/satellitemenu/l;

    const v4, 0x7f020522

    invoke-direct {v3, v6, v4}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1304
    new-instance v3, Lcom/fiio/music/satellitemenu/l;

    const v4, 0x7f02051c

    invoke-direct {v3, v7, v4}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1305
    :cond_6
    iget v3, p0, Lcom/fiio/music/activity/MyMusicListActivity;->pageNumber:I

    if-ne v3, v5, :cond_0

    .line 1306
    new-instance v3, Lcom/fiio/music/satellitemenu/l;

    invoke-direct {v3, v5, v4}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1307
    new-instance v3, Lcom/fiio/music/satellitemenu/l;

    const v4, 0x7f020522

    invoke-direct {v3, v6, v4}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1308
    new-instance v3, Lcom/fiio/music/satellitemenu/l;

    const v4, 0x7f02051c

    invoke-direct {v3, v7, v4}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1309
    new-instance v3, Lcom/fiio/music/satellitemenu/l;

    const v4, 0x7f02051a

    invoke-direct {v3, v8, v4}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1312
    :cond_7
    iget v3, p0, Lcom/fiio/music/activity/MyMusicListActivity;->STYLE_PARAMTER:I

    if-ne v3, v8, :cond_0

    .line 1313
    iget v3, p0, Lcom/fiio/music/activity/MyMusicListActivity;->pageNumber:I

    if-nez v3, :cond_8

    .line 1314
    new-instance v3, Lcom/fiio/music/satellitemenu/l;

    invoke-direct {v3, v5, v4}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1315
    new-instance v3, Lcom/fiio/music/satellitemenu/l;

    const v4, 0x7f020522

    invoke-direct {v3, v6, v4}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1316
    new-instance v3, Lcom/fiio/music/satellitemenu/l;

    const v4, 0x7f02051c

    invoke-direct {v3, v7, v4}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1317
    :cond_8
    iget v3, p0, Lcom/fiio/music/activity/MyMusicListActivity;->pageNumber:I

    if-ne v3, v5, :cond_0

    .line 1318
    new-instance v3, Lcom/fiio/music/satellitemenu/l;

    invoke-direct {v3, v5, v4}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1319
    new-instance v3, Lcom/fiio/music/satellitemenu/l;

    const v4, 0x7f020522

    invoke-direct {v3, v6, v4}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1320
    new-instance v3, Lcom/fiio/music/satellitemenu/l;

    const v4, 0x7f02051c

    invoke-direct {v3, v7, v4}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1321
    new-instance v3, Lcom/fiio/music/satellitemenu/l;

    const v4, 0x7f02051a

    invoke-direct {v3, v8, v4}, Lcom/fiio/music/satellitemenu/l;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1330
    :cond_9
    iget v2, p0, Lcom/fiio/music/activity/MyMusicListActivity;->STYLE_PARAMTER:I

    if-ne v2, v6, :cond_a

    .line 1331
    const v2, 0x7f020290

    invoke-virtual {v0, v2}, Lcom/fiio/music/satellitemenu/SatelliteMenu;->setDefaultMaimIcom(I)V

    .line 1332
    const v2, 0x7f020505

    invoke-virtual {v0, v2}, Lcom/fiio/music/satellitemenu/SatelliteMenu;->setCloseMaimIcom(I)V

    goto/16 :goto_1

    .line 1334
    :cond_a
    iget v2, p0, Lcom/fiio/music/activity/MyMusicListActivity;->STYLE_PARAMTER:I

    if-ne v2, v7, :cond_b

    .line 1335
    const v2, 0x7f020290

    invoke-virtual {v0, v2}, Lcom/fiio/music/satellitemenu/SatelliteMenu;->setDefaultMaimIcom(I)V

    .line 1336
    const v2, 0x7f020505

    invoke-virtual {v0, v2}, Lcom/fiio/music/satellitemenu/SatelliteMenu;->setCloseMaimIcom(I)V

    goto/16 :goto_1

    .line 1338
    :cond_b
    iget v2, p0, Lcom/fiio/music/activity/MyMusicListActivity;->STYLE_PARAMTER:I

    if-ne v2, v8, :cond_1

    .line 1339
    const v2, 0x7f020290

    invoke-virtual {v0, v2}, Lcom/fiio/music/satellitemenu/SatelliteMenu;->setDefaultMaimIcom(I)V

    .line 1340
    const v2, 0x7f020505

    invoke-virtual {v0, v2}, Lcom/fiio/music/satellitemenu/SatelliteMenu;->setCloseMaimIcom(I)V

    goto/16 :goto_1
.end method

.method private updataSongItemList()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 521
    iget v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->pageNumber:I

    if-ne v0, v3, :cond_2

    .line 522
    invoke-virtual {p0}, Lcom/fiio/music/activity/MyMusicListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 523
    const v1, 0x7f0c0054

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 524
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->my_list_content_title:Landroid/widget/TextView;

    const v2, 0x7f0b0001

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 525
    if-eqz v0, :cond_2

    .line 526
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 527
    iget-object v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->data:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 528
    iget-object v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->data:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 529
    :cond_0
    iput-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->curPlayList:Ljava/lang/String;

    .line 530
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->initTask:Lcom/fiio/music/activity/eo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->initTask:Lcom/fiio/music/activity/eo;

    invoke-virtual {v0}, Lcom/fiio/music/activity/eo;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1

    .line 531
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->initTask:Lcom/fiio/music/activity/eo;

    invoke-virtual {v0, v3}, Lcom/fiio/music/activity/eo;->cancel(Z)Z

    .line 533
    :cond_1
    new-instance v0, Lcom/fiio/music/activity/eo;

    invoke-direct {v0, p0}, Lcom/fiio/music/activity/eo;-><init>(Lcom/fiio/music/activity/MyMusicListActivity;)V

    iput-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->initTask:Lcom/fiio/music/activity/eo;

    .line 534
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->initTask:Lcom/fiio/music/activity/eo;

    iget-object v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/activity/eo;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 545
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->my_song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    invoke-virtual {v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/adapter/SongItemAdapter;

    .line 546
    iget-object v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/SongItemAdapter;->setPlayerManager(Lcom/fiio/music/service/h;)V

    .line 549
    :cond_2
    iget v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->pageNumber:I

    if-nez v0, :cond_3

    .line 550
    const/4 v0, 0x0

    invoke-direct {p0, v4, v4, v0}, Lcom/fiio/music/activity/MyMusicListActivity;->jumpPage(IILjava/lang/Object;)V

    .line 552
    :cond_3
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->m()I

    move-result v0

    .line 553
    if-eq v0, v6, :cond_4

    .line 554
    if-ne v0, v7, :cond_c

    .line 555
    :cond_4
    iget v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->STYLE_PARAMTER:I

    if-ne v0, v3, :cond_9

    .line 556
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->ibtn_player_control:Landroid/widget/ImageButton;

    const v1, 0x7f02055a

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 577
    :cond_5
    :goto_1
    return-void

    .line 536
    :cond_6
    iget-object v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->data:Ljava/util/List;

    if-eqz v1, :cond_7

    .line 537
    iget-object v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->data:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 538
    :cond_7
    iput-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->curPlayList:Ljava/lang/String;

    .line 539
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->initTask:Lcom/fiio/music/activity/eo;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->initTask:Lcom/fiio/music/activity/eo;

    invoke-virtual {v0}, Lcom/fiio/music/activity/eo;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_8

    .line 540
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->initTask:Lcom/fiio/music/activity/eo;

    invoke-virtual {v0, v3}, Lcom/fiio/music/activity/eo;->cancel(Z)Z

    .line 542
    :cond_8
    new-instance v0, Lcom/fiio/music/activity/eo;

    invoke-direct {v0, p0}, Lcom/fiio/music/activity/eo;-><init>(Lcom/fiio/music/activity/MyMusicListActivity;)V

    iput-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->initTask:Lcom/fiio/music/activity/eo;

    .line 543
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->initTask:Lcom/fiio/music/activity/eo;

    iget-object v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/activity/eo;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 557
    :cond_9
    iget v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->STYLE_PARAMTER:I

    if-ne v0, v5, :cond_a

    .line 558
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->ibtn_player_control:Landroid/widget/ImageButton;

    const v1, 0x7f02055b

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_1

    .line 559
    :cond_a
    iget v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->STYLE_PARAMTER:I

    if-ne v0, v6, :cond_b

    .line 560
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->ibtn_player_control:Landroid/widget/ImageButton;

    const v1, 0x7f02055c

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_1

    .line 561
    :cond_b
    iget v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->STYLE_PARAMTER:I

    if-ne v0, v7, :cond_5

    .line 562
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->ibtn_player_control:Landroid/widget/ImageButton;

    const v1, 0x7f02055d

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_1

    .line 565
    :cond_c
    if-ne v0, v5, :cond_5

    .line 566
    iget v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->STYLE_PARAMTER:I

    if-ne v0, v3, :cond_d

    .line 567
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->ibtn_player_control:Landroid/widget/ImageButton;

    const v1, 0x7f02055f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_1

    .line 568
    :cond_d
    iget v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->STYLE_PARAMTER:I

    if-ne v0, v5, :cond_e

    .line 569
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->ibtn_player_control:Landroid/widget/ImageButton;

    const v1, 0x7f020560

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_1

    .line 570
    :cond_e
    iget v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->STYLE_PARAMTER:I

    if-ne v0, v6, :cond_f

    .line 571
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->ibtn_player_control:Landroid/widget/ImageButton;

    const v1, 0x7f020561

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_1

    .line 572
    :cond_f
    iget v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->STYLE_PARAMTER:I

    if-ne v0, v7, :cond_5

    .line 573
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->ibtn_player_control:Landroid/widget/ImageButton;

    const v1, 0x7f020562

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_1
.end method

.method private updataSongItemState()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 483
    iget v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->pageNumber:I

    if-ne v0, v4, :cond_2

    .line 484
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->my_song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    invoke-virtual {v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/adapter/SongItemAdapter;

    .line 485
    iget-object v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/SongItemAdapter;->setPlayerManager(Lcom/fiio/music/service/h;)V

    .line 491
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->m()I

    move-result v0

    .line 492
    if-eq v0, v6, :cond_0

    .line 493
    if-ne v0, v7, :cond_6

    .line 495
    :cond_0
    iget v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->STYLE_PARAMTER:I

    if-ne v0, v4, :cond_3

    .line 496
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->ibtn_player_control:Landroid/widget/ImageButton;

    const v1, 0x7f02055a

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 518
    :cond_1
    :goto_1
    return-void

    .line 487
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mPlayListAdapter:Lcom/fiio/music/adapter/PlayListAdapter;

    iget-object v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->sortDataList:Lcom/fiio/music/util/cm;

    iget-object v2, p0, Lcom/fiio/music/activity/MyMusicListActivity;->tabSortType:Lcom/fiio/music/util/cr;

    const-string v3, "playList"

    invoke-virtual {v2, v3}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/fiio/music/activity/MyMusicListActivity;->playerListDao:Lcom/fiio/music/b/j;

    invoke-virtual {v3}, Lcom/fiio/music/b/j;->a()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/fiio/music/util/cm;->a(ILjava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/fiio/music/adapter/PlayListAdapter;->setDate(Ljava/util/List;Z)V

    .line 488
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->my_play_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    invoke-virtual {v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/adapter/PlayListAdapter;

    .line 489
    iget-object v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/PlayListAdapter;->setPlayerManager(Lcom/fiio/music/service/h;)V

    goto :goto_0

    .line 497
    :cond_3
    iget v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->STYLE_PARAMTER:I

    if-ne v0, v5, :cond_4

    .line 498
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->ibtn_player_control:Landroid/widget/ImageButton;

    const v1, 0x7f02055b

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_1

    .line 499
    :cond_4
    iget v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->STYLE_PARAMTER:I

    if-ne v0, v6, :cond_5

    .line 500
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->ibtn_player_control:Landroid/widget/ImageButton;

    const v1, 0x7f02055c

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_1

    .line 501
    :cond_5
    iget v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->STYLE_PARAMTER:I

    if-ne v0, v7, :cond_1

    .line 502
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->ibtn_player_control:Landroid/widget/ImageButton;

    const v1, 0x7f02055d

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_1

    .line 505
    :cond_6
    if-ne v0, v5, :cond_1

    .line 507
    iget v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->STYLE_PARAMTER:I

    if-ne v0, v4, :cond_7

    .line 508
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->ibtn_player_control:Landroid/widget/ImageButton;

    const v1, 0x7f02055f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_1

    .line 509
    :cond_7
    iget v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->STYLE_PARAMTER:I

    if-ne v0, v5, :cond_8

    .line 510
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->ibtn_player_control:Landroid/widget/ImageButton;

    const v1, 0x7f020560

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_1

    .line 511
    :cond_8
    iget v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->STYLE_PARAMTER:I

    if-ne v0, v6, :cond_9

    .line 512
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->ibtn_player_control:Landroid/widget/ImageButton;

    const v1, 0x7f020561

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_1

    .line 513
    :cond_9
    iget v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->STYLE_PARAMTER:I

    if-ne v0, v7, :cond_1

    .line 514
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->ibtn_player_control:Landroid/widget/ImageButton;

    const v1, 0x7f020562

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_1
.end method

.method private updateSmallAlbumShow(Lcom/fiio/music/entity/Song;)V
    .locals 4

    .prologue
    .line 2238
    if-nez p1, :cond_0

    .line 2241
    sget-object v0, Lcom/fiio/music/activity/MyMusicListActivity;->TAG:Ljava/lang/String;

    const-string v1, "updateSmallAlbumShow playingSong is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2247
    :goto_0
    return-void

    .line 2245
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->imageLoader:Lcom/b/a/b/f;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/fiio/music/activity/MyMusicListActivity;->ibtn_player_albumart:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/fiio/music/activity/MyMusicListActivity;->options:Lcom/b/a/b/d;

    invoke-virtual {v0, v1, v2, v3}, Lcom/b/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/b/a/b/d;)V

    goto :goto_0
.end method


# virtual methods
.method public RestoreDefaultSort()V
    .locals 3

    .prologue
    .line 1493
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->playerListDao:Lcom/fiio/music/b/j;

    invoke-virtual {v0}, Lcom/fiio/music/b/j;->a()Ljava/util/List;

    move-result-object v0

    .line 1494
    iget-object v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mPlayListAdapter:Lcom/fiio/music/adapter/PlayListAdapter;

    if-eqz v1, :cond_0

    .line 1495
    iget-object v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mPlayListAdapter:Lcom/fiio/music/adapter/PlayListAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/fiio/music/adapter/PlayListAdapter;->setDate(Ljava/util/List;Z)V

    .line 1497
    :cond_0
    return-void
.end method

.method public footCanceAll()V
    .locals 2

    .prologue
    .line 1578
    iget v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->pageNumber:I

    if-nez v0, :cond_1

    .line 1579
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mPlayListAdapter:Lcom/fiio/music/adapter/PlayListAdapter;

    invoke-virtual {v0}, Lcom/fiio/music/adapter/PlayListAdapter;->footViewCanceAll()V

    .line 1583
    :cond_0
    :goto_0
    return-void

    .line 1580
    :cond_1
    iget v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->pageNumber:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1581
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mSongItemAdapter:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-virtual {v0}, Lcom/fiio/music/adapter/SongItemAdapter;->footViewCanceAll()V

    goto :goto_0
.end method

.method public footSelectAll()V
    .locals 2

    .prologue
    .line 1571
    iget v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->pageNumber:I

    if-nez v0, :cond_1

    .line 1572
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mPlayListAdapter:Lcom/fiio/music/adapter/PlayListAdapter;

    invoke-virtual {v0}, Lcom/fiio/music/adapter/PlayListAdapter;->footViewSelectAll()V

    .line 1576
    :cond_0
    :goto_0
    return-void

    .line 1573
    :cond_1
    iget v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->pageNumber:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1574
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mSongItemAdapter:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-virtual {v0}, Lcom/fiio/music/adapter/SongItemAdapter;->footViewSelectAll()V

    goto :goto_0
.end method

.method public footSelectAllCheckBoxState(Z)V
    .locals 1

    .prologue
    .line 1567
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->check_all_item_checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1568
    return-void
.end method

.method public getContentTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2224
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->my_list_content_title:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlayList()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2211
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->curPlayList:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2212
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->curPlayList:Ljava/lang/String;

    .line 2214
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .line 2217
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->data:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2218
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->data:Ljava/util/List;

    .line 2220
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEquals(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 627
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 645
    :goto_0
    const/4 v0, 0x0

    :cond_0
    return v0

    .line 627
    :sswitch_0
    const-string v1, "\uc990\uaca8\ucc3e\uae30.cfg"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :sswitch_1
    const-string v1, "\u304a\u6c17\u306b\u5165\u308a.cfg"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :sswitch_2
    const-string v1, "\u0e40\u0e1e\u0e25\u0e07\u0e42\u0e1b\u0e23\u0e14.cfg"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :sswitch_3
    const-string v1, "Favoris.cfg"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :sswitch_4
    const-string v1, "\u0418\u0437\u0431\u0440\u0430\u043d\u043d\u043e\u0435.cfg"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :sswitch_5
    const-string v1, "Favoriten.cfg"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :sswitch_6
    const-string v1, "Favorites.cfg"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :sswitch_7
    const-string v1, "Favoritos.cfg"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x411572c0 -> :sswitch_0
        -0x22ec9ec7 -> :sswitch_1
        -0x1f26a480 -> :sswitch_2
        -0xf576ec2 -> :sswitch_3
        -0xee7fc51 -> :sswitch_4
        -0x3f47558 -> :sswitch_5
        -0x3adffd3 -> :sswitch_6
        0xd627663 -> :sswitch_7
    .end sparse-switch
.end method

.method public isItemAdapterCheckBoxFlag()Z
    .locals 1

    .prologue
    .line 2228
    iget-boolean v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->itemAdapterCheckBoxFlag:Z

    return v0
.end method

.method protected isTabAPlayingSong()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2255
    iget-object v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->l()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 2256
    iget-object v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->Z()Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2255
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 13

    .prologue
    const/4 v7, 0x6

    const/4 v12, 0x5

    const/4 v8, 0x2

    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 2019
    .line 2022
    const v0, 0x7f0c0054

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/MyMusicListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2023
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->data:Ljava/util/List;

    .line 2024
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 2025
    const v1, 0x7f0b00d4

    if-ne v0, v1, :cond_1

    .line 2026
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 2028
    if-nez v4, :cond_a

    .line 2031
    :try_start_0
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->sortTypeEfm:Lcom/fiio/music/util/cr;

    const-string v1, "AZplagListSong"

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/cr;->b(Ljava/lang/String;)I

    move-result v0

    .line 2032
    sget v1, Lcom/fiio/music/util/cn;->f:I

    if-ne v0, v1, :cond_3

    .line 2033
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->sortTypeEfm:Lcom/fiio/music/util/cr;

    const-string v1, "PlayListSong"

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    move-result v0

    .line 2035
    sget v1, Lcom/fiio/music/util/cn;->a:I

    if-ne v0, v1, :cond_2

    .line 2036
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->playListManager:Lcom/fiio/music/util/bw;

    iget-object v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->context:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-virtual {v0, v3, v1}, Lcom/fiio/music/util/bw;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->data:Ljava/util/List;

    .line 2048
    :cond_0
    :goto_0
    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2053
    :goto_1
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->data:Ljava/util/List;

    if-nez v0, :cond_15

    .line 2054
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->toast:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->context:Landroid/content/Context;

    const v2, 0x7f0c00fb

    invoke-virtual {p0, v2}, Lcom/fiio/music/activity/MyMusicListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->toast:Landroid/widget/Toast;

    .line 2188
    :cond_1
    :goto_2
    return-void

    .line 2038
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->playListManager:Lcom/fiio/music/util/bw;

    iget-object v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->context:Landroid/content/Context;

    const/4 v1, 0x3

    invoke-virtual {v0, v3, v1}, Lcom/fiio/music/util/bw;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->data:Ljava/util/List;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 2041
    :cond_3
    iget-object v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->playListManager:Lcom/fiio/music/util/bw;

    iget-object v4, p0, Lcom/fiio/music/activity/MyMusicListActivity;->context:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/fiio/music/util/bw;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->data:Ljava/util/List;

    .line 2042
    iget-object v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->data:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 2043
    iget-object v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->sortTypeEfm:Lcom/fiio/music/util/cr;

    const-string v4, "PlayListSong"

    invoke-virtual {v1, v4}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    move-result v1

    .line 2044
    iget-object v4, p0, Lcom/fiio/music/activity/MyMusicListActivity;->data:Ljava/util/List;

    invoke-static {v4, v1, v0}, Lcom/fiio/music/util/cn;->e(Ljava/util/List;II)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->data:Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_4
    move v1, v0

    .line 2059
    :goto_3
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->data:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 2060
    add-int/lit8 v0, v1, 0x1

    .line 2102
    iget-object v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->data:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_4

    .line 2103
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->toast:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->context:Landroid/content/Context;

    const v2, 0x7f0c00f9

    invoke-virtual {p0, v2}, Lcom/fiio/music/activity/MyMusicListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->toast:Landroid/widget/Toast;

    goto :goto_2

    .line 2062
    :cond_5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v8, v2, v0}, Lcom/fiio/music/activity/MyMusicListActivity;->jumpPage(IILjava/lang/Object;)V

    .line 2063
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->data:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    .line 2064
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isSacd()Z

    move-result v1

    if-nez v1, :cond_6

    .line 2065
    iget-object v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v1, v3}, Lcom/fiio/music/service/h;->a(Ljava/lang/String;)V

    .line 2066
    iget-object v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    const v2, 0x7f0c0054

    invoke-virtual {p0, v2}, Lcom/fiio/music/activity/MyMusicListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/activity/MyMusicListActivity;->data:Ljava/util/List;

    invoke-virtual {v1, v0, v7, v2, v3}, Lcom/fiio/music/service/h;->b(Lcom/fiio/music/entity/Song;ILjava/lang/String;Ljava/util/List;)V

    goto/16 :goto_2

    .line 2067
    :cond_6
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2068
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getTrack()I

    move-result v2

    .line 2069
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

    .line 2070
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 2071
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/fiio/music/activity/MyMusicListActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/fiio/music/util/n;->a(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2073
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2081
    :cond_7
    if-ltz v2, :cond_1

    .line 2082
    new-instance v4, Lcom/fiio/music/util/j;

    iget-object v5, p0, Lcom/fiio/music/activity/MyMusicListActivity;->context:Landroid/content/Context;

    invoke-direct {v4, v1, v0, v2, v5}, Lcom/fiio/music/util/j;-><init>(Ljava/io/File;Lcom/fiio/music/entity/Song;ILandroid/content/Context;)V

    .line 2083
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0, v3}, Lcom/fiio/music/service/h;->a(Ljava/lang/String;)V

    .line 2084
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v4}, Lcom/fiio/music/util/j;->b()Lcom/fiio/music/entity/Song;

    move-result-object v1

    invoke-virtual {v4}, Lcom/fiio/music/util/j;->e()[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/activity/MyMusicListActivity;->data:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3, v7}, Lcom/fiio/music/service/h;->a(Lcom/fiio/music/entity/Song;[Ljava/lang/String;Ljava/util/List;I)V

    goto/16 :goto_2

    .line 2075
    :cond_8
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

    .line 2076
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    goto/16 :goto_2

    .line 2085
    :cond_9
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isSacd()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2086
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getTrack()I

    move-result v1

    .line 2087
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2088
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2089
    if-ltz v1, :cond_1

    .line 2090
    new-instance v6, Lorg/justcodecs/dsd/SacdDataFormat;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    iget-object v3, p0, Lcom/fiio/music/activity/MyMusicListActivity;->context:Landroid/content/Context;

    invoke-direct {v6, v0, v2, v3}, Lorg/justcodecs/dsd/SacdDataFormat;-><init>(Ljava/lang/String;Lcom/fiio/music/service/h;Landroid/content/Context;)V

    .line 2091
    invoke-virtual {v6}, Lorg/justcodecs/dsd/SacdDataFormat;->getSacdList()Ljava/util/List;

    move-result-object v0

    add-int/lit8 v2, v1, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lorg/justcodecs/dsd/Sacd;

    .line 2092
    invoke-virtual {v8}, Lorg/justcodecs/dsd/Sacd;->getStart()I

    move-result v0

    mul-int/lit16 v2, v0, 0x3e8

    .line 2093
    invoke-virtual {v8}, Lorg/justcodecs/dsd/Sacd;->getDuration()I

    move-result v0

    mul-int/lit16 v3, v0, 0x3e8

    .line 2094
    invoke-virtual {v8}, Lorg/justcodecs/dsd/Sacd;->getSongName()Ljava/lang/String;

    move-result-object v4

    .line 2095
    invoke-virtual {v8}, Lorg/justcodecs/dsd/Sacd;->getArtist()Ljava/lang/String;

    move-result-object v5

    .line 2096
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0, v6}, Lcom/fiio/music/service/h;->a(Lorg/justcodecs/dsd/SacdDataFormat;)V

    .line 2097
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v6}, Lorg/justcodecs/dsd/SacdDataFormat;->getSacdSongList()Ljava/util/List;

    move-result-object v6

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fiio/music/entity/Song;

    iget-object v6, p0, Lcom/fiio/music/activity/MyMusicListActivity;->data:Ljava/util/List;

    const-wide/32 v10, 0x2b1100

    invoke-virtual {v8}, Lorg/justcodecs/dsd/Sacd;->getStart()I

    move-result v8

    int-to-long v8, v8

    mul-long/2addr v8, v10

    invoke-virtual/range {v0 .. v9}, Lcom/fiio/music/service/h;->a(Lcom/fiio/music/entity/Song;IILjava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)V

    .line 2098
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->my_song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    invoke-virtual {v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/adapter/SongItemAdapter;

    iget-object v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/SongItemAdapter;->setPlayerManager(Lcom/fiio/music/service/h;)V

    goto/16 :goto_2

    .line 2111
    :cond_a
    :try_start_2
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->sortTypeEfm:Lcom/fiio/music/util/cr;

    const-string v1, "AZplagListSong"

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/cr;->b(Ljava/lang/String;)I

    move-result v1

    .line 2112
    sget v0, Lcom/fiio/music/util/cn;->f:I

    if-ne v1, v0, :cond_d

    .line 2113
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->sortTypeEfm:Lcom/fiio/music/util/cr;

    const-string v1, "PlayListSong"

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    move-result v0

    .line 2115
    sget v1, Lcom/fiio/music/util/cn;->a:I

    if-ne v0, v1, :cond_c

    .line 2116
    iget-object v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->playListManager:Lcom/fiio/music/util/bw;

    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->list:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v0, v0, v3

    const/4 v3, 0x2

    invoke-virtual {v1, v0, v3}, Lcom/fiio/music/util/bw;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->data:Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2132
    :cond_b
    :goto_4
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->data:Ljava/util/List;

    if-nez v0, :cond_14

    .line 2133
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->toast:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->context:Landroid/content/Context;

    const v2, 0x7f0c00fb

    invoke-virtual {p0, v2}, Lcom/fiio/music/activity/MyMusicListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->toast:Landroid/widget/Toast;

    goto/16 :goto_2

    .line 2118
    :cond_c
    :try_start_3
    iget-object v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->playListManager:Lcom/fiio/music/util/bw;

    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->list:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v0, v0, v3

    const/4 v3, 0x3

    invoke-virtual {v1, v0, v3}, Lcom/fiio/music/util/bw;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->data:Ljava/util/List;

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_4

    .line 2121
    :cond_d
    iget-object v3, p0, Lcom/fiio/music/activity/MyMusicListActivity;->playListManager:Lcom/fiio/music/util/bw;

    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->list:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v0, v0, v5

    const/4 v5, 0x1

    invoke-virtual {v3, v0, v5}, Lcom/fiio/music/util/bw;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->data:Ljava/util/List;

    .line 2122
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->data:Ljava/util/List;

    if-eqz v0, :cond_b

    .line 2123
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->sortTypeEfm:Lcom/fiio/music/util/cr;

    const-string v3, "PlayListSong"

    invoke-virtual {v0, v3}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    move-result v0

    .line 2124
    iget-object v3, p0, Lcom/fiio/music/activity/MyMusicListActivity;->data:Ljava/util/List;

    invoke-static {v3, v0, v1}, Lcom/fiio/music/util/cn;->e(Ljava/util/List;II)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->data:Ljava/util/List;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :cond_e
    move v1, v0

    .line 2137
    :goto_5
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->data:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 2138
    add-int/lit8 v0, v1, 0x1

    .line 2181
    iget-object v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->data:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_e

    .line 2182
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->toast:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->context:Landroid/content/Context;

    const v2, 0x7f0c00f9

    invoke-virtual {p0, v2}, Lcom/fiio/music/activity/MyMusicListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->toast:Landroid/widget/Toast;

    goto/16 :goto_2

    .line 2140
    :cond_f
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v8, v2, v0}, Lcom/fiio/music/activity/MyMusicListActivity;->jumpPage(IILjava/lang/Object;)V

    .line 2141
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->data:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    .line 2142
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isSacd()Z

    move-result v1

    if-nez v1, :cond_10

    .line 2144
    iget-object v2, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    iget-object v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->list:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v6

    invoke-virtual {v2, v1}, Lcom/fiio/music/service/h;->a(Ljava/lang/String;)V

    .line 2145
    iget-object v2, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    iget-object v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->list:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v6

    iget-object v3, p0, Lcom/fiio/music/activity/MyMusicListActivity;->data:Ljava/util/List;

    invoke-virtual {v2, v0, v12, v1, v3}, Lcom/fiio/music/service/h;->b(Lcom/fiio/music/entity/Song;ILjava/lang/String;Ljava/util/List;)V

    goto/16 :goto_2

    .line 2146
    :cond_10
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 2147
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getTrack()I

    move-result v2

    .line 2148
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/fiio/music/util/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".cue"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2149
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 2150
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/fiio/music/activity/MyMusicListActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/fiio/music/util/n;->a(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 2152
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2160
    :cond_11
    if-ltz v2, :cond_1

    .line 2161
    new-instance v3, Lcom/fiio/music/util/j;

    iget-object v5, p0, Lcom/fiio/music/activity/MyMusicListActivity;->context:Landroid/content/Context;

    invoke-direct {v3, v1, v0, v2, v5}, Lcom/fiio/music/util/j;-><init>(Ljava/io/File;Lcom/fiio/music/entity/Song;ILandroid/content/Context;)V

    .line 2162
    iget-object v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->list:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v6

    invoke-virtual {v1, v0}, Lcom/fiio/music/service/h;->a(Ljava/lang/String;)V

    .line 2163
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v3}, Lcom/fiio/music/util/j;->b()Lcom/fiio/music/entity/Song;

    move-result-object v1

    invoke-virtual {v3}, Lcom/fiio/music/util/j;->e()[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/activity/MyMusicListActivity;->data:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3, v12}, Lcom/fiio/music/service/h;->a(Lcom/fiio/music/entity/Song;[Ljava/lang/String;Ljava/util/List;I)V

    goto/16 :goto_2

    .line 2154
    :cond_12
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/fiio/music/util/j;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 2155
    if-eqz v1, :cond_11

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_11

    goto/16 :goto_2

    .line 2164
    :cond_13
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isSacd()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2165
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getTrack()I

    move-result v1

    .line 2166
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2167
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2168
    if-ltz v1, :cond_1

    .line 2169
    new-instance v6, Lorg/justcodecs/dsd/SacdDataFormat;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    iget-object v3, p0, Lcom/fiio/music/activity/MyMusicListActivity;->context:Landroid/content/Context;

    invoke-direct {v6, v0, v2, v3}, Lorg/justcodecs/dsd/SacdDataFormat;-><init>(Ljava/lang/String;Lcom/fiio/music/service/h;Landroid/content/Context;)V

    .line 2170
    invoke-virtual {v6}, Lorg/justcodecs/dsd/SacdDataFormat;->getSacdList()Ljava/util/List;

    move-result-object v0

    add-int/lit8 v2, v1, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lorg/justcodecs/dsd/Sacd;

    .line 2171
    invoke-virtual {v7}, Lorg/justcodecs/dsd/Sacd;->getStart()I

    move-result v0

    mul-int/lit16 v2, v0, 0x3e8

    .line 2172
    invoke-virtual {v7}, Lorg/justcodecs/dsd/Sacd;->getDuration()I

    move-result v0

    mul-int/lit16 v3, v0, 0x3e8

    .line 2173
    invoke-virtual {v7}, Lorg/justcodecs/dsd/Sacd;->getSongName()Ljava/lang/String;

    move-result-object v4

    .line 2174
    invoke-virtual {v7}, Lorg/justcodecs/dsd/Sacd;->getArtist()Ljava/lang/String;

    move-result-object v5

    .line 2175
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0, v6}, Lcom/fiio/music/service/h;->a(Lorg/justcodecs/dsd/SacdDataFormat;)V

    .line 2176
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v6}, Lorg/justcodecs/dsd/SacdDataFormat;->getSacdSongList()Ljava/util/List;

    move-result-object v6

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fiio/music/entity/Song;

    iget-object v6, p0, Lcom/fiio/music/activity/MyMusicListActivity;->data:Ljava/util/List;

    const-wide/32 v8, 0x2b1100

    invoke-virtual {v7}, Lorg/justcodecs/dsd/Sacd;->getStart()I

    move-result v7

    int-to-long v10, v7

    mul-long/2addr v8, v10

    move v7, v12

    invoke-virtual/range {v0 .. v9}, Lcom/fiio/music/service/h;->a(Lcom/fiio/music/entity/Song;IILjava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)V

    .line 2177
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->my_song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    invoke-virtual {v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/adapter/SongItemAdapter;

    iget-object v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/SongItemAdapter;->setPlayerManager(Lcom/fiio/music/service/h;)V

    goto/16 :goto_2

    :cond_14
    move v1, v2

    goto/16 :goto_5

    :cond_15
    move v1, v2

    goto/16 :goto_3
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const v4, 0x7f02049d

    const/4 v3, 0x3

    const/4 v2, 0x2

    .line 176
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 177
    const-string v0, "long"

    const-string v1, "MyMusicList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/fiio/music/activity/MyMusicListActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 180
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 183
    :cond_0
    invoke-virtual {p0}, Lcom/fiio/music/activity/MyMusicListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/a;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->STYLE_PARAMTER:I

    .line 185
    iget v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->STYLE_PARAMTER:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 186
    const v0, 0x7f04009b

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/MyMusicListActivity;->setContentView(I)V

    .line 187
    const v0, 0x7f02049b

    iput v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->PlayListIcon:I

    .line 199
    :cond_1
    :goto_0
    iput-object p0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->context:Landroid/content/Context;

    .line 200
    invoke-static {}, Lcom/fiio/music/a/c;->a()Lcom/fiio/music/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fiio/music/a/c;->a(Landroid/app/Activity;)V

    .line 201
    invoke-static {}, Lcom/fiio/music/util/f;->a()Lcom/fiio/music/util/f;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->characterParser:Lcom/fiio/music/util/f;

    .line 202
    new-instance v0, Lcom/fiio/music/util/br;

    invoke-direct {v0}, Lcom/fiio/music/util/br;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->pinyinComparator:Lcom/fiio/music/util/br;

    .line 203
    new-instance v0, Lcom/fiio/music/util/bw;

    invoke-direct {v0}, Lcom/fiio/music/util/bw;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->playListManager:Lcom/fiio/music/util/bw;

    .line 204
    invoke-direct {p0}, Lcom/fiio/music/activity/MyMusicListActivity;->initImageLoader()V

    .line 205
    invoke-direct {p0}, Lcom/fiio/music/activity/MyMusicListActivity;->initBottomBar()V

    .line 206
    invoke-direct {p0}, Lcom/fiio/music/activity/MyMusicListActivity;->initBottomSelector()V

    .line 207
    new-instance v0, Lcom/fiio/music/widget/VolumeDialog;

    invoke-direct {v0, p0}, Lcom/fiio/music/widget/VolumeDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->volumedialog:Lcom/fiio/music/widget/VolumeDialog;

    .line 208
    const v0, 0x7f0b008f

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/MyMusicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->rl_list_content:Landroid/view/ViewGroup;

    .line 209
    const v0, 0x7f0b0203

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/MyMusicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->my_list_content_title:Landroid/widget/TextView;

    .line 210
    const v0, 0x7f0b0205

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/MyMusicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    iput-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->my_play_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    .line 211
    const v0, 0x7f0b008d

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/MyMusicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mPlayListSearch:Landroid/widget/ImageButton;

    .line 212
    const v0, 0x7f0b01ce

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/MyMusicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mConfigfragmentMenu:Landroid/widget/ImageView;

    .line 213
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->rl_list_content:Landroid/view/ViewGroup;

    const v1, 0x7f0b0206

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    iput-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->my_song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    .line 214
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->my_song_list_content:Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    new-instance v1, Lcom/fiio/music/activity/ek;

    invoke-direct {v1, p0}, Lcom/fiio/music/activity/ek;-><init>(Lcom/fiio/music/activity/MyMusicListActivity;)V

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 234
    const v0, 0x7f0b0207

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/MyMusicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->loading:Landroid/widget/ProgressBar;

    .line 235
    const v0, 0x7f0b0204

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/MyMusicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mAddListImageButton:Landroid/widget/ImageButton;

    .line 236
    new-instance v0, Lcom/fiio/music/b/k;

    invoke-direct {v0, p0}, Lcom/fiio/music/b/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->songDao:Lcom/fiio/music/b/k;

    .line 237
    new-instance v0, Lcom/fiio/music/b/j;

    invoke-direct {v0, p0}, Lcom/fiio/music/b/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->playerListDao:Lcom/fiio/music/b/j;

    .line 238
    invoke-virtual {p0}, Lcom/fiio/music/activity/MyMusicListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 239
    const-string v1, "playerInfo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 241
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->data:Ljava/util/List;

    .line 242
    if-eqz v0, :cond_2

    .line 243
    aget-object v1, v0, v2

    iput-object v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mSongNameStr:Ljava/lang/String;

    .line 244
    aget-object v0, v0, v3

    iput-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mAritstNameStr:Ljava/lang/String;

    .line 247
    :cond_2
    invoke-direct {p0}, Lcom/fiio/music/activity/MyMusicListActivity;->initSwipeListView()V

    .line 248
    invoke-direct {p0}, Lcom/fiio/music/activity/MyMusicListActivity;->initSongItemSwipeListView()V

    .line 249
    new-instance v0, Lcom/fiio/music/util/cr;

    iget-object v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/fiio/music/util/cr;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->tabSortType:Lcom/fiio/music/util/cr;

    .line 250
    new-instance v0, Lcom/fiio/music/util/cm;

    iget-object v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/fiio/music/util/cm;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->sortDataList:Lcom/fiio/music/util/cm;

    .line 251
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mAddListImageButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->imageButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mPlayListSearch:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->imageButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mConfigfragmentMenu:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->imageButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    new-instance v0, Lcom/fiio/music/service/h;

    invoke-direct {v0, p0}, Lcom/fiio/music/service/h;-><init>(Landroid/content/ContextWrapper;)V

    iput-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    .line 256
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    iget-object v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mConnectionListener:Lcom/fiio/music/service/l;

    invoke-virtual {v0, v1}, Lcom/fiio/music/service/h;->a(Lcom/fiio/music/service/l;)V

    .line 257
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->b()V

    .line 259
    new-instance v0, Lcom/fiio/music/activity/ep;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/fiio/music/activity/ep;-><init>(Lcom/fiio/music/activity/MyMusicListActivity;B)V

    iput-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mediaPlayerBroadcastReceiver:Lcom/fiio/music/activity/ep;

    .line 260
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mediaPlayerBroadcastReceiver:Lcom/fiio/music/activity/ep;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.fiio.music.player.brocast"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/fiio/music/activity/MyMusicListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 265
    invoke-static {}, Lcom/fiio/music/e/a/b;->a()Lcom/fiio/music/e/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->longPressCallBack:Lcom/fiio/music/e/a/a;

    invoke-virtual {v0, v1}, Lcom/fiio/music/e/a/b;->a(Lcom/fiio/music/e/a/a;)V

    .line 266
    return-void

    .line 188
    :cond_3
    iget v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->STYLE_PARAMTER:I

    if-ne v0, v2, :cond_4

    .line 189
    const v0, 0x7f04009c

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/MyMusicListActivity;->setContentView(I)V

    .line 190
    const v0, 0x7f02049c

    iput v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->PlayListIcon:I

    goto/16 :goto_0

    .line 191
    :cond_4
    iget v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->STYLE_PARAMTER:I

    if-ne v0, v3, :cond_5

    .line 192
    const v0, 0x7f04009d

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/MyMusicListActivity;->setContentView(I)V

    .line 193
    iput v4, p0, Lcom/fiio/music/activity/MyMusicListActivity;->PlayListIcon:I

    goto/16 :goto_0

    .line 194
    :cond_5
    iget v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->STYLE_PARAMTER:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 195
    const v0, 0x7f04009e

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/MyMusicListActivity;->setContentView(I)V

    .line 196
    iput v4, p0, Lcom/fiio/music/activity/MyMusicListActivity;->PlayListIcon:I

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 610
    invoke-static {}, Lcom/fiio/music/e/a/b;->a()Lcom/fiio/music/e/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->longPressCallBack:Lcom/fiio/music/e/a/a;

    invoke-virtual {v0, v1}, Lcom/fiio/music/e/a/b;->b(Lcom/fiio/music/e/a/a;)V

    .line 611
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->longPressCallBack:Lcom/fiio/music/e/a/a;

    .line 613
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->g()V

    .line 614
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mediaPlayerBroadcastReceiver:Lcom/fiio/music/activity/ep;

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/MyMusicListActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 615
    invoke-static {}, Lcom/fiio/music/a/c;->a()Lcom/fiio/music/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fiio/music/a/c;->b(Landroid/app/Activity;)V

    .line 616
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 617
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5

    .prologue
    const/16 v4, 0x19

    const/16 v2, 0x18

    const/4 v3, 0x4

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1039
    if-ne p1, v3, :cond_3

    .line 1040
    iget v2, p0, Lcom/fiio/music/activity/MyMusicListActivity;->pageNumber:I

    if-ne v2, v1, :cond_2

    .line 1041
    iget-object v2, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mSongItemAdapter:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-virtual {v2}, Lcom/fiio/music/adapter/SongItemAdapter;->getShowCheckBoxState()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1042
    iget-object v2, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mSongItemAdapter:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-virtual {v2}, Lcom/fiio/music/adapter/SongItemAdapter;->cancelSelect()V

    .line 1049
    :goto_0
    iget-object v2, p0, Lcom/fiio/music/activity/MyMusicListActivity;->initTask:Lcom/fiio/music/activity/eo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/fiio/music/activity/MyMusicListActivity;->initTask:Lcom/fiio/music/activity/eo;

    invoke-virtual {v2}, Lcom/fiio/music/activity/eo;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    sget-object v3, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v2, v3, :cond_0

    .line 1050
    iget-object v2, p0, Lcom/fiio/music/activity/MyMusicListActivity;->initTask:Lcom/fiio/music/activity/eo;

    invoke-virtual {v2, v1}, Lcom/fiio/music/activity/eo;->cancel(Z)Z

    .line 1072
    :cond_0
    :goto_1
    return v0

    .line 1044
    :cond_1
    iget-object v2, p0, Lcom/fiio/music/activity/MyMusicListActivity;->loading:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1045
    const/4 v2, 0x0

    invoke-direct {p0, v0, v0, v2}, Lcom/fiio/music/activity/MyMusicListActivity;->jumpPage(IILjava/lang/Object;)V

    .line 1046
    iput v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->pageNumber:I

    goto :goto_0

    .line 1053
    :cond_2
    iget v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->pageNumber:I

    if-nez v1, :cond_6

    .line 1054
    iget-object v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mPlayListAdapter:Lcom/fiio/music/adapter/PlayListAdapter;

    invoke-virtual {v1}, Lcom/fiio/music/adapter/PlayListAdapter;->getShowCheckBoxState()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1055
    iget-object v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mPlayListAdapter:Lcom/fiio/music/adapter/PlayListAdapter;

    invoke-virtual {v1}, Lcom/fiio/music/adapter/PlayListAdapter;->cancelSelect()V

    goto :goto_1

    .line 1062
    :cond_3
    if-eq p1, v4, :cond_4

    if-ne p1, v2, :cond_6

    .line 1064
    :cond_4
    if-ne p1, v4, :cond_5

    .line 1065
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->volumedialog:Lcom/fiio/music/widget/VolumeDialog;

    invoke-virtual {v0, v1}, Lcom/fiio/music/widget/VolumeDialog;->a(Z)V

    move v0, v1

    .line 1066
    goto :goto_1

    .line 1067
    :cond_5
    if-ne p1, v2, :cond_6

    .line 1068
    iget-object v2, p0, Lcom/fiio/music/activity/MyMusicListActivity;->volumedialog:Lcom/fiio/music/widget/VolumeDialog;

    invoke-virtual {v2, v0}, Lcom/fiio/music/widget/VolumeDialog;->a(Z)V

    move v0, v1

    .line 1069
    goto :goto_1

    .line 1072
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 621
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->volumedialog:Lcom/fiio/music/widget/VolumeDialog;

    invoke-virtual {v0}, Lcom/fiio/music/widget/VolumeDialog;->d()V

    .line 622
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 623
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 580
    invoke-direct {p0}, Lcom/fiio/music/activity/MyMusicListActivity;->updataSongItemList()V

    .line 581
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 582
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 585
    new-instance v0, Lcom/fiio/music/util/cr;

    invoke-direct {v0, p0}, Lcom/fiio/music/util/cr;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->sortTypeEfm:Lcom/fiio/music/util/cr;

    .line 586
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 587
    iget v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->pageNumber:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 588
    const/4 v0, 0x0

    invoke-direct {p0, v2, v2, v0}, Lcom/fiio/music/activity/MyMusicListActivity;->jumpPage(IILjava/lang/Object;)V

    .line 591
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->w()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->w()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->w()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 592
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->tv_player_title:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    const v1, 0x7f0c00e4

    invoke-virtual {p0, v1}, Lcom/fiio/music/activity/MyMusicListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 593
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->tv_player_artist:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    const v1, 0x7f0c00e5

    invoke-virtual {p0, v1}, Lcom/fiio/music/activity/MyMusicListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 595
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mSongNameStr:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mAritstNameStr:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 596
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->tv_player_title:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    iget-object v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mSongNameStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 597
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->tv_player_artist:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    iget-object v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mAritstNameStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 599
    :cond_3
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 600
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 603
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 604
    return-void
.end method

.method protected orderBy_A_Z()V
    .locals 3

    .prologue
    .line 1516
    new-instance v0, Lcom/fiio/music/util/cm;

    iget-object v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/fiio/music/util/cm;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->sortDataList:Lcom/fiio/music/util/cm;

    .line 1517
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->sortDataList:Lcom/fiio/music/util/cm;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/fiio/music/activity/MyMusicListActivity;->list:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/util/cm;->a(ILjava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->list:Ljava/util/List;

    .line 1518
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mPlayListAdapter:Lcom/fiio/music/adapter/PlayListAdapter;

    if-eqz v0, :cond_0

    .line 1519
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mPlayListAdapter:Lcom/fiio/music/adapter/PlayListAdapter;

    iget-object v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->list:Ljava/util/List;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/adapter/PlayListAdapter;->setDate(Ljava/util/List;Z)V

    .line 1521
    :cond_0
    return-void
.end method

.method protected orderListByA_Z(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1480
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->playerListDao:Lcom/fiio/music/b/j;

    invoke-virtual {v0}, Lcom/fiio/music/b/j;->a()Ljava/util/List;

    move-result-object v0

    .line 1481
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1482
    iget-object v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->sortDataList:Lcom/fiio/music/util/cm;

    invoke-virtual {v1, p1, v0}, Lcom/fiio/music/util/cm;->a(ILjava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->list:Ljava/util/List;

    .line 1483
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mPlayListAdapter:Lcom/fiio/music/adapter/PlayListAdapter;

    if-eqz v0, :cond_0

    .line 1484
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mPlayListAdapter:Lcom/fiio/music/adapter/PlayListAdapter;

    iget-object v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->list:Ljava/util/List;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/adapter/PlayListAdapter;->setDate(Ljava/util/List;Z)V

    .line 1487
    :cond_0
    return-void
.end method

.method protected setFootViewInterface()V
    .locals 3

    .prologue
    .line 1439
    new-instance v0, Lcom/fiio/music/activity/dx;

    invoke-direct {v0, p0}, Lcom/fiio/music/activity/dx;-><init>(Lcom/fiio/music/activity/MyMusicListActivity;)V

    .line 1461
    iget v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->pageNumber:I

    if-nez v1, :cond_1

    .line 1462
    iget-object v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mPlayListAdapter:Lcom/fiio/music/adapter/PlayListAdapter;

    invoke-virtual {v1, v0}, Lcom/fiio/music/adapter/PlayListAdapter;->setFootViewItf(Lcom/fiio/music/util/dc;)V

    .line 1463
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mPlayListAdapter:Lcom/fiio/music/adapter/PlayListAdapter;

    iget-object v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mBottomSelectorView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/PlayListAdapter;->setFootView(Landroid/view/View;)V

    .line 1468
    :cond_0
    :goto_0
    return-void

    .line 1464
    :cond_1
    iget v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->pageNumber:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1465
    iget-object v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mSongItemAdapter:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-virtual {v1, v0}, Lcom/fiio/music/adapter/SongItemAdapter;->setFootViewItf(Lcom/fiio/music/util/dc;)V

    .line 1466
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mSongItemAdapter:Lcom/fiio/music/adapter/SongItemAdapter;

    iget-object v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mBottomSelectorView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/SongItemAdapter;->setFootView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setItemAdapterCheckBoxFlag(Z)V
    .locals 0

    .prologue
    .line 2231
    iput-boolean p1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->itemAdapterCheckBoxFlag:Z

    .line 2232
    return-void
.end method

.method protected showBulkManage()V
    .locals 2

    .prologue
    .line 1429
    iget v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->pageNumber:I

    if-nez v0, :cond_1

    .line 1430
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mPlayListAdapter:Lcom/fiio/music/adapter/PlayListAdapter;

    invoke-virtual {v0}, Lcom/fiio/music/adapter/PlayListAdapter;->showFootView()V

    .line 1436
    :cond_0
    :goto_0
    return-void

    .line 1432
    :cond_1
    iget v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->pageNumber:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1433
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mSongItemAdapter:Lcom/fiio/music/adapter/SongItemAdapter;

    invoke-virtual {v0}, Lcom/fiio/music/adapter/SongItemAdapter;->showFootView()V

    goto :goto_0
.end method

.method protected songOrderByAZ(II)V
    .locals 2

    .prologue
    .line 1472
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->data:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1473
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->data:Ljava/util/List;

    invoke-static {v0, p1, p2}, Lcom/fiio/music/util/cn;->e(Ljava/util/List;II)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->data:Ljava/util/List;

    .line 1474
    iget-object v0, p0, Lcom/fiio/music/activity/MyMusicListActivity;->mSongItemAdapter:Lcom/fiio/music/adapter/SongItemAdapter;

    iget-object v1, p0, Lcom/fiio/music/activity/MyMusicListActivity;->data:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/SongItemAdapter;->setData(Ljava/util/List;)V

    .line 1477
    :cond_0
    return-void
.end method
