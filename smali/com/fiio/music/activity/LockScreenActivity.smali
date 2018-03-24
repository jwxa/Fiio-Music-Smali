.class public Lcom/fiio/music/activity/LockScreenActivity;
.super Landroid/app/Activity;
.source "LockScreenActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static b:Z

.field private static final c:Ljava/lang/String;


# instance fields
.field private A:Lcom/fiio/music/h/e;

.field private B:I

.field private C:Landroid/widget/TextView;

.field private D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/i/a;",
            ">;"
        }
    .end annotation
.end field

.field private E:Z

.field private F:Z

.field private G:I

.field private H:Landroid/content/BroadcastReceiver;

.field private I:Lcom/fiio/music/h/g;

.field private J:I

.field protected a:Lcom/b/a/b/f;

.field private d:Lcom/fiio/music/widget/LockScreenView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/RelativeLayout;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/ImageButton;

.field private l:Landroid/widget/ImageButton;

.field private m:Landroid/widget/ImageButton;

.field private n:Landroid/widget/ImageButton;

.field private o:Lcom/fiio/music/service/h;

.field private p:Lcom/fiio/music/activity/dm;

.field private q:Z

.field private r:Lcom/b/a/b/d;

.field private s:Lcom/fiio/music/util/bw;

.field private t:Landroid/widget/Toast;

.field private u:Lcom/fiio/music/entity/Song;

.field private v:Lcom/fiio/music/b/k;

.field private w:Landroid/os/Handler;

.field private x:Landroid/view/ViewGroup;

.field private y:Landroid/widget/ListView;

.field private z:Lcom/fiio/music/adapter/LyricAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 103
    const-class v0, Lcom/fiio/music/activity/LockScreenActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fiio/music/activity/LockScreenActivity;->c:Ljava/lang/String;

    .line 132
    const/4 v0, 0x0

    sput-boolean v0, Lcom/fiio/music/activity/LockScreenActivity;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 101
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 134
    new-instance v0, Lcom/fiio/music/activity/dh;

    invoke-direct {v0, p0}, Lcom/fiio/music/activity/dh;-><init>(Lcom/fiio/music/activity/LockScreenActivity;)V

    iput-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->w:Landroid/os/Handler;

    .line 154
    iput v1, p0, Lcom/fiio/music/activity/LockScreenActivity;->B:I

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->D:Ljava/util/List;

    .line 162
    iput-boolean v1, p0, Lcom/fiio/music/activity/LockScreenActivity;->E:Z

    .line 163
    iput-boolean v1, p0, Lcom/fiio/music/activity/LockScreenActivity;->F:Z

    .line 165
    const/4 v0, 0x3

    iput v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->G:I

    .line 167
    new-instance v0, Lcom/fiio/music/activity/di;

    invoke-direct {v0, p0}, Lcom/fiio/music/activity/di;-><init>(Lcom/fiio/music/activity/LockScreenActivity;)V

    iput-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->H:Landroid/content/BroadcastReceiver;

    .line 752
    new-instance v0, Lcom/fiio/music/activity/dj;

    invoke-direct {v0, p0}, Lcom/fiio/music/activity/dj;-><init>(Lcom/fiio/music/activity/LockScreenActivity;)V

    iput-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->I:Lcom/fiio/music/h/g;

    .line 101
    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0xa

    .line 510
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 511
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 512
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 513
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    if-ge v1, v5, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 514
    if-ge v2, v5, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 513
    return-object v0

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 514
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1
.end method

.method static synthetic a(Lcom/fiio/music/activity/LockScreenActivity;I)V
    .locals 3

    .prologue
    .line 921
    iput p1, p0, Lcom/fiio/music/activity/LockScreenActivity;->J:I

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->z:Lcom/fiio/music/adapter/LyricAdapter;

    invoke-virtual {v0}, Lcom/fiio/music/adapter/LyricAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->z:Lcom/fiio/music/adapter/LyricAdapter;

    invoke-virtual {v0, p1}, Lcom/fiio/music/adapter/LyricAdapter;->setCurrentSentenceIndex(I)V

    iget-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->z:Lcom/fiio/music/adapter/LyricAdapter;

    invoke-virtual {v0}, Lcom/fiio/music/adapter/LyricAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->y:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/fiio/music/activity/LockScreenActivity;->y:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    const/16 v2, 0x1f4

    invoke-virtual {v0, p1, v1, v2}, Landroid/widget/AbsListView;->smoothScrollToPositionFromTop(III)V

    new-instance v2, Lcom/fiio/music/activity/dl;

    invoke-direct {v2, p0, v0, p1, v1}, Lcom/fiio/music/activity/dl;-><init>(Lcom/fiio/music/activity/LockScreenActivity;Landroid/widget/AbsListView;II)V

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/fiio/music/activity/LockScreenActivity;Lcom/fiio/music/entity/Song;)V
    .locals 0

    .prologue
    .line 936
    invoke-direct {p0, p1}, Lcom/fiio/music/activity/LockScreenActivity;->c(Lcom/fiio/music/entity/Song;)V

    return-void
.end method

.method static synthetic a(Lcom/fiio/music/activity/LockScreenActivity;Z)V
    .locals 0

    .prologue
    .line 163
    iput-boolean p1, p0, Lcom/fiio/music/activity/LockScreenActivity;->F:Z

    return-void
.end method

.method static synthetic a(Ljava/util/List;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 790
    if-eqz p0, :cond_1

    const-wide/16 v0, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/i/a;

    invoke-virtual {v0}, Lcom/fiio/music/i/a;->a()J

    move-result-wide v0

    :cond_0
    move v2, v3

    :goto_0
    const/4 v4, 0x3

    if-lt v2, v4, :cond_2

    :cond_1
    return-void

    :cond_2
    new-instance v4, Lcom/fiio/music/i/a;

    const-string v5, ""

    invoke-direct {v4, v0, v1, v5}, Lcom/fiio/music/i/a;-><init>(JLjava/lang/String;)V

    invoke-interface {p0, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/fiio/music/activity/LockScreenActivity;)Z
    .locals 1

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->F:Z

    return v0
.end method

.method static synthetic b(Lcom/fiio/music/activity/LockScreenActivity;)Lcom/fiio/music/h/e;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->A:Lcom/fiio/music/h/e;

    return-object v0
.end method

.method static synthetic b(Lcom/fiio/music/activity/LockScreenActivity;Lcom/fiio/music/entity/Song;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/fiio/music/activity/LockScreenActivity;->u:Lcom/fiio/music/entity/Song;

    return-void
.end method

.method static synthetic b(Ljava/util/List;)V
    .locals 5

    .prologue
    .line 813
    if-eqz p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v1, Lcom/fiio/music/i/a;

    const-wide v2, 0x7fffffffffffffffL

    const-string v4, ""

    invoke-direct {v1, v2, v3, v4}, Lcom/fiio/music/i/a;-><init>(JLjava/lang/String;)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic c(Lcom/fiio/music/activity/LockScreenActivity;)Lcom/fiio/music/adapter/LyricAdapter;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->z:Lcom/fiio/music/adapter/LyricAdapter;

    return-object v0
.end method

.method private c(Lcom/fiio/music/entity/Song;)V
    .locals 6

    .prologue
    const/16 v3, 0x1f4

    .line 937
    if-nez p1, :cond_0

    .line 939
    sget-object v0, Lcom/fiio/music/activity/LockScreenActivity;->c:Ljava/lang/String;

    const-string v1, "updateSmallAlbumShow playingSong is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    :goto_0
    return-void

    .line 943
    :cond_0
    iget v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->G:I

    invoke-virtual {p0}, Lcom/fiio/music/activity/LockScreenActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/LockScreenActivity;->a:Lcom/b/a/b/f;

    invoke-static {p1, v0, v1, v2}, Lcom/fiio/music/util/h;->a(Lcom/fiio/music/entity/Song;ILandroid/content/Context;Lcom/b/a/b/f;)Ljava/lang/String;

    move-result-object v1

    .line 945
    if-nez v1, :cond_1

    .line 946
    const-string v1, "drawable://2130838563"

    .line 948
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->a:Lcom/b/a/b/f;

    invoke-virtual {v0}, Lcom/b/a/b/f;->c()Lcom/b/a/a/a/a;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/b/a/c/a;->a(Ljava/lang/String;Lcom/b/a/a/a/a;)Z

    .line 949
    iget-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->a:Lcom/b/a/b/f;

    invoke-virtual {v0}, Lcom/b/a/b/f;->b()Lcom/b/a/a/b/c;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/b/a/c/f;->a(Ljava/lang/String;Lcom/b/a/a/b/c;)V

    .line 950
    new-instance v4, Lcom/b/a/b/a/f;

    invoke-direct {v4, v3, v3}, Lcom/b/a/b/a/f;-><init>(II)V

    .line 951
    iget-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->a:Lcom/b/a/b/f;

    new-instance v2, Lcom/b/a/b/e/b;

    iget-object v3, p0, Lcom/fiio/music/activity/LockScreenActivity;->g:Landroid/widget/ImageView;

    invoke-direct {v2, v3}, Lcom/b/a/b/e/b;-><init>(Landroid/widget/ImageView;)V

    iget-object v3, p0, Lcom/fiio/music/activity/LockScreenActivity;->r:Lcom/b/a/b/d;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/b/a/b/f;->a(Ljava/lang/String;Lcom/b/a/b/e/a;Lcom/b/a/b/d;Lcom/b/a/b/a/f;Lcom/b/a/b/f/a;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/fiio/music/activity/LockScreenActivity;)Lcom/fiio/music/entity/Song;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->u:Lcom/fiio/music/entity/Song;

    return-object v0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/fiio/music/activity/LockScreenActivity;->c:Ljava/lang/String;

    return-object v0
.end method

.method private e()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 576
    const-string v0, "kuishe"

    invoke-virtual {p0, v0, v2}, Lcom/fiio/music/activity/LockScreenActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 578
    const-string v1, "enable_viper"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 580
    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->o:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->S()Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {}, Lcom/fiio/music/service/MediaPlayerService;->X()Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->setJumpToSong(Z)V

    .line 584
    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/fiio/music/activity/LockScreenActivity;)Z
    .locals 1

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->E:Z

    return v0
.end method

.method static synthetic f(Lcom/fiio/music/activity/LockScreenActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->j:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic g(Lcom/fiio/music/activity/LockScreenActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->h:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic h(Lcom/fiio/music/activity/LockScreenActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic i(Lcom/fiio/music/activity/LockScreenActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->C:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic j(Lcom/fiio/music/activity/LockScreenActivity;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->m:Landroid/widget/ImageButton;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/fiio/music/entity/Song;)V
    .locals 2

    .prologue
    .line 638
    const v0, 0x7f0c0054

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/LockScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 640
    new-instance v1, Lcom/fiio/music/util/bw;

    invoke-direct {v1, v0}, Lcom/fiio/music/util/bw;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/fiio/music/activity/LockScreenActivity;->s:Lcom/fiio/music/util/bw;

    .line 641
    if-eqz p1, :cond_0

    .line 642
    iget-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->s:Lcom/fiio/music/util/bw;

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/util/bw;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 643
    if-eqz v0, :cond_1

    .line 644
    iget-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->n:Landroid/widget/ImageButton;

    const v1, 0x7f02019b

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 650
    :cond_0
    :goto_0
    return-void

    .line 646
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->n:Landroid/widget/ImageButton;

    const v1, 0x7f02019a

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 624
    iget-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->o:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->m()I

    move-result v0

    .line 625
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 626
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->m:Landroid/widget/ImageButton;

    const v1, 0x7f0204d3

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 630
    :cond_1
    :goto_0
    return-void

    .line 627
    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 628
    iget-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->m:Landroid/widget/ImageButton;

    const v1, 0x7f0204d1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public final b(Lcom/fiio/music/entity/Song;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fiio/music/entity/Song;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 826
    if-nez p1, :cond_0

    move v0, v2

    .line 899
    :goto_0
    return v0

    .line 829
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 833
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 834
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    .line 835
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v0, v1

    .line 837
    :cond_1
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ".lrc"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 838
    sget-object v5, Lcom/fiio/music/activity/LockScreenActivity;->c:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "lyricFileName ="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 840
    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/fiio/music/network/d/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 841
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ".lrc"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 842
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 844
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 845
    iget-object v1, p0, Lcom/fiio/music/activity/LockScreenActivity;->A:Lcom/fiio/music/h/e;

    invoke-virtual {v1, v0}, Lcom/fiio/music/h/e;->a(Ljava/lang/String;)Z

    .line 846
    iget-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->A:Lcom/fiio/music/h/e;

    invoke-virtual {v0}, Lcom/fiio/music/h/e;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->D:Ljava/util/List;

    move v0, v3

    .line 847
    goto/16 :goto_0

    .line 835
    :cond_2
    const-string v5, "."

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 848
    :cond_3
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 849
    iget-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->A:Lcom/fiio/music/h/e;

    invoke-virtual {v0, v4}, Lcom/fiio/music/h/e;->a(Ljava/lang/String;)Z

    .line 850
    iget-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->A:Lcom/fiio/music/h/e;

    invoke-virtual {v0}, Lcom/fiio/music/h/e;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->D:Ljava/util/List;

    move v0, v3

    .line 851
    goto/16 :goto_0

    .line 853
    :cond_4
    iget-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->z:Lcom/fiio/music/adapter/LyricAdapter;

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/LyricAdapter;->setLyric(Ljava/util/List;)V

    .line 854
    iget-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->z:Lcom/fiio/music/adapter/LyricAdapter;

    invoke-virtual {v0}, Lcom/fiio/music/adapter/LyricAdapter;->notifyDataSetChanged()V

    .line 862
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/fiio/music/activity/SplashActivity;->b:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/fiio/music/network/d/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 864
    const-string v4, ".lrc"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 863
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 865
    sget-object v4, Lcom/fiio/music/activity/LockScreenActivity;->c:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "default lyricFilePath ="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 871
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 872
    iget-object v1, p0, Lcom/fiio/music/activity/LockScreenActivity;->A:Lcom/fiio/music/h/e;

    invoke-virtual {v1, v0}, Lcom/fiio/music/h/e;->a(Ljava/lang/String;)Z

    .line 873
    iget-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->A:Lcom/fiio/music/h/e;

    invoke-virtual {v0}, Lcom/fiio/music/h/e;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->D:Ljava/util/List;

    move v0, v3

    .line 874
    goto/16 :goto_0

    .line 879
    :cond_5
    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->isSacd()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 881
    :cond_6
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 882
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 885
    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 886
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

    .line 887
    const-string v1, ".lrc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 886
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 892
    :cond_7
    :goto_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 893
    iget-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->A:Lcom/fiio/music/h/e;

    invoke-virtual {v0, v1}, Lcom/fiio/music/h/e;->a(Ljava/lang/String;)Z

    .line 894
    iget-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->A:Lcom/fiio/music/h/e;

    invoke-virtual {v0}, Lcom/fiio/music/h/e;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->D:Ljava/util/List;

    move v0, v3

    .line 895
    goto/16 :goto_0

    .line 888
    :cond_8
    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->isSacd()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 889
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

    .line 890
    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getTrack()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".lrc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 889
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_9
    move v0, v2

    .line 899
    goto/16 :goto_0
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 728
    iget-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->o:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->m()I

    move-result v0

    if-nez v0, :cond_0

    .line 729
    iget-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->t:Landroid/widget/Toast;

    const v1, 0x7f0c00f4

    invoke-virtual {p0, v1}, Lcom/fiio/music/activity/LockScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->t:Landroid/widget/Toast;

    .line 739
    :goto_0
    return-void

    .line 733
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->o:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->m()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 734
    iget-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->t:Landroid/widget/Toast;

    const v1, 0x7f0c00f5

    invoke-virtual {p0, v1}, Lcom/fiio/music/activity/LockScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->t:Landroid/widget/Toast;

    goto :goto_0

    .line 737
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->o:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->t()V

    .line 738
    invoke-virtual {p0}, Lcom/fiio/music/activity/LockScreenActivity;->b()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f0c00f0

    .line 541
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 565
    :cond_0
    :goto_0
    return-void

    .line 545
    :pswitch_0
    invoke-direct {p0}, Lcom/fiio/music/activity/LockScreenActivity;->e()V

    .line 547
    iget-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->o:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->r()V

    goto :goto_0

    .line 552
    :pswitch_1
    invoke-direct {p0}, Lcom/fiio/music/activity/LockScreenActivity;->e()V

    .line 554
    iget-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->o:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->s()V

    goto :goto_0

    .line 558
    :pswitch_2
    invoke-virtual {p0}, Lcom/fiio/music/activity/LockScreenActivity;->c()V

    goto :goto_0

    .line 563
    :pswitch_3
    iget-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->u:Lcom/fiio/music/entity/Song;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->u:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getId_()I

    move-result v0

    iget-object v1, p0, Lcom/fiio/music/activity/LockScreenActivity;->o:Lcom/fiio/music/service/h;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/fiio/music/activity/LockScreenActivity;->o:Lcom/fiio/music/service/h;

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->h()Lcom/fiio/music/entity/Song;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getTrack()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    const v1, 0x7f0c00b9

    invoke-virtual {p0, v1}, Lcom/fiio/music/activity/LockScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    goto :goto_0

    :cond_1
    const v1, 0x7f0c0054

    invoke-virtual {p0, v1}, Lcom/fiio/music/activity/LockScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/fiio/music/util/bw;

    invoke-direct {v2, v1}, Lcom/fiio/music/util/bw;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/fiio/music/activity/LockScreenActivity;->s:Lcom/fiio/music/util/bw;

    iget-object v1, p0, Lcom/fiio/music/activity/LockScreenActivity;->s:Lcom/fiio/music/util/bw;

    iget-object v1, p0, Lcom/fiio/music/activity/LockScreenActivity;->u:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/LockScreenActivity;->u:Lcom/fiio/music/entity/Song;

    invoke-virtual {v2}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fiio/music/util/bw;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/fiio/music/activity/LockScreenActivity;->v:Lcom/fiio/music/b/k;

    invoke-virtual {v1, v0}, Lcom/fiio/music/b/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->s:Lcom/fiio/music/util/bw;

    iget-object v1, p0, Lcom/fiio/music/activity/LockScreenActivity;->u:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/LockScreenActivity;->u:Lcom/fiio/music/entity/Song;

    invoke-virtual {v2}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/util/bw;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->t:Landroid/widget/Toast;

    invoke-virtual {p0, v3}, Lcom/fiio/music/activity/LockScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->t:Landroid/widget/Toast;

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->n:Landroid/widget/ImageButton;

    const v1, 0x7f02019a

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->s:Lcom/fiio/music/util/bw;

    iget-object v1, p0, Lcom/fiio/music/activity/LockScreenActivity;->u:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/LockScreenActivity;->u:Lcom/fiio/music/entity/Song;

    invoke-virtual {v2}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/util/bw;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->t:Landroid/widget/Toast;

    invoke-virtual {p0, v3}, Lcom/fiio/music/activity/LockScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->t:Landroid/widget/Toast;

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/fiio/music/activity/LockScreenActivity;->v:Lcom/fiio/music/b/k;

    invoke-virtual {v1, v0}, Lcom/fiio/music/b/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->o:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->K()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->s:Lcom/fiio/music/util/bw;

    iget-object v1, p0, Lcom/fiio/music/activity/LockScreenActivity;->u:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0, v1, v4}, Lcom/fiio/music/util/bw;->a(Lcom/fiio/music/entity/Song;I)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->t:Landroid/widget/Toast;

    invoke-virtual {p0, v3}, Lcom/fiio/music/activity/LockScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->t:Landroid/widget/Toast;

    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->n:Landroid/widget/ImageButton;

    const v1, 0x7f02019b

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->o:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->K()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->s:Lcom/fiio/music/util/bw;

    iget-object v1, p0, Lcom/fiio/music/activity/LockScreenActivity;->u:Lcom/fiio/music/entity/Song;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/util/bw;->a(Lcom/fiio/music/entity/Song;I)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->t:Landroid/widget/Toast;

    invoke-virtual {p0, v3}, Lcom/fiio/music/activity/LockScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->t:Landroid/widget/Toast;

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->o:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->Q()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->s:Lcom/fiio/music/util/bw;

    iget-object v1, p0, Lcom/fiio/music/activity/LockScreenActivity;->u:Lcom/fiio/music/entity/Song;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/util/bw;->a(Lcom/fiio/music/entity/Song;I)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->t:Landroid/widget/Toast;

    invoke-virtual {p0, v3}, Lcom/fiio/music/activity/LockScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->t:Landroid/widget/Toast;

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->s:Lcom/fiio/music/util/bw;

    iget-object v1, p0, Lcom/fiio/music/activity/LockScreenActivity;->u:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0, v1, v4}, Lcom/fiio/music/util/bw;->a(Lcom/fiio/music/entity/Song;I)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->t:Landroid/widget/Toast;

    invoke-virtual {p0, v3}, Lcom/fiio/music/activity/LockScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->t:Landroid/widget/Toast;

    goto :goto_2

    .line 541
    :pswitch_data_0
    .packed-switch 0x7f0b002c
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .prologue
    const v8, 0x7f020423

    const v7, 0x7f0201c6

    const/4 v4, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 212
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 213
    invoke-virtual {p0}, Lcom/fiio/music/activity/LockScreenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 214
    const-string v1, "changeUI"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/fiio/music/activity/LockScreenActivity;->q:Z

    .line 216
    const-string v1, "FiiOMusic"

    invoke-virtual {p0}, Lcom/fiio/music/activity/LockScreenActivity;->getApplicationContext()Landroid/content/Context;

    invoke-virtual {p0, v1, v5}, Lcom/fiio/music/activity/LockScreenActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 217
    const-string v2, "lockscreenlrc"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/fiio/music/activity/LockScreenActivity;->E:Z

    .line 219
    invoke-virtual {p0}, Lcom/fiio/music/activity/LockScreenActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 220
    const/high16 v2, 0x480000

    .line 219
    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 221
    invoke-virtual {p0}, Lcom/fiio/music/activity/LockScreenActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/Window;->requestFeature(I)Z

    .line 222
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 223
    invoke-virtual {p0}, Lcom/fiio/music/activity/LockScreenActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 224
    const/high16 v2, 0xc000000

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 226
    invoke-virtual {p0}, Lcom/fiio/music/activity/LockScreenActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 227
    const/16 v3, 0x1702

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 230
    const/high16 v2, -0x80000000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 234
    invoke-virtual {v1, v5}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 235
    invoke-virtual {v1, v5}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 238
    :cond_0
    const v1, 0x7f04000b

    invoke-virtual {p0, v1}, Lcom/fiio/music/activity/LockScreenActivity;->setContentView(I)V

    .line 240
    invoke-virtual {p0}, Lcom/fiio/music/activity/LockScreenActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/fiio/music/util/a;->a(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/fiio/music/activity/LockScreenActivity;->G:I

    .line 242
    invoke-virtual {p0}, Lcom/fiio/music/activity/LockScreenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 243
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 244
    new-instance v2, Lcom/fiio/music/service/h;

    invoke-direct {v2, p0}, Lcom/fiio/music/service/h;-><init>(Landroid/content/ContextWrapper;)V

    iput-object v2, p0, Lcom/fiio/music/activity/LockScreenActivity;->o:Lcom/fiio/music/service/h;

    .line 245
    iget-object v2, p0, Lcom/fiio/music/activity/LockScreenActivity;->o:Lcom/fiio/music/service/h;

    invoke-virtual {v2}, Lcom/fiio/music/service/h;->c()V

    .line 248
    new-instance v2, Lcom/b/a/b/i;

    invoke-virtual {p0}, Lcom/fiio/music/activity/LockScreenActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/b/a/b/i;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/b/a/a/b/a/d;

    invoke-direct {v3}, Lcom/b/a/a/b/a/d;-><init>()V

    invoke-virtual {v2, v3}, Lcom/b/a/b/i;->a(Lcom/b/a/a/b/c;)Lcom/b/a/b/i;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/b/a/b/i;->a(I)Lcom/b/a/b/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/b/a/b/i;->f()Lcom/b/a/b/h;

    move-result-object v2

    invoke-static {}, Lcom/b/a/b/f;->a()Lcom/b/a/b/f;

    move-result-object v3

    iput-object v3, p0, Lcom/fiio/music/activity/LockScreenActivity;->a:Lcom/b/a/b/f;

    iget-object v3, p0, Lcom/fiio/music/activity/LockScreenActivity;->a:Lcom/b/a/b/f;

    invoke-virtual {v3, v2}, Lcom/b/a/b/f;->a(Lcom/b/a/b/h;)V

    iget v2, p0, Lcom/fiio/music/activity/LockScreenActivity;->G:I

    if-ne v2, v6, :cond_3

    new-instance v2, Lcom/b/a/b/e;

    invoke-direct {v2}, Lcom/b/a/b/e;-><init>()V

    invoke-virtual {v2, v7}, Lcom/b/a/b/e;->b(I)Lcom/b/a/b/e;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/b/a/b/e;->c(I)Lcom/b/a/b/e;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/b/a/b/e;->a(Z)Lcom/b/a/b/e;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/b/a/b/e;->b(Z)Lcom/b/a/b/e;

    move-result-object v2

    sget-object v3, Lcom/b/a/b/a/e;->f:Lcom/b/a/b/a/e;

    invoke-virtual {v2, v3}, Lcom/b/a/b/e;->a(Lcom/b/a/b/a/e;)Lcom/b/a/b/e;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v2, v3}, Lcom/b/a/b/e;->a(Landroid/graphics/Bitmap$Config;)Lcom/b/a/b/e;

    move-result-object v2

    new-instance v3, Lcom/b/a/b/c/c;

    invoke-direct {v3}, Lcom/b/a/b/c/c;-><init>()V

    invoke-virtual {v2, v3}, Lcom/b/a/b/e;->a(Lcom/b/a/b/c/a;)Lcom/b/a/b/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/b/a/b/e;->d()Lcom/b/a/b/d;

    move-result-object v2

    iput-object v2, p0, Lcom/fiio/music/activity/LockScreenActivity;->r:Lcom/b/a/b/d;

    .line 250
    :cond_1
    :goto_0
    const-string v2, "song"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    iput-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->u:Lcom/fiio/music/entity/Song;

    const v0, 0x7f0b002a

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/LockScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->e:Landroid/widget/TextView;

    const v0, 0x7f0b0023

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/LockScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->g:Landroid/widget/ImageView;

    const v0, 0x7f0b0022

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/LockScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->f:Landroid/widget/RelativeLayout;

    const v0, 0x7f0b0025

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/LockScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->h:Landroid/widget/TextView;

    const v0, 0x7f0b0026

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/LockScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->i:Landroid/widget/TextView;

    const v0, 0x7f0b0024

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/LockScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->j:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->j:Landroid/widget/TextView;

    invoke-static {}, Lcom/fiio/music/activity/LockScreenActivity;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->u:Lcom/fiio/music/entity/Song;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->u:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->h:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fiio/music/activity/LockScreenActivity;->u:Lcom/fiio/music/entity/Song;

    invoke-virtual {v2}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->u:Lcom/fiio/music/entity/Song;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->u:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getArtist()Lcom/fiio/music/entity/Artist;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->u:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getArtist()Lcom/fiio/music/entity/Artist;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/entity/Artist;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->i:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fiio/music/activity/LockScreenActivity;->u:Lcom/fiio/music/entity/Song;

    invoke-virtual {v2}, Lcom/fiio/music/entity/Song;->getArtist()Lcom/fiio/music/entity/Artist;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fiio/music/entity/Artist;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->u:Lcom/fiio/music/entity/Song;

    invoke-direct {p0, v0}, Lcom/fiio/music/activity/LockScreenActivity;->c(Lcom/fiio/music/entity/Song;)V

    const v0, 0x7f0b002c

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/LockScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->k:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->k:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b002e

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/LockScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->l:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->l:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b002d

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/LockScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->m:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->m:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->m:Landroid/widget/ImageButton;

    const v2, 0x7f02019e

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    const v0, 0x7f0b002f

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/LockScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->n:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->n:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->u:Lcom/fiio/music/entity/Song;

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/LockScreenActivity;->a(Lcom/fiio/music/entity/Song;)V

    const v0, 0x7f0b0028

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/LockScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->C:Landroid/widget/TextView;

    const v0, 0x7f0b0029

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/LockScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->x:Landroid/view/ViewGroup;

    iget-boolean v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->E:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->x:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_2
    const v0, 0x7f0b0234

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/LockScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->y:Landroid/widget/ListView;

    new-instance v0, Lcom/fiio/music/adapter/LyricAdapter;

    invoke-virtual {p0}, Lcom/fiio/music/activity/LockScreenActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;->EXTRA_LARGE:Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;

    invoke-virtual {v3}, Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;->toLyricFontSize(Ljava/lang/String;)Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;

    move-result-object v3

    iget v4, p0, Lcom/fiio/music/activity/LockScreenActivity;->G:I

    invoke-direct {v0, v2, v3, v4, v6}, Lcom/fiio/music/adapter/LyricAdapter;-><init>(Landroid/content/Context;Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;IZ)V

    iput-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->z:Lcom/fiio/music/adapter/LyricAdapter;

    iget-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->y:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/fiio/music/activity/LockScreenActivity;->z:Lcom/fiio/music/adapter/LyricAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->y:Landroid/widget/ListView;

    const/high16 v2, 0x10a0000

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Lcom/fiio/music/h/e;

    invoke-direct {v0}, Lcom/fiio/music/h/e;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->A:Lcom/fiio/music/h/e;

    iget-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->A:Lcom/fiio/music/h/e;

    iget-object v2, p0, Lcom/fiio/music/activity/LockScreenActivity;->I:Lcom/fiio/music/h/g;

    invoke-virtual {v0, v2}, Lcom/fiio/music/h/e;->a(Lcom/fiio/music/h/g;)V

    iget-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->y:Landroid/widget/ListView;

    new-instance v2, Lcom/fiio/music/activity/dk;

    invoke-direct {v2, p0}, Lcom/fiio/music/activity/dk;-><init>(Lcom/fiio/music/activity/LockScreenActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 252
    const v0, 0x7f0b0021

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/LockScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/widget/LockScreenView;

    iput-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->d:Lcom/fiio/music/widget/LockScreenView;

    .line 254
    iget-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->d:Lcom/fiio/music/widget/LockScreenView;

    iget-object v2, p0, Lcom/fiio/music/activity/LockScreenActivity;->f:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/fiio/music/activity/LockScreenActivity;->w:Landroid/os/Handler;

    invoke-virtual {v0, v2, v1, v3}, Lcom/fiio/music/widget/LockScreenView;->a(Landroid/view/View;ILandroid/os/Handler;)V

    .line 256
    new-instance v0, Lcom/fiio/music/b/k;

    invoke-direct {v0, p0}, Lcom/fiio/music/b/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->v:Lcom/fiio/music/b/k;

    .line 258
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 259
    new-instance v1, Lcom/fiio/music/activity/dm;

    invoke-direct {v1, p0, v5}, Lcom/fiio/music/activity/dm;-><init>(Lcom/fiio/music/activity/LockScreenActivity;B)V

    iput-object v1, p0, Lcom/fiio/music/activity/LockScreenActivity;->p:Lcom/fiio/music/activity/dm;

    .line 260
    const-string v1, "com.fiio.music.player.brocast"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 261
    const-string v1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 262
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 263
    const-string v1, "com.fiio.music.player.brocast"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 264
    iget-object v1, p0, Lcom/fiio/music/activity/LockScreenActivity;->p:Lcom/fiio/music/activity/dm;

    invoke-virtual {p0, v1, v0}, Lcom/fiio/music/activity/LockScreenActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 266
    return-void

    .line 248
    :cond_3
    iget v2, p0, Lcom/fiio/music/activity/LockScreenActivity;->G:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    new-instance v2, Lcom/b/a/b/e;

    invoke-direct {v2}, Lcom/b/a/b/e;-><init>()V

    invoke-virtual {v2, v8}, Lcom/b/a/b/e;->b(I)Lcom/b/a/b/e;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/b/a/b/e;->c(I)Lcom/b/a/b/e;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/b/a/b/e;->a(Z)Lcom/b/a/b/e;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/b/a/b/e;->b(Z)Lcom/b/a/b/e;

    move-result-object v2

    sget-object v3, Lcom/b/a/b/a/e;->f:Lcom/b/a/b/a/e;

    invoke-virtual {v2, v3}, Lcom/b/a/b/e;->a(Lcom/b/a/b/a/e;)Lcom/b/a/b/e;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v2, v3}, Lcom/b/a/b/e;->a(Landroid/graphics/Bitmap$Config;)Lcom/b/a/b/e;

    move-result-object v2

    new-instance v3, Lcom/b/a/b/c/c;

    invoke-direct {v3}, Lcom/b/a/b/c/c;-><init>()V

    invoke-virtual {v2, v3}, Lcom/b/a/b/e;->a(Lcom/b/a/b/c/a;)Lcom/b/a/b/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/b/a/b/e;->d()Lcom/b/a/b/d;

    move-result-object v2

    iput-object v2, p0, Lcom/fiio/music/activity/LockScreenActivity;->r:Lcom/b/a/b/d;

    goto/16 :goto_0

    :cond_4
    iget v2, p0, Lcom/fiio/music/activity/LockScreenActivity;->G:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_5

    iget v2, p0, Lcom/fiio/music/activity/LockScreenActivity;->G:I

    if-ne v2, v4, :cond_1

    :cond_5
    new-instance v2, Lcom/b/a/b/e;

    invoke-direct {v2}, Lcom/b/a/b/e;-><init>()V

    const v3, 0x7f020424

    invoke-virtual {v2, v3}, Lcom/b/a/b/e;->b(I)Lcom/b/a/b/e;

    move-result-object v2

    const v3, 0x7f020424

    invoke-virtual {v2, v3}, Lcom/b/a/b/e;->c(I)Lcom/b/a/b/e;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/b/a/b/e;->a(Z)Lcom/b/a/b/e;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/b/a/b/e;->b(Z)Lcom/b/a/b/e;

    move-result-object v2

    sget-object v3, Lcom/b/a/b/a/e;->f:Lcom/b/a/b/a/e;

    invoke-virtual {v2, v3}, Lcom/b/a/b/e;->a(Lcom/b/a/b/a/e;)Lcom/b/a/b/e;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v2, v3}, Lcom/b/a/b/e;->a(Landroid/graphics/Bitmap$Config;)Lcom/b/a/b/e;

    move-result-object v2

    new-instance v3, Lcom/b/a/b/c/c;

    invoke-direct {v3}, Lcom/b/a/b/c/c;-><init>()V

    invoke-virtual {v2, v3}, Lcom/b/a/b/e;->a(Lcom/b/a/b/c/a;)Lcom/b/a/b/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/b/a/b/e;->d()Lcom/b/a/b/d;

    move-result-object v2

    iput-object v2, p0, Lcom/fiio/music/activity/LockScreenActivity;->r:Lcom/b/a/b/d;

    goto/16 :goto_0

    .line 250
    :cond_6
    iget-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->h:Landroid/widget/TextView;

    const v2, 0x7f0c00c1

    invoke-virtual {p0, v2}, Lcom/fiio/music/activity/LockScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->i:Landroid/widget/TextView;

    const v2, 0x7f0c00d4

    invoke-virtual {p0, v2}, Lcom/fiio/music/activity/LockScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->p:Lcom/fiio/music/activity/dm;

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/LockScreenActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 503
    iget-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->H:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/LockScreenActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 504
    iget-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->o:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->g()V

    .line 505
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 507
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    .line 589
    const-string v0, "zxy - - - -"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onkey   :   "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    const/16 v0, 0x55

    if-ne v0, p1, :cond_0

    .line 591
    invoke-virtual {p0}, Lcom/fiio/music/activity/LockScreenActivity;->c()V

    .line 593
    const/4 v0, 0x1

    .line 597
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 486
    iget-boolean v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->E:Z

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->u:Lcom/fiio/music/entity/Song;

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/LockScreenActivity;->b(Lcom/fiio/music/entity/Song;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fiio/music/activity/LockScreenActivity;->F:Z

    .line 490
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 491
    const-string v1, "com.fiio.music.player.brocast"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 492
    const-string v1, "com.fiio.music.playmainactivity.downloadcoversuccess"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 493
    const-string v1, "com.fiio.muisc.lockscreenlrc.writelrcsuccess"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 494
    iget-object v1, p0, Lcom/fiio/music/activity/LockScreenActivity;->H:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/fiio/music/activity/LockScreenActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 495
    sget-object v0, Lcom/fiio/music/activity/LockScreenActivity;->c:Ljava/lang/String;

    const-string v1, "registerReceiver finish"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 498
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 343
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 344
    const/4 v0, 0x1

    sput-boolean v0, Lcom/fiio/music/activity/LockScreenActivity;->b:Z

    .line 345
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 350
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 351
    const/4 v0, 0x0

    sput-boolean v0, Lcom/fiio/music/activity/LockScreenActivity;->b:Z

    .line 352
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 519
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 520
    if-eqz p1, :cond_0

    .line 521
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 522
    invoke-virtual {p0}, Lcom/fiio/music/activity/LockScreenActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 523
    const/high16 v1, 0xc000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 525
    invoke-virtual {p0}, Lcom/fiio/music/activity/LockScreenActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 526
    const/16 v2, 0x1702

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 529
    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 530
    invoke-virtual {v0, v3}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 531
    invoke-virtual {v0, v3}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 535
    :cond_0
    return-void
.end method
