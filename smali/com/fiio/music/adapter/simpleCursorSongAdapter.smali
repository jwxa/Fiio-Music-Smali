.class public Lcom/fiio/music/adapter/simpleCursorSongAdapter;
.super Landroid/support/v4/widget/SimpleCursorAdapter;
.source "simpleCursorSongAdapter.java"


# static fields
.field private static final CANCEL_DELETE:I = 0x1

.field private static final START_DELETE:I


# instance fields
.field private adapterFlag:I

.field private anim:Landroid/graphics/drawable/AnimationDrawable;

.field private changeboolean:Z

.field private context:Landroid/content/Context;

.field private curAlbumPath:Ljava/lang/String;

.field private curArtName:Ljava/lang/String;

.field private curFilePath:Ljava/lang/String;

.field private curSongId:I

.field private curSongName:Ljava/lang/String;

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private displayPosition:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected imageLoader:Lcom/b/a/b/f;

.field private interfaceFootView:Lcom/fiio/music/util/dc;

.field private final localMusicActivity:Ljava/lang/String;

.field private mAdd_to_mylove:Landroid/widget/ImageView;

.field private mAdd_to_playlist:Landroid/widget/ImageView;

.field private mFootView:Landroid/view/View;

.field private mFoot_delete:Landroid/widget/ImageView;

.field private mFoot_play:Landroid/widget/ImageView;

.field private mFoot_send:Landroid/widget/ImageView;

.field private mItemListener:Lcom/fiio/music/adapter/SongItemAdapter$ItemListener;

.field public mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedItem:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedName:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mShowCheckBox:Z

.field private mUpdataInfoTitle:Lcom/fiio/music/adapter/SongItemAdapter$UpdataInfoTitle;

.field mediaPlayerManager:Lcom/fiio/music/service/h;

.field private final myMusicListActivity:Ljava/lang/String;

.field private options:Lcom/b/a/b/d;

.field private playListManager:Lcom/fiio/music/util/bw;

.field private playerId:I

.field private playerSongPath:Ljava/lang/String;

.field private playerState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-direct/range {p0 .. p6}, Landroid/support/v4/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    .line 37
    const-string v0, "class com.fiio.music.activity.MyMusicListActivity"

    iput-object v0, p0, Lcom/fiio/music/adapter/simpleCursorSongAdapter;->myMusicListActivity:Ljava/lang/String;

    .line 38
    const-string v0, "class com.fiio.music.activity.LocalMusicActivity"

    iput-object v0, p0, Lcom/fiio/music/adapter/simpleCursorSongAdapter;->localMusicActivity:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/adapter/simpleCursorSongAdapter;->mSelectedItem:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/adapter/simpleCursorSongAdapter;->mSelectedName:Ljava/util/List;

    .line 50
    iput-boolean v1, p0, Lcom/fiio/music/adapter/simpleCursorSongAdapter;->mShowCheckBox:Z

    .line 52
    iput v1, p0, Lcom/fiio/music/adapter/simpleCursorSongAdapter;->adapterFlag:I

    .line 53
    iput v1, p0, Lcom/fiio/music/adapter/simpleCursorSongAdapter;->curSongId:I

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/adapter/simpleCursorSongAdapter;->displayPosition:Ljava/util/ArrayList;

    .line 75
    iput-object p1, p0, Lcom/fiio/music/adapter/simpleCursorSongAdapter;->context:Landroid/content/Context;

    .line 76
    invoke-direct {p0}, Lcom/fiio/music/adapter/simpleCursorSongAdapter;->initImageLoader()V

    .line 77
    return-void
.end method

.method private initImageLoader()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const v1, 0x7f0203b0

    .line 79
    invoke-static {}, Lcom/b/a/b/f;->a()Lcom/b/a/b/f;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/adapter/simpleCursorSongAdapter;->imageLoader:Lcom/b/a/b/f;

    .line 81
    new-instance v0, Lcom/b/a/b/e;

    invoke-direct {v0}, Lcom/b/a/b/e;-><init>()V

    .line 82
    invoke-virtual {v0, v1}, Lcom/b/a/b/e;->a(I)Lcom/b/a/b/e;

    move-result-object v0

    .line 83
    invoke-virtual {v0, v1}, Lcom/b/a/b/e;->b(I)Lcom/b/a/b/e;

    move-result-object v0

    .line 84
    invoke-virtual {v0, v1}, Lcom/b/a/b/e;->c(I)Lcom/b/a/b/e;

    move-result-object v0

    .line 85
    invoke-virtual {v0, v2}, Lcom/b/a/b/e;->a(Z)Lcom/b/a/b/e;

    move-result-object v0

    .line 86
    invoke-virtual {v0, v2}, Lcom/b/a/b/e;->b(Z)Lcom/b/a/b/e;

    move-result-object v0

    .line 87
    new-instance v1, Lcom/b/a/b/c/c;

    invoke-direct {v1}, Lcom/b/a/b/c/c;-><init>()V

    invoke-virtual {v0, v1}, Lcom/b/a/b/e;->a(Lcom/b/a/b/c/a;)Lcom/b/a/b/e;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Lcom/b/a/b/e;->d()Lcom/b/a/b/d;

    move-result-object v0

    .line 81
    iput-object v0, p0, Lcom/fiio/music/adapter/simpleCursorSongAdapter;->options:Lcom/b/a/b/d;

    .line 90
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 11

    .prologue
    const v10, 0x7f050002

    const/4 v6, 0x2

    const/4 v9, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 96
    new-instance v7, Lcom/fiio/music/adapter/simpleCursorSongAdapter$ViewHolder;

    invoke-direct {v7, p0}, Lcom/fiio/music/adapter/simpleCursorSongAdapter$ViewHolder;-><init>(Lcom/fiio/music/adapter/simpleCursorSongAdapter;)V

    .line 99
    const v0, 0x7f0b0270

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    iput-object v0, v7, Lcom/fiio/music/adapter/simpleCursorSongAdapter$ViewHolder;->tv_song_list_item_top:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    .line 100
    const v0, 0x7f0b0271

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    iput-object v0, v7, Lcom/fiio/music/adapter/simpleCursorSongAdapter$ViewHolder;->tv_song_list_item_bottom:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    .line 101
    const v0, 0x7f0b0208

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v7, Lcom/fiio/music/adapter/simpleCursorSongAdapter$ViewHolder;->current_play_image_view:Landroid/widget/ImageView;

    .line 102
    const v0, 0x7f0b0359

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v7, Lcom/fiio/music/adapter/simpleCursorSongAdapter$ViewHolder;->listview_item_image:Landroid/widget/ImageView;

    .line 103
    const v0, 0x7f0b026d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v7, Lcom/fiio/music/adapter/simpleCursorSongAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    .line 104
    invoke-virtual {p1, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 107
    const-string v0, "_id"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 108
    const-string v0, "Aname"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/adapter/simpleCursorSongAdapter;->curSongName:Ljava/lang/String;

    .line 109
    const-string v0, "Bname"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/adapter/simpleCursorSongAdapter;->curArtName:Ljava/lang/String;

    .line 110
    const-string v0, "filePath"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/adapter/simpleCursorSongAdapter;->curFilePath:Ljava/lang/String;

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "file://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Cpicpath"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/adapter/simpleCursorSongAdapter;->curAlbumPath:Ljava/lang/String;

    .line 113
    iget-object v0, p0, Lcom/fiio/music/adapter/simpleCursorSongAdapter;->curFilePath:Ljava/lang/String;

    iget-object v1, p0, Lcom/fiio/music/adapter/simpleCursorSongAdapter;->playerSongPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 114
    iget-object v0, p0, Lcom/fiio/music/adapter/simpleCursorSongAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->h()Lcom/fiio/music/entity/Song;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/fiio/music/adapter/simpleCursorSongAdapter;->curSongName:Ljava/lang/String;

    iget-object v1, p0, Lcom/fiio/music/adapter/simpleCursorSongAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->h()Lcom/fiio/music/entity/Song;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/fiio/music/adapter/simpleCursorSongAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->G()Z

    move-result v0

    if-nez v0, :cond_4

    move v1, v2

    .line 117
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/adapter/simpleCursorSongAdapter;->curFilePath:Ljava/lang/String;

    iget-object v4, p0, Lcom/fiio/music/adapter/simpleCursorSongAdapter;->playerSongPath:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 118
    iget-object v0, p0, Lcom/fiio/music/adapter/simpleCursorSongAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->h()Lcom/fiio/music/entity/Song;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/fiio/music/adapter/simpleCursorSongAdapter;->curSongName:Ljava/lang/String;

    iget-object v4, p0, Lcom/fiio/music/adapter/simpleCursorSongAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v4}, Lcom/fiio/music/service/h;->h()Lcom/fiio/music/entity/Song;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/fiio/music/adapter/simpleCursorSongAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->G()Z

    move-result v0

    if-nez v0, :cond_5

    move v4, v2

    .line 119
    :goto_1
    const/4 v0, -0x1

    .line 120
    iget-object v5, p0, Lcom/fiio/music/adapter/simpleCursorSongAdapter;->context:Landroid/content/Context;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v8, "LocalMusicActivity"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    move v5, v2

    .line 125
    :goto_2
    if-ne v5, v2, :cond_0

    iget-object v0, p0, Lcom/fiio/music/adapter/simpleCursorSongAdapter;->context:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->isTabAVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/fiio/music/adapter/simpleCursorSongAdapter;->curFilePath:Ljava/lang/String;

    iget-object v4, p0, Lcom/fiio/music/adapter/simpleCursorSongAdapter;->playerSongPath:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/fiio/music/adapter/simpleCursorSongAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->G()Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v2

    :goto_3
    move v4, v0

    .line 129
    :cond_0
    packed-switch v5, :pswitch_data_0

    move v2, v3

    .line 135
    :goto_4
    :pswitch_0
    if-eqz v2, :cond_8

    if-eqz v4, :cond_9

    .line 141
    :cond_1
    iget v0, p0, Lcom/fiio/music/adapter/simpleCursorSongAdapter;->playerState:I

    if-ne v0, v6, :cond_b

    .line 142
    iget-boolean v0, p0, Lcom/fiio/music/adapter/simpleCursorSongAdapter;->changeboolean:Z

    if-eqz v0, :cond_a

    .line 143
    iget-object v0, v7, Lcom/fiio/music/adapter/simpleCursorSongAdapter$ViewHolder;->current_play_image_view:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 149
    :goto_5
    iget-object v0, v7, Lcom/fiio/music/adapter/simpleCursorSongAdapter$ViewHolder;->tv_song_list_item_top:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    invoke-virtual {v0, v9}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 150
    iget-object v0, v7, Lcom/fiio/music/adapter/simpleCursorSongAdapter$ViewHolder;->tv_song_list_item_bottom:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    invoke-virtual {v0, v9}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 151
    iget-object v0, v7, Lcom/fiio/music/adapter/simpleCursorSongAdapter$ViewHolder;->current_play_image_view:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/fiio/music/adapter/simpleCursorSongAdapter;->anim:Landroid/graphics/drawable/AnimationDrawable;

    .line 152
    iget-object v0, p0, Lcom/fiio/music/adapter/simpleCursorSongAdapter;->anim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 176
    :cond_2
    :goto_6
    iget-object v0, p0, Lcom/fiio/music/adapter/simpleCursorSongAdapter;->curAlbumPath:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 177
    const-string v0, "drawable://2130838447"

    iput-object v0, p0, Lcom/fiio/music/adapter/simpleCursorSongAdapter;->curAlbumPath:Ljava/lang/String;

    .line 179
    :cond_3
    iget-object v0, p0, Lcom/fiio/music/adapter/simpleCursorSongAdapter;->imageLoader:Lcom/b/a/b/f;

    iget-object v1, p0, Lcom/fiio/music/adapter/simpleCursorSongAdapter;->curAlbumPath:Ljava/lang/String;

    .line 180
    iget-object v2, v7, Lcom/fiio/music/adapter/simpleCursorSongAdapter$ViewHolder;->listview_item_image:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/fiio/music/adapter/simpleCursorSongAdapter;->options:Lcom/b/a/b/d;

    .line 179
    invoke-virtual {v0, v1, v2, v3}, Lcom/b/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/b/a/b/d;)V

    .line 181
    iget-object v0, v7, Lcom/fiio/music/adapter/simpleCursorSongAdapter$ViewHolder;->tv_song_list_item_top:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    const-string v1, "Aname"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v0, v7, Lcom/fiio/music/adapter/simpleCursorSongAdapter$ViewHolder;->tv_song_list_item_top:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    const-string v1, "filePath"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setTag(Ljava/lang/Object;)V

    .line 183
    iget-object v0, v7, Lcom/fiio/music/adapter/simpleCursorSongAdapter$ViewHolder;->tv_song_list_item_bottom:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    const-string v1, "Bname"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v0, v7, Lcom/fiio/music/adapter/simpleCursorSongAdapter$ViewHolder;->tv_song_list_item_bottom:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    const-string v1, "_id"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setTag(Ljava/lang/Object;)V

    .line 187
    return-void

    :cond_4
    move v1, v3

    .line 113
    goto/16 :goto_0

    :cond_5
    move v4, v3

    .line 117
    goto/16 :goto_1

    .line 122
    :cond_6
    iget-object v5, p0, Lcom/fiio/music/adapter/simpleCursorSongAdapter;->context:Landroid/content/Context;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v8, "MyMusicListActivity"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_f

    move v5, v6

    .line 123
    goto/16 :goto_2

    :cond_7
    move v0, v3

    .line 126
    goto/16 :goto_3

    :pswitch_1
    move v2, v3

    .line 134
    goto/16 :goto_4

    .line 135
    :cond_8
    if-nez v1, :cond_1

    .line 166
    :cond_9
    :goto_7
    iget-object v0, v7, Lcom/fiio/music/adapter/simpleCursorSongAdapter$ViewHolder;->tv_song_list_item_top:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    invoke-virtual {v0, v9}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 172
    iget-object v0, v7, Lcom/fiio/music/adapter/simpleCursorSongAdapter$ViewHolder;->tv_song_list_item_bottom:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    invoke-virtual {v0, v9}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 173
    iget-object v0, v7, Lcom/fiio/music/adapter/simpleCursorSongAdapter$ViewHolder;->current_play_image_view:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_6

    .line 146
    :cond_a
    iget-object v0, v7, Lcom/fiio/music/adapter/simpleCursorSongAdapter$ViewHolder;->current_play_image_view:Landroid/widget/ImageView;

    const v1, 0x7f050006

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_5

    .line 153
    :cond_b
    iget v0, p0, Lcom/fiio/music/adapter/simpleCursorSongAdapter;->playerState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_c

    .line 154
    iget v0, p0, Lcom/fiio/music/adapter/simpleCursorSongAdapter;->playerState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_e

    .line 155
    :cond_c
    iget-boolean v0, p0, Lcom/fiio/music/adapter/simpleCursorSongAdapter;->changeboolean:Z

    if-eqz v0, :cond_d

    .line 156
    iget-object v0, v7, Lcom/fiio/music/adapter/simpleCursorSongAdapter$ViewHolder;->current_play_image_view:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 161
    :goto_8
    iget-object v0, v7, Lcom/fiio/music/adapter/simpleCursorSongAdapter$ViewHolder;->tv_song_list_item_top:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 162
    iget-object v0, v7, Lcom/fiio/music/adapter/simpleCursorSongAdapter$ViewHolder;->tv_song_list_item_bottom:Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 163
    iget-object v0, v7, Lcom/fiio/music/adapter/simpleCursorSongAdapter$ViewHolder;->current_play_image_view:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/fiio/music/adapter/simpleCursorSongAdapter;->anim:Landroid/graphics/drawable/AnimationDrawable;

    .line 164
    iget-object v0, p0, Lcom/fiio/music/adapter/simpleCursorSongAdapter;->anim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto/16 :goto_6

    .line 158
    :cond_d
    iget-object v0, v7, Lcom/fiio/music/adapter/simpleCursorSongAdapter$ViewHolder;->current_play_image_view:Landroid/widget/ImageView;

    const v1, 0x7f050006

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_8

    .line 165
    :cond_e
    iget v0, p0, Lcom/fiio/music/adapter/simpleCursorSongAdapter;->playerState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    goto :goto_7

    :cond_f
    move v5, v0

    goto/16 :goto_2

    .line 129
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 204
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040128

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 199
    invoke-super {p0, p1}, Landroid/support/v4/widget/SimpleCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
