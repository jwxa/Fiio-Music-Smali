.class public Lcom/fiio/music/activity/RecentListActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "RecentListActivity.java"


# static fields
.field public static final ACTIVITY_START_FLAG:Ljava/lang/String; = "RFAW"

.field public static final PLAY_STATE:Ljava/lang/String; = "playState"


# instance fields
.field private STYLE_PARAMTER:I

.field private UI_IS_CHANGE:Z

.field dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;"
        }
    .end annotation
.end field

.field private itemListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mConnectionListener:Lcom/fiio/music/service/l;

.field private mListContent:Landroid/widget/ListView;

.field private mediaPlayerBroadcastReceiver:Lcom/fiio/music/activity/gd;

.field public mediaPlayerManager:Lcom/fiio/music/service/h;

.field private playHistoryDao:Lcom/fiio/music/b/h;

.field private playOftastDao:Lcom/fiio/music/b/i;

.field playState:I

.field private rfwString:Ljava/lang/String;

.field private rfw_list_content_title:Landroid/widget/TextView;

.field private songDao:Lcom/fiio/music/b/k;

.field private songItemRFAdapter:Lcom/fiio/music/adapter/SongItemRFAdapter;

.field private titleImageView:Landroid/widget/ImageView;

.field private topLayout:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 70
    const/4 v0, 0x3

    iput v0, p0, Lcom/fiio/music/activity/RecentListActivity;->STYLE_PARAMTER:I

    .line 161
    new-instance v0, Lcom/fiio/music/activity/fz;

    invoke-direct {v0, p0}, Lcom/fiio/music/activity/fz;-><init>(Lcom/fiio/music/activity/RecentListActivity;)V

    iput-object v0, p0, Lcom/fiio/music/activity/RecentListActivity;->itemListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 225
    new-instance v0, Lcom/fiio/music/activity/ga;

    invoke-direct {v0, p0}, Lcom/fiio/music/activity/ga;-><init>(Lcom/fiio/music/activity/RecentListActivity;)V

    iput-object v0, p0, Lcom/fiio/music/activity/RecentListActivity;->mConnectionListener:Lcom/fiio/music/service/l;

    .line 51
    return-void
.end method

.method static synthetic access$0(Lcom/fiio/music/activity/RecentListActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/fiio/music/activity/RecentListActivity;->rfwString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/fiio/music/activity/RecentListActivity;Landroid/view/View;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 254
    invoke-direct/range {p0 .. p5}, Lcom/fiio/music/activity/RecentListActivity;->playMusicByItem(Landroid/view/View;ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private init_a_z_slideview()V
    .locals 2

    .prologue
    .line 142
    const v0, 0x7f0b0090

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/RecentListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/widget/SideBar;

    .line 143
    const v1, 0x7f0b0092

    invoke-virtual {p0, v1}, Lcom/fiio/music/activity/RecentListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 144
    invoke-virtual {v0, v1}, Lcom/fiio/music/widget/SideBar;->setTextView(Landroid/widget/TextView;)V

    .line 146
    new-instance v1, Lcom/fiio/music/activity/gc;

    invoke-direct {v1, p0}, Lcom/fiio/music/activity/gc;-><init>(Lcom/fiio/music/activity/RecentListActivity;)V

    invoke-virtual {v0, v1}, Lcom/fiio/music/widget/SideBar;->setOnTouchingLetterChangedListener(Lcom/fiio/music/widget/l;)V

    .line 159
    return-void
.end method

.method private playMusicByItem(Landroid/view/View;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 9

    .prologue
    const/4 v7, 0x0

    const v6, 0x7f0c00f6

    const/4 v4, 0x0

    const/16 v5, 0x11

    .line 256
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/adapter/SongItemRFAdapter$ViewHolder;

    .line 257
    iget-object v0, v0, Lcom/fiio/music/adapter/SongItemRFAdapter$ViewHolder;->tv_web_list_item_top:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 256
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 258
    new-instance v1, Lcom/fiio/music/entity/Song;

    invoke-direct {v1}, Lcom/fiio/music/entity/Song;-><init>()V

    .line 260
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 261
    const-string v2, "R"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 263
    iget-object v0, p0, Lcom/fiio/music/activity/RecentListActivity;->playHistoryDao:Lcom/fiio/music/b/h;

    invoke-virtual {v0}, Lcom/fiio/music/b/h;->a()Ljava/util/List;

    move-result-object v1

    .line 264
    invoke-interface {v1, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    .line 278
    :cond_0
    :goto_0
    if-nez v1, :cond_3

    .line 279
    invoke-virtual {p0, v6}, Lcom/fiio/music/activity/RecentListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 332
    :goto_1
    return-void

    .line 265
    :cond_1
    const-string v2, "F"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 267
    iget-object v0, p0, Lcom/fiio/music/activity/RecentListActivity;->playOftastDao:Lcom/fiio/music/b/i;

    invoke-virtual {v0}, Lcom/fiio/music/b/i;->a()Ljava/util/List;

    move-result-object v1

    .line 268
    invoke-interface {v1, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    .line 269
    goto :goto_0

    :cond_2
    const-string v2, "A"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 273
    iget-object v0, p0, Lcom/fiio/music/activity/RecentListActivity;->songDao:Lcom/fiio/music/b/k;

    invoke-virtual {v0}, Lcom/fiio/music/b/k;->c()Ljava/util/List;

    move-result-object v1

    .line 274
    invoke-interface {v1, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_0

    .line 282
    :cond_3
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 284
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4

    .line 285
    invoke-virtual {p0, v6}, Lcom/fiio/music/activity/RecentListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 288
    :cond_4
    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/activity/RecentListActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v3}, Lcom/fiio/music/service/h;->j()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 289
    const-string v2, "A"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 290
    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 291
    new-instance v2, Lcom/fiio/music/util/j;

    iget-object v3, p0, Lcom/fiio/music/activity/RecentListActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {p0}, Lcom/fiio/music/activity/RecentListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/fiio/music/util/j;-><init>(Lcom/fiio/music/service/h;Landroid/content/Context;)V

    .line 292
    invoke-virtual {v2, v1, v0, p2}, Lcom/fiio/music/util/j;->a(Lcom/fiio/music/entity/Song;Ljava/util/List;I)V

    goto :goto_1

    .line 293
    :cond_5
    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->isSacd()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 294
    iget-object v2, p0, Lcom/fiio/music/activity/RecentListActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v2, v1, p2, v0}, Lcom/fiio/music/service/h;->a(Lcom/fiio/music/entity/Song;ILjava/util/List;)V

    goto/16 :goto_1

    .line 297
    :cond_6
    iget-object v2, p0, Lcom/fiio/music/activity/RecentListActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v2, v1, p2, p3, v0}, Lcom/fiio/music/service/h;->a(Lcom/fiio/music/entity/Song;ILjava/lang/String;Ljava/util/List;)V

    goto/16 :goto_1

    .line 300
    :cond_7
    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 301
    new-instance v2, Lcom/fiio/music/util/j;

    iget-object v3, p0, Lcom/fiio/music/activity/RecentListActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {p0}, Lcom/fiio/music/activity/RecentListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/fiio/music/util/j;-><init>(Lcom/fiio/music/service/h;Landroid/content/Context;)V

    .line 302
    invoke-virtual {v2, v1, v0, v5}, Lcom/fiio/music/util/j;->a(Lcom/fiio/music/entity/Song;Ljava/util/List;I)V

    goto/16 :goto_1

    .line 303
    :cond_8
    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->isSacd()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 304
    iget-object v2, p0, Lcom/fiio/music/activity/RecentListActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v2, v1, v5, v0}, Lcom/fiio/music/service/h;->a(Lcom/fiio/music/entity/Song;ILjava/util/List;)V

    goto/16 :goto_1

    .line 306
    :cond_9
    iget-object v2, p0, Lcom/fiio/music/activity/RecentListActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v2, v1, v5, v7, v0}, Lcom/fiio/music/service/h;->a(Lcom/fiio/music/entity/Song;ILjava/lang/String;Ljava/util/List;)V

    goto/16 :goto_1

    .line 311
    :cond_a
    const-string v2, "A"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 312
    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 313
    new-instance v2, Lcom/fiio/music/util/j;

    iget-object v3, p0, Lcom/fiio/music/activity/RecentListActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {p0}, Lcom/fiio/music/activity/RecentListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/fiio/music/util/j;-><init>(Lcom/fiio/music/service/h;Landroid/content/Context;)V

    .line 314
    invoke-virtual {v2, v1, v0, p2}, Lcom/fiio/music/util/j;->a(Lcom/fiio/music/entity/Song;Ljava/util/List;I)V

    goto/16 :goto_1

    .line 315
    :cond_b
    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->isSacd()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 316
    iget-object v2, p0, Lcom/fiio/music/activity/RecentListActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v2, v1, p2, v0}, Lcom/fiio/music/service/h;->a(Lcom/fiio/music/entity/Song;ILjava/util/List;)V

    goto/16 :goto_1

    .line 319
    :cond_c
    iget-object v2, p0, Lcom/fiio/music/activity/RecentListActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v2, v1, p2, p3, v0}, Lcom/fiio/music/service/h;->a(Lcom/fiio/music/entity/Song;ILjava/lang/String;Ljava/util/List;)V

    goto/16 :goto_1

    .line 322
    :cond_d
    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 323
    new-instance v2, Lcom/fiio/music/util/j;

    iget-object v3, p0, Lcom/fiio/music/activity/RecentListActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {p0}, Lcom/fiio/music/activity/RecentListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/fiio/music/util/j;-><init>(Lcom/fiio/music/service/h;Landroid/content/Context;)V

    .line 324
    invoke-virtual {v2, v1, v0, v5}, Lcom/fiio/music/util/j;->a(Lcom/fiio/music/entity/Song;Ljava/util/List;I)V

    goto/16 :goto_1

    .line 325
    :cond_e
    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->isSacd()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 326
    iget-object v2, p0, Lcom/fiio/music/activity/RecentListActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v2, v1, v5, v0}, Lcom/fiio/music/service/h;->a(Lcom/fiio/music/entity/Song;ILjava/util/List;)V

    goto/16 :goto_1

    .line 328
    :cond_f
    iget-object v2, p0, Lcom/fiio/music/activity/RecentListActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v2, v1, v5, v7, v0}, Lcom/fiio/music/service/h;->a(Lcom/fiio/music/entity/Song;ILjava/lang/String;Ljava/util/List;)V

    goto/16 :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 74
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/fiio/music/activity/RecentListActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/fiio/music/activity/RecentListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ChangeStyle"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fiio/music/activity/RecentListActivity;->UI_IS_CHANGE:Z

    .line 81
    invoke-virtual {p0}, Lcom/fiio/music/activity/RecentListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/a;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/fiio/music/activity/RecentListActivity;->STYLE_PARAMTER:I

    .line 83
    iget v0, p0, Lcom/fiio/music/activity/RecentListActivity;->STYLE_PARAMTER:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 84
    const v0, 0x7f0400c0

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/RecentListActivity;->setContentView(I)V

    .line 93
    :cond_1
    :goto_0
    const v0, 0x7f0b026b

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/RecentListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fiio/music/activity/RecentListActivity;->rfw_list_content_title:Landroid/widget/TextView;

    .line 94
    const v0, 0x7f0b008a

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/RecentListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/fiio/music/activity/RecentListActivity;->topLayout:Landroid/widget/RelativeLayout;

    .line 95
    const v0, 0x7f0b008b

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/RecentListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fiio/music/activity/RecentListActivity;->titleImageView:Landroid/widget/ImageView;

    .line 96
    new-instance v0, Lcom/fiio/music/b/h;

    invoke-direct {v0, p0}, Lcom/fiio/music/b/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fiio/music/activity/RecentListActivity;->playHistoryDao:Lcom/fiio/music/b/h;

    .line 97
    new-instance v0, Lcom/fiio/music/b/i;

    invoke-direct {v0, p0}, Lcom/fiio/music/b/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fiio/music/activity/RecentListActivity;->playOftastDao:Lcom/fiio/music/b/i;

    .line 98
    invoke-static {}, Lcom/fiio/music/a/c;->a()Lcom/fiio/music/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fiio/music/a/c;->a(Landroid/app/Activity;)V

    .line 99
    invoke-virtual {p0}, Lcom/fiio/music/activity/RecentListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 100
    new-instance v1, Lcom/fiio/music/b/k;

    invoke-direct {v1, p0}, Lcom/fiio/music/b/k;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/fiio/music/activity/RecentListActivity;->songDao:Lcom/fiio/music/b/k;

    .line 101
    const-string v1, "RFAW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fiio/music/activity/RecentListActivity;->rfwString:Ljava/lang/String;

    .line 102
    const-string v1, "playState"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/fiio/music/activity/RecentListActivity;->playState:I

    .line 105
    invoke-direct {p0}, Lcom/fiio/music/activity/RecentListActivity;->init_a_z_slideview()V

    .line 106
    iget-object v0, p0, Lcom/fiio/music/activity/RecentListActivity;->topLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/fiio/music/activity/gb;

    invoke-direct {v1, p0}, Lcom/fiio/music/activity/gb;-><init>(Lcom/fiio/music/activity/RecentListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    new-instance v0, Lcom/fiio/music/service/h;

    invoke-direct {v0, p0}, Lcom/fiio/music/service/h;-><init>(Landroid/content/ContextWrapper;)V

    iput-object v0, p0, Lcom/fiio/music/activity/RecentListActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    .line 115
    iget-object v0, p0, Lcom/fiio/music/activity/RecentListActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    iget-object v1, p0, Lcom/fiio/music/activity/RecentListActivity;->mConnectionListener:Lcom/fiio/music/service/l;

    invoke-virtual {v0, v1}, Lcom/fiio/music/service/h;->a(Lcom/fiio/music/service/l;)V

    .line 116
    iget-object v0, p0, Lcom/fiio/music/activity/RecentListActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->b()V

    .line 118
    new-instance v0, Lcom/fiio/music/activity/gd;

    invoke-direct {v0, p0, v2}, Lcom/fiio/music/activity/gd;-><init>(Lcom/fiio/music/activity/RecentListActivity;B)V

    iput-object v0, p0, Lcom/fiio/music/activity/RecentListActivity;->mediaPlayerBroadcastReceiver:Lcom/fiio/music/activity/gd;

    .line 119
    iget-object v0, p0, Lcom/fiio/music/activity/RecentListActivity;->mediaPlayerBroadcastReceiver:Lcom/fiio/music/activity/gd;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.fiio.music.player.brocast"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/fiio/music/activity/RecentListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 120
    return-void

    .line 85
    :cond_2
    iget v0, p0, Lcom/fiio/music/activity/RecentListActivity;->STYLE_PARAMTER:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 86
    const v0, 0x7f0400c1

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/RecentListActivity;->setContentView(I)V

    goto/16 :goto_0

    .line 87
    :cond_3
    iget v0, p0, Lcom/fiio/music/activity/RecentListActivity;->STYLE_PARAMTER:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 88
    const v0, 0x7f0400c2

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/RecentListActivity;->setContentView(I)V

    goto/16 :goto_0

    .line 89
    :cond_4
    iget v0, p0, Lcom/fiio/music/activity/RecentListActivity;->STYLE_PARAMTER:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 90
    const v0, 0x7f0400c3

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/RecentListActivity;->setContentView(I)V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/fiio/music/activity/RecentListActivity;->mediaPlayerBroadcastReceiver:Lcom/fiio/music/activity/gd;

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/RecentListActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 221
    iget-object v0, p0, Lcom/fiio/music/activity/RecentListActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->g()V

    .line 222
    invoke-static {}, Lcom/fiio/music/a/c;->a()Lcom/fiio/music/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fiio/music/a/c;->b(Landroid/app/Activity;)V

    .line 223
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 224
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 336
    new-instance v1, Lcom/fiio/music/widget/VolumeDialog;

    invoke-direct {v1, p0}, Lcom/fiio/music/widget/VolumeDialog;-><init>(Landroid/content/Context;)V

    .line 337
    const/16 v2, 0x19

    if-ne p1, v2, :cond_0

    .line 338
    invoke-virtual {v1, v0}, Lcom/fiio/music/widget/VolumeDialog;->a(Z)V

    .line 344
    :goto_0
    return v0

    .line 340
    :cond_0
    const/16 v2, 0x18

    if-ne p1, v2, :cond_1

    .line 341
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/fiio/music/widget/VolumeDialog;->a(Z)V

    goto :goto_0

    .line 344
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 216
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 217
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 180
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 181
    return-void
.end method

.method protected onStart()V
    .locals 7

    .prologue
    const v2, 0x7f020172

    .line 184
    iget-object v0, p0, Lcom/fiio/music/activity/RecentListActivity;->rfwString:Ljava/lang/String;

    const-string v1, "R"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/fiio/music/activity/RecentListActivity;->playHistoryDao:Lcom/fiio/music/b/h;

    invoke-virtual {v0}, Lcom/fiio/music/b/h;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/RecentListActivity;->dataList:Ljava/util/List;

    .line 186
    iget-object v0, p0, Lcom/fiio/music/activity/RecentListActivity;->rfw_list_content_title:Landroid/widget/TextView;

    const v1, 0x7f0c0059

    invoke-virtual {p0, v1}, Lcom/fiio/music/activity/RecentListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v0, p0, Lcom/fiio/music/activity/RecentListActivity;->titleImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 199
    :goto_0
    const v0, 0x7f0b026c

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/RecentListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/fiio/music/activity/RecentListActivity;->mListContent:Landroid/widget/ListView;

    .line 200
    new-instance v0, Lcom/fiio/music/adapter/SongItemRFAdapter;

    iget-object v2, p0, Lcom/fiio/music/activity/RecentListActivity;->dataList:Ljava/util/List;

    iget-object v3, p0, Lcom/fiio/music/activity/RecentListActivity;->rfwString:Ljava/lang/String;

    iget-object v4, p0, Lcom/fiio/music/activity/RecentListActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    iget v5, p0, Lcom/fiio/music/activity/RecentListActivity;->playState:I

    iget v6, p0, Lcom/fiio/music/activity/RecentListActivity;->STYLE_PARAMTER:I

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/fiio/music/adapter/SongItemRFAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lcom/fiio/music/service/h;II)V

    iput-object v0, p0, Lcom/fiio/music/activity/RecentListActivity;->songItemRFAdapter:Lcom/fiio/music/adapter/SongItemRFAdapter;

    .line 201
    iget-object v0, p0, Lcom/fiio/music/activity/RecentListActivity;->mListContent:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/fiio/music/activity/RecentListActivity;->songItemRFAdapter:Lcom/fiio/music/adapter/SongItemRFAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 202
    iget-object v0, p0, Lcom/fiio/music/activity/RecentListActivity;->mListContent:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/fiio/music/activity/RecentListActivity;->itemListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 204
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 206
    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/activity/RecentListActivity;->rfwString:Ljava/lang/String;

    const-string v1, "F"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/fiio/music/activity/RecentListActivity;->playOftastDao:Lcom/fiio/music/b/i;

    invoke-virtual {v0}, Lcom/fiio/music/b/i;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/RecentListActivity;->dataList:Ljava/util/List;

    .line 190
    iget-object v0, p0, Lcom/fiio/music/activity/RecentListActivity;->rfw_list_content_title:Landroid/widget/TextView;

    const v1, 0x7f0c005a

    invoke-virtual {p0, v1}, Lcom/fiio/music/activity/RecentListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v0, p0, Lcom/fiio/music/activity/RecentListActivity;->titleImageView:Landroid/widget/ImageView;

    const v1, 0x7f020156

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/activity/RecentListActivity;->rfwString:Ljava/lang/String;

    const-string v1, "A"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 193
    iget-object v0, p0, Lcom/fiio/music/activity/RecentListActivity;->songDao:Lcom/fiio/music/b/k;

    invoke-virtual {v0}, Lcom/fiio/music/b/k;->c()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/RecentListActivity;->dataList:Ljava/util/List;

    .line 194
    iget-object v0, p0, Lcom/fiio/music/activity/RecentListActivity;->rfw_list_content_title:Landroid/widget/TextView;

    const v1, 0x7f0c005b

    invoke-virtual {p0, v1}, Lcom/fiio/music/activity/RecentListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v0, p0, Lcom/fiio/music/activity/RecentListActivity;->titleImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 197
    :cond_2
    invoke-static {p0}, Lcom/fiio/music/util/da;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/RecentListActivity;->dataList:Ljava/util/List;

    goto :goto_0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 211
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 212
    return-void
.end method

.method public updateList()V
    .locals 5

    .prologue
    const v2, 0x7f020172

    .line 123
    iget-object v0, p0, Lcom/fiio/music/activity/RecentListActivity;->rfwString:Ljava/lang/String;

    const-string v1, "R"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/fiio/music/activity/RecentListActivity;->playHistoryDao:Lcom/fiio/music/b/h;

    invoke-virtual {v0}, Lcom/fiio/music/b/h;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/RecentListActivity;->dataList:Ljava/util/List;

    .line 125
    iget-object v0, p0, Lcom/fiio/music/activity/RecentListActivity;->rfw_list_content_title:Landroid/widget/TextView;

    const v1, 0x7f0c0059

    invoke-virtual {p0, v1}, Lcom/fiio/music/activity/RecentListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v0, p0, Lcom/fiio/music/activity/RecentListActivity;->titleImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 138
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/activity/RecentListActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->m()I

    move-result v0

    .line 139
    iget-object v1, p0, Lcom/fiio/music/activity/RecentListActivity;->songItemRFAdapter:Lcom/fiio/music/adapter/SongItemRFAdapter;

    iget-object v2, p0, Lcom/fiio/music/activity/RecentListActivity;->dataList:Ljava/util/List;

    iget-object v3, p0, Lcom/fiio/music/activity/RecentListActivity;->rfwString:Ljava/lang/String;

    iget-object v4, p0, Lcom/fiio/music/activity/RecentListActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/fiio/music/adapter/SongItemRFAdapter;->update(Ljava/util/List;Ljava/lang/String;Lcom/fiio/music/service/h;I)V

    .line 140
    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/activity/RecentListActivity;->rfwString:Ljava/lang/String;

    const-string v1, "F"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/fiio/music/activity/RecentListActivity;->playOftastDao:Lcom/fiio/music/b/i;

    invoke-virtual {v0}, Lcom/fiio/music/b/i;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/RecentListActivity;->dataList:Ljava/util/List;

    .line 129
    iget-object v0, p0, Lcom/fiio/music/activity/RecentListActivity;->rfw_list_content_title:Landroid/widget/TextView;

    const v1, 0x7f0c005a

    invoke-virtual {p0, v1}, Lcom/fiio/music/activity/RecentListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v0, p0, Lcom/fiio/music/activity/RecentListActivity;->titleImageView:Landroid/widget/ImageView;

    const v1, 0x7f020156

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/activity/RecentListActivity;->rfwString:Ljava/lang/String;

    const-string v1, "A"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    iget-object v0, p0, Lcom/fiio/music/activity/RecentListActivity;->songDao:Lcom/fiio/music/b/k;

    invoke-virtual {v0}, Lcom/fiio/music/b/k;->c()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/RecentListActivity;->dataList:Ljava/util/List;

    .line 133
    iget-object v0, p0, Lcom/fiio/music/activity/RecentListActivity;->rfw_list_content_title:Landroid/widget/TextView;

    const v1, 0x7f0c005b

    invoke-virtual {p0, v1}, Lcom/fiio/music/activity/RecentListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v0, p0, Lcom/fiio/music/activity/RecentListActivity;->titleImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 136
    :cond_2
    invoke-static {p0}, Lcom/fiio/music/util/da;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/RecentListActivity;->dataList:Ljava/util/List;

    goto :goto_0
.end method
