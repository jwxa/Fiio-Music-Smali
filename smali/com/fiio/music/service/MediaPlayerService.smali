.class public Lcom/fiio/music/service/MediaPlayerService;
.super Landroid/app/Service;
.source "MediaPlayerService.java"


# static fields
.field private static final av:[I

.field private static final ba:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final v:Lcom/example/root/checkappmusic/FiioMediaPlayer;


# instance fields
.field private A:I

.field private B:Ljava/lang/String;

.field private C:Z

.field private D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private E:Lcom/fiio/music/b/g;

.field private F:Lcom/fiio/music/b/k;

.field private G:Lcom/fiio/music/b/h;

.field private H:Lcom/fiio/music/b/i;

.field private I:Ljava/lang/String;

.field private J:Z

.field private K:I

.field private L:Ljava/lang/String;

.field private M:Z

.field private N:Ljava/util/concurrent/ExecutorService;

.field private O:Z

.field private P:Z

.field private Q:Z

.field private R:Z

.field private S:Ljava/lang/String;

.field private T:Ljava/lang/String;

.field private U:Landroid/media/AudioManager;

.field private V:Lcom/b/a/b/d;

.field private W:Lcom/fiio/music/service/ac;

.field private X:Lcom/fiio/music/util/cm;

.field private final Y:Lcom/fiio/music/service/af;

.field private Z:Landroid/content/SharedPreferences;

.field a:Landroid/widget/Toast;

.field private aA:Lcom/example/root/checkappmusic/FiioMediaPlayer$OnPrepareOkListener;

.field private aB:Z

.field private aC:Z

.field private aD:Z

.field private aE:Z

.field private aF:Ljava/lang/String;

.field private aG:Lcom/fiio/music/entity/Album;

.field private aH:Lcom/fiio/music/entity/Artist;

.field private aI:Lcom/fiio/music/entity/SongStyle;

.field private aJ:Ljava/lang/String;

.field private aK:Ljava/lang/String;

.field private aL:Z

.field private aM:Lcom/fiio/music/service/ab;

.field private aN:J

.field private aO:I

.field private aP:I

.field private aQ:J

.field private aR:Lcom/fiio/music/entity/Song;

.field private aS:I

.field private aT:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private aU:Landroid/os/Handler;

.field private aV:Lcom/fiio/music/service/ad;

.field private aW:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/fiio/music/util/ActivityLocateUtils;",
            ">;"
        }
    .end annotation
.end field

.field private aX:J

.field private aY:Z

.field private final aZ:Lcom/fiio/music/service/a;

.field private aa:Landroid/content/SharedPreferences;

.field private ab:Z

.field private ac:Lcom/fiio/music/widget/MediaAppWidgetProvider;

.field private ad:Lcom/fiio/music/util/an;

.field private ae:Ljava/util/concurrent/ExecutorService;

.field private af:Lcom/fiio/music/util/cr;

.field private ag:Landroid/content/SharedPreferences;

.field private ah:Lcom/a/a/aq;

.field private ai:Lcom/fiio/music/b/a;

.field private aj:Lcom/fiio/music/util/av;

.field private ak:I

.field private al:I

.field private am:Lcom/fiio/music/b/b;

.field private an:Lcom/fiio/music/b/c;

.field private ao:Lcom/fiio/music/b/l;

.field private ap:I

.field private aq:Z

.field private ar:Z

.field private as:Z

.field private at:Landroid/content/SharedPreferences;

.field private au:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fiio/music/g/a;",
            ">;"
        }
    .end annotation
.end field

.field private aw:Lcom/example/root/checkappmusic/FiioMediaPlayer$OnCompletionListener;

.field private ax:Lcom/example/root/checkappmusic/FiioMediaPlayer$OnBufferingUpdateListener;

.field private ay:Lcom/example/root/checkappmusic/FiioMediaPlayer$OnErrorListener;

.field private az:Z

.field final b:Ljava/util/concurrent/Semaphore;

.field protected c:Lcom/b/a/b/f;

.field public d:Landroid/os/Handler;

.field e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field f:Lcom/fiio/music/util/bh;

.field g:Z

.field h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;"
        }
    .end annotation
.end field

.field i:Z

.field public j:Z

.field public k:I

.field public l:I

.field public m:Lcom/fiio/music/util/j;

.field public n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public o:Z

.field p:Z

.field q:Lorg/justcodecs/dsd/SacdDataFormat;

.field private r:Z

.field private final s:Ljava/lang/String;

.field private final t:Landroid/os/IBinder;

.field private u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;"
        }
    .end annotation
.end field

.field private w:Lcom/fiio/music/entity/Song;

.field private x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;"
        }
    .end annotation
.end field

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 149
    new-instance v0, Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-direct {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;-><init>()V

    sput-object v0, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    .line 214
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/fiio/music/service/MediaPlayerService;->av:[I

    .line 5816
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/fiio/music/service/MediaPlayerService;->ba:Ljava/util/ArrayList;

    return-void

    .line 214
    nop

    :array_0
    .array-data 4
        0x7f0204bf
        0x7f020651
        0x7f020653
        0x7f020652
    .end array-data
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 127
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 128
    iput-boolean v1, p0, Lcom/fiio/music/service/MediaPlayerService;->r:Z

    .line 134
    const-string v0, "com.fiio.music.widget.UPDATE_ALL"

    iput-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->s:Ljava/lang/String;

    .line 135
    new-instance v0, Lcom/fiio/music/service/z;

    invoke-direct {v0, p0}, Lcom/fiio/music/service/z;-><init>(Lcom/fiio/music/service/MediaPlayerService;)V

    iput-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->t:Landroid/os/IBinder;

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->u:Ljava/util/List;

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->x:Ljava/util/List;

    .line 156
    iput-boolean v1, p0, Lcom/fiio/music/service/MediaPlayerService;->C:Z

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->D:Ljava/util/List;

    .line 163
    iput-boolean v2, p0, Lcom/fiio/music/service/MediaPlayerService;->J:Z

    .line 164
    iput v1, p0, Lcom/fiio/music/service/MediaPlayerService;->K:I

    .line 166
    iput-boolean v1, p0, Lcom/fiio/music/service/MediaPlayerService;->M:Z

    .line 167
    iput-object v3, p0, Lcom/fiio/music/service/MediaPlayerService;->N:Ljava/util/concurrent/ExecutorService;

    .line 168
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->b:Ljava/util/concurrent/Semaphore;

    .line 169
    iput-boolean v1, p0, Lcom/fiio/music/service/MediaPlayerService;->O:Z

    .line 170
    iput-boolean v1, p0, Lcom/fiio/music/service/MediaPlayerService;->P:Z

    .line 171
    iput-boolean v1, p0, Lcom/fiio/music/service/MediaPlayerService;->Q:Z

    .line 172
    iput-boolean v1, p0, Lcom/fiio/music/service/MediaPlayerService;->R:Z

    .line 180
    new-instance v0, Lcom/fiio/music/service/af;

    invoke-direct {v0}, Lcom/fiio/music/service/af;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    .line 185
    invoke-static {}, Lcom/fiio/music/widget/MediaAppWidgetProvider;->a()Lcom/fiio/music/widget/MediaAppWidgetProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->ac:Lcom/fiio/music/widget/MediaAppWidgetProvider;

    .line 194
    iput v1, p0, Lcom/fiio/music/service/MediaPlayerService;->ak:I

    .line 195
    iput v1, p0, Lcom/fiio/music/service/MediaPlayerService;->al:I

    .line 205
    const/4 v0, -0x1

    iput v0, p0, Lcom/fiio/music/service/MediaPlayerService;->ap:I

    .line 206
    iput-boolean v1, p0, Lcom/fiio/music/service/MediaPlayerService;->aq:Z

    .line 207
    iput-boolean v1, p0, Lcom/fiio/music/service/MediaPlayerService;->ar:Z

    .line 208
    iput-boolean v2, p0, Lcom/fiio/music/service/MediaPlayerService;->as:Z

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->au:Ljava/util/ArrayList;

    .line 222
    new-instance v0, Lcom/fiio/music/service/m;

    invoke-direct {v0, p0}, Lcom/fiio/music/service/m;-><init>(Lcom/fiio/music/service/MediaPlayerService;)V

    iput-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->d:Landroid/os/Handler;

    .line 537
    new-instance v0, Lcom/fiio/music/service/o;

    invoke-direct {v0, p0}, Lcom/fiio/music/service/o;-><init>(Lcom/fiio/music/service/MediaPlayerService;)V

    iput-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->aw:Lcom/example/root/checkappmusic/FiioMediaPlayer$OnCompletionListener;

    .line 589
    new-instance v0, Lcom/fiio/music/service/p;

    invoke-direct {v0, p0}, Lcom/fiio/music/service/p;-><init>(Lcom/fiio/music/service/MediaPlayerService;)V

    iput-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->ax:Lcom/example/root/checkappmusic/FiioMediaPlayer$OnBufferingUpdateListener;

    .line 599
    new-instance v0, Lcom/fiio/music/service/q;

    invoke-direct {v0, p0}, Lcom/fiio/music/service/q;-><init>(Lcom/fiio/music/service/MediaPlayerService;)V

    iput-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->ay:Lcom/example/root/checkappmusic/FiioMediaPlayer$OnErrorListener;

    .line 615
    iput-boolean v2, p0, Lcom/fiio/music/service/MediaPlayerService;->az:Z

    .line 616
    new-instance v0, Lcom/fiio/music/service/r;

    invoke-direct {v0, p0}, Lcom/fiio/music/service/r;-><init>(Lcom/fiio/music/service/MediaPlayerService;)V

    iput-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->aA:Lcom/example/root/checkappmusic/FiioMediaPlayer$OnPrepareOkListener;

    .line 732
    iput-boolean v1, p0, Lcom/fiio/music/service/MediaPlayerService;->aC:Z

    .line 734
    iput-boolean v2, p0, Lcom/fiio/music/service/MediaPlayerService;->aD:Z

    .line 735
    iput-boolean v1, p0, Lcom/fiio/music/service/MediaPlayerService;->aE:Z

    .line 1244
    iput-object v3, p0, Lcom/fiio/music/service/MediaPlayerService;->aF:Ljava/lang/String;

    .line 1860
    iput-boolean v1, p0, Lcom/fiio/music/service/MediaPlayerService;->aL:Z

    .line 1948
    new-instance v0, Lcom/fiio/music/service/s;

    invoke-direct {v0, p0}, Lcom/fiio/music/service/s;-><init>(Lcom/fiio/music/service/MediaPlayerService;)V

    iput-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->aM:Lcom/fiio/music/service/ab;

    .line 2472
    iput-wide v4, p0, Lcom/fiio/music/service/MediaPlayerService;->aN:J

    .line 2506
    iput v1, p0, Lcom/fiio/music/service/MediaPlayerService;->aO:I

    .line 2892
    iput-wide v4, p0, Lcom/fiio/music/service/MediaPlayerService;->aQ:J

    .line 3039
    iput-object v3, p0, Lcom/fiio/music/service/MediaPlayerService;->aR:Lcom/fiio/music/entity/Song;

    .line 3237
    iput v1, p0, Lcom/fiio/music/service/MediaPlayerService;->aS:I

    .line 3638
    iput-boolean v2, p0, Lcom/fiio/music/service/MediaPlayerService;->g:Z

    .line 3641
    iput-boolean v2, p0, Lcom/fiio/music/service/MediaPlayerService;->i:Z

    .line 4962
    new-instance v0, Lcom/fiio/music/service/t;

    invoke-direct {v0, p0}, Lcom/fiio/music/service/t;-><init>(Lcom/fiio/music/service/MediaPlayerService;)V

    iput-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->aT:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 4968
    new-instance v0, Lcom/fiio/music/service/u;

    invoke-direct {v0, p0}, Lcom/fiio/music/service/u;-><init>(Lcom/fiio/music/service/MediaPlayerService;)V

    iput-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->aU:Landroid/os/Handler;

    .line 5021
    new-instance v0, Lcom/fiio/music/service/ad;

    .line 5022
    invoke-direct {v0, p0}, Lcom/fiio/music/service/ad;-><init>(Lcom/fiio/music/service/MediaPlayerService;)V

    iput-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->aV:Lcom/fiio/music/service/ad;

    .line 5117
    iput-boolean v1, p0, Lcom/fiio/music/service/MediaPlayerService;->j:Z

    .line 5402
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->n:Ljava/util/List;

    .line 5403
    iput-boolean v1, p0, Lcom/fiio/music/service/MediaPlayerService;->o:Z

    .line 5404
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->aW:Ljava/util/HashMap;

    .line 5440
    iput-boolean v1, p0, Lcom/fiio/music/service/MediaPlayerService;->p:Z

    .line 5457
    iput-wide v4, p0, Lcom/fiio/music/service/MediaPlayerService;->aX:J

    .line 5458
    iput-boolean v1, p0, Lcom/fiio/music/service/MediaPlayerService;->aY:Z

    .line 5751
    new-instance v0, Lcom/fiio/music/service/a;

    invoke-direct {v0}, Lcom/fiio/music/service/a;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->aZ:Lcom/fiio/music/service/a;

    .line 127
    return-void
.end method

.method static synthetic A(Lcom/fiio/music/service/MediaPlayerService;)J
    .locals 2

    .prologue
    .line 5457
    iget-wide v0, p0, Lcom/fiio/music/service/MediaPlayerService;->aX:J

    return-wide v0
.end method

.method static synthetic B(Lcom/fiio/music/service/MediaPlayerService;)V
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fiio/music/service/MediaPlayerService;->M:Z

    return-void
.end method

.method static synthetic C(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/service/ad;
    .locals 1

    .prologue
    .line 5021
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->aV:Lcom/fiio/music/service/ad;

    return-object v0
.end method

.method static synthetic D(Lcom/fiio/music/service/MediaPlayerService;)V
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fiio/music/service/MediaPlayerService;->O:Z

    return-void
.end method

.method static synthetic E(Lcom/fiio/music/service/MediaPlayerService;)V
    .locals 1

    .prologue
    .line 206
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fiio/music/service/MediaPlayerService;->aq:Z

    return-void
.end method

.method static synthetic F(Lcom/fiio/music/service/MediaPlayerService;)Z
    .locals 1

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/fiio/music/service/MediaPlayerService;->J:Z

    return v0
.end method

.method static synthetic G(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/util/an;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->ad:Lcom/fiio/music/util/an;

    return-object v0
.end method

.method static synthetic H(Lcom/fiio/music/service/MediaPlayerService;)I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/fiio/music/service/MediaPlayerService;->K:I

    return v0
.end method

.method static synthetic I(Lcom/fiio/music/service/MediaPlayerService;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1244
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->aF:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic J(Lcom/fiio/music/service/MediaPlayerService;)Z
    .locals 1

    .prologue
    .line 732
    iget-boolean v0, p0, Lcom/fiio/music/service/MediaPlayerService;->aC:Z

    return v0
.end method

.method static synthetic K(Lcom/fiio/music/service/MediaPlayerService;)Z
    .locals 1

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/fiio/music/service/MediaPlayerService;->Q:Z

    return v0
.end method

.method public static L()Z
    .locals 1

    .prologue
    .line 4935
    sget-object v0, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    if-eqz v0, :cond_0

    .line 4936
    sget-object v0, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->isPlaying()Z

    move-result v0

    .line 4938
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic L(Lcom/fiio/music/service/MediaPlayerService;)Z
    .locals 1

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/fiio/music/service/MediaPlayerService;->O:Z

    return v0
.end method

.method static synthetic M(Lcom/fiio/music/service/MediaPlayerService;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1127
    const-string v0, "xyz"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "playOver song="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    iput v0, p0, Lcom/fiio/music/service/MediaPlayerService;->z:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    invoke-virtual {v0}, Lcom/fiio/music/service/af;->f()V

    iput v3, p0, Lcom/fiio/music/service/MediaPlayerService;->K:I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.fiio.music.player.brocast"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "flag"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "currentPosition"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "duration"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "title"

    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "albumPic"

    invoke-direct {p0}, Lcom/fiio/music/service/MediaPlayerService;->ai()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "songName"

    invoke-direct {p0}, Lcom/fiio/music/service/MediaPlayerService;->ah()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "artistName"

    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "albumName"

    invoke-direct {p0}, Lcom/fiio/music/service/MediaPlayerService;->aj()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "song_id"

    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->h()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "songId"

    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->j()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "song"

    iget-object v2, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/fiio/music/service/MediaPlayerService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic N(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/b/l;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->ao:Lcom/fiio/music/b/l;

    return-object v0
.end method

.method static synthetic O(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/util/cr;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->af:Lcom/fiio/music/util/cr;

    return-object v0
.end method

.method static synthetic P(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/util/cm;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->X:Lcom/fiio/music/util/cm;

    return-object v0
.end method

.method static synthetic Q(Lcom/fiio/music/service/MediaPlayerService;)I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/fiio/music/service/MediaPlayerService;->A:I

    return v0
.end method

.method static synthetic R(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/b/c;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->an:Lcom/fiio/music/b/c;

    return-object v0
.end method

.method static synthetic S(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/b/k;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->F:Lcom/fiio/music/b/k;

    return-object v0
.end method

.method static synthetic T(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/b/b;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->am:Lcom/fiio/music/b/b;

    return-object v0
.end method

.method static synthetic U(Lcom/fiio/music/service/MediaPlayerService;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1408
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->aK:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic V(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/entity/SongStyle;
    .locals 1

    .prologue
    .line 1405
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->aI:Lcom/fiio/music/entity/SongStyle;

    return-object v0
.end method

.method static synthetic W(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/entity/Artist;
    .locals 1

    .prologue
    .line 1404
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->aH:Lcom/fiio/music/entity/Artist;

    return-object v0
.end method

.method public static X()Lcom/example/root/checkappmusic/FiioMediaPlayer;
    .locals 1

    .prologue
    .line 5683
    sget-object v0, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    return-object v0
.end method

.method static synthetic X(Lcom/fiio/music/service/MediaPlayerService;)V
    .locals 1

    .prologue
    .line 1860
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fiio/music/service/MediaPlayerService;->aL:Z

    return-void
.end method

.method static synthetic Y(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/entity/Song;
    .locals 1

    .prologue
    .line 3039
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->aR:Lcom/fiio/music/entity/Song;

    return-object v0
.end method

.method public static Y()V
    .locals 1

    .prologue
    .line 5706
    sget-object v0, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    if-eqz v0, :cond_0

    .line 5707
    sget-object v0, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->closeHandle()V

    .line 5708
    :cond_0
    return-void
.end method

.method static synthetic Z(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/service/a;
    .locals 1

    .prologue
    .line 5751
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->aZ:Lcom/fiio/music/service/a;

    return-object v0
.end method

.method public static a()Lcom/example/root/checkappmusic/FiioMediaPlayer;
    .locals 1

    .prologue
    .line 309
    sget-object v0, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    return-object v0
.end method

.method static synthetic a(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/b/h;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->G:Lcom/fiio/music/b/h;

    return-object v0
.end method

.method private a(IILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/16 v6, 0x64

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 5233
    iput p2, p0, Lcom/fiio/music/service/MediaPlayerService;->l:I

    .line 5234
    iput p1, p0, Lcom/fiio/music/service/MediaPlayerService;->k:I

    .line 5235
    iput-boolean v4, p0, Lcom/fiio/music/service/MediaPlayerService;->J:Z

    .line 5237
    sget-object v1, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v1, v4}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->setd2p_flag(Z)V

    .line 5238
    sget-object v1, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v1, v4}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->setBluetoothState(Z)V

    .line 5244
    sget-object v1, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v1}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->getCueFlag()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5245
    sget-object v1, Lcom/fiio/music/util/ap;->a:Ljava/lang/String;

    const-string v2, "\u81ea\u68c0 setGoGaplessPlayBack false"

    invoke-static {v1, v2}, Lcom/fiio/music/util/aw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5246
    sget-object v1, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v1, v4}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->setGoGaplessPlayBack(Z)V

    .line 5247
    sget-object v1, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v1}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->isSacdFlag()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5250
    sget-object v1, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v1}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->closeHandle()V

    .line 5252
    :cond_0
    sget-object v1, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v1, v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->setNextSong(Lcom/fiio/music/entity/Song;)V

    .line 5261
    :cond_1
    sget-object v1, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v1}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v1}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->isAutoOnComplete()Z

    move-result v1

    if-nez v1, :cond_2

    .line 5262
    sget-object v1, Lcom/fiio/music/util/ap;->a:Ljava/lang/String;

    const-string v2, "CUE --- _cueplayer mFiioMediaPlayer stop play"

    invoke-static {v1, v2}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 5263
    sget-object v1, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v1}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->stopPlay()V

    .line 5269
    :cond_2
    sget-object v1, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v1, v4}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->setSacdFlag(Z)V

    .line 5270
    iput-boolean v5, p0, Lcom/fiio/music/service/MediaPlayerService;->j:Z

    .line 5271
    iput-boolean v4, p0, Lcom/fiio/music/service/MediaPlayerService;->p:Z

    .line 5272
    sget-object v1, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v1, v5}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->setCueFlag(Z)V

    .line 5273
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    if-eqz v1, :cond_8

    .line 5274
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    .line 5337
    :goto_0
    return-void

    .line 5279
    :cond_3
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    if-eqz v1, :cond_4

    .line 5280
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/fiio/music/util/a;->a(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/service/MediaPlayerService;->c:Lcom/b/a/b/f;

    invoke-static {v0, v1, v2, v3}, Lcom/fiio/music/util/h;->b(Lcom/fiio/music/entity/Song;ILandroid/content/Context;Lcom/b/a/b/f;)Ljava/lang/String;

    move-result-object v0

    .line 5285
    :cond_4
    if-nez v0, :cond_5

    .line 5286
    invoke-static {}, Lcom/fiio/music/util/h;->b()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 5287
    const-string v0, "drawable://2130837972"

    .line 5294
    :cond_5
    :goto_1
    new-instance v1, Lcom/b/a/b/a/f;

    invoke-direct {v1, v6, v6}, Lcom/b/a/b/a/f;-><init>(II)V

    .line 5295
    iget-object v2, p0, Lcom/fiio/music/service/MediaPlayerService;->c:Lcom/b/a/b/f;

    iget-object v3, p0, Lcom/fiio/music/service/MediaPlayerService;->V:Lcom/b/a/b/d;

    invoke-virtual {v2, v0, v1, v3}, Lcom/b/a/b/f;->a(Ljava/lang/String;Lcom/b/a/b/a/f;Lcom/b/a/b/d;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 5297
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->U:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/fiio/music/service/MediaPlayerService;->aT:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3, v5}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 5299
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->N:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/fiio/music/service/aa;

    invoke-direct {v2, p0, v4}, Lcom/fiio/music/service/aa;-><init>(Lcom/fiio/music/service/MediaPlayerService;B)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 5304
    iget v1, p0, Lcom/fiio/music/service/MediaPlayerService;->A:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_b

    .line 5305
    invoke-static {}, Lcom/fiio/music/service/MediaPlayerService;->ao()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 5307
    sget-object v1, Lcom/fiio/music/util/ap;->a:Ljava/lang/String;

    const-string v2, "CUE --- \u5f00\u59cb\u64ad\u653e\u540e ---- \u65e0\u7f1d\u5f00\u542f --- autoComplete : false"

    invoke-static {v1, v2}, Lcom/fiio/music/util/aw;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5308
    new-instance v1, Lcom/fiio/music/service/y;

    invoke-direct {v1, p0}, Lcom/fiio/music/service/y;-><init>(Lcom/fiio/music/service/MediaPlayerService;)V

    .line 5309
    iget-object v2, p0, Lcom/fiio/music/service/MediaPlayerService;->N:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 5321
    :goto_2
    iget v1, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_6

    iget v1, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_6

    iget v1, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_6

    .line 5323
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->d:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5326
    :cond_6
    if-nez p4, :cond_7

    const v1, 0x7f0c00d4

    invoke-virtual {p0, v1}, Lcom/fiio/music/service/MediaPlayerService;->getString(I)Ljava/lang/String;

    move-result-object p4

    .line 5327
    :cond_7
    invoke-virtual {p0, v0, p4, p3}, Lcom/fiio/music/service/MediaPlayerService;->b(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    .line 5328
    invoke-direct {p0, p3, p2, p4}, Lcom/fiio/music/service/MediaPlayerService;->b(Ljava/lang/String;ILjava/lang/String;)V

    .line 5330
    invoke-direct {p0}, Lcom/fiio/music/service/MediaPlayerService;->am()V

    .line 5332
    :cond_8
    const-string v0, "memory"

    invoke-virtual {p0, v0, v4}, Lcom/fiio/music/service/MediaPlayerService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 5333
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 5334
    const-string v1, "cueTrackNumMemory"

    iget-object v2, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v2}, Lcom/fiio/music/entity/Song;->getTrack()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 5335
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 5336
    const-string v0, "long"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "track: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v2}, Lcom/fiio/music/entity/Song;->getTrack()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5289
    :cond_9
    const-string v0, "drawable://2130838563"

    goto/16 :goto_1

    .line 5311
    :cond_a
    sget-object v1, Lcom/fiio/music/util/ap;->a:Ljava/lang/String;

    const-string v2, "CUE --- \u5f00\u59cb\u64ad\u653e\u540e ---- \u65e0\u7f1d\u5173\u95ed --- autoComplete : true"

    invoke-static {v1, v2}, Lcom/fiio/music/util/aw;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5312
    sget-object v1, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v1, v4}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->setGoGaplessPlayBack(Z)V

    goto :goto_2

    .line 5315
    :cond_b
    sget-object v1, Lcom/fiio/music/util/ap;->a:Ljava/lang/String;

    const-string v2, "\u5355\u66f2\u5faa\u73af,\u65e0\u7f1d\u8fc7\u6ee4"

    invoke-static {v1, v2}, Lcom/fiio/music/util/aw;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5316
    sget-object v1, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v1, v4}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->setGoGaplessPlayBack(Z)V

    goto :goto_2
.end method

.method private a(IZ)V
    .locals 6

    .prologue
    const/16 v5, 0x64

    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 2277
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    invoke-virtual {v1}, Lcom/fiio/music/service/af;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2278
    const-string v0, "\u64ad\u653e\u5217\u8868\u4e3a\u7a7a..."

    invoke-static {v0}, Lcom/fiio/music/util/aw;->a(Ljava/lang/String;)V

    .line 2467
    :cond_0
    :goto_0
    return-void

    .line 2281
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 2440
    :cond_2
    :goto_1
    if-eqz p2, :cond_b

    .line 2447
    invoke-direct {p0}, Lcom/fiio/music/service/MediaPlayerService;->ak()V

    .line 2452
    :goto_2
    invoke-direct {p0, v4}, Lcom/fiio/music/service/MediaPlayerService;->g(I)V

    .line 2454
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2456
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/fiio/music/util/a;->a(Landroid/content/Context;)I

    move-result v1

    .line 2458
    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/service/MediaPlayerService;->c:Lcom/b/a/b/f;

    .line 2457
    invoke-static {v0, v1, v2, v3}, Lcom/fiio/music/util/h;->b(Lcom/fiio/music/entity/Song;ILandroid/content/Context;Lcom/b/a/b/f;)Ljava/lang/String;

    move-result-object v0

    .line 2460
    new-instance v1, Lcom/b/a/b/a/f;

    invoke-direct {v1, v5, v5}, Lcom/b/a/b/a/f;-><init>(II)V

    .line 2461
    iget-object v2, p0, Lcom/fiio/music/service/MediaPlayerService;->c:Lcom/b/a/b/f;

    .line 2462
    iget-object v3, p0, Lcom/fiio/music/service/MediaPlayerService;->V:Lcom/b/a/b/d;

    .line 2461
    invoke-virtual {v2, v0, v1, v3}, Lcom/b/a/b/f;->a(Ljava/lang/String;Lcom/b/a/b/a/f;Lcom/b/a/b/d;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2463
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getArtist()Lcom/fiio/music/entity/Artist;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2464
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getArtist()Lcom/fiio/music/entity/Artist;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/entity/Artist;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2465
    iget-object v2, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v2}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v2

    .line 2464
    invoke-virtual {p0, v0, v1, v2}, Lcom/fiio/music/service/MediaPlayerService;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2283
    :pswitch_0
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    iget v2, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    invoke-virtual {v1, v2}, Lcom/fiio/music/service/af;->b(I)V

    .line 2284
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    iget v2, p0, Lcom/fiio/music/service/MediaPlayerService;->A:I

    iget-object v3, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1, v2, v3}, Lcom/fiio/music/service/af;->a(ILcom/fiio/music/entity/Song;)Lcom/fiio/music/entity/Song;

    move-result-object v1

    .line 2286
    iget-object v2, p0, Lcom/fiio/music/service/MediaPlayerService;->ad:Lcom/fiio/music/util/an;

    invoke-virtual {v2}, Lcom/fiio/music/util/an;->c()Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez v1, :cond_3

    iget v2, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 2287
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->aM:Lcom/fiio/music/service/ab;

    invoke-interface {v1}, Lcom/fiio/music/service/ab;->a()V

    .line 2288
    iget v1, p0, Lcom/fiio/music/service/MediaPlayerService;->A:I

    packed-switch v1, :pswitch_data_1

    .line 2297
    const-string v1, "zengxy___"

    const-string v2, "EnterJumpRunnable "

    invoke-static {v1, v2}, Lcom/fiio/music/util/aw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2298
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->ae:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/fiio/music/service/x;

    invoke-direct {v2, p0, v0}, Lcom/fiio/music/service/x;-><init>(Lcom/fiio/music/service/MediaPlayerService;B)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 2290
    :pswitch_1
    const-string v1, "zengxy---X5"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isSizeForOneShuffle +"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    invoke-virtual {v3}, Lcom/fiio/music/service/af;->g()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fiio/music/util/aw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2291
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    invoke-virtual {v1}, Lcom/fiio/music/service/af;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2292
    const-string v1, "zengxy___"

    const-string v2, "EnterJumpRunnable "

    invoke-static {v1, v2}, Lcom/fiio/music/util/aw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2293
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->ae:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/fiio/music/service/x;

    invoke-direct {v2, p0, v0}, Lcom/fiio/music/service/x;-><init>(Lcom/fiio/music/service/MediaPlayerService;B)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 2303
    :cond_3
    iput-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    .line 2304
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    if-nez v1, :cond_4

    .line 2305
    const-string v1, "zengxy______"

    const-string v2, "song = nextsong in doplayer() --song is null "

    invoke-static {v1, v2}, Lcom/fiio/music/util/aw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2307
    :cond_4
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2308
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->aM:Lcom/fiio/music/service/ab;

    invoke-interface {v0}, Lcom/fiio/music/service/ab;->a()V

    goto/16 :goto_1

    .line 2310
    :cond_5
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    if-nez v1, :cond_6

    iget v1, p0, Lcom/fiio/music/service/MediaPlayerService;->A:I

    if-nez v1, :cond_6

    .line 2311
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->aM:Lcom/fiio/music/service/ab;

    invoke-interface {v0}, Lcom/fiio/music/service/ab;->a()V

    .line 2312
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/fiio/music/service/MediaPlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 2313
    invoke-virtual {v0, v4}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0

    .line 2318
    :cond_6
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    iget v2, p0, Lcom/fiio/music/service/MediaPlayerService;->A:I

    iget-object v3, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1, v2, v3}, Lcom/fiio/music/service/af;->b(ILcom/fiio/music/entity/Song;)Lcom/fiio/music/entity/Song;

    move-result-object v1

    iput-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    .line 2320
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2321
    add-int/lit8 v0, v0, 0x1

    .line 2325
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    invoke-virtual {v1}, Lcom/fiio/music/service/af;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_6

    goto/16 :goto_1

    .line 2393
    :pswitch_2
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    iget v2, p0, Lcom/fiio/music/service/MediaPlayerService;->A:I

    iget-object v3, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1, v2, v3}, Lcom/fiio/music/service/af;->b(ILcom/fiio/music/entity/Song;)Lcom/fiio/music/entity/Song;

    move-result-object v1

    iput-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    .line 2394
    iget v1, p0, Lcom/fiio/music/service/MediaPlayerService;->A:I

    if-ne v1, v4, :cond_7

    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->ad:Lcom/fiio/music/util/an;

    invoke-virtual {v1}, Lcom/fiio/music/util/an;->c()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    invoke-virtual {v1}, Lcom/fiio/music/service/af;->g()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2395
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->aM:Lcom/fiio/music/service/ab;

    invoke-interface {v0}, Lcom/fiio/music/service/ab;->a()V

    goto/16 :goto_0

    .line 2399
    :cond_7
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2402
    :cond_8
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    iget v2, p0, Lcom/fiio/music/service/MediaPlayerService;->A:I

    iget-object v3, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1, v2, v3}, Lcom/fiio/music/service/af;->b(ILcom/fiio/music/entity/Song;)Lcom/fiio/music/entity/Song;

    move-result-object v1

    iput-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    .line 2403
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->aM:Lcom/fiio/music/service/ab;

    invoke-interface {v1}, Lcom/fiio/music/service/ab;->a()V

    .line 2404
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2405
    add-int/lit8 v0, v0, 0x1

    .line 2409
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    invoke-virtual {v1}, Lcom/fiio/music/service/af;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_8

    goto/16 :goto_1

    .line 2418
    :pswitch_3
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    iget v2, p0, Lcom/fiio/music/service/MediaPlayerService;->A:I

    iget-object v3, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1, v2, v3}, Lcom/fiio/music/service/af;->d(ILcom/fiio/music/entity/Song;)Lcom/fiio/music/entity/Song;

    move-result-object v1

    iput-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    .line 2419
    iget v1, p0, Lcom/fiio/music/service/MediaPlayerService;->A:I

    if-ne v1, v4, :cond_9

    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->ad:Lcom/fiio/music/util/an;

    invoke-virtual {v1}, Lcom/fiio/music/util/an;->c()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    invoke-virtual {v1}, Lcom/fiio/music/service/af;->g()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2420
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->aM:Lcom/fiio/music/service/ab;

    invoke-interface {v0}, Lcom/fiio/music/service/ab;->a()V

    goto/16 :goto_0

    .line 2424
    :cond_9
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2428
    :cond_a
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    iget v2, p0, Lcom/fiio/music/service/MediaPlayerService;->A:I

    iget-object v3, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1, v2, v3}, Lcom/fiio/music/service/af;->d(ILcom/fiio/music/entity/Song;)Lcom/fiio/music/entity/Song;

    move-result-object v1

    iput-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    .line 2429
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->aM:Lcom/fiio/music/service/ab;

    invoke-interface {v1}, Lcom/fiio/music/service/ab;->a()V

    .line 2430
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2431
    add-int/lit8 v0, v0, 0x1

    .line 2435
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    invoke-virtual {v1}, Lcom/fiio/music/service/af;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_a

    goto/16 :goto_1

    .line 2449
    :cond_b
    invoke-direct {p0}, Lcom/fiio/music/service/MediaPlayerService;->al()V

    goto/16 :goto_2

    .line 2281
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 2288
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/fiio/music/service/MediaPlayerService;I)V
    .locals 0

    .prologue
    .line 153
    iput p1, p0, Lcom/fiio/music/service/MediaPlayerService;->z:I

    return-void
.end method

.method static synthetic a(Lcom/fiio/music/service/MediaPlayerService;Lcom/fiio/music/entity/Album;)V
    .locals 0

    .prologue
    .line 1403
    iput-object p1, p0, Lcom/fiio/music/service/MediaPlayerService;->aG:Lcom/fiio/music/entity/Album;

    return-void
.end method

.method static synthetic a(Lcom/fiio/music/service/MediaPlayerService;Lcom/fiio/music/entity/Artist;)V
    .locals 0

    .prologue
    .line 1404
    iput-object p1, p0, Lcom/fiio/music/service/MediaPlayerService;->aH:Lcom/fiio/music/entity/Artist;

    return-void
.end method

.method static synthetic a(Lcom/fiio/music/service/MediaPlayerService;Lcom/fiio/music/entity/Song;)V
    .locals 0

    .prologue
    .line 3039
    iput-object p1, p0, Lcom/fiio/music/service/MediaPlayerService;->aR:Lcom/fiio/music/entity/Song;

    return-void
.end method

.method static synthetic a(Lcom/fiio/music/service/MediaPlayerService;Lcom/fiio/music/entity/SongStyle;)V
    .locals 0

    .prologue
    .line 1405
    iput-object p1, p0, Lcom/fiio/music/service/MediaPlayerService;->aI:Lcom/fiio/music/entity/SongStyle;

    return-void
.end method

.method static synthetic a(Lcom/fiio/music/service/MediaPlayerService;Lcom/fiio/music/util/cm;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/fiio/music/service/MediaPlayerService;->X:Lcom/fiio/music/util/cm;

    return-void
.end method

.method static synthetic a(Lcom/fiio/music/service/MediaPlayerService;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1244
    iput-object p1, p0, Lcom/fiio/music/service/MediaPlayerService;->aF:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/fiio/music/service/MediaPlayerService;Ljava/lang/String;IIILjava/lang/String;)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 1165
    const-string v0, "kuishe"

    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->getApplicationContext()Landroid/content/Context;

    invoke-virtual {p0, v0, v6}, Lcom/fiio/music/service/MediaPlayerService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "enable_viper"

    invoke-interface {v0, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fiio/music/service/MediaPlayerService;->r:Z

    iget-boolean v0, p0, Lcom/fiio/music/service/MediaPlayerService;->r:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    iget-boolean v2, p0, Lcom/fiio/music/service/MediaPlayerService;->r:Z

    invoke-virtual {v0, v2}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->setFlag_viper(Z)V

    :goto_0
    if-eqz p5, :cond_4

    const-string v0, "1"

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Mono"

    invoke-virtual {p5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    move v0, v1

    :goto_1
    const-string v2, "fiio.start.viper_sound"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/16 v2, 0x20

    invoke-static {p3, v0, v2}, Lcom/audlabs/vipereffect/ViPEREffect;->setViPERFormat(III)Z

    move-result v0

    :goto_2
    sget-object v2, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v2, v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->setSmpViperSupport(Z)V

    if-eqz p2, :cond_1

    invoke-static {p2}, Lcom/fiio/music/activity/FiiOMusicApplication;->a(I)V

    :cond_1
    invoke-static {p0}, Lcom/fiio/music/util/h;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v0, v1}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->setBluetoothState(Z)V

    :goto_3
    const-string v0, "xyz-MediaPlayerService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5f53\u524d\u6b4c\u66f2\uff0c="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/fiio/music/service/MediaPlayerService;->p:Z

    if-nez v0, :cond_6

    sget-object v0, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->O()Lcom/fiio/music/entity/Song;

    move-result-object v7

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->setDataSource(Ljava/lang/String;IIILjava/lang/String;ZLcom/fiio/music/entity/Song;)V

    :cond_2
    :goto_4
    return-void

    :cond_3
    sget-object v0, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v0, v6}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->setFlag_viper(Z)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x2

    goto :goto_1

    :cond_5
    sget-object v0, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v0, v6}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->setBluetoothState(Z)V

    goto :goto_3

    :cond_6
    iget-boolean v0, p0, Lcom/fiio/music/service/MediaPlayerService;->p:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    const/4 v7, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->setDataSource(Ljava/lang/String;IIILjava/lang/String;ZLcom/fiio/music/entity/Song;)V

    goto :goto_4

    :cond_7
    move v0, v6

    goto :goto_2
.end method

.method static synthetic a(Lcom/fiio/music/service/MediaPlayerService;Ljava/util/List;II)V
    .locals 0

    .prologue
    .line 1862
    invoke-direct {p0, p1, p2, p3}, Lcom/fiio/music/service/MediaPlayerService;->a(Ljava/util/List;II)V

    return-void
.end method

.method static synthetic a(Lcom/fiio/music/service/MediaPlayerService;Z)V
    .locals 0

    .prologue
    .line 163
    iput-boolean p1, p0, Lcom/fiio/music/service/MediaPlayerService;->J:Z

    return-void
.end method

.method private a(Ljava/util/List;II)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 1863
    iget-boolean v0, p0, Lcom/fiio/music/service/MediaPlayerService;->aL:Z

    if-eqz v0, :cond_1

    .line 1894
    :cond_0
    :goto_0
    return-void

    .line 1866
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 1869
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->ad:Lcom/fiio/music/util/an;

    .line 1870
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1869
    invoke-static {v0}, Lcom/fiio/music/util/an;->a(Ljava/lang/String;)Z

    move-result v0

    .line 1871
    const-string v2, "zengxy - -- "

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isHavenSong :  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fiio/music/util/aw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1872
    const-string v2, "zengxy - -- "

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getFolder :  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fiio/music/util/aw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1873
    if-eqz v0, :cond_2

    .line 1874
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1875
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1876
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->ad:Lcom/fiio/music/util/an;

    invoke-virtual {v0, v2}, Lcom/fiio/music/util/an;->a(Ljava/util/List;)V

    .line 1877
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fiio/music/service/MediaPlayerService;->aL:Z

    goto :goto_0

    .line 1880
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->ad:Lcom/fiio/music/util/an;

    .line 1881
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1880
    invoke-static {v0, p2, p3}, Lcom/fiio/music/util/an;->a(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    .line 1882
    const-string v2, "zengxy - -- "

    const-string v3, "getFolder :  come here "

    invoke-static {v2, v3}, Lcom/fiio/music/util/aw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1883
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_3

    .line 1884
    const-string v2, "zengxy - -- "

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getFolder :  folders1 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1887
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1886
    invoke-static {v2, v3}, Lcom/fiio/music/util/aw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1888
    invoke-direct {p0, v0, p2, p3}, Lcom/fiio/music/service/MediaPlayerService;->a(Ljava/util/List;II)V

    .line 1866
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1
.end method

.method static synthetic aa(Lcom/fiio/music/service/MediaPlayerService;)V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v3, 0x0

    .line 3928
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->ad:Lcom/fiio/music/util/an;

    invoke-virtual {v0}, Lcom/fiio/music/util/an;->d()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->f:Lcom/fiio/music/util/bh;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/fiio/music/service/MediaPlayerService;->a(Ljava/io/File;Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->h:Ljava/util/List;

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->h:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->h:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    iput-boolean v3, p0, Lcom/fiio/music/service/MediaPlayerService;->Q:Z

    const/4 v0, 0x3

    iput v0, p0, Lcom/fiio/music/service/MediaPlayerService;->z:I

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->h:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->h:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getTrack()I

    move-result v2

    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/fiio/music/util/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".cue"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

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

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    if-ltz v2, :cond_1

    new-instance v3, Lcom/fiio/music/util/j;

    invoke-direct {v3, v1, v0, v2, p0}, Lcom/fiio/music/util/j;-><init>(Ljava/io/File;Lcom/fiio/music/entity/Song;ILandroid/content/Context;)V

    invoke-virtual {v3}, Lcom/fiio/music/util/j;->b()Lcom/fiio/music/entity/Song;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-object v3, p0, Lcom/fiio/music/service/MediaPlayerService;->m:Lcom/fiio/music/util/j;

    invoke-virtual {v3}, Lcom/fiio/music/util/j;->b()Lcom/fiio/music/entity/Song;

    move-result-object v0

    invoke-virtual {v3}, Lcom/fiio/music/util/j;->e()[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/service/MediaPlayerService;->h:Ljava/util/List;

    invoke-virtual {p0, v0, v1, v2, v5}, Lcom/fiio/music/service/MediaPlayerService;->a(Lcom/fiio/music/entity/Song;[Ljava/lang/String;Ljava/util/List;I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->h:Ljava/util/List;

    invoke-virtual {p0, v2, v5, v1, v0}, Lcom/fiio/music/service/MediaPlayerService;->a(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)V

    goto :goto_0
.end method

.method public static aa()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 5715
    invoke-static {}, Lcom/fiio/music/service/w;->a()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic ab(Lcom/fiio/music/service/MediaPlayerService;)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x3

    .line 3845
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->aG:Lcom/fiio/music/entity/Album;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->am:Lcom/fiio/music/b/b;

    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->aG:Lcom/fiio/music/entity/Album;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Album;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/b/b;->c(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->h:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->ad:Lcom/fiio/music/util/an;

    invoke-virtual {v0}, Lcom/fiio/music/util/an;->f()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->h:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->h:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fiio/music/entity/Song;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getCue_startTime()I

    move-result v2

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getCue_duration()I

    move-result v3

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getArtist()Lcom/fiio/music/entity/Artist;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/entity/Artist;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/fiio/music/service/MediaPlayerService;->h:Ljava/util/List;

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/fiio/music/service/MediaPlayerService;->a(Lcom/fiio/music/entity/Song;IILjava/lang/String;Ljava/lang/String;Ljava/util/List;I)V

    const-string v0, "memory"

    invoke-virtual {p0, v0, v9}, Lcom/fiio/music/service/MediaPlayerService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "cueTrackNumMemory"

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getTrack()I

    move-result v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iput-object v8, p0, Lcom/fiio/music/service/MediaPlayerService;->I:Ljava/lang/String;

    :cond_1
    :goto_1
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->F:Lcom/fiio/music/b/k;

    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->aJ:Ljava/lang/String;

    invoke-virtual {v0, v8, v1}, Lcom/fiio/music/b/k;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->h:Ljava/util/List;

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->F:Lcom/fiio/music/b/k;

    invoke-virtual {v0, v8}, Lcom/fiio/music/b/k;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->h:Ljava/util/List;

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->F:Lcom/fiio/music/b/k;

    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->aK:Ljava/lang/String;

    invoke-virtual {v0, v8, v1}, Lcom/fiio/music/b/k;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->h:Ljava/util/List;

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->isSacd()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->h:Ljava/util/List;

    invoke-virtual {p0, v1, v7, v0}, Lcom/fiio/music/service/MediaPlayerService;->b(Lcom/fiio/music/entity/Song;ILjava/util/List;)V

    iput-object v8, p0, Lcom/fiio/music/service/MediaPlayerService;->I:Ljava/lang/String;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->h:Ljava/util/List;

    invoke-virtual {p0, v1, v7, v8, v0}, Lcom/fiio/music/service/MediaPlayerService;->a(Lcom/fiio/music/entity/Song;ILjava/lang/String;Ljava/util/List;)V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x16 -> :sswitch_2
        0x21 -> :sswitch_1
        0x2c -> :sswitch_0
    .end sparse-switch
.end method

.method static synthetic ac(Lcom/fiio/music/service/MediaPlayerService;)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x2

    .line 3757
    const-string v0, "zxy - - - "

    const-string v1, " come here :    "

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->aH:Lcom/fiio/music/entity/Artist;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->an:Lcom/fiio/music/b/c;

    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->aH:Lcom/fiio/music/entity/Artist;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Artist;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/b/c;->c(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->h:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->af:Lcom/fiio/music/util/cr;

    const-string v1, "tabBfmFir"

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    move-result v1

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->af:Lcom/fiio/music/util/cr;

    const-string v2, "sortBFm"

    invoke-virtual {v0, v2}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    move-result v2

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->h:Ljava/util/List;

    sget v3, Lcom/fiio/music/util/cn;->e:I

    if-ne v1, v3, :cond_4

    sget v0, Lcom/fiio/music/util/cn;->a:I

    if-ne v2, v0, :cond_3

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->F:Lcom/fiio/music/b/k;

    const-string v1, " ASC"

    invoke-virtual {v0, v8, v1}, Lcom/fiio/music/b/k;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :cond_1
    :goto_0
    iput-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->h:Ljava/util/List;

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->h:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->h:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fiio/music/entity/Song;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getCue_startTime()I

    move-result v2

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getCue_duration()I

    move-result v3

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getArtist()Lcom/fiio/music/entity/Artist;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/entity/Artist;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/fiio/music/service/MediaPlayerService;->h:Ljava/util/List;

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/fiio/music/service/MediaPlayerService;->a(Lcom/fiio/music/entity/Song;IILjava/lang/String;Ljava/lang/String;Ljava/util/List;I)V

    const-string v0, "memory"

    invoke-virtual {p0, v0, v9}, Lcom/fiio/music/service/MediaPlayerService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "cueTrackNumMemory"

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getTrack()I

    move-result v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iput-object v8, p0, Lcom/fiio/music/service/MediaPlayerService;->I:Ljava/lang/String;

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->F:Lcom/fiio/music/b/k;

    const-string v1, " DESC"

    invoke-virtual {v0, v8, v1}, Lcom/fiio/music/b/k;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_4
    sget v3, Lcom/fiio/music/util/cn;->d:I

    if-ne v1, v3, :cond_6

    sget v0, Lcom/fiio/music/util/cn;->a:I

    if-ne v2, v0, :cond_5

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->F:Lcom/fiio/music/b/k;

    const-string v1, " ASC"

    invoke-virtual {v0, v8, v1}, Lcom/fiio/music/b/k;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->F:Lcom/fiio/music/b/k;

    const-string v1, " DESC"

    invoke-virtual {v0, v8, v1}, Lcom/fiio/music/b/k;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_6
    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->F:Lcom/fiio/music/b/k;

    const-string v1, " ASC"

    invoke-virtual {v0, v8, v1}, Lcom/fiio/music/b/k;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->isSacd()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->h:Ljava/util/List;

    invoke-virtual {p0, v1, v7, v0}, Lcom/fiio/music/service/MediaPlayerService;->b(Lcom/fiio/music/entity/Song;ILjava/util/List;)V

    iput-object v8, p0, Lcom/fiio/music/service/MediaPlayerService;->I:Ljava/lang/String;

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->h:Ljava/util/List;

    invoke-virtual {p0, v1, v7, v8, v0}, Lcom/fiio/music/service/MediaPlayerService;->a(Lcom/fiio/music/entity/Song;ILjava/lang/String;Ljava/util/List;)V

    goto :goto_1
.end method

.method static synthetic ad(Lcom/fiio/music/service/MediaPlayerService;)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/16 v7, 0xa

    .line 3693
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->aI:Lcom/fiio/music/entity/SongStyle;

    if-eqz v0, :cond_1

    const-string v0, "zxy - - - "

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " nextArtistInOut :    "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fiio/music/service/MediaPlayerService;->aI:Lcom/fiio/music/entity/SongStyle;

    invoke-virtual {v2}, Lcom/fiio/music/entity/SongStyle;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->ao:Lcom/fiio/music/b/l;

    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->aI:Lcom/fiio/music/entity/SongStyle;

    invoke-virtual {v1}, Lcom/fiio/music/entity/SongStyle;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/b/l;->e(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->h:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->F:Lcom/fiio/music/b/k;

    invoke-virtual {v0, v8}, Lcom/fiio/music/b/k;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->h:Ljava/util/List;

    sget v0, Lcom/fiio/music/util/cn;->d:I

    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->af:Lcom/fiio/music/util/cr;

    const-string v2, "sortDFm"

    invoke-virtual {v1, v2}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/fiio/music/service/MediaPlayerService;->h:Ljava/util/List;

    invoke-static {v2, v1, v0}, Lcom/fiio/music/util/cn;->a(Ljava/util/List;II)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->h:Ljava/util/List;

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->h:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->h:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fiio/music/entity/Song;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getCue_startTime()I

    move-result v2

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getCue_duration()I

    move-result v3

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getArtist()Lcom/fiio/music/entity/Artist;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/entity/Artist;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/fiio/music/service/MediaPlayerService;->h:Ljava/util/List;

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/fiio/music/service/MediaPlayerService;->a(Lcom/fiio/music/entity/Song;IILjava/lang/String;Ljava/lang/String;Ljava/util/List;I)V

    const-string v0, "memory"

    invoke-virtual {p0, v0, v9}, Lcom/fiio/music/service/MediaPlayerService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "cueTrackNumMemory"

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getTrack()I

    move-result v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iput-object v8, p0, Lcom/fiio/music/service/MediaPlayerService;->I:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->isSacd()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->h:Ljava/util/List;

    invoke-virtual {p0, v1, v7, v0}, Lcom/fiio/music/service/MediaPlayerService;->b(Lcom/fiio/music/entity/Song;ILjava/util/List;)V

    iput-object v8, p0, Lcom/fiio/music/service/MediaPlayerService;->I:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->h:Ljava/util/List;

    invoke-virtual {p0, v1, v7, v8, v0}, Lcom/fiio/music/service/MediaPlayerService;->a(Lcom/fiio/music/entity/Song;ILjava/lang/String;Ljava/util/List;)V

    goto :goto_0
.end method

.method static synthetic ae()Lcom/example/root/checkappmusic/FiioMediaPlayer;
    .locals 1

    .prologue
    .line 149
    sget-object v0, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    return-object v0
.end method

.method static synthetic ae(Lcom/fiio/music/service/MediaPlayerService;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->au:Ljava/util/ArrayList;

    return-object v0
.end method

.method private af()V
    .locals 2

    .prologue
    .line 390
    iget v0, p0, Lcom/fiio/music/service/MediaPlayerService;->A:I

    .line 391
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 392
    const/4 v0, 0x0

    .line 396
    :goto_0
    invoke-virtual {p0, v0}, Lcom/fiio/music/service/MediaPlayerService;->b(I)V

    .line 397
    return-void

    .line 394
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic af(Lcom/fiio/music/service/MediaPlayerService;)V
    .locals 0

    .prologue
    .line 3241
    invoke-direct {p0}, Lcom/fiio/music/service/MediaPlayerService;->ak()V

    return-void
.end method

.method private ag()V
    .locals 3

    .prologue
    .line 2202
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    invoke-virtual {v0}, Lcom/fiio/music/service/af;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2203
    const-string v0, "\u64ad\u653e\u5217\u8868\u4e3a\u7a7a..."

    invoke-static {v0}, Lcom/fiio/music/util/aw;->a(Ljava/lang/String;)V

    .line 2239
    :goto_0
    return-void

    .line 2206
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->m:Lcom/fiio/music/util/j;

    if-eqz v0, :cond_1

    .line 2209
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->m:Lcom/fiio/music/util/j;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v2}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/util/j;->a(Ljava/io/File;I)V

    .line 2211
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/fiio/music/service/MediaPlayerService;->g(I)V

    goto :goto_0
.end method

.method private ah()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2685
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    if-nez v0, :cond_0

    .line 2686
    const-string v0, "FiiO Music"

    .line 2696
    :goto_0
    return-object v0

    .line 2689
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2690
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2691
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2693
    :cond_1
    const-string v0, "FiiO Music"

    goto :goto_0

    .line 2696
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private ai()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2746
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getAlbum()Lcom/fiio/music/entity/Album;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2747
    :cond_0
    const/4 v0, 0x0

    .line 2749
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getAlbum()Lcom/fiio/music/entity/Album;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/entity/Album;->getPicPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private aj()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2766
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    if-nez v1, :cond_1

    .line 2772
    :cond_0
    :goto_0
    return-object v0

    .line 2769
    :cond_1
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getAlbum()Lcom/fiio/music/entity/Album;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2772
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getAlbum()Lcom/fiio/music/entity/Album;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/entity/Album;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private ak()V
    .locals 9

    .prologue
    const/16 v8, 0x64

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3242
    iget-boolean v0, p0, Lcom/fiio/music/service/MediaPlayerService;->az:Z

    if-nez v0, :cond_0

    .line 3421
    :goto_0
    return-void

    .line 3246
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/bl;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/fiio/music/util/l;->c()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lcom/example/root/checkappmusic/DsfExtractor;

    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/example/root/checkappmusic/DsfExtractor;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/example/root/checkappmusic/DsfExtractor;->getSamplerate()I

    move-result v0

    const v1, 0x56220

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    if-eq v0, v5, :cond_1

    iget v0, p0, Lcom/fiio/music/service/MediaPlayerService;->aS:I

    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    invoke-virtual {v1}, Lcom/fiio/music/service/af;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_2

    :cond_1
    iget v0, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    if-ne v0, v5, :cond_7

    iget v0, p0, Lcom/fiio/music/service/MediaPlayerService;->aS:I

    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->aZ:Lcom/fiio/music/service/a;

    invoke-virtual {v1}, Lcom/fiio/music/service/a;->b()I

    move-result v1

    if-ne v0, v1, :cond_7

    :cond_2
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->a:Landroid/widget/Toast;

    const v1, 0x7f0c00ef

    invoke-virtual {p0, v1}, Lcom/fiio/music/service/MediaPlayerService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->a:Landroid/widget/Toast;

    iput v4, p0, Lcom/fiio/music/service/MediaPlayerService;->aS:I

    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->E()V

    .line 3247
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/bl;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p0}, Lcom/fiio/music/util/h;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3248
    sget-object v0, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v0, v5}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->setd2p_flag(Z)V

    .line 3249
    sget-object v0, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v0, v5}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->setBluetoothState(Z)V

    .line 3255
    :goto_2
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/bl;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/fiio/music/j/b;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DOP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3256
    invoke-static {}, Lcom/fiio/music/j/b;->b()I

    move-result v0

    if-ne v0, v5, :cond_c

    invoke-static {}, Lcom/fiio/music/j/b;->c()I

    move-result v0

    if-eqz v0, :cond_4

    .line 3257
    invoke-static {}, Lcom/fiio/music/j/b;->c()I

    move-result v0

    if-ne v0, v6, :cond_c

    .line 3258
    :cond_4
    const-string v0, "xyz-MediaPlayerService"

    const-string v1, "in dop mode , not support dsd128 , next play"

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3259
    iget v0, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    if-eq v0, v5, :cond_5

    iget v0, p0, Lcom/fiio/music/service/MediaPlayerService;->aS:I

    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    invoke-virtual {v1}, Lcom/fiio/music/service/af;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_6

    .line 3260
    :cond_5
    iget v0, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    if-ne v0, v5, :cond_a

    iget v0, p0, Lcom/fiio/music/service/MediaPlayerService;->aS:I

    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->aZ:Lcom/fiio/music/service/a;

    invoke-virtual {v1}, Lcom/fiio/music/service/a;->b()I

    move-result v1

    if-ne v0, v1, :cond_a

    .line 3261
    :cond_6
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->a:Landroid/widget/Toast;

    const v1, 0x7f0c00ef

    invoke-virtual {p0, v1}, Lcom/fiio/music/service/MediaPlayerService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->a:Landroid/widget/Toast;

    .line 3262
    iput v4, p0, Lcom/fiio/music/service/MediaPlayerService;->aS:I

    .line 3263
    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->E()V

    goto/16 :goto_0

    .line 3246
    :cond_7
    iget v0, p0, Lcom/fiio/music/service/MediaPlayerService;->aS:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fiio/music/service/MediaPlayerService;->aS:I

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->a:Landroid/widget/Toast;

    const v1, 0x7f0c022d

    invoke-virtual {p0, v1}, Lcom/fiio/music/service/MediaPlayerService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->a:Landroid/widget/Toast;

    iget v0, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-boolean v0, p0, Lcom/fiio/music/service/MediaPlayerService;->j:Z

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/fiio/music/service/MediaPlayerService;->ag()V

    goto/16 :goto_1

    :pswitch_1
    invoke-direct {p0}, Lcom/fiio/music/service/MediaPlayerService;->aq()V

    goto/16 :goto_1

    :pswitch_2
    invoke-direct {p0, v4}, Lcom/fiio/music/service/MediaPlayerService;->e(I)V

    goto/16 :goto_1

    :cond_8
    invoke-direct {p0, v4, v5}, Lcom/fiio/music/service/MediaPlayerService;->a(IZ)V

    goto/16 :goto_1

    .line 3251
    :cond_9
    sget-object v0, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v0, v4}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->setd2p_flag(Z)V

    .line 3252
    sget-object v0, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v0, v4}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->setBluetoothState(Z)V

    goto/16 :goto_2

    .line 3266
    :cond_a
    new-instance v0, Lcom/example/root/checkappmusic/DsfExtractor;

    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/example/root/checkappmusic/DsfExtractor;-><init>(Ljava/lang/String;)V

    .line 3267
    invoke-virtual {v0}, Lcom/example/root/checkappmusic/DsfExtractor;->getSamplerate()I

    move-result v0

    const v1, 0x15888

    if-eq v0, v1, :cond_c

    .line 3268
    iget v0, p0, Lcom/fiio/music/service/MediaPlayerService;->aS:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fiio/music/service/MediaPlayerService;->aS:I

    .line 3269
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->a:Landroid/widget/Toast;

    const v1, 0x7f0c022d

    invoke-virtual {p0, v1}, Lcom/fiio/music/service/MediaPlayerService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->a:Landroid/widget/Toast;

    .line 3270
    iget v0, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    packed-switch v0, :pswitch_data_1

    .line 3283
    :pswitch_3
    iget-boolean v0, p0, Lcom/fiio/music/service/MediaPlayerService;->j:Z

    if-eqz v0, :cond_b

    .line 3284
    invoke-direct {p0}, Lcom/fiio/music/service/MediaPlayerService;->ag()V

    goto/16 :goto_0

    .line 3272
    :pswitch_4
    invoke-direct {p0}, Lcom/fiio/music/service/MediaPlayerService;->aq()V

    goto/16 :goto_0

    .line 3279
    :pswitch_5
    invoke-direct {p0, v4}, Lcom/fiio/music/service/MediaPlayerService;->e(I)V

    goto/16 :goto_0

    .line 3286
    :cond_b
    invoke-direct {p0, v4, v5}, Lcom/fiio/music/service/MediaPlayerService;->a(IZ)V

    goto/16 :goto_0

    .line 3292
    :cond_c
    iput v4, p0, Lcom/fiio/music/service/MediaPlayerService;->aS:I

    .line 3293
    const-string v0, "xyz"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "player \u5f00\u59cb \u64ad\u653e,playerState="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/fiio/music/service/MediaPlayerService;->z:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3294
    iput-boolean v4, p0, Lcom/fiio/music/service/MediaPlayerService;->J:Z

    .line 3295
    iput v4, p0, Lcom/fiio/music/service/MediaPlayerService;->aO:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/fiio/music/service/MediaPlayerService;->aN:J

    .line 3296
    iput v7, p0, Lcom/fiio/music/service/MediaPlayerService;->z:I

    .line 3297
    sget-object v0, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3298
    sget-object v0, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->stopPlay()V

    .line 3303
    :cond_d
    iput-boolean v4, p0, Lcom/fiio/music/service/MediaPlayerService;->j:Z

    .line 3304
    iput-boolean v4, p0, Lcom/fiio/music/service/MediaPlayerService;->p:Z

    .line 3305
    sget-object v0, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v0, v4}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->setCueFlag(Z)V

    .line 3306
    sget-object v0, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v0, v4}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->setSacdFlag(Z)V

    .line 3309
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 3310
    iget v0, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    if-ne v0, v7, :cond_11

    .line 3311
    new-instance v0, Lcom/fiio/music/entity/Song;

    invoke-direct {v0}, Lcom/fiio/music/entity/Song;-><init>()V

    .line 3312
    sget-object v1, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v1}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->isGoGaplessPlayBack()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 3313
    sget-object v1, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v1}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->isAutoOnComplete()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-static {}, Lcom/fiio/music/util/ap;->a()Lcom/fiio/music/util/ap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/util/ap;->c()Z

    move-result v1

    if-nez v1, :cond_e

    .line 3314
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->aR:Lcom/fiio/music/entity/Song;

    iput-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    .line 3319
    :goto_3
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    if-nez v1, :cond_10

    .line 3320
    iget v1, p0, Lcom/fiio/music/service/MediaPlayerService;->ak:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fiio/music/service/MediaPlayerService;->ak:I

    .line 3321
    iget v1, p0, Lcom/fiio/music/service/MediaPlayerService;->ak:I

    if-le v1, v7, :cond_f

    .line 3322
    iput v4, p0, Lcom/fiio/music/service/MediaPlayerService;->ak:I

    .line 3323
    iput v6, p0, Lcom/fiio/music/service/MediaPlayerService;->z:I

    .line 3324
    sget-object v0, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->stopPlay()V

    goto/16 :goto_0

    .line 3316
    :cond_e
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    .line 3317
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->f:Lcom/fiio/music/util/bh;

    iget-object v2, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v2}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fiio/music/util/bh;->a(Ljava/lang/String;)Lcom/fiio/music/entity/Song;

    move-result-object v1

    iput-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    goto :goto_3

    .line 3327
    :cond_f
    iput-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    .line 3328
    invoke-direct {p0, v4}, Lcom/fiio/music/service/MediaPlayerService;->e(I)V

    goto/16 :goto_0

    .line 3331
    :cond_10
    iput v4, p0, Lcom/fiio/music/service/MediaPlayerService;->ak:I

    .line 3332
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/fiio/music/entity/Song;->setId_(I)V

    .line 3337
    :cond_11
    iget v0, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_16

    .line 3339
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    if-nez v0, :cond_13

    .line 3340
    iget v0, p0, Lcom/fiio/music/service/MediaPlayerService;->ak:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fiio/music/service/MediaPlayerService;->ak:I

    .line 3341
    iget v0, p0, Lcom/fiio/music/service/MediaPlayerService;->ak:I

    if-le v0, v7, :cond_12

    .line 3342
    const-string v0, "Dendy_MediaPlayerService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ErrorCount = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/fiio/music/service/MediaPlayerService;->ak:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3343
    iput v4, p0, Lcom/fiio/music/service/MediaPlayerService;->ak:I

    .line 3347
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.fiio.music.dlna.networkunreachable"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3348
    invoke-static {}, Lcom/fiio/music/activity/FiiOMusicApplication;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3352
    iput v6, p0, Lcom/fiio/music/service/MediaPlayerService;->z:I

    .line 3353
    sget-object v0, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->stopPlay()V

    goto/16 :goto_0

    .line 3356
    :cond_12
    invoke-direct {p0, v5}, Lcom/fiio/music/service/MediaPlayerService;->e(I)V

    goto/16 :goto_0

    .line 3359
    :cond_13
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/h;->l(Ljava/lang/String;)Z

    move-result v0

    .line 3360
    const-string v1, "Dendy_MediaPlayerService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "flag = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3361
    if-nez v0, :cond_15

    .line 3362
    iget v0, p0, Lcom/fiio/music/service/MediaPlayerService;->ak:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fiio/music/service/MediaPlayerService;->ak:I

    .line 3363
    iget v0, p0, Lcom/fiio/music/service/MediaPlayerService;->ak:I

    if-le v0, v7, :cond_14

    .line 3364
    const-string v0, "Dendy_MediaPlayerService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ErrorCount = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/fiio/music/service/MediaPlayerService;->ak:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3365
    iput v4, p0, Lcom/fiio/music/service/MediaPlayerService;->ak:I

    .line 3370
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.fiio.music.dlna.networkunreachable"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3371
    invoke-static {}, Lcom/fiio/music/activity/FiiOMusicApplication;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3372
    iput v6, p0, Lcom/fiio/music/service/MediaPlayerService;->z:I

    .line 3373
    sget-object v0, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->stopPlay()V

    goto/16 :goto_0

    .line 3376
    :cond_14
    invoke-direct {p0, v4}, Lcom/fiio/music/service/MediaPlayerService;->e(I)V

    goto/16 :goto_0

    .line 3380
    :cond_15
    iput v4, p0, Lcom/fiio/music/service/MediaPlayerService;->ak:I

    .line 3383
    :cond_16
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->ad:Lcom/fiio/music/util/an;

    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/an;->d(Ljava/lang/String;)V

    .line 3384
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->N:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/fiio/music/service/aa;

    invoke-direct {v1, p0, v4}, Lcom/fiio/music/service/aa;-><init>(Lcom/fiio/music/service/MediaPlayerService;B)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 3385
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->d:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3387
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    .line 3388
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/fiio/music/util/a;->a(Landroid/content/Context;)I

    move-result v1

    .line 3390
    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/service/MediaPlayerService;->c:Lcom/b/a/b/f;

    .line 3389
    invoke-static {v0, v1, v2, v3}, Lcom/fiio/music/util/h;->b(Lcom/fiio/music/entity/Song;ILandroid/content/Context;Lcom/b/a/b/f;)Ljava/lang/String;

    move-result-object v0

    .line 3392
    new-instance v1, Lcom/b/a/b/a/f;

    invoke-direct {v1, v8, v8}, Lcom/b/a/b/a/f;-><init>(II)V

    .line 3393
    iget-object v2, p0, Lcom/fiio/music/service/MediaPlayerService;->c:Lcom/b/a/b/f;

    iget-object v3, p0, Lcom/fiio/music/service/MediaPlayerService;->V:Lcom/b/a/b/d;

    invoke-virtual {v2, v0, v1, v3}, Lcom/b/a/b/f;->a(Ljava/lang/String;Lcom/b/a/b/a/f;Lcom/b/a/b/d;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 3394
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getArtist()Lcom/fiio/music/entity/Artist;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getArtist()Lcom/fiio/music/entity/Artist;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/entity/Artist;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-direct {p0}, Lcom/fiio/music/service/MediaPlayerService;->ah()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/fiio/music/service/MediaPlayerService;->b(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    .line 3395
    invoke-direct {p0}, Lcom/fiio/music/service/MediaPlayerService;->al()V

    .line 3397
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->U:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->aT:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, v5}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    .line 3399
    const-string v1, "xyz-MediaPlayerService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mFiioMediaPlayer.\u64ad\u653e   statusAudioFocus="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3404
    iget v0, p0, Lcom/fiio/music/service/MediaPlayerService;->A:I

    if-eq v0, v6, :cond_19

    .line 3405
    invoke-static {}, Lcom/fiio/music/service/MediaPlayerService;->ao()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 3407
    new-instance v0, Lcom/fiio/music/service/y;

    invoke-direct {v0, p0}, Lcom/fiio/music/service/y;-><init>(Lcom/fiio/music/service/MediaPlayerService;)V

    .line 3408
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->N:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto/16 :goto_0

    .line 3394
    :cond_17
    const-string v0, "FiiO"

    goto :goto_4

    .line 3410
    :cond_18
    sget-object v0, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v0, v4}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->setGoGaplessPlayBack(Z)V

    goto/16 :goto_0

    .line 3413
    :cond_19
    sget-object v0, Lcom/fiio/music/util/ap;->a:Ljava/lang/String;

    const-string v1, "\u5355\u66f2\u5faa\u73af,\u8fc7\u6ee4\u65e0\u7f1d"

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3414
    sget-object v0, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v0, v4}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->setGoGaplessPlayBack(Z)V

    goto/16 :goto_0

    .line 3418
    :cond_1a
    const-string v0, "xyz-MediaPlayerService"

    const-string v1, "\u6b4c\u66f2\u4e3a\u7a7anull"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3246
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 3270
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method private al()V
    .locals 3

    .prologue
    .line 4247
    const-string v0, "xyz"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u663e\u793a\u64ad\u653e\u51c6\u5907\u4fe1\u606f song="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4248
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.fiio.music.player.brocast"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4249
    const-string v1, "flag"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 4250
    const-string v1, "song"

    iget-object v2, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 4251
    const-string v1, "albumPath"

    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 4252
    const-string v1, "title"

    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 4253
    const-string v2, "currentPosition"

    iget-boolean v0, p0, Lcom/fiio/music/service/MediaPlayerService;->M:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/fiio/music/service/MediaPlayerService;->K:I

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 4254
    const-string v1, "song_id"

    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->h()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 4255
    const-string v1, "songId"

    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->j()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 4256
    const-string v1, "duration"

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/fiio/music/service/MediaPlayerService;->a(Lcom/example/root/checkappmusic/FiioMediaPlayer;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 4258
    const-string v1, "songName"

    invoke-direct {p0}, Lcom/fiio/music/service/MediaPlayerService;->ah()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 4259
    const-string v1, "albumName"

    invoke-direct {p0}, Lcom/fiio/music/service/MediaPlayerService;->aj()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 4260
    const-string v1, "artistName"

    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 4261
    const-string v1, "nextOrPre"

    iget v2, p0, Lcom/fiio/music/service/MediaPlayerService;->ap:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 4248
    invoke-virtual {p0, v0}, Lcom/fiio/music/service/MediaPlayerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 4262
    invoke-direct {p0}, Lcom/fiio/music/service/MediaPlayerService;->am()V

    .line 4263
    const/4 v0, -0x1

    iput v0, p0, Lcom/fiio/music/service/MediaPlayerService;->ap:I

    .line 4265
    return-void

    .line 4253
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private am()V
    .locals 1

    .prologue
    .line 4267
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->ac:Lcom/fiio/music/widget/MediaAppWidgetProvider;

    invoke-virtual {v0, p0}, Lcom/fiio/music/widget/MediaAppWidgetProvider;->a(Lcom/fiio/music/service/MediaPlayerService;)V

    .line 4268
    return-void
.end method

.method private an()V
    .locals 3

    .prologue
    .line 4374
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fiio/music/service/MediaPlayerService;->M:Z

    .line 4375
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    iget v1, p0, Lcom/fiio/music/service/MediaPlayerService;->A:I

    iget-object v2, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/service/af;->b(ILcom/fiio/music/entity/Song;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    .line 4377
    if-eqz v0, :cond_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->E()V

    .line 4381
    :goto_0
    return-void

    .line 4379
    :cond_1
    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->x()V

    goto :goto_0
.end method

.method private static ao()Z
    .locals 4

    .prologue
    .line 5699
    invoke-static {}, Lcom/fiio/music/util/ap;->a()Lcom/fiio/music/util/ap;

    move-result-object v0

    .line 5700
    invoke-virtual {v0}, Lcom/fiio/music/util/ap;->b()Z

    move-result v0

    .line 5701
    const-string v1, "xyz-MediaPlayerService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u65e0\u7f1d\u64ad\u653e\u72b6\u6001\u5f00\u5173\uff0c="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5702
    return v0
.end method

.method private ap()V
    .locals 2

    .prologue
    .line 5881
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->aZ:Lcom/fiio/music/service/a;

    iget v1, p0, Lcom/fiio/music/service/MediaPlayerService;->A:I

    invoke-virtual {v0, v1}, Lcom/fiio/music/service/a;->b(I)Lcom/fiio/music/entity/Song;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    .line 5882
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->aZ:Lcom/fiio/music/service/a;

    invoke-virtual {v0}, Lcom/fiio/music/service/a;->f()V

    .line 5883
    invoke-direct {p0}, Lcom/fiio/music/service/MediaPlayerService;->ar()V

    .line 5884
    return-void
.end method

.method private aq()V
    .locals 2

    .prologue
    .line 5898
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->aZ:Lcom/fiio/music/service/a;

    iget v1, p0, Lcom/fiio/music/service/MediaPlayerService;->A:I

    invoke-virtual {v0, v1}, Lcom/fiio/music/service/a;->a(I)Lcom/fiio/music/entity/Song;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    .line 5899
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->aM:Lcom/fiio/music/service/ab;

    invoke-interface {v0}, Lcom/fiio/music/service/ab;->a()V

    .line 5900
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    if-nez v0, :cond_1

    .line 5901
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/fiio/music/service/MediaPlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 5902
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 5903
    invoke-static {}, Lcom/fiio/music/util/ap;->a()Lcom/fiio/music/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/util/ap;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5904
    sget-object v0, Lcom/fiio/music/util/ap;->a:Ljava/lang/String;

    const-string v1, "stop all --------"

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5905
    sget-object v0, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->setNextSong(Lcom/fiio/music/entity/Song;)V

    .line 5906
    sget-object v0, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->closeHandle()V

    .line 5907
    sget-object v0, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->setGoGaplessPlayBack(Z)V

    .line 5908
    sget-object v0, Lcom/fiio/music/util/ap;->a:Ljava/lang/String;

    const-string v1, " ---------------------- "

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5913
    :cond_0
    :goto_0
    return-void

    .line 5912
    :cond_1
    invoke-direct {p0}, Lcom/fiio/music/service/MediaPlayerService;->ar()V

    goto :goto_0
.end method

.method private ar()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 5919
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    if-nez v0, :cond_0

    .line 5937
    :goto_0
    return-void

    .line 5922
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isSacd()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5923
    invoke-direct {p0}, Lcom/fiio/music/service/MediaPlayerService;->ak()V

    .line 5931
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->Z:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 5933
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->aZ:Lcom/fiio/music/service/a;

    invoke-virtual {v1}, Lcom/fiio/music/service/a;->d()I

    move-result v1

    .line 5934
    const-string v2, "playAllIndexMemory"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 5935
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 5925
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5926
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getTrack()I

    move-result v1

    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v3}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fiio/music/util/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".cue"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v2}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/fiio/music/util/n;->a(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v2}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_3
    :goto_2
    if-ltz v1, :cond_1

    new-instance v2, Lcom/fiio/music/util/j;

    iget-object v3, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-direct {v2, v0, v3, v1, p0}, Lcom/fiio/music/util/j;-><init>(Ljava/io/File;Lcom/fiio/music/entity/Song;ILandroid/content/Context;)V

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v2}, Lcom/fiio/music/util/j;->e()[Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    invoke-virtual {p0, v0, v1, v4, v2}, Lcom/fiio/music/service/MediaPlayerService;->a(Lcom/fiio/music/entity/Song;[Ljava/lang/String;Ljava/util/List;I)V

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v2}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    iget-object v2, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v2}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/fiio/music/util/j;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    .line 5927
    :cond_5
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isSacd()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5928
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getTrack()I

    move-result v0

    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v4}, Lcom/fiio/music/service/MediaPlayerService;->b(Lcom/fiio/music/entity/Song;ILjava/util/List;)V

    goto/16 :goto_1
.end method

.method static synthetic b(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/entity/Song;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    return-object v0
.end method

.method static synthetic b(Lcom/fiio/music/service/MediaPlayerService;I)V
    .locals 0

    .prologue
    .line 164
    iput p1, p0, Lcom/fiio/music/service/MediaPlayerService;->K:I

    return-void
.end method

.method static synthetic b(Lcom/fiio/music/service/MediaPlayerService;Z)V
    .locals 0

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/fiio/music/service/MediaPlayerService;->Q:Z

    return-void
.end method

.method private b(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 5339
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0, p1}, Lcom/fiio/music/entity/Song;->setName(Ljava/lang/String;)V

    .line 5340
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0, p2}, Lcom/fiio/music/entity/Song;->setDurationTime(I)V

    .line 5346
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.fiio.music.player.brocast"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5347
    const-string v1, "flag"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 5348
    const-string v1, "song"

    iget-object v2, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 5349
    const-string v1, "albumPath"

    const-string v2, "/"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 5350
    const-string v1, "title"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 5351
    const-string v1, "currentPosition"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 5352
    const-string v1, "song_id"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 5353
    const-string v1, "songId"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 5354
    const-string v1, "duration"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 5355
    const-string v1, "track"

    iget-object v2, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v2}, Lcom/fiio/music/entity/Song;->getTrack()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 5357
    const-string v1, "songName"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 5358
    const-string v1, "albumName"

    invoke-direct {p0}, Lcom/fiio/music/service/MediaPlayerService;->aj()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 5359
    const-string v1, "artistName"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 5346
    invoke-virtual {p0, v0}, Lcom/fiio/music/service/MediaPlayerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 5360
    return-void
.end method

.method static synthetic b(Lcom/fiio/music/service/MediaPlayerService;Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 1900
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/fiio/music/service/MediaPlayerService;->aq:Z

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.fiio.music.player.brocast"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "flag"

    const/4 v3, 0x7

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/fiio/music/service/MediaPlayerService;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return v0
.end method

.method static synthetic c(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/b/i;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->H:Lcom/fiio/music/b/i;

    return-object v0
.end method

.method static synthetic c(Lcom/fiio/music/service/MediaPlayerService;I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3125
    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    sget-object v0, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v0, v3}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->setAutoOnComplete(Z)V

    sget-object v0, Lcom/fiio/music/util/ap;->a:Ljava/lang/String;

    const-string v1, " ---------------------- "

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :pswitch_0
    sget-object v0, Lcom/fiio/music/util/ap;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GET_SONG_SUC : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fiio/music/service/MediaPlayerService;->aR:Lcom/fiio/music/entity/Song;

    invoke-virtual {v2}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->aR:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->aR:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0, v1}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->setNextSong(Lcom/fiio/music/entity/Song;)V

    invoke-static {}, Lcom/fiio/music/util/ap;->a()Lcom/fiio/music/util/ap;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->aR:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/ap;->a(Lcom/fiio/music/entity/Song;)V

    sget-object v0, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->isGaplessPlayBack()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v0, v4}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->setGoGaplessPlayBack(Z)V

    sget-object v0, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->peekNextSongInGapless()I

    move-result v0

    if-ltz v0, :cond_2

    invoke-static {}, Lcom/fiio/music/util/ap;->a()Lcom/fiio/music/util/ap;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/service/MediaPlayerService;->aR:Lcom/fiio/music/entity/Song;

    invoke-virtual {v2}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/fiio/music/util/ap;->a(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/fiio/music/util/ap;->a()Lcom/fiio/music/util/ap;

    move-result-object v0

    sget-object v1, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/ap;->a(Lcom/example/root/checkappmusic/FiioMediaPlayer;)I

    move-result v0

    if-eq v0, v4, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v0, v3}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->setGoGaplessPlayBack(Z)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v0, v3}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->setGoGaplessPlayBack(Z)V

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->aR:Lcom/fiio/music/entity/Song;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->aR:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getTrack()I

    move-result v0

    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getTrack()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->aR:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/fiio/music/util/ap;->a:Ljava/lang/String;

    const-string v1, "CUE --- GET_CUE_SONG_SUC go gapless !"

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/fiio/music/util/ap;->a()Lcom/fiio/music/util/ap;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/fiio/music/util/ap;->b(Z)V

    goto/16 :goto_0

    :cond_4
    sget-object v0, Lcom/fiio/music/util/ap;->a:Ljava/lang/String;

    const-string v1, "CUE --- GET_CUE_SONG_SUC out gapless !"

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/fiio/music/util/ap;->a()Lcom/fiio/music/util/ap;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/fiio/music/util/ap;->b(Z)V

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Lcom/fiio/music/util/ap;->a()Lcom/fiio/music/util/ap;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/fiio/music/util/ap;->b(Z)V

    goto/16 :goto_0

    :pswitch_2
    sget-object v0, Lcom/fiio/music/util/ap;->a:Ljava/lang/String;

    const-string v1, "GET_SONG_FAIL"

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v0, v3}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->setGoGaplessPlayBack(Z)V

    invoke-static {}, Lcom/fiio/music/util/ap;->a()Lcom/fiio/music/util/ap;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/fiio/music/util/ap;->b(Z)V

    invoke-static {}, Lcom/fiio/music/util/ap;->a()Lcom/fiio/music/util/ap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/ap;->a(Lcom/fiio/music/entity/Song;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic c(Lcom/fiio/music/service/MediaPlayerService;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1915
    if-nez p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fiio/music/service/MediaPlayerService;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->J()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/fiio/music/service/MediaPlayerService;->ar:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fiio/music/service/MediaPlayerService;->ar:Z

    goto :goto_0

    :cond_2
    const-string v0, "/mnt/external_sd/"

    invoke-static {v0}, Lcom/fiio/music/util/ch;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/fiio/music/service/MediaPlayerService;->an()V

    goto :goto_0

    :cond_3
    const-string v0, "/mnt/usb_storage/"

    invoke-static {v0}, Lcom/fiio/music/util/ch;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/fiio/music/service/MediaPlayerService;->an()V

    goto :goto_0

    :cond_4
    const-string v0, "/mnt/external_sd/"

    invoke-static {v0}, Lcom/fiio/music/util/ch;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p1}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "/mnt/external_sd/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_5
    const-string v0, "/mnt/usb_storage/"

    invoke-static {v0}, Lcom/fiio/music/util/ch;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/mnt/usb_storage/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method static synthetic d(Lcom/fiio/music/service/MediaPlayerService;)V
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fiio/music/service/MediaPlayerService;->R:Z

    return-void
.end method

.method static synthetic d(Lcom/fiio/music/service/MediaPlayerService;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1407
    iput-object p1, p0, Lcom/fiio/music/service/MediaPlayerService;->aJ:Ljava/lang/String;

    return-void
.end method

.method static synthetic e(Lcom/fiio/music/service/MediaPlayerService;)I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    return v0
.end method

.method private e(I)V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x6

    const/4 v8, 0x5

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1997
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    invoke-virtual {v0}, Lcom/fiio/music/service/af;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1998
    const-string v0, "\u64ad\u653e\u5217\u8868\u4e3a\u7a7a..."

    invoke-static {v0}, Lcom/fiio/music/util/aw;->a(Ljava/lang/String;)V

    .line 2193
    :cond_0
    :goto_0
    return-void

    .line 2001
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->u:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->u:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 2002
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    invoke-virtual {v0}, Lcom/fiio/music/service/af;->c()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->u:Ljava/util/List;

    .line 2003
    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->J()V

    .line 2005
    :cond_3
    new-instance v0, Lcom/fiio/music/util/bg;

    iget v1, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    iget-object v2, p0, Lcom/fiio/music/service/MediaPlayerService;->u:Ljava/util/List;

    iget-object v3, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/fiio/music/util/bg;-><init>(ILjava/util/List;Lcom/fiio/music/entity/Song;Lcom/fiio/music/service/MediaPlayerService;Landroid/content/Context;)V

    .line 2006
    packed-switch p1, :pswitch_data_0

    .line 2187
    :goto_1
    invoke-direct {p0, v7}, Lcom/fiio/music/service/MediaPlayerService;->g(I)V

    goto :goto_0

    .line 2009
    :pswitch_0
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    iget v2, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    invoke-virtual {v1, v2}, Lcom/fiio/music/service/af;->b(I)V

    .line 2010
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    iget v2, p0, Lcom/fiio/music/service/MediaPlayerService;->A:I

    iget-object v3, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1, v2, v3}, Lcom/fiio/music/service/af;->a(ILcom/fiio/music/entity/Song;)Lcom/fiio/music/entity/Song;

    move-result-object v1

    .line 2011
    iget-object v2, p0, Lcom/fiio/music/service/MediaPlayerService;->ad:Lcom/fiio/music/util/an;

    invoke-virtual {v2}, Lcom/fiio/music/util/an;->c()Z

    move-result v2

    if-eqz v2, :cond_5

    if-nez v1, :cond_5

    .line 2012
    iget v2, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_4

    .line 2013
    iget v2, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    if-eq v2, v10, :cond_4

    .line 2014
    iget v2, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4

    .line 2015
    iget v2, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_5

    .line 2017
    :cond_4
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->aM:Lcom/fiio/music/service/ab;

    invoke-interface {v0}, Lcom/fiio/music/service/ab;->a()V

    .line 2018
    iget v0, p0, Lcom/fiio/music/service/MediaPlayerService;->A:I

    packed-switch v0, :pswitch_data_1

    .line 2025
    const-string v0, "zxy---"

    const-string v1, "doMixPlayer ---run into runnable"

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2026
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->ae:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/fiio/music/service/x;

    invoke-direct {v1, p0, v6}, Lcom/fiio/music/service/x;-><init>(Lcom/fiio/music/service/MediaPlayerService;B)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 2020
    :pswitch_1
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    invoke-virtual {v0}, Lcom/fiio/music/service/af;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2021
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->ae:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/fiio/music/service/x;

    invoke-direct {v1, p0, v6}, Lcom/fiio/music/service/x;-><init>(Lcom/fiio/music/service/MediaPlayerService;B)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 2031
    :cond_5
    iget v2, p0, Lcom/fiio/music/service/MediaPlayerService;->A:I

    packed-switch v2, :pswitch_data_2

    .line 2065
    :cond_6
    :goto_2
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->isSacd()Z

    move-result v2

    if-nez v2, :cond_8

    iget v2, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    if-eq v2, v9, :cond_7

    iget v2, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    if-ne v2, v8, :cond_8

    .line 2071
    :cond_7
    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2072
    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    .line 2073
    new-instance v2, Lcom/fiio/music/entity/Song;

    invoke-direct {v2}, Lcom/fiio/music/entity/Song;-><init>()V

    .line 2074
    iget-object v2, p0, Lcom/fiio/music/service/MediaPlayerService;->f:Lcom/fiio/music/util/bh;

    invoke-virtual {v2, v1}, Lcom/fiio/music/util/bh;->a(Ljava/lang/String;)Lcom/fiio/music/entity/Song;

    move-result-object v1

    .line 2077
    :cond_8
    if-nez v1, :cond_d

    .line 2081
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->aM:Lcom/fiio/music/service/ab;

    invoke-interface {v0}, Lcom/fiio/music/service/ab;->a()V

    .line 2082
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/fiio/music/service/MediaPlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 2083
    invoke-virtual {v0, v7}, Landroid/app/NotificationManager;->cancel(I)V

    .line 2084
    invoke-static {}, Lcom/fiio/music/util/ap;->a()Lcom/fiio/music/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/util/ap;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2085
    sget-object v0, Lcom/fiio/music/util/ap;->a:Ljava/lang/String;

    const-string v1, "stop all --------"

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2086
    sget-object v0, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->setNextSong(Lcom/fiio/music/entity/Song;)V

    .line 2089
    sget-object v0, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->closeHandle()V

    .line 2090
    sget-object v0, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v0, v6}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->setGoGaplessPlayBack(Z)V

    .line 2091
    sget-object v0, Lcom/fiio/music/util/ap;->a:Ljava/lang/String;

    const-string v1, " ---------------------- "

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2037
    :pswitch_2
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2044
    iget-object v2, p0, Lcom/fiio/music/service/MediaPlayerService;->aM:Lcom/fiio/music/service/ab;

    invoke-interface {v2}, Lcom/fiio/music/service/ab;->a()V

    goto :goto_2

    .line 2046
    :cond_9
    if-nez v1, :cond_a

    iget v2, p0, Lcom/fiio/music/service/MediaPlayerService;->A:I

    if-eqz v2, :cond_6

    :cond_a
    move v1, v6

    .line 2051
    :cond_b
    iget-object v2, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    iget v3, p0, Lcom/fiio/music/service/MediaPlayerService;->A:I

    iget-object v4, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v2, v3, v4}, Lcom/fiio/music/service/af;->b(ILcom/fiio/music/entity/Song;)Lcom/fiio/music/entity/Song;

    move-result-object v2

    iput-object v2, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    .line 2052
    iget-object v2, p0, Lcom/fiio/music/service/MediaPlayerService;->aM:Lcom/fiio/music/service/ab;

    invoke-interface {v2}, Lcom/fiio/music/service/ab;->a()V

    .line 2053
    iget-object v2, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v2}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 2054
    add-int/lit8 v1, v1, 0x1

    .line 2058
    iget-object v2, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    invoke-virtual {v2}, Lcom/fiio/music/service/af;->c()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_b

    .line 2062
    :cond_c
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    goto/16 :goto_2

    .line 2095
    :cond_d
    iget v2, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/util/bg;->a(Lcom/fiio/music/entity/Song;I)V

    goto/16 :goto_1

    .line 2099
    :pswitch_3
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    iget v2, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    invoke-virtual {v1, v2}, Lcom/fiio/music/service/af;->b(I)V

    .line 2100
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    iget v2, p0, Lcom/fiio/music/service/MediaPlayerService;->A:I

    iget-object v3, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1, v2, v3}, Lcom/fiio/music/service/af;->b(ILcom/fiio/music/entity/Song;)Lcom/fiio/music/entity/Song;

    move-result-object v1

    iput-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    .line 2101
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->ad:Lcom/fiio/music/util/an;

    invoke-virtual {v1}, Lcom/fiio/music/util/an;->c()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    if-nez v1, :cond_f

    .line 2102
    iget v1, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_e

    .line 2103
    iget v1, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    if-eq v1, v10, :cond_e

    .line 2104
    iget v1, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_e

    .line 2105
    iget v1, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_f

    .line 2106
    :cond_e
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->ad:Lcom/fiio/music/util/an;

    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/an;->d(Ljava/lang/String;)V

    .line 2107
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->aM:Lcom/fiio/music/service/ab;

    invoke-interface {v0}, Lcom/fiio/music/service/ab;->a()V

    .line 2108
    iget v0, p0, Lcom/fiio/music/service/MediaPlayerService;->A:I

    packed-switch v0, :pswitch_data_3

    .line 2118
    const-string v0, "zxy---"

    const-string v1, "doMixPlayer -NEXT--run into runnable"

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2119
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->ae:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/fiio/music/service/x;

    invoke-direct {v1, p0, v6}, Lcom/fiio/music/service/x;-><init>(Lcom/fiio/music/service/MediaPlayerService;B)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 2113
    :pswitch_4
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    invoke-virtual {v0}, Lcom/fiio/music/service/af;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2114
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->ae:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/fiio/music/service/x;

    invoke-direct {v1, p0, v6}, Lcom/fiio/music/service/x;-><init>(Lcom/fiio/music/service/MediaPlayerService;B)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 2132
    :cond_f
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 2135
    :cond_10
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    iget v2, p0, Lcom/fiio/music/service/MediaPlayerService;->A:I

    iget-object v3, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1, v2, v3}, Lcom/fiio/music/service/af;->b(ILcom/fiio/music/entity/Song;)Lcom/fiio/music/entity/Song;

    move-result-object v1

    iput-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    .line 2136
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->aM:Lcom/fiio/music/service/ab;

    invoke-interface {v1}, Lcom/fiio/music/service/ab;->a()V

    .line 2137
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 2138
    add-int/lit8 v6, v6, 0x1

    .line 2142
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    invoke-virtual {v1}, Lcom/fiio/music/service/af;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v6, v1, :cond_10

    .line 2147
    :cond_11
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v1

    if-nez v1, :cond_13

    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->isSacd()Z

    move-result v1

    if-nez v1, :cond_13

    iget v1, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    if-eq v1, v9, :cond_12

    iget v1, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    if-ne v1, v8, :cond_13

    .line 2148
    :cond_12
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 2149
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    .line 2150
    new-instance v2, Lcom/fiio/music/entity/Song;

    invoke-direct {v2}, Lcom/fiio/music/entity/Song;-><init>()V

    iput-object v2, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    .line 2151
    iget-object v2, p0, Lcom/fiio/music/service/MediaPlayerService;->f:Lcom/fiio/music/util/bh;

    invoke-virtual {v2, v1}, Lcom/fiio/music/util/bh;->a(Ljava/lang/String;)Lcom/fiio/music/entity/Song;

    move-result-object v1

    iput-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    .line 2154
    :cond_13
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    iget v2, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/util/bg;->a(Lcom/fiio/music/entity/Song;I)V

    goto/16 :goto_1

    .line 2157
    :pswitch_5
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    iget v2, p0, Lcom/fiio/music/service/MediaPlayerService;->A:I

    iget-object v3, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1, v2, v3}, Lcom/fiio/music/service/af;->d(ILcom/fiio/music/entity/Song;)Lcom/fiio/music/entity/Song;

    move-result-object v1

    iput-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    .line 2158
    iget v1, p0, Lcom/fiio/music/service/MediaPlayerService;->A:I

    if-ne v1, v7, :cond_14

    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    if-nez v1, :cond_14

    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->ad:Lcom/fiio/music/util/an;

    invoke-virtual {v1}, Lcom/fiio/music/util/an;->c()Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    invoke-virtual {v1}, Lcom/fiio/music/service/af;->g()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 2159
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->aM:Lcom/fiio/music/service/ab;

    invoke-interface {v0}, Lcom/fiio/music/service/ab;->a()V

    goto/16 :goto_0

    .line 2163
    :cond_14
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 2167
    :cond_15
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    iget v2, p0, Lcom/fiio/music/service/MediaPlayerService;->A:I

    iget-object v3, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1, v2, v3}, Lcom/fiio/music/service/af;->d(ILcom/fiio/music/entity/Song;)Lcom/fiio/music/entity/Song;

    move-result-object v1

    iput-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    .line 2168
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->aM:Lcom/fiio/music/service/ab;

    invoke-interface {v1}, Lcom/fiio/music/service/ab;->a()V

    .line 2169
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 2170
    add-int/lit8 v6, v6, 0x1

    .line 2174
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    invoke-virtual {v1}, Lcom/fiio/music/service/af;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v6, v1, :cond_15

    .line 2179
    :cond_16
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v1

    if-nez v1, :cond_18

    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->isSacd()Z

    move-result v1

    if-nez v1, :cond_18

    iget v1, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    if-eq v1, v9, :cond_17

    iget v1, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    if-ne v1, v8, :cond_18

    .line 2180
    :cond_17
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 2181
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    .line 2182
    new-instance v2, Lcom/fiio/music/entity/Song;

    invoke-direct {v2}, Lcom/fiio/music/entity/Song;-><init>()V

    iput-object v2, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    .line 2183
    iget-object v2, p0, Lcom/fiio/music/service/MediaPlayerService;->f:Lcom/fiio/music/util/bh;

    invoke-virtual {v2, v1}, Lcom/fiio/music/util/bh;->a(Ljava/lang/String;)Lcom/fiio/music/entity/Song;

    move-result-object v1

    iput-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    .line 2186
    :cond_18
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    iget v2, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/util/bg;->a(Lcom/fiio/music/entity/Song;I)V

    goto/16 :goto_1

    .line 2006
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_5
    .end packed-switch

    .line 2018
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    .line 2031
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 2108
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch
.end method

.method static synthetic e(Lcom/fiio/music/service/MediaPlayerService;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1408
    iput-object p1, p0, Lcom/fiio/music/service/MediaPlayerService;->aK:Ljava/lang/String;

    return-void
.end method

.method private f(I)V
    .locals 3

    .prologue
    .line 2248
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    invoke-virtual {v0}, Lcom/fiio/music/service/af;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2249
    const-string v0, "\u64ad\u653e\u5217\u8868\u4e3a\u7a7a..."

    invoke-static {v0}, Lcom/fiio/music/util/aw;->a(Ljava/lang/String;)V

    .line 2270
    :goto_0
    return-void

    .line 2252
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 2263
    :goto_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/fiio/music/service/MediaPlayerService;->g(I)V

    goto :goto_0

    .line 2254
    :pswitch_0
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->q:Lorg/justcodecs/dsd/SacdDataFormat;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v2}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    invoke-virtual {v0, v1, v2}, Lorg/justcodecs/dsd/SacdDataFormat;->autoPlayNextSacdTrack(Ljava/io/File;I)V

    goto :goto_1

    .line 2258
    :pswitch_1
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->q:Lorg/justcodecs/dsd/SacdDataFormat;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v2}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    invoke-virtual {v0, v1, v2}, Lorg/justcodecs/dsd/SacdDataFormat;->playNextSacdTrack(Ljava/io/File;I)V

    goto :goto_1

    .line 2262
    :pswitch_2
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->q:Lorg/justcodecs/dsd/SacdDataFormat;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v2}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    invoke-virtual {v0, v1, v2}, Lorg/justcodecs/dsd/SacdDataFormat;->playPreSacdTrack(Ljava/io/File;I)V

    goto :goto_1

    .line 2252
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic f(Lcom/fiio/music/service/MediaPlayerService;)V
    .locals 1

    .prologue
    .line 4922
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/fiio/music/service/MediaPlayerService;->g(I)V

    return-void
.end method

.method private g(I)V
    .locals 3

    .prologue
    .line 4923
    new-instance v0, Landroid/content/Intent;

    const-string v1, "LOCK_ACTION_ON_META"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4924
    const-string v1, "songname"

    invoke-direct {p0}, Lcom/fiio/music/service/MediaPlayerService;->ah()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4925
    const-string v1, "artist"

    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4926
    const-string v1, "isplaying"

    invoke-static {}, Lcom/fiio/music/service/MediaPlayerService;->L()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4927
    const-string v1, "song_flag"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4928
    invoke-virtual {p0, v0}, Lcom/fiio/music/service/MediaPlayerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 4929
    return-void
.end method

.method static synthetic g(Lcom/fiio/music/service/MediaPlayerService;)V
    .locals 0

    .prologue
    .line 5897
    invoke-direct {p0}, Lcom/fiio/music/service/MediaPlayerService;->aq()V

    return-void
.end method

.method static synthetic h(Lcom/fiio/music/service/MediaPlayerService;)V
    .locals 1

    .prologue
    .line 1996
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/fiio/music/service/MediaPlayerService;->e(I)V

    return-void
.end method

.method static synthetic i(Lcom/fiio/music/service/MediaPlayerService;)V
    .locals 1

    .prologue
    .line 2247
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/fiio/music/service/MediaPlayerService;->f(I)V

    return-void
.end method

.method static synthetic j(Lcom/fiio/music/service/MediaPlayerService;)V
    .locals 0

    .prologue
    .line 4266
    invoke-direct {p0}, Lcom/fiio/music/service/MediaPlayerService;->am()V

    return-void
.end method

.method static synthetic k(Lcom/fiio/music/service/MediaPlayerService;)V
    .locals 0

    .prologue
    .line 2201
    invoke-direct {p0}, Lcom/fiio/music/service/MediaPlayerService;->ag()V

    return-void
.end method

.method static synthetic l(Lcom/fiio/music/service/MediaPlayerService;)V
    .locals 2

    .prologue
    .line 2276
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/fiio/music/service/MediaPlayerService;->a(IZ)V

    return-void
.end method

.method static synthetic m(Lcom/fiio/music/service/MediaPlayerService;)V
    .locals 0

    .prologue
    .line 4246
    invoke-direct {p0}, Lcom/fiio/music/service/MediaPlayerService;->al()V

    return-void
.end method

.method static synthetic n(Lcom/fiio/music/service/MediaPlayerService;)Lcom/b/a/b/d;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->V:Lcom/b/a/b/d;

    return-object v0
.end method

.method static synthetic o(Lcom/fiio/music/service/MediaPlayerService;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 4968
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->aU:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic p(Lcom/fiio/music/service/MediaPlayerService;)Landroid/media/AudioManager;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->U:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic q(Lcom/fiio/music/service/MediaPlayerService;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 1

    .prologue
    .line 4962
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->aT:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object v0
.end method

.method static synthetic r(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/widget/MediaAppWidgetProvider;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->ac:Lcom/fiio/music/widget/MediaAppWidgetProvider;

    return-object v0
.end method

.method static synthetic s(Lcom/fiio/music/service/MediaPlayerService;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->aa:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic t(Lcom/fiio/music/service/MediaPlayerService;)I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcom/fiio/music/service/MediaPlayerService;->z:I

    return v0
.end method

.method static synthetic u(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/service/af;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    return-object v0
.end method

.method static synthetic v(Lcom/fiio/music/service/MediaPlayerService;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->at:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic w(Lcom/fiio/music/service/MediaPlayerService;)Z
    .locals 1

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/fiio/music/service/MediaPlayerService;->M:Z

    return v0
.end method

.method static synthetic x(Lcom/fiio/music/service/MediaPlayerService;)Z
    .locals 1

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/fiio/music/service/MediaPlayerService;->ab:Z

    return v0
.end method

.method static synthetic y(Lcom/fiio/music/service/MediaPlayerService;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->Z:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic z(Lcom/fiio/music/service/MediaPlayerService;)I
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Lcom/fiio/music/service/MediaPlayerService;->al:I

    return v0
.end method


# virtual methods
.method public final A()V
    .locals 2

    .prologue
    .line 3190
    invoke-static {}, Lcom/fiio/music/service/MediaPlayerService;->ao()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3191
    new-instance v0, Lcom/fiio/music/service/y;

    invoke-direct {v0, p0}, Lcom/fiio/music/service/y;-><init>(Lcom/fiio/music/service/MediaPlayerService;)V

    .line 3192
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->N:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 3194
    :cond_0
    return-void
.end method

.method public final B()V
    .locals 8

    .prologue
    .line 3521
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    invoke-virtual {v0}, Lcom/fiio/music/service/af;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3522
    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->J()V

    .line 3525
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    if-eqz v0, :cond_2

    .line 3526
    const/4 v0, 0x3

    iput v0, p0, Lcom/fiio/music/service/MediaPlayerService;->z:I

    .line 3527
    iget-boolean v0, p0, Lcom/fiio/music/service/MediaPlayerService;->j:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/fiio/music/service/MediaPlayerService;->p:Z

    if-nez v0, :cond_3

    .line 3528
    invoke-direct {p0}, Lcom/fiio/music/service/MediaPlayerService;->ak()V

    .line 3532
    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fiio/music/service/MediaPlayerService;->aE:Z

    .line 3535
    :cond_2
    return-void

    .line 3529
    :cond_3
    iget-boolean v0, p0, Lcom/fiio/music/service/MediaPlayerService;->j:Z

    if-eqz v0, :cond_1

    .line 3530
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    iget v2, p0, Lcom/fiio/music/service/MediaPlayerService;->k:I

    iget v3, p0, Lcom/fiio/music/service/MediaPlayerService;->l:I

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getArtist()Lcom/fiio/music/entity/Artist;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/entity/Artist;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/fiio/music/service/MediaPlayerService;->u:Ljava/util/List;

    iget v7, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/fiio/music/service/MediaPlayerService;->a(Lcom/fiio/music/entity/Song;IILjava/lang/String;Ljava/lang/String;Ljava/util/List;I)V

    goto :goto_0
.end method

.method public final C()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 4333
    iput-boolean v4, p0, Lcom/fiio/music/service/MediaPlayerService;->M:Z

    .line 4334
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    invoke-virtual {v0}, Lcom/fiio/music/service/af;->b()I

    move-result v0

    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    invoke-virtual {v1}, Lcom/fiio/music/service/af;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    invoke-virtual {v0}, Lcom/fiio/music/service/af;->b()I

    move-result v0

    sub-int/2addr v0, v1

    if-nez v0, :cond_2

    .line 4335
    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->E()V

    .line 4360
    :goto_1
    return-void

    .line 4334
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 4338
    :cond_2
    iget v0, p0, Lcom/fiio/music/service/MediaPlayerService;->z:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 4339
    iput-boolean v3, p0, Lcom/fiio/music/service/MediaPlayerService;->Q:Z

    .line 4340
    iput-boolean v4, p0, Lcom/fiio/music/service/MediaPlayerService;->J:Z

    .line 4341
    sget-object v0, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4342
    sget-object v0, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->stopPlay()V

    .line 4345
    :cond_3
    iget v0, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    if-ne v0, v3, :cond_4

    .line 4346
    invoke-direct {p0}, Lcom/fiio/music/service/MediaPlayerService;->ap()V

    goto :goto_1

    .line 4348
    :cond_4
    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->x()V

    goto :goto_1

    .line 4353
    :cond_5
    iget v0, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    if-ne v0, v3, :cond_6

    .line 4354
    invoke-direct {p0}, Lcom/fiio/music/service/MediaPlayerService;->ap()V

    goto :goto_1

    .line 4356
    :cond_6
    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->x()V

    goto :goto_1
.end method

.method public final D()V
    .locals 1

    .prologue
    .line 4399
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->aM:Lcom/fiio/music/service/ab;

    invoke-interface {v0}, Lcom/fiio/music/service/ab;->a()V

    .line 4400
    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->E()V

    .line 4402
    return-void
.end method

.method public final E()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 4454
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fiio/music/service/MediaPlayerService;->O:Z

    .line 4455
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fiio/music/service/MediaPlayerService;->J:Z

    .line 4456
    iput v1, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    .line 4457
    iput v1, p0, Lcom/fiio/music/service/MediaPlayerService;->z:I

    .line 4459
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    invoke-virtual {v0}, Lcom/fiio/music/service/af;->f()V

    .line 4460
    sget-object v0, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4461
    sget-object v0, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->stopPlay()V

    .line 4465
    :goto_0
    return-void

    .line 4463
    :cond_0
    sget-object v0, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->forSdCard()V

    goto :goto_0
.end method

.method public final F()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4485
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->I:Ljava/lang/String;

    return-object v0
.end method

.method public final G()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 4512
    const-string v2, "long"

    const-string v3, "randomPlayerForState flag:1"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4513
    iput v1, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    .line 4538
    iput-boolean v0, p0, Lcom/fiio/music/service/MediaPlayerService;->J:Z

    .line 4539
    sget-object v2, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v2}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4540
    sget-object v2, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v2}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->stopPlay()V

    .line 4542
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    .line 4543
    iput v0, p0, Lcom/fiio/music/service/MediaPlayerService;->K:I

    .line 4548
    :try_start_0
    invoke-static {p0}, Lcom/fiio/music/util/h;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 4549
    iget-object v3, p0, Lcom/fiio/music/service/MediaPlayerService;->F:Lcom/fiio/music/b/k;

    invoke-virtual {v3, v2}, Lcom/fiio/music/b/k;->b(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 4550
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_2

    .line 4575
    :cond_1
    :goto_0
    return v0

    .line 4552
    :cond_2
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 4554
    const-string v4, "sin"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "randomIndex - "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 4555
    invoke-static {v2, v3}, Lcom/fiio/music/util/h;->a(Landroid/database/Cursor;I)Lcom/fiio/music/entity/Song;

    move-result-object v4

    iput-object v4, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    .line 4556
    const-string v4, "sin"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "randomIndex - song name : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v6}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 4557
    iget-object v4, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v4}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4560
    iget v4, p0, Lcom/fiio/music/service/MediaPlayerService;->A:I

    .line 4561
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/fiio/music/service/MediaPlayerService;->b(I)V

    .line 4563
    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 4564
    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {p0, v3, v2, v5}, Lcom/fiio/music/service/MediaPlayerService;->a(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 4568
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 4569
    invoke-virtual {p0, v4}, Lcom/fiio/music/service/MediaPlayerService;->b(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 4575
    goto :goto_0

    .line 4572
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final H()Ljava/util/List;
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
    .line 4582
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    invoke-virtual {v0}, Lcom/fiio/music/service/af;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final I()Ljava/util/List;
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
    .line 4593
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    invoke-virtual {v0}, Lcom/fiio/music/service/af;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final J()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v3, 0x0

    const v5, 0x7f0c0054

    .line 4601
    const-string v0, "long"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "resetPlayerList palyFlag:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  par:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/service/MediaPlayerService;->I:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " resetPlaylistFromDB:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/fiio/music/service/MediaPlayerService;->C:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4602
    new-instance v0, Lcom/fiio/music/util/cm;

    invoke-direct {v0}, Lcom/fiio/music/util/cm;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->X:Lcom/fiio/music/util/cm;

    .line 4603
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4604
    iget-boolean v1, p0, Lcom/fiio/music/service/MediaPlayerService;->ab:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/fiio/music/service/MediaPlayerService;->M:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/fiio/music/service/MediaPlayerService;->C:Z

    if-eqz v1, :cond_0

    .line 4605
    iget v1, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    const/16 v2, 0xe

    if-eq v1, v2, :cond_0

    .line 4606
    iget v1, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    const/16 v2, 0xb

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    const/16 v2, 0xf

    if-eq v1, v2, :cond_0

    .line 4607
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->E:Lcom/fiio/music/b/g;

    invoke-virtual {v0}, Lcom/fiio/music/b/g;->b()Ljava/util/List;

    move-result-object v0

    .line 4608
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    invoke-virtual {v1, v0}, Lcom/fiio/music/service/af;->a(Ljava/util/List;)V

    .line 4609
    iput-boolean v3, p0, Lcom/fiio/music/service/MediaPlayerService;->C:Z

    .line 4610
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->Z:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 4611
    const-string v2, "RESET_PLAYLIST"

    iget-boolean v3, p0, Lcom/fiio/music/service/MediaPlayerService;->C:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 4612
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4613
    const-string v1, "long"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u65b0\u7684\u8bb0\u5fc6\u5217\u8868\u65b9\u5f0f:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    invoke-virtual {v3}, Lcom/fiio/music/service/af;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  newPlayListsize:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4768
    :goto_0
    return-void

    .line 4616
    :cond_0
    iget v1, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    packed-switch v1, :pswitch_data_0

    .line 4762
    :cond_1
    :goto_1
    :pswitch_0
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    invoke-virtual {v1, v0}, Lcom/fiio/music/service/af;->a(Ljava/util/List;)V

    .line 4767
    const-string v0, "long"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "resetPlayerList playList:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    invoke-virtual {v2}, Lcom/fiio/music/service/af;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4625
    :pswitch_1
    iget-boolean v1, p0, Lcom/fiio/music/service/MediaPlayerService;->ab:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->I:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/fiio/music/service/MediaPlayerService;->M:Z

    if-eqz v1, :cond_2

    .line 4626
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->F:Lcom/fiio/music/b/k;

    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->I:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fiio/music/b/k;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 4631
    :cond_2
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->u:Ljava/util/List;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->u:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 4632
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->u:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 4634
    :cond_3
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->F:Lcom/fiio/music/b/k;

    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->I:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fiio/music/b/k;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 4638
    :pswitch_2
    iget-boolean v1, p0, Lcom/fiio/music/service/MediaPlayerService;->ab:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->I:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/fiio/music/service/MediaPlayerService;->M:Z

    if-eqz v1, :cond_4

    .line 4639
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->F:Lcom/fiio/music/b/k;

    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->I:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fiio/music/b/k;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 4644
    :cond_4
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->u:Ljava/util/List;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->u:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 4645
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->u:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 4647
    :cond_5
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->F:Lcom/fiio/music/b/k;

    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->I:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fiio/music/b/k;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 4652
    :pswitch_3
    iget-boolean v1, p0, Lcom/fiio/music/service/MediaPlayerService;->ab:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->I:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/fiio/music/service/MediaPlayerService;->M:Z

    if-eqz v1, :cond_6

    .line 4653
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->F:Lcom/fiio/music/b/k;

    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->I:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fiio/music/b/k;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    sget v1, Lcom/fiio/music/util/cn;->d:I

    invoke-static {v0, v3, v1}, Lcom/fiio/music/util/cn;->a(Ljava/util/List;II)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_1

    .line 4654
    :cond_6
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->u:Ljava/util/List;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->u:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 4655
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->u:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 4657
    :cond_7
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->F:Lcom/fiio/music/b/k;

    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->I:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fiio/music/b/k;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    sget v1, Lcom/fiio/music/util/cn;->d:I

    invoke-static {v0, v3, v1}, Lcom/fiio/music/util/cn;->a(Ljava/util/List;II)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_1

    .line 4661
    :pswitch_4
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->F:Lcom/fiio/music/b/k;

    invoke-virtual {v0}, Lcom/fiio/music/b/k;->h()Ljava/util/List;

    move-result-object v0

    goto/16 :goto_1

    .line 4664
    :pswitch_5
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->u:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 4667
    :pswitch_6
    iget-boolean v1, p0, Lcom/fiio/music/service/MediaPlayerService;->M:Z

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lcom/fiio/music/service/MediaPlayerService;->ab:Z

    if-eqz v1, :cond_8

    .line 4668
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->G:Lcom/fiio/music/b/h;

    invoke-virtual {v0}, Lcom/fiio/music/b/h;->a()Ljava/util/List;

    move-result-object v0

    goto/16 :goto_1

    .line 4670
    :cond_8
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->u:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 4674
    :pswitch_7
    iget-boolean v1, p0, Lcom/fiio/music/service/MediaPlayerService;->M:Z

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Lcom/fiio/music/service/MediaPlayerService;->ab:Z

    if-eqz v1, :cond_9

    .line 4675
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->H:Lcom/fiio/music/b/i;

    invoke-virtual {v0}, Lcom/fiio/music/b/i;->a()Ljava/util/List;

    move-result-object v0

    goto/16 :goto_1

    .line 4677
    :cond_9
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->u:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 4681
    :pswitch_8
    iget-boolean v1, p0, Lcom/fiio/music/service/MediaPlayerService;->M:Z

    if-eqz v1, :cond_a

    iget-boolean v1, p0, Lcom/fiio/music/service/MediaPlayerService;->ab:Z

    if-eqz v1, :cond_a

    .line 4682
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->G:Lcom/fiio/music/b/h;

    invoke-virtual {v0}, Lcom/fiio/music/b/h;->a()Ljava/util/List;

    move-result-object v0

    goto/16 :goto_1

    .line 4684
    :cond_a
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->u:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 4688
    :pswitch_9
    iget-boolean v1, p0, Lcom/fiio/music/service/MediaPlayerService;->M:Z

    if-eqz v1, :cond_b

    iget-boolean v1, p0, Lcom/fiio/music/service/MediaPlayerService;->ab:Z

    if-eqz v1, :cond_b

    .line 4689
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->H:Lcom/fiio/music/b/i;

    invoke-virtual {v0}, Lcom/fiio/music/b/i;->a()Ljava/util/List;

    move-result-object v0

    goto/16 :goto_1

    .line 4691
    :cond_b
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->u:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 4695
    :pswitch_a
    iget-boolean v1, p0, Lcom/fiio/music/service/MediaPlayerService;->M:Z

    if-eqz v1, :cond_c

    iget-boolean v1, p0, Lcom/fiio/music/service/MediaPlayerService;->ab:Z

    if-eqz v1, :cond_c

    .line 4696
    new-instance v1, Lcom/fiio/music/util/cr;

    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/fiio/music/util/cr;-><init>(Landroid/content/Context;)V

    .line 4697
    new-instance v2, Lcom/fiio/music/util/bw;

    invoke-virtual {p0, v5}, Lcom/fiio/music/service/MediaPlayerService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/fiio/music/util/bw;-><init>(Ljava/lang/String;)V

    .line 4698
    const-string v3, "PlayListSong"

    invoke-virtual {v1, v3}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    move-result v3

    .line 4699
    const-string v4, "AZplagListSong"

    invoke-virtual {v1, v4}, Lcom/fiio/music/util/cr;->b(Ljava/lang/String;)I

    move-result v1

    .line 4701
    sget v4, Lcom/fiio/music/util/cn;->f:I

    if-ne v1, v4, :cond_e

    .line 4702
    sget v1, Lcom/fiio/music/util/cn;->a:I

    if-ne v3, v1, :cond_d

    .line 4704
    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->getApplicationContext()Landroid/content/Context;

    invoke-virtual {p0, v5}, Lcom/fiio/music/service/MediaPlayerService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v7}, Lcom/fiio/music/util/bw;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->u:Ljava/util/List;

    .line 4715
    :cond_c
    :goto_2
    :try_start_0
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->u:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 4717
    :catch_0
    move-exception v1

    const-string v1, "long"

    const-string v2, "\u6700\u7231\u64ad\u653eresetlist\u5f02\u5e38"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4707
    :cond_d
    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->getApplicationContext()Landroid/content/Context;

    invoke-virtual {p0, v5}, Lcom/fiio/music/service/MediaPlayerService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v8}, Lcom/fiio/music/util/bw;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->u:Ljava/util/List;

    goto :goto_2

    .line 4710
    :cond_e
    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->getApplicationContext()Landroid/content/Context;

    invoke-virtual {p0, v5}, Lcom/fiio/music/service/MediaPlayerService;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v6}, Lcom/fiio/music/util/bw;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/fiio/music/service/MediaPlayerService;->u:Ljava/util/List;

    .line 4711
    iget-object v2, p0, Lcom/fiio/music/service/MediaPlayerService;->u:Ljava/util/List;

    invoke-static {v2, v3, v1}, Lcom/fiio/music/util/cn;->e(Ljava/util/List;II)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->u:Ljava/util/List;

    goto :goto_2

    .line 4720
    :pswitch_b
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->u:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 4723
    :pswitch_c
    iget-boolean v1, p0, Lcom/fiio/music/service/MediaPlayerService;->M:Z

    if-eqz v1, :cond_f

    iget-boolean v1, p0, Lcom/fiio/music/service/MediaPlayerService;->ab:Z

    if-eqz v1, :cond_f

    .line 4724
    new-instance v1, Lcom/fiio/music/util/bw;

    invoke-direct {v1}, Lcom/fiio/music/util/bw;-><init>()V

    .line 4725
    const-string v2, "long"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/fiio/music/service/MediaPlayerService;->I:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u3000\u3000\u3000"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->getApplicationContext()Landroid/content/Context;

    iget-object v4, p0, Lcom/fiio/music/service/MediaPlayerService;->I:Ljava/lang/String;

    invoke-virtual {v1, v4, v6}, Lcom/fiio/music/util/bw;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4726
    new-instance v2, Lcom/fiio/music/util/cr;

    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/fiio/music/util/cr;-><init>(Landroid/content/Context;)V

    .line 4727
    const-string v3, "PlayListSong"

    invoke-virtual {v2, v3}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    move-result v3

    .line 4728
    const-string v4, "AZplagListSong"

    invoke-virtual {v2, v4}, Lcom/fiio/music/util/cr;->b(Ljava/lang/String;)I

    move-result v2

    .line 4730
    sget v4, Lcom/fiio/music/util/cn;->f:I

    if-ne v2, v4, :cond_11

    .line 4731
    sget v2, Lcom/fiio/music/util/cn;->a:I

    if-ne v3, v2, :cond_10

    .line 4733
    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->getApplicationContext()Landroid/content/Context;

    iget-object v2, p0, Lcom/fiio/music/service/MediaPlayerService;->I:Ljava/lang/String;

    invoke-virtual {v1, v2, v7}, Lcom/fiio/music/util/bw;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->u:Ljava/util/List;

    .line 4744
    :cond_f
    :goto_3
    :try_start_1
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->u:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 4746
    :catch_1
    move-exception v1

    const-string v1, "long"

    const-string v2, "\u5217\u8868\u64ad\u653eresetlist\u5f02\u5e38"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4736
    :cond_10
    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->getApplicationContext()Landroid/content/Context;

    iget-object v2, p0, Lcom/fiio/music/service/MediaPlayerService;->I:Ljava/lang/String;

    invoke-virtual {v1, v2, v8}, Lcom/fiio/music/util/bw;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->u:Ljava/util/List;

    goto :goto_3

    .line 4739
    :cond_11
    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->getApplicationContext()Landroid/content/Context;

    iget-object v4, p0, Lcom/fiio/music/service/MediaPlayerService;->I:Ljava/lang/String;

    invoke-virtual {v1, v4, v6}, Lcom/fiio/music/util/bw;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->u:Ljava/util/List;

    .line 4740
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->u:Ljava/util/List;

    invoke-static {v1, v3, v2}, Lcom/fiio/music/util/cn;->e(Ljava/util/List;II)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->u:Ljava/util/List;

    goto :goto_3

    .line 4750
    :pswitch_d
    invoke-static {p0}, Lcom/fiio/music/util/da;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_1

    .line 4753
    :pswitch_e
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    if-eqz v1, :cond_1

    .line 4754
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 4758
    :pswitch_f
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->u:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 4761
    :pswitch_10
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->F:Lcom/fiio/music/b/k;

    invoke-virtual {v0}, Lcom/fiio/music/b/k;->c()Ljava/util/List;

    move-result-object v0

    goto/16 :goto_1

    .line 4616
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_c
        :pswitch_a
        :pswitch_6
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_7
        :pswitch_e
        :pswitch_f
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_10
    .end packed-switch
.end method

.method public final K()V
    .locals 2

    .prologue
    .line 4774
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fiio/music/service/af;->a(Ljava/util/List;)V

    .line 4775
    return-void
.end method

.method public final M()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/16 v5, 0x64

    const/4 v2, 0x2

    .line 4942
    invoke-direct {p0, v2}, Lcom/fiio/music/service/MediaPlayerService;->g(I)V

    .line 4943
    sget-object v0, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4944
    sget-object v0, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->pause()V

    .line 4945
    sget-object v0, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/fiio/music/service/MediaPlayerService;->K:I

    .line 4946
    sget-object v0, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->stopPlay()V

    .line 4947
    iput v2, p0, Lcom/fiio/music/service/MediaPlayerService;->z:I

    .line 4948
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/fiio/music/util/a;->a(Landroid/content/Context;)I

    move-result v2

    .line 4951
    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/fiio/music/service/MediaPlayerService;->c:Lcom/b/a/b/f;

    .line 4950
    invoke-static {v0, v2, v3, v4}, Lcom/fiio/music/util/h;->b(Lcom/fiio/music/entity/Song;ILandroid/content/Context;Lcom/b/a/b/f;)Ljava/lang/String;

    move-result-object v0

    .line 4953
    new-instance v2, Lcom/b/a/b/a/f;

    invoke-direct {v2, v5, v5}, Lcom/b/a/b/a/f;-><init>(II)V

    .line 4954
    iget-object v3, p0, Lcom/fiio/music/service/MediaPlayerService;->c:Lcom/b/a/b/f;

    .line 4955
    iget-object v4, p0, Lcom/fiio/music/service/MediaPlayerService;->V:Lcom/b/a/b/d;

    .line 4954
    invoke-virtual {v3, v0, v2, v4}, Lcom/b/a/b/f;->a(Ljava/lang/String;Lcom/b/a/b/a/f;Lcom/b/a/b/d;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 4956
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    if-nez v0, :cond_1

    move-object v0, v1

    .line 4957
    :goto_0
    iget-object v3, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    if-nez v3, :cond_2

    .line 4956
    :goto_1
    invoke-virtual {p0, v2, v0, v1}, Lcom/fiio/music/service/MediaPlayerService;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    .line 4958
    invoke-direct {p0}, Lcom/fiio/music/service/MediaPlayerService;->am()V

    .line 4961
    :cond_0
    return-void

    .line 4956
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getArtist()Lcom/fiio/music/entity/Artist;

    move-result-object v0

    .line 4957
    invoke-virtual {v0}, Lcom/fiio/music/entity/Artist;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public final N()Z
    .locals 1

    .prologue
    .line 5014
    iget-boolean v0, p0, Lcom/fiio/music/service/MediaPlayerService;->M:Z

    return v0
.end method

.method public final O()Lcom/fiio/music/entity/Song;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 5081
    iget v1, p0, Lcom/fiio/music/service/MediaPlayerService;->z:I

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    invoke-virtual {v1}, Lcom/fiio/music/service/af;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5082
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    iget v1, p0, Lcom/fiio/music/service/MediaPlayerService;->A:I

    iget-object v2, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/service/af;->c(ILcom/fiio/music/entity/Song;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    .line 5092
    :cond_0
    :goto_0
    return-object v0

    .line 5083
    :cond_1
    iget v1, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->aZ:Lcom/fiio/music/service/a;

    if-eqz v1, :cond_0

    .line 5085
    :try_start_0
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->aZ:Lcom/fiio/music/service/a;

    iget v2, p0, Lcom/fiio/music/service/MediaPlayerService;->A:I

    invoke-virtual {v1, v2}, Lcom/fiio/music/service/a;->c(I)Lcom/fiio/music/entity/Song;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 5086
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final P()Lcom/fiio/music/entity/Song;
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 5101
    iget v1, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    if-eq v1, v2, :cond_1

    .line 5102
    iget v1, p0, Lcom/fiio/music/service/MediaPlayerService;->z:I

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    invoke-virtual {v1}, Lcom/fiio/music/service/af;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5103
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    iget v1, p0, Lcom/fiio/music/service/MediaPlayerService;->A:I

    iget-object v2, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/service/af;->e(ILcom/fiio/music/entity/Song;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    .line 5113
    :cond_0
    :goto_0
    return-object v0

    .line 5104
    :cond_1
    iget v1, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->aZ:Lcom/fiio/music/service/a;

    if-eqz v1, :cond_0

    .line 5106
    :try_start_0
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->aZ:Lcom/fiio/music/service/a;

    iget v2, p0, Lcom/fiio/music/service/MediaPlayerService;->A:I

    invoke-virtual {v1, v2}, Lcom/fiio/music/service/a;->d(I)Lcom/fiio/music/entity/Song;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 5107
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final Q()Z
    .locals 1

    .prologue
    .line 5138
    iget-boolean v0, p0, Lcom/fiio/music/service/MediaPlayerService;->j:Z

    return v0
.end method

.method public final R()V
    .locals 1

    .prologue
    .line 5383
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fiio/music/service/MediaPlayerService;->Q:Z

    .line 5384
    return-void
.end method

.method public final S()I
    .locals 1

    .prologue
    .line 5386
    iget v0, p0, Lcom/fiio/music/service/MediaPlayerService;->K:I

    return v0
.end method

.method public final T()V
    .locals 1

    .prologue
    .line 5390
    const/4 v0, 0x0

    iput v0, p0, Lcom/fiio/music/service/MediaPlayerService;->K:I

    .line 5391
    return-void
.end method

.method public final U()V
    .locals 1

    .prologue
    .line 5436
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fiio/music/service/MediaPlayerService;->ar:Z

    .line 5437
    return-void
.end method

.method public final V()Z
    .locals 1

    .prologue
    .line 5443
    iget-boolean v0, p0, Lcom/fiio/music/service/MediaPlayerService;->p:Z

    return v0
.end method

.method public final W()Lorg/justcodecs/dsd/SacdDataFormat;
    .locals 1

    .prologue
    .line 5577
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->q:Lorg/justcodecs/dsd/SacdDataFormat;

    return-object v0
.end method

.method public final Z()Ljava/util/List;
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
    .line 5711
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    invoke-virtual {v0}, Lcom/fiio/music/service/af;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/example/root/checkappmusic/FiioMediaPlayer;)I
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v4, -0x1

    .line 2717
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    if-nez v1, :cond_0

    .line 2731
    :goto_0
    return v0

    .line 2720
    :cond_0
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getDurationTime()I

    move-result v1

    .line 2722
    if-eq v1, v4, :cond_1

    if-eqz v1, :cond_1

    if-ne v1, v0, :cond_2

    .line 2723
    :cond_1
    if-eqz p1, :cond_3

    .line 2724
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->F:Lcom/fiio/music/b/k;

    iget-object v2, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v2}, Lcom/fiio/music/entity/Song;->getId_()I

    move-result v2

    invoke-virtual {p1}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->getDuration()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/fiio/music/b/k;->b(II)V

    .line 2725
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {p1}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->getDuration()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/fiio/music/entity/Song;->setDurationTime(I)V

    :cond_2
    :goto_1
    move v0, v1

    .line 2731
    goto :goto_0

    .line 2727
    :cond_3
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    iget-object v2, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v2}, Lcom/fiio/music/entity/Song;->getId_()I

    move-result v2

    iget-object v3, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v3}, Lcom/fiio/music/entity/Song;->getDurationTime()I

    move-result v3

    if-eq v3, v4, :cond_4

    iget-object v4, p0, Lcom/fiio/music/service/MediaPlayerService;->F:Lcom/fiio/music/b/k;

    invoke-virtual {v4, v2, v3}, Lcom/fiio/music/b/k;->b(II)V

    :cond_4
    invoke-virtual {v0, v3}, Lcom/fiio/music/entity/Song;->setDurationTime(I)V

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 2673
    const-string v0, "artistid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2674
    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->p()Ljava/lang/String;

    move-result-object v0

    .line 2678
    :goto_0
    return-object v0

    .line 2675
    :cond_0
    const-string v0, "albumid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2676
    invoke-direct {p0}, Lcom/fiio/music/service/MediaPlayerService;->aj()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2678
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getStyle()Lcom/fiio/music/entity/SongStyle;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    const-string v0, "FiiO Music"

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getStyle()Lcom/fiio/music/entity/SongStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/entity/SongStyle;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Ljava/io/File;Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4061
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4062
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->ad:Lcom/fiio/music/util/an;

    invoke-virtual {v1, p1, p2}, Lcom/fiio/music/util/an;->b(Ljava/io/File;Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 4063
    iget-object v2, p0, Lcom/fiio/music/service/MediaPlayerService;->ad:Lcom/fiio/music/util/an;

    invoke-virtual {v2}, Lcom/fiio/music/util/an;->b()Ljava/util/List;

    move-result-object v2

    .line 4064
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 4065
    iget-object v3, p0, Lcom/fiio/music/service/MediaPlayerService;->af:Lcom/fiio/music/util/cr;

    const-string v4, "tabEFm"

    invoke-virtual {v3, v4}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    move-result v3

    .line 4066
    iget-object v4, p0, Lcom/fiio/music/service/MediaPlayerService;->af:Lcom/fiio/music/util/cr;

    const-string v5, "AZtabEFM"

    invoke-virtual {v4, v5}, Lcom/fiio/music/util/cr;->b(Ljava/lang/String;)I

    move-result v4

    .line 4067
    invoke-static {v1, v3, v4}, Lcom/fiio/music/util/cn;->c(Ljava/util/List;II)Ljava/util/List;

    move-result-object v1

    .line 4068
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4070
    :cond_0
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 4071
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4073
    :cond_1
    return-object v0
.end method

.method public final a(I)V
    .locals 12

    .prologue
    const/16 v5, 0x64

    const/4 v4, 0x0

    .line 2474
    iget-boolean v0, p0, Lcom/fiio/music/service/MediaPlayerService;->p:Z

    if-nez v0, :cond_0

    .line 2475
    sget-object v0, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->seekTo(I)V

    .line 2481
    :goto_0
    const-string v0, "xyz"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "seekTo,msec="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2483
    return-void

    .line 2479
    :cond_0
    sget-object v0, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->setSacdBlockSeekFlag(ZI)V

    sget-object v0, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/fiio/music/util/a;->a(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/service/MediaPlayerService;->c:Lcom/b/a/b/f;

    invoke-static {v0, v1, v2, v3}, Lcom/fiio/music/util/h;->b(Lcom/fiio/music/entity/Song;ILandroid/content/Context;Lcom/b/a/b/f;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/b/a/b/a/f;

    invoke-direct {v1, v5, v5}, Lcom/b/a/b/a/f;-><init>(II)V

    iget-object v2, p0, Lcom/fiio/music/service/MediaPlayerService;->c:Lcom/b/a/b/f;

    iget-object v3, p0, Lcom/fiio/music/service/MediaPlayerService;->V:Lcom/b/a/b/d;

    invoke-virtual {v2, v0, v1, v3}, Lcom/b/a/b/f;->a(Ljava/lang/String;Lcom/b/a/b/a/f;Lcom/b/a/b/d;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getArtist()Lcom/fiio/music/entity/Artist;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/entity/Artist;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v2}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/fiio/music/service/MediaPlayerService;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lcom/fiio/music/service/MediaPlayerService;->am()V

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->aV:Lcom/fiio/music/service/ad;

    invoke-virtual {v0, v4}, Lcom/fiio/music/service/ad;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->aV:Lcom/fiio/music/service/ad;

    invoke-virtual {v0, v4}, Lcom/fiio/music/service/ad;->sendEmptyMessage(I)Z

    :cond_2
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    iget v2, p0, Lcom/fiio/music/service/MediaPlayerService;->k:I

    iget v3, p0, Lcom/fiio/music/service/MediaPlayerService;->l:I

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getArtist()Lcom/fiio/music/entity/Artist;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/entity/Artist;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/fiio/music/service/MediaPlayerService;->u:Ljava/util/List;

    iget v7, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    iget v0, p0, Lcom/fiio/music/service/MediaPlayerService;->k:I

    add-int/2addr v0, p1

    int-to-long v8, v0

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    const-wide/32 v10, 0x2b1100

    mul-long/2addr v8, v10

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lcom/fiio/music/service/MediaPlayerService;->a(Lcom/fiio/music/entity/Song;IILjava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)V

    goto/16 :goto_0
.end method

.method public final a(IILjava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3456
    const-string v0, "xyz-MediaPlayerService"

    const-string v1, "playerById \u64ad\u653e\u524d\u51c6\u5907\u5de5\u4f5c"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3457
    iget v0, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    if-ne v0, p2, :cond_0

    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->I:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->I:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3458
    :cond_0
    iput p2, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    .line 3459
    iput-object p3, p0, Lcom/fiio/music/service/MediaPlayerService;->I:Ljava/lang/String;

    .line 3460
    iput-object p4, p0, Lcom/fiio/music/service/MediaPlayerService;->u:Ljava/util/List;

    .line 3461
    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->J()V

    .line 3463
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->u:Ljava/util/List;

    if-eqz v0, :cond_2

    if-eqz p4, :cond_2

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->u:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3464
    iput-object p4, p0, Lcom/fiio/music/service/MediaPlayerService;->u:Ljava/util/List;

    .line 3465
    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->J()V

    .line 3467
    :cond_2
    iput-object p3, p0, Lcom/fiio/music/service/MediaPlayerService;->I:Ljava/lang/String;

    .line 3468
    iput p2, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    .line 3469
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->af:Lcom/fiio/music/util/cr;

    const-string v1, "tabASort"

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/cr;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3470
    iput-object p4, p0, Lcom/fiio/music/service/MediaPlayerService;->u:Ljava/util/List;

    .line 3471
    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->J()V

    .line 3472
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->af:Lcom/fiio/music/util/cr;

    const-string v1, "tabASort"

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;Z)V

    .line 3474
    :cond_3
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    invoke-virtual {v0}, Lcom/fiio/music/service/af;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3475
    iput-object p4, p0, Lcom/fiio/music/service/MediaPlayerService;->u:Ljava/util/List;

    .line 3476
    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->J()V

    .line 3479
    :cond_4
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    if-eqz v0, :cond_5

    .line 3481
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getId_()I

    move-result v0

    if-eq v0, p1, :cond_5

    .line 3482
    iput-boolean v2, p0, Lcom/fiio/music/service/MediaPlayerService;->M:Z

    .line 3485
    :cond_5
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->F:Lcom/fiio/music/b/k;

    invoke-virtual {v0, p1}, Lcom/fiio/music/b/k;->c(I)Lcom/fiio/music/entity/Song;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    .line 3486
    const/4 v0, 0x3

    iput v0, p0, Lcom/fiio/music/service/MediaPlayerService;->z:I

    .line 3492
    invoke-direct {p0}, Lcom/fiio/music/service/MediaPlayerService;->ak()V

    .line 3493
    return-void
.end method

.method public final varargs a(Landroid/content/Context;Landroid/database/Cursor;I)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 5784
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->aZ:Lcom/fiio/music/service/a;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->aZ:Lcom/fiio/music/service/a;

    invoke-virtual {v0}, Lcom/fiio/music/service/a;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 5786
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 5788
    :cond_0
    if-eqz p2, :cond_1

    if-eqz p2, :cond_5

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_5

    :cond_1
    sget-object v0, Lcom/fiio/music/service/MediaPlayerService;->ba:Ljava/util/ArrayList;

    .line 5791
    :cond_2
    iput p3, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    .line 5792
    const-string v1, "zxy -- -"

    const-string v2, "play  one  "

    invoke-static {v1, v2}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 5793
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    invoke-virtual {v1}, Lcom/fiio/music/service/af;->a()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    invoke-virtual {v1}, Lcom/fiio/music/service/af;->f()V

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_6

    const-string v0, "sin"

    const-string v1, "attempt to play empty song list"

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->a:Landroid/widget/Toast;

    const-string v1, "\u6b4c\u66f2\u5217\u8868\u4e3a\u7a7a"

    invoke-static {v0, p1, v1}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->a:Landroid/widget/Toast;

    .line 5798
    :goto_1
    return-void

    .line 5784
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 5788
    :cond_5
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    :goto_2
    if-ge v1, v2, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 5793
    :cond_6
    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    invoke-static {p2, v1}, Lcom/fiio/music/util/h;->a(Landroid/database/Cursor;I)Lcom/fiio/music/entity/Song;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/service/MediaPlayerService;->aZ:Lcom/fiio/music/service/a;

    invoke-virtual {v3}, Lcom/fiio/music/service/a;->a()Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/fiio/music/service/MediaPlayerService;->aZ:Lcom/fiio/music/service/a;

    invoke-virtual {v3, v0}, Lcom/fiio/music/service/a;->a(Ljava/util/ArrayList;)V

    iput-object v2, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->aZ:Lcom/fiio/music/service/a;

    iget v2, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    const/4 v3, 0x0

    invoke-virtual {v0, p2, v1, v2, v3}, Lcom/fiio/music/service/a;->a(Landroid/database/Cursor;IIZ)V

    invoke-direct {p0}, Lcom/fiio/music/service/MediaPlayerService;->ar()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public final a(Landroid/database/Cursor;I)V
    .locals 1

    .prologue
    .line 6019
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->aZ:Lcom/fiio/music/service/a;

    invoke-virtual {v0, p1, p2}, Lcom/fiio/music/service/a;->a(Landroid/database/Cursor;I)V

    .line 6020
    return-void
.end method

.method public final a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const v5, 0x7f0b021c

    const/4 v4, 0x1

    .line 344
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 348
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/fiio/music/service/MediaPlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 349
    invoke-virtual {v0, v4}, Landroid/app/NotificationManager;->cancel(I)V

    .line 386
    :goto_0
    return-void

    .line 355
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fiio/music/activity/ListMainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 356
    const-string v1, "changeStyleboolean"

    invoke-static {}, Lcom/fiio/music/util/h;->b()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 357
    const/16 v1, 0x64

    .line 358
    const/high16 v2, 0x8000000

    .line 357
    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 360
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 361
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0400ab

    .line 360
    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 363
    iget v2, p0, Lcom/fiio/music/service/MediaPlayerService;->z:I

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/fiio/music/service/MediaPlayerService;->z:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 364
    iget v2, p0, Lcom/fiio/music/service/MediaPlayerService;->z:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    iget v2, p0, Lcom/fiio/music/service/MediaPlayerService;->z:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2

    .line 365
    :cond_1
    const v2, 0x7f020539

    invoke-virtual {v1, v5, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 369
    :goto_1
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-direct {v2, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 370
    invoke-virtual {v2, p3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 372
    invoke-virtual {v2, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 373
    const v3, 0x7f020620

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 374
    invoke-virtual {v2, p1}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 375
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 376
    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 377
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 378
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 381
    iput-object v1, v2, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 384
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/fiio/music/service/MediaPlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 385
    invoke-virtual {v0, v4, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 367
    :cond_2
    const v2, 0x7f020538

    invoke-virtual {v1, v5, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_1
.end method

.method public final a(Lcom/fiio/music/entity/Song;IILjava/lang/String;Ljava/lang/String;Ljava/util/List;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fiio/music/entity/Song;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;I)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 5159
    iput v4, p0, Lcom/fiio/music/service/MediaPlayerService;->z:I

    .line 5160
    iput p7, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    .line 5161
    const/4 v0, 0x6

    if-eq p7, v0, :cond_0

    const/4 v0, 0x5

    if-ne p7, v0, :cond_9

    .line 5162
    :cond_0
    iget-boolean v0, p0, Lcom/fiio/music/service/MediaPlayerService;->ab:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/fiio/music/service/MediaPlayerService;->M:Z

    if-nez v0, :cond_3

    .line 5165
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    invoke-virtual {v0}, Lcom/fiio/music/service/af;->c()Ljava/util/List;

    move-result-object v0

    .line 5166
    if-eqz v0, :cond_2

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 5168
    :cond_2
    iput-object p6, p0, Lcom/fiio/music/service/MediaPlayerService;->u:Ljava/util/List;

    .line 5169
    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->J()V

    .line 5204
    :cond_3
    :goto_0
    if-ne p7, v3, :cond_4

    .line 5205
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->I:Ljava/lang/String;

    .line 5212
    :cond_4
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->aj:Lcom/fiio/music/util/av;

    invoke-virtual {v0, p1}, Lcom/fiio/music/util/av;->a(Lcom/fiio/music/entity/Song;)V

    .line 5213
    iput-object p1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    .line 5214
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0, p3}, Lcom/fiio/music/entity/Song;->setDurationTime(I)V

    .line 5215
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/fiio/music/service/MediaPlayerService;->a(IILjava/lang/String;Ljava/lang/String;)V

    .line 5216
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->ad:Lcom/fiio/music/util/an;

    invoke-virtual {v0}, Lcom/fiio/music/util/an;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5217
    if-eq p7, v3, :cond_5

    .line 5218
    if-eq p7, v4, :cond_5

    .line 5219
    const/4 v0, 0x2

    if-eq p7, v0, :cond_5

    .line 5220
    const/16 v0, 0xa

    if-ne p7, v0, :cond_6

    .line 5221
    :cond_5
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->ae:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/fiio/music/service/ae;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/fiio/music/service/ae;-><init>(Lcom/fiio/music/service/MediaPlayerService;B)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 5223
    :cond_6
    return-void

    .line 5172
    :cond_7
    invoke-interface {v0, p6}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p6, v0}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 5176
    :cond_8
    iput-object p6, p0, Lcom/fiio/music/service/MediaPlayerService;->u:Ljava/util/List;

    .line 5177
    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->J()V

    goto :goto_0

    .line 5182
    :cond_9
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->u:Ljava/util/List;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->u:Ljava/util/List;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 5183
    :cond_a
    iget-boolean v0, p0, Lcom/fiio/music/service/MediaPlayerService;->ab:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/fiio/music/service/MediaPlayerService;->M:Z

    if-eqz v0, :cond_c

    if-eq p7, v3, :cond_c

    .line 5185
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    invoke-virtual {v0}, Lcom/fiio/music/service/af;->b()I

    move-result v0

    if-eqz v0, :cond_b

    if-eq p7, v2, :cond_3

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    invoke-virtual {v0}, Lcom/fiio/music/service/af;->b()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 5186
    :cond_b
    const-string v0, "long"

    const-string v1, "cue\u8bb0\u5fc6\u64ad\u653e\u5217\u8868\u51fa\u9519 \u5e94\u8be5\u662f\u7eaf\u97f3\u91cd\u542f \u5173\u673a\u65f6\u591a\u4f59\u542f\u52a8app\u5bfc\u81f4\u7684"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5187
    iput-boolean v2, p0, Lcom/fiio/music/service/MediaPlayerService;->C:Z

    .line 5188
    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->J()V

    goto/16 :goto_0

    .line 5191
    :cond_c
    iput-object p6, p0, Lcom/fiio/music/service/MediaPlayerService;->u:Ljava/util/List;

    .line 5192
    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->J()V

    goto/16 :goto_0

    .line 5196
    :cond_d
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->u:Ljava/util/List;

    invoke-interface {v0, p6}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->u:Ljava/util/List;

    invoke-interface {p6, v0}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 5199
    :cond_e
    iput-object p6, p0, Lcom/fiio/music/service/MediaPlayerService;->u:Ljava/util/List;

    .line 5200
    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->J()V

    goto/16 :goto_0
.end method

.method public final a(Lcom/fiio/music/entity/Song;IILjava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fiio/music/entity/Song;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;IJ)V"
        }
    .end annotation

    .prologue
    .line 5468
    const/4 v0, 0x3

    iput v0, p0, Lcom/fiio/music/service/MediaPlayerService;->z:I

    .line 5469
    iput p7, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    .line 5471
    const/4 v0, 0x1

    if-eq p7, v0, :cond_1

    .line 5472
    iget-boolean v0, p0, Lcom/fiio/music/service/MediaPlayerService;->ab:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/fiio/music/service/MediaPlayerService;->M:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x4

    if-eq p7, v0, :cond_9

    .line 5473
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    invoke-virtual {v0}, Lcom/fiio/music/service/af;->b()I

    move-result v0

    if-eqz v0, :cond_0

    .line 5474
    const/4 v0, 0x6

    if-eq p7, v0, :cond_1

    .line 5475
    const/4 v0, 0x5

    if-eq p7, v0, :cond_1

    .line 5476
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    invoke-virtual {v0}, Lcom/fiio/music/service/af;->b()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 5477
    :cond_0
    const-string v0, "long"

    const-string v1, "iso\u8bb0\u5fc6\u64ad\u653e\u5217\u8868\u51fa\u95ee\u9898 \u5e94\u8be5\u662f\u7eaf\u97f3\u91cd\u542f\u5bfc\u81f4\u7684 \u540ccue"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5478
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fiio/music/service/MediaPlayerService;->C:Z

    .line 5479
    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->J()V

    .line 5493
    :cond_1
    :goto_0
    iput-wide p8, p0, Lcom/fiio/music/service/MediaPlayerService;->aX:J

    .line 5497
    iput-object p1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    .line 5498
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0, p3}, Lcom/fiio/music/entity/Song;->setDurationTime(I)V

    .line 5499
    iput p3, p0, Lcom/fiio/music/service/MediaPlayerService;->l:I

    iput p2, p0, Lcom/fiio/music/service/MediaPlayerService;->k:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fiio/music/service/MediaPlayerService;->J:Z

    sget-object v0, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->setd2p_flag(Z)V

    sget-object v0, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->setBluetoothState(Z)V

    sget-object v0, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->stopPlay()V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fiio/music/service/MediaPlayerService;->j:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fiio/music/service/MediaPlayerService;->p:Z

    sget-object v0, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->setCueFlag(Z)V

    sget-object v0, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->setSacdFlag(Z)V

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->U:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->aT:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->N:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/fiio/music/service/aa;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/fiio/music/service/aa;-><init>(Lcom/fiio/music/service/MediaPlayerService;B)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    iget v0, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->d:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    iget-boolean v0, p0, Lcom/fiio/music/service/MediaPlayerService;->aY:Z

    if-nez v0, :cond_7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/fiio/music/util/a;->a(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/service/MediaPlayerService;->c:Lcom/b/a/b/f;

    invoke-static {v0, v1, v2, v3}, Lcom/fiio/music/util/h;->b(Lcom/fiio/music/entity/Song;ILandroid/content/Context;Lcom/b/a/b/f;)Ljava/lang/String;

    move-result-object v0

    :cond_4
    new-instance v1, Lcom/b/a/b/a/f;

    const/16 v2, 0x64

    const/16 v3, 0x64

    invoke-direct {v1, v2, v3}, Lcom/b/a/b/a/f;-><init>(II)V

    iget-object v2, p0, Lcom/fiio/music/service/MediaPlayerService;->c:Lcom/b/a/b/f;

    iget-object v3, p0, Lcom/fiio/music/service/MediaPlayerService;->V:Lcom/b/a/b/d;

    invoke-virtual {v2, v0, v1, v3}, Lcom/b/a/b/f;->a(Ljava/lang/String;Lcom/b/a/b/a/f;Lcom/b/a/b/d;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez p5, :cond_5

    const v1, 0x7f0c00d4

    invoke-virtual {p0, v1}, Lcom/fiio/music/service/MediaPlayerService;->getString(I)Ljava/lang/String;

    move-result-object p5

    :cond_5
    invoke-virtual {p0, v0, p5, p4}, Lcom/fiio/music/service/MediaPlayerService;->b(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p4, p3, p5}, Lcom/fiio/music/service/MediaPlayerService;->b(Ljava/lang/String;ILjava/lang/String;)V

    invoke-direct {p0}, Lcom/fiio/music/service/MediaPlayerService;->am()V

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->ad:Lcom/fiio/music/util/an;

    invoke-virtual {v0}, Lcom/fiio/music/util/an;->c()Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_6

    iget v0, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    iget v0, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    iget v0, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->ae:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/fiio/music/service/ae;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/fiio/music/service/ae;-><init>(Lcom/fiio/music/service/MediaPlayerService;B)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fiio/music/service/MediaPlayerService;->aY:Z

    .line 5500
    :cond_8
    return-void

    .line 5481
    :cond_9
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->u:Ljava/util/List;

    if-eqz v0, :cond_a

    if-eqz p6, :cond_a

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->u:Ljava/util/List;

    invoke-interface {v0, p6}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->u:Ljava/util/List;

    invoke-interface {p6, v0}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 5482
    const-string v0, "sin"

    const-string v1, "same"

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 5483
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    invoke-virtual {v0}, Lcom/fiio/music/service/af;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p6}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    invoke-virtual {v0}, Lcom/fiio/music/service/af;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {p6, v0}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5484
    :cond_a
    iput-object p6, p0, Lcom/fiio/music/service/MediaPlayerService;->u:Ljava/util/List;

    .line 5489
    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->J()V

    goto/16 :goto_0
.end method

.method public final a(Lcom/fiio/music/entity/Song;ILjava/lang/String;Ljava/util/List;)V
    .locals 3
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
    .line 4103
    iget v0, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->u:Ljava/util/List;

    if-eq v0, p4, :cond_1

    .line 4104
    :cond_0
    iput p2, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    .line 4105
    iput-object p4, p0, Lcom/fiio/music/service/MediaPlayerService;->u:Ljava/util/List;

    .line 4106
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->I:Ljava/lang/String;

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    .line 4107
    iput-object p3, p0, Lcom/fiio/music/service/MediaPlayerService;->I:Ljava/lang/String;

    .line 4110
    :cond_1
    if-eqz p3, :cond_2

    .line 4111
    iput-object p3, p0, Lcom/fiio/music/service/MediaPlayerService;->I:Ljava/lang/String;

    .line 4113
    :cond_2
    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->J()V

    .line 4114
    if-eqz p1, :cond_5

    .line 4115
    iput-object p1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    .line 4116
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->ad:Lcom/fiio/music/util/an;

    invoke-virtual {v0}, Lcom/fiio/music/util/an;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4117
    const/4 v0, 0x3

    if-eq p2, v0, :cond_3

    .line 4118
    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    .line 4119
    const/16 v0, 0xa

    if-ne p2, v0, :cond_4

    .line 4120
    :cond_3
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->ae:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/fiio/music/service/ae;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/fiio/music/service/ae;-><init>(Lcom/fiio/music/service/MediaPlayerService;B)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 4122
    :cond_4
    invoke-direct {p0}, Lcom/fiio/music/service/MediaPlayerService;->ak()V

    .line 4125
    :cond_5
    return-void
.end method

.method public final a(Lcom/fiio/music/entity/Song;ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fiio/music/entity/Song;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4203
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->u:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->u:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->u:Ljava/util/List;

    invoke-interface {p3, v0}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4206
    :cond_0
    iput-object p3, p0, Lcom/fiio/music/service/MediaPlayerService;->u:Ljava/util/List;

    .line 4207
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->u:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/fiio/music/service/af;->a(Ljava/util/List;)V

    .line 4209
    :cond_1
    iput-object p1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    .line 4210
    iput p2, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    .line 4211
    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->B:Ljava/lang/String;

    .line 4212
    invoke-direct {p0}, Lcom/fiio/music/service/MediaPlayerService;->ak()V

    .line 4213
    return-void
.end method

.method public final a(Lcom/fiio/music/entity/Song;Landroid/database/Cursor;I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 5763
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->aZ:Lcom/fiio/music/service/a;

    invoke-virtual {v0, p2, p3, v1, v1}, Lcom/fiio/music/service/a;->a(Landroid/database/Cursor;IIZ)V

    .line 5766
    iput v1, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    .line 5767
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->I:Ljava/lang/String;

    .line 5768
    iput-object p1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    .line 5770
    invoke-direct {p0}, Lcom/fiio/music/service/MediaPlayerService;->ar()V

    .line 5771
    return-void
.end method

.method public final a(Lcom/fiio/music/entity/Song;[Ljava/lang/String;Ljava/util/List;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fiio/music/entity/Song;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;I)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v2, 0x1

    .line 3985
    iput p4, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    .line 3986
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    if-eq p4, v2, :cond_1

    .line 4045
    :cond_0
    :goto_0
    return-void

    .line 3989
    :cond_1
    iput v4, p0, Lcom/fiio/music/service/MediaPlayerService;->z:I

    .line 3992
    const/4 v0, 0x6

    if-eq p4, v0, :cond_2

    const/4 v0, 0x5

    if-ne p4, v0, :cond_9

    .line 3993
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    invoke-virtual {v0}, Lcom/fiio/music/service/af;->c()Ljava/util/List;

    move-result-object v0

    .line 3994
    if-eqz v0, :cond_3

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3996
    :cond_3
    iput-object p3, p0, Lcom/fiio/music/service/MediaPlayerService;->u:Ljava/util/List;

    .line 3997
    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->J()V

    .line 4032
    :cond_4
    :goto_1
    if-ne p4, v7, :cond_5

    .line 4033
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->I:Ljava/lang/String;

    .line 4035
    :cond_5
    iput-object p1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    .line 4036
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    aget-object v1, p2, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/entity/Song;->setDurationTime(I)V

    .line 4037
    aget-object v0, p2, v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aget-object v1, p2, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aget-object v2, p2, v6

    aget-object v3, p2, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/fiio/music/service/MediaPlayerService;->a(IILjava/lang/String;Ljava/lang/String;)V

    .line 4038
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->ad:Lcom/fiio/music/util/an;

    invoke-virtual {v0}, Lcom/fiio/music/util/an;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4039
    if-eq p4, v7, :cond_6

    .line 4040
    if-eq p4, v4, :cond_6

    .line 4041
    if-eq p4, v6, :cond_6

    .line 4042
    const/16 v0, 0xa

    if-ne p4, v0, :cond_0

    .line 4043
    :cond_6
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->ae:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/fiio/music/service/ae;

    invoke-direct {v1, p0, v5}, Lcom/fiio/music/service/ae;-><init>(Lcom/fiio/music/service/MediaPlayerService;B)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 4000
    :cond_7
    invoke-interface {v0, p3}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p3, v0}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 4004
    :cond_8
    iput-object p3, p0, Lcom/fiio/music/service/MediaPlayerService;->u:Ljava/util/List;

    .line 4005
    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->J()V

    goto :goto_1

    .line 4008
    :cond_9
    if-eq p4, v2, :cond_4

    .line 4011
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->u:Ljava/util/List;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->u:Ljava/util/List;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4013
    :cond_a
    iput-object p3, p0, Lcom/fiio/music/service/MediaPlayerService;->u:Ljava/util/List;

    .line 4014
    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->J()V

    goto :goto_1

    .line 4016
    :cond_b
    const-string v0, "sin"

    const-string v1, "cue player -- dirList is not empty"

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 4017
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->u:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->u:Ljava/util/List;

    invoke-interface {p3, v0}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4018
    const-string v0, "sin"

    const-string v1, "same"

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4025
    :cond_c
    iput-object p3, p0, Lcom/fiio/music/service/MediaPlayerService;->u:Ljava/util/List;

    .line 4026
    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->J()V

    goto/16 :goto_1
.end method

.method public final a(Lcom/fiio/music/util/j;)V
    .locals 0

    .prologue
    .line 5375
    iput-object p1, p0, Lcom/fiio/music/service/MediaPlayerService;->m:Lcom/fiio/music/util/j;

    .line 5376
    return-void
.end method

.method public final a(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    .prologue
    const/4 v1, 0x3

    .line 3495
    iget v0, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    if-ne v0, p2, :cond_0

    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->I:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->I:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3496
    :cond_0
    iput p2, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    .line 3497
    iput-object p3, p0, Lcom/fiio/music/service/MediaPlayerService;->I:Ljava/lang/String;

    .line 3498
    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->J()V

    .line 3500
    :cond_1
    iput-object p3, p0, Lcom/fiio/music/service/MediaPlayerService;->I:Ljava/lang/String;

    .line 3501
    iput p2, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    .line 3502
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    invoke-virtual {v0}, Lcom/fiio/music/service/af;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3503
    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->J()V

    .line 3506
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    invoke-virtual {v0, p1}, Lcom/fiio/music/service/af;->a(Ljava/lang/String;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    .line 3507
    if-eqz v0, :cond_5

    :goto_0
    iput-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    .line 3509
    iput v1, p0, Lcom/fiio/music/service/MediaPlayerService;->z:I

    .line 3510
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->ad:Lcom/fiio/music/util/an;

    invoke-virtual {v0}, Lcom/fiio/music/util/an;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3511
    if-eq p2, v1, :cond_3

    .line 3512
    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    .line 3513
    const/16 v0, 0xa

    if-ne p2, v0, :cond_4

    .line 3514
    :cond_3
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->ae:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/fiio/music/service/ae;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/fiio/music/service/ae;-><init>(Lcom/fiio/music/service/MediaPlayerService;B)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 3516
    :cond_4
    invoke-direct {p0}, Lcom/fiio/music/service/MediaPlayerService;->ak()V

    .line 3517
    return-void

    .line 3507
    :cond_5
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x4

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 3561
    const-string v0, "long"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "playDirFile \u6839\u636e\u8def\u5f84\u64ad\u653e :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3563
    iget v0, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    if-ne v0, p2, :cond_0

    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->I:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->ad:Lcom/fiio/music/util/an;

    invoke-virtual {v0}, Lcom/fiio/music/util/an;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3564
    :cond_0
    iput p2, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    .line 3565
    iput-object p3, p0, Lcom/fiio/music/service/MediaPlayerService;->I:Ljava/lang/String;

    .line 3566
    iput-object p4, p0, Lcom/fiio/music/service/MediaPlayerService;->u:Ljava/util/List;

    .line 3567
    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->J()V

    .line 3569
    :cond_1
    iget v0, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    if-ne v0, p2, :cond_2

    if-eqz p3, :cond_3

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->I:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->I:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3570
    :cond_2
    iput p2, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    .line 3571
    iput-object p3, p0, Lcom/fiio/music/service/MediaPlayerService;->I:Ljava/lang/String;

    .line 3572
    iput-object p4, p0, Lcom/fiio/music/service/MediaPlayerService;->u:Ljava/util/List;

    .line 3573
    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->J()V

    .line 3575
    :cond_3
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->I:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/fiio/music/service/MediaPlayerService;->M:Z

    if-eqz v0, :cond_5

    .line 3576
    :cond_4
    iput p2, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    .line 3577
    iput-object p3, p0, Lcom/fiio/music/service/MediaPlayerService;->I:Ljava/lang/String;

    .line 3578
    iput-object p4, p0, Lcom/fiio/music/service/MediaPlayerService;->u:Ljava/util/List;

    .line 3579
    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->J()V

    .line 3581
    :cond_5
    iput-object p3, p0, Lcom/fiio/music/service/MediaPlayerService;->I:Ljava/lang/String;

    .line 3582
    iput p2, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    .line 3586
    iget-boolean v0, p0, Lcom/fiio/music/service/MediaPlayerService;->j:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/fiio/music/service/MediaPlayerService;->p:Z

    if-eqz v0, :cond_7

    .line 3587
    :cond_6
    iput-object p4, p0, Lcom/fiio/music/service/MediaPlayerService;->u:Ljava/util/List;

    .line 3588
    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->J()V

    .line 3590
    :cond_7
    if-nez p3, :cond_8

    .line 3591
    iput-object p4, p0, Lcom/fiio/music/service/MediaPlayerService;->u:Ljava/util/List;

    .line 3592
    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->J()V

    .line 3594
    :cond_8
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    invoke-virtual {v0, p1}, Lcom/fiio/music/service/af;->a(Ljava/lang/String;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    .line 3595
    if-ne p2, v5, :cond_b

    .line 3596
    if-nez v0, :cond_a

    .line 3597
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->f:Lcom/fiio/music/util/bh;

    invoke-virtual {v0, p1}, Lcom/fiio/music/util/bh;->a(Ljava/lang/String;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    .line 3598
    if-eqz v0, :cond_9

    .line 3599
    invoke-virtual {v0, v3}, Lcom/fiio/music/entity/Song;->setId_(I)V

    .line 3607
    :cond_9
    :goto_0
    const-string v1, "zxy----"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "playDirFile +"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fiio/music/util/aw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3608
    if-nez v0, :cond_b

    .line 3625
    :goto_1
    return-void

    .line 3602
    :cond_a
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->f:Lcom/fiio/music/util/bh;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/fiio/music/util/bh;->a(Ljava/lang/String;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    .line 3603
    if-eqz v0, :cond_9

    .line 3604
    invoke-virtual {v0, v3}, Lcom/fiio/music/entity/Song;->setId_(I)V

    goto :goto_0

    .line 3612
    :cond_b
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->aj:Lcom/fiio/music/util/av;

    iget-object v2, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1, v2}, Lcom/fiio/music/util/av;->a(Lcom/fiio/music/entity/Song;)V

    .line 3613
    if-eqz v0, :cond_e

    :goto_2
    iput-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    .line 3615
    iput-boolean v4, p0, Lcom/fiio/music/service/MediaPlayerService;->j:Z

    .line 3616
    iput-boolean v4, p0, Lcom/fiio/music/service/MediaPlayerService;->p:Z

    .line 3617
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->ad:Lcom/fiio/music/util/an;

    invoke-virtual {v0}, Lcom/fiio/music/util/an;->c()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3618
    if-eq p2, v5, :cond_c

    .line 3619
    const/4 v0, 0x3

    if-eq p2, v0, :cond_c

    .line 3620
    const/4 v0, 0x2

    if-eq p2, v0, :cond_c

    .line 3621
    const/16 v0, 0xa

    if-ne p2, v0, :cond_d

    .line 3622
    :cond_c
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->ae:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/fiio/music/service/ae;

    invoke-direct {v1, p0, v4}, Lcom/fiio/music/service/ae;-><init>(Lcom/fiio/music/service/MediaPlayerService;B)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 3624
    :cond_d
    invoke-direct {p0}, Lcom/fiio/music/service/MediaPlayerService;->ak()V

    goto :goto_1

    .line 3613
    :cond_e
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    goto :goto_2
.end method

.method public final a(Ljava/lang/String;ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3540
    const-string v0, "xyz"

    const-string v1, "player playLately \u6700\u8fd1\u64ad\u653e\u51c6\u5907\u5de5\u4f5c"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3541
    iget v0, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    if-eq v0, p2, :cond_0

    .line 3542
    iput p2, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    .line 3543
    iput-object v2, p0, Lcom/fiio/music/service/MediaPlayerService;->I:Ljava/lang/String;

    .line 3545
    :cond_0
    iput-object p3, p0, Lcom/fiio/music/service/MediaPlayerService;->u:Ljava/util/List;

    .line 3546
    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->J()V

    .line 3547
    iput-object v2, p0, Lcom/fiio/music/service/MediaPlayerService;->I:Ljava/lang/String;

    .line 3548
    iput p2, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    .line 3549
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    invoke-virtual {v0, p1}, Lcom/fiio/music/service/af;->a(Ljava/lang/String;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    .line 3550
    if-eqz v0, :cond_1

    :goto_0
    iput-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    .line 3552
    invoke-direct {p0}, Lcom/fiio/music/service/MediaPlayerService;->ak()V

    .line 3553
    return-void

    .line 3550
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lcom/fiio/music/entity/Song;)V
    .locals 3

    .prologue
    .line 4189
    const-string v0, "xyz"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5355\u4f4d\u4ef6\u64ad\u653e="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4190
    iput-object p2, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    .line 4191
    const/16 v0, 0xc

    iput v0, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    .line 4192
    iput-object p1, p0, Lcom/fiio/music/service/MediaPlayerService;->B:Ljava/lang/String;

    .line 4193
    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->J()V

    .line 4194
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    invoke-virtual {v0, p1}, Lcom/fiio/music/service/af;->a(Ljava/lang/String;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    .line 4195
    if-eqz v0, :cond_0

    move-object p2, v0

    :cond_0
    iput-object p2, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    .line 4197
    invoke-direct {p0}, Lcom/fiio/music/service/MediaPlayerService;->ak()V

    .line 4198
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3651
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->ad:Lcom/fiio/music/util/an;

    invoke-virtual {v1}, Lcom/fiio/music/util/an;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/service/af;->a(Z)V

    .line 3652
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/fiio/music/service/MediaPlayerService;->a(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)V

    .line 3654
    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5809
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->aZ:Lcom/fiio/music/service/a;

    if-eqz v0, :cond_0

    .line 5810
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->aZ:Lcom/fiio/music/service/a;

    invoke-virtual {v0, p1}, Lcom/fiio/music/service/a;->a(Ljava/util/ArrayList;)V

    .line 5813
    :cond_0
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4585
    iput-object p1, p0, Lcom/fiio/music/service/MediaPlayerService;->u:Ljava/util/List;

    .line 4586
    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->J()V

    .line 4587
    return-void
.end method

.method public final a(Lorg/justcodecs/dsd/SacdDataFormat;)V
    .locals 0

    .prologue
    .line 5580
    iput-object p1, p0, Lcom/fiio/music/service/MediaPlayerService;->q:Lorg/justcodecs/dsd/SacdDataFormat;

    .line 5581
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 625
    iput-boolean p1, p0, Lcom/fiio/music/service/MediaPlayerService;->az:Z

    .line 626
    return-void
.end method

.method public final ab()I
    .locals 1

    .prologue
    .line 5944
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->aZ:Lcom/fiio/music/service/a;

    invoke-virtual {v0}, Lcom/fiio/music/service/a;->b()I

    move-result v0

    return v0
.end method

.method public final ac()I
    .locals 1

    .prologue
    .line 5952
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->aZ:Lcom/fiio/music/service/a;

    invoke-virtual {v0}, Lcom/fiio/music/service/a;->d()I

    move-result v0

    return v0
.end method

.method public final ad()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 5960
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->aZ:Lcom/fiio/music/service/a;

    invoke-virtual {v0}, Lcom/fiio/music/service/a;->c()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 452
    iget v0, p0, Lcom/fiio/music/service/MediaPlayerService;->z:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 453
    const/4 v0, 0x1

    iput v0, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    .line 454
    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->J()V

    .line 455
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    invoke-virtual {v0}, Lcom/fiio/music/service/af;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    invoke-virtual {v0}, Lcom/fiio/music/service/af;->d()Lcom/fiio/music/entity/Song;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    .line 457
    iput v2, p0, Lcom/fiio/music/service/MediaPlayerService;->z:I

    .line 458
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 459
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->x:Ljava/util/List;

    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    invoke-virtual {v1}, Lcom/fiio/music/service/af;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 475
    :goto_0
    return-void

    .line 461
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 462
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->F:Lcom/fiio/music/b/k;

    invoke-virtual {v0}, Lcom/fiio/music/b/k;->b()Ljava/util/List;

    move-result-object v0

    .line 463
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 464
    iput v2, p0, Lcom/fiio/music/service/MediaPlayerService;->z:I

    .line 465
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->x:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 466
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->x:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 468
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/fiio/music/service/MediaPlayerService;->z:I

    goto :goto_0

    .line 472
    :cond_2
    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->J()V

    goto :goto_0
.end method

.method public final b(I)V
    .locals 3

    .prologue
    .line 2557
    iput p1, p0, Lcom/fiio/music/service/MediaPlayerService;->A:I

    .line 2558
    iget v0, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 2559
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->aZ:Lcom/fiio/music/service/a;

    if-eqz v0, :cond_0

    .line 2560
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->aZ:Lcom/fiio/music/service/a;

    invoke-virtual {v0, p1}, Lcom/fiio/music/service/a;->e(I)V

    .line 2564
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/fiio/music/service/MediaPlayerService;->am()V

    .line 2566
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->ad:Lcom/fiio/music/util/an;

    invoke-virtual {v0}, Lcom/fiio/music/util/an;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2567
    iget v0, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 2568
    iget v0, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 2569
    iget v0, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 2570
    iget v0, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 2571
    :cond_1
    const-string v0, "zxy - - -  - "

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setPlayMode  :   playerFlag : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2572
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->ae:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/fiio/music/service/ae;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/fiio/music/service/ae;-><init>(Lcom/fiio/music/service/MediaPlayerService;B)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 2574
    :cond_2
    new-instance v0, Landroid/content/Intent;

    .line 2575
    const-string v1, "com.fiio.music.player.brocast"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2576
    const-string v1, "flag"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 2577
    const-string v1, "playerMode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 2574
    invoke-virtual {p0, v0}, Lcom/fiio/music/service/MediaPlayerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 2578
    return-void

    .line 2562
    :cond_3
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    invoke-virtual {v0, p1}, Lcom/fiio/music/service/af;->c(I)V

    goto :goto_0
.end method

.method public final b(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .prologue
    const v10, 0x7f0b0218

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/high16 v6, 0x8000000

    .line 4836
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fiio/music/activity/ListMainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4837
    const-string v1, "changeStyleboolean"

    invoke-static {}, Lcom/fiio/music/util/h;->b()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4838
    const/16 v1, 0x64

    invoke-static {p0, v1, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 4841
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 4842
    const v3, 0x7f0400ab

    .line 4841
    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 4846
    const v2, 0x7f0b0216

    invoke-virtual {v1, v2, p1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 4847
    const v2, 0x7f0b0219

    invoke-virtual {v1, v2, p3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 4848
    const v2, 0x7f0b021a

    invoke-virtual {v1, v2, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 4853
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.fiio.music.service.meidaplayer"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4854
    const-string v3, "flag"

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    .line 4853
    invoke-static {p0, v8, v2, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 4856
    const v3, 0x7f0b021b

    invoke-virtual {v1, v3, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 4858
    const/4 v2, 0x3

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.fiio.music.service.meidaplayer"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4859
    const-string v4, "flag"

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    .line 4858
    invoke-static {p0, v2, v3, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 4861
    const v3, 0x7f0b021d

    invoke-virtual {v1, v3, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 4863
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.fiio.music.service.meidaplayer"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4864
    const-string v3, "flag"

    invoke-virtual {v2, v3, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    .line 4863
    invoke-static {p0, v9, v2, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 4866
    const v3, 0x7f0b021c

    invoke-virtual {v1, v3, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 4868
    invoke-static {p0}, Lcom/fiio/music/util/l;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4869
    const/16 v2, 0xa

    .line 4870
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.fiio.music.service.meidaplayer"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "flag"

    const/16 v5, 0xa

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    .line 4869
    invoke-static {p0, v2, v3, v7}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 4871
    invoke-virtual {v1, v10, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4872
    invoke-virtual {v1, v10, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 4876
    :goto_0
    iget v2, p0, Lcom/fiio/music/service/MediaPlayerService;->z:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/fiio/music/service/MediaPlayerService;->z:I

    if-eq v2, v9, :cond_0

    .line 4877
    iget v2, p0, Lcom/fiio/music/service/MediaPlayerService;->z:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/fiio/music/service/MediaPlayerService;->z:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2

    .line 4878
    :cond_0
    const v2, 0x7f0b021c

    const v3, 0x7f020539

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 4883
    :goto_1
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-direct {v2, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 4884
    invoke-virtual {v2, p3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 4886
    invoke-virtual {v2, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 4887
    const v3, 0x7f020620

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 4888
    invoke-virtual {v2, p1}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 4889
    invoke-virtual {v2, v7}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 4890
    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 4891
    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 4892
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 4894
    iput-object v1, v2, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 4897
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/fiio/music/service/MediaPlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 4898
    invoke-virtual {v0, v8, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 4900
    return-void

    .line 4874
    :cond_1
    const/16 v2, 0x8

    invoke-virtual {v1, v10, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0

    .line 4880
    :cond_2
    const v2, 0x7f0b021c

    const v3, 0x7f020538

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_1
.end method

.method public final b(Lcom/fiio/music/entity/Song;ILjava/lang/String;Ljava/util/List;)V
    .locals 2
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
    .line 4222
    if-eqz p3, :cond_0

    .line 4223
    iput-object p3, p0, Lcom/fiio/music/service/MediaPlayerService;->I:Ljava/lang/String;

    .line 4226
    :cond_0
    iput p2, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    .line 4228
    if-eqz p4, :cond_1

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->u:Ljava/util/List;

    if-eq v0, p4, :cond_1

    .line 4229
    iput-object p4, p0, Lcom/fiio/music/service/MediaPlayerService;->u:Ljava/util/List;

    .line 4230
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->u:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/fiio/music/service/af;->a(Ljava/util/List;)V

    .line 4231
    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->J()V

    .line 4233
    :cond_1
    if-eqz p1, :cond_2

    .line 4234
    iput-object p1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    .line 4235
    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    .line 4236
    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4237
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->f:Lcom/fiio/music/util/bh;

    invoke-virtual {v1, v0}, Lcom/fiio/music/util/bh;->a(Ljava/lang/String;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    .line 4240
    :cond_2
    invoke-direct {p0}, Lcom/fiio/music/service/MediaPlayerService;->ak()V

    .line 4241
    return-void
.end method

.method public final b(Lcom/fiio/music/entity/Song;ILjava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fiio/music/entity/Song;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5461
    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getSacd_startTime()I

    move-result v0

    mul-int/lit16 v2, v0, 0x3e8

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getSacd_duration()I

    move-result v0

    mul-int/lit16 v3, v0, 0x3e8

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v4

    .line 5462
    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getArtist()Lcom/fiio/music/entity/Artist;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/entity/Artist;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getSampleRate()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getSacd_startTime()I

    move-result v6

    int-to-long v6, v6

    mul-long v8, v0, v6

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    move v7, p2

    .line 5461
    invoke-virtual/range {v0 .. v9}, Lcom/fiio/music/service/MediaPlayerService;->a(Lcom/fiio/music/entity/Song;IILjava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)V

    .line 5463
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 4274
    iput-boolean v3, p0, Lcom/fiio/music/service/MediaPlayerService;->M:Z

    .line 4276
    if-nez p1, :cond_1

    .line 4277
    iput-boolean v2, p0, Lcom/fiio/music/service/MediaPlayerService;->Q:Z

    .line 4278
    iput-boolean v3, p0, Lcom/fiio/music/service/MediaPlayerService;->J:Z

    .line 4279
    sget-object v0, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4280
    sget-object v0, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->stopPlay()V

    .line 4282
    :cond_0
    iput v2, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    .line 4283
    iput v4, p0, Lcom/fiio/music/service/MediaPlayerService;->z:I

    .line 4284
    const-string v0, ""

    iput-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->I:Ljava/lang/String;

    .line 4285
    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->J()V

    .line 4286
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    invoke-virtual {v0}, Lcom/fiio/music/service/af;->d()Lcom/fiio/music/entity/Song;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    .line 4287
    iput v3, p0, Lcom/fiio/music/service/MediaPlayerService;->K:I

    .line 4288
    invoke-direct {p0}, Lcom/fiio/music/service/MediaPlayerService;->al()V

    .line 4327
    :goto_0
    return-void

    .line 4292
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    .line 4294
    iget v1, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->aZ:Lcom/fiio/music/service/a;

    invoke-virtual {v1}, Lcom/fiio/music/service/a;->b()I

    move-result v1

    if-le v1, v2, :cond_3

    .line 4295
    :cond_2
    iget v1, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    invoke-virtual {v1}, Lcom/fiio/music/service/af;->b()I

    move-result v1

    if-gt v1, v2, :cond_4

    .line 4296
    :cond_3
    iput-boolean v2, p0, Lcom/fiio/music/service/MediaPlayerService;->O:Z

    .line 4297
    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->E()V

    .line 4298
    iput-boolean v3, p0, Lcom/fiio/music/service/MediaPlayerService;->J:Z

    goto :goto_0

    .line 4301
    :cond_4
    iget v1, p0, Lcom/fiio/music/service/MediaPlayerService;->z:I

    if-ne v1, v4, :cond_7

    .line 4302
    iput-boolean v2, p0, Lcom/fiio/music/service/MediaPlayerService;->Q:Z

    .line 4303
    iput-boolean v3, p0, Lcom/fiio/music/service/MediaPlayerService;->J:Z

    .line 4304
    sget-object v1, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v1}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4305
    sget-object v1, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v1}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->stopPlay()V

    .line 4307
    :cond_5
    iget v1, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    if-ne v1, v2, :cond_6

    .line 4308
    invoke-direct {p0}, Lcom/fiio/music/service/MediaPlayerService;->ap()V

    .line 4321
    :goto_1
    iget v1, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    .line 4322
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    invoke-virtual {v1, v0}, Lcom/fiio/music/service/af;->a(Lcom/fiio/music/entity/Song;)V

    goto :goto_0

    .line 4310
    :cond_6
    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->x()V

    goto :goto_1

    .line 4314
    :cond_7
    iget v1, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    if-ne v1, v2, :cond_8

    .line 4315
    invoke-direct {p0}, Lcom/fiio/music/service/MediaPlayerService;->ap()V

    goto :goto_1

    .line 4317
    :cond_8
    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->x()V

    goto :goto_1
.end method

.method public final b(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4080
    const-string v0, "long"

    const-string v1, "playListFile \u64ad\u653e\u5217\u8868\u6587\u4ef6"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4081
    iget v0, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->u:Ljava/util/List;

    if-eq v0, p4, :cond_2

    .line 4082
    :cond_0
    iput p2, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    .line 4083
    iput-object p4, p0, Lcom/fiio/music/service/MediaPlayerService;->u:Ljava/util/List;

    .line 4084
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->I:Ljava/lang/String;

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    .line 4085
    iput-object p3, p0, Lcom/fiio/music/service/MediaPlayerService;->I:Ljava/lang/String;

    .line 4086
    :cond_1
    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->J()V

    .line 4088
    :cond_2
    if-eqz p3, :cond_3

    .line 4089
    iput-object p3, p0, Lcom/fiio/music/service/MediaPlayerService;->I:Ljava/lang/String;

    .line 4090
    :cond_3
    iput p2, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    .line 4092
    const/4 v0, 0x6

    if-eq p2, v0, :cond_4

    const/4 v0, 0x5

    if-ne p2, v0, :cond_5

    .line 4093
    :cond_4
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->f:Lcom/fiio/music/util/bh;

    invoke-virtual {v0, p1}, Lcom/fiio/music/util/bh;->a(Ljava/lang/String;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    .line 4097
    :goto_0
    if-eqz v0, :cond_6

    :goto_1
    iput-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    .line 4099
    invoke-direct {p0}, Lcom/fiio/music/service/MediaPlayerService;->ak()V

    .line 4100
    return-void

    .line 4095
    :cond_5
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    invoke-virtual {v0, p1}, Lcom/fiio/music/service/af;->a(Ljava/lang/String;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    goto :goto_0

    .line 4097
    :cond_6
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    goto :goto_1
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/16 v0, 0x10

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4158
    iput v0, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    .line 4159
    iput-object p2, p0, Lcom/fiio/music/service/MediaPlayerService;->I:Ljava/lang/String;

    .line 4160
    iput-object p3, p0, Lcom/fiio/music/service/MediaPlayerService;->u:Ljava/util/List;

    .line 4161
    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->J()V

    .line 4163
    iput-object p2, p0, Lcom/fiio/music/service/MediaPlayerService;->I:Ljava/lang/String;

    .line 4164
    iput v0, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    .line 4165
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    invoke-virtual {v0, p1}, Lcom/fiio/music/service/af;->a(Ljava/lang/String;)Lcom/fiio/music/entity/Song;

    move-result-object v3

    .line 4169
    if-nez v3, :cond_0

    move v0, v1

    .line 4171
    :goto_0
    const-string v4, "xyz-MediaPlayerService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "theSong is null = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4176
    if-eqz v3, :cond_1

    move-object v0, v3

    :goto_1
    iput-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    .line 4180
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    if-nez v0, :cond_2

    .line 4182
    :goto_2
    const-string v0, "xyz-MediaPlayerService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "songIsNull = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4185
    invoke-direct {p0}, Lcom/fiio/music/service/MediaPlayerService;->ak()V

    .line 4187
    return-void

    :cond_0
    move v0, v2

    .line 4169
    goto :goto_0

    .line 4176
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    goto :goto_1

    :cond_2
    move v1, v2

    .line 4180
    goto :goto_2
.end method

.method public final b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4780
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    invoke-virtual {v0, p1}, Lcom/fiio/music/service/af;->a(Ljava/util/List;)V

    .line 4781
    return-void
.end method

.method public final b(Z)V
    .locals 0

    .prologue
    .line 640
    iput-boolean p1, p0, Lcom/fiio/music/service/MediaPlayerService;->aB:Z

    .line 641
    return-void
.end method

.method public final c()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 481
    const-string v0, "xyz"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u521d\u59cb\u5316\u6b4c\u66f2\u4fe1\u606f-\u64ad\u653e\u754c\u9762\u8fdb\u5165\u65f6song="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    invoke-virtual {v0}, Lcom/fiio/music/service/af;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    if-eqz v0, :cond_0

    .line 483
    const-string v0, "xyz"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "song="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.fiio.music.player.brocast"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 485
    const-string v1, "flag"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 486
    const-string v1, "playerState"

    iget v2, p0, Lcom/fiio/music/service/MediaPlayerService;->z:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 487
    const-string v1, "currentPosition"

    iget v2, p0, Lcom/fiio/music/service/MediaPlayerService;->K:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 488
    const-string v1, "duration"

    invoke-virtual {p0, v4}, Lcom/fiio/music/service/MediaPlayerService;->a(Lcom/example/root/checkappmusic/FiioMediaPlayer;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 489
    const-string v1, "title"

    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 490
    const-string v1, "albumPic"

    invoke-direct {p0}, Lcom/fiio/music/service/MediaPlayerService;->ai()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 491
    const-string v1, "playerMode"

    iget v2, p0, Lcom/fiio/music/service/MediaPlayerService;->A:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 492
    const-string v1, "songName"

    invoke-direct {p0}, Lcom/fiio/music/service/MediaPlayerService;->ah()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 493
    const-string v1, "albumName"

    invoke-direct {p0}, Lcom/fiio/music/service/MediaPlayerService;->aj()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 494
    const-string v1, "artistName"

    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 495
    const-string v1, "song_id"

    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->h()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 496
    const-string v1, "songId"

    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->j()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 497
    const-string v1, "song"

    iget-object v2, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 498
    invoke-virtual {p0, v0}, Lcom/fiio/music/service/MediaPlayerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 524
    :goto_0
    return-void

    .line 499
    :cond_0
    iget v0, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    if-eqz v0, :cond_1

    .line 500
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.fiio.music.player.brocast"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 501
    const-string v1, "flag"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 502
    const-string v1, "playerState"

    iget v2, p0, Lcom/fiio/music/service/MediaPlayerService;->z:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 503
    const-string v1, "currentPosition"

    iget v2, p0, Lcom/fiio/music/service/MediaPlayerService;->K:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 504
    const-string v1, "duration"

    invoke-virtual {p0, v4}, Lcom/fiio/music/service/MediaPlayerService;->a(Lcom/example/root/checkappmusic/FiioMediaPlayer;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 505
    const-string v1, "title"

    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 506
    const-string v1, "albumPic"

    invoke-direct {p0}, Lcom/fiio/music/service/MediaPlayerService;->ai()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 507
    const-string v1, "playerMode"

    iget v2, p0, Lcom/fiio/music/service/MediaPlayerService;->A:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 508
    const-string v1, "songName"

    invoke-direct {p0}, Lcom/fiio/music/service/MediaPlayerService;->ah()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 509
    const-string v1, "albumName"

    invoke-direct {p0}, Lcom/fiio/music/service/MediaPlayerService;->aj()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 510
    const-string v1, "artistName"

    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 511
    const-string v1, "song_id"

    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->h()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 512
    const-string v1, "songId"

    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->j()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 513
    const-string v1, "song"

    iget-object v2, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 514
    invoke-virtual {p0, v0}, Lcom/fiio/music/service/MediaPlayerService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 516
    :cond_1
    const-string v0, "xyz"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6e05\u7a7a\u663e\u793a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.fiio.music.player.brocast"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 518
    const-string v1, "flag"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 519
    const-string v1, "title"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 520
    const-string v1, "songName"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 521
    const-string v1, "artistName"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 522
    invoke-virtual {p0, v0}, Lcom/fiio/music/service/MediaPlayerService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public final c(I)V
    .locals 0

    .prologue
    .line 2636
    iput p1, p0, Lcom/fiio/music/service/MediaPlayerService;->z:I

    .line 2637
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 4363
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fiio/music/service/MediaPlayerService;->M:Z

    .line 4364
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->f:Lcom/fiio/music/util/bh;

    invoke-virtual {v0, p1}, Lcom/fiio/music/util/bh;->a(Ljava/lang/String;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    .line 4365
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    invoke-virtual {v1, v0}, Lcom/fiio/music/service/af;->a(Lcom/fiio/music/entity/Song;)V

    .line 4366
    iget v0, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 4367
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    invoke-virtual {v0}, Lcom/fiio/music/service/af;->c()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->u:Ljava/util/List;

    .line 4368
    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->J()V

    .line 4371
    :cond_0
    return-void
.end method

.method public final c(Z)V
    .locals 1

    .prologue
    .line 3630
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    invoke-virtual {v0, p1}, Lcom/fiio/music/service/af;->a(Z)V

    .line 3631
    return-void
.end method

.method public final d()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 927
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    if-eqz v0, :cond_0

    .line 928
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/mnt/external_sd2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 929
    const-string v0, "sin"

    const-string v1, "not sd2 dont eject"

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    :goto_0
    return-void

    .line 969
    :cond_0
    const-string v0, "sin"

    const-string v1, "eject"

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    iput-boolean v3, p0, Lcom/fiio/music/service/MediaPlayerService;->J:Z

    .line 972
    sget-object v0, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 973
    sget-object v0, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->stopPlay()V

    .line 977
    :goto_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/fiio/music/service/MediaPlayerService;->z:I

    .line 978
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.fiio.music.player.brocast"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 979
    const-string v1, "flag"

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 980
    invoke-virtual {p0, v0}, Lcom/fiio/music/service/MediaPlayerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 981
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.fiio.music.player.brocast"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 982
    const-string v1, "flag"

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 983
    invoke-virtual {p0, v0}, Lcom/fiio/music/service/MediaPlayerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 984
    sget-object v0, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->restart()V

    .line 986
    invoke-static {}, Lcom/fiio/music/service/MediaPlayerService;->Y()V

    .line 987
    sget-object v0, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->audioDestroy()V

    .line 988
    const-string v0, "sin"

    const-string v1, "X53eject set True"

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    iput-boolean v4, p0, Lcom/fiio/music/service/MediaPlayerService;->aC:Z

    .line 991
    iput-boolean v3, p0, Lcom/fiio/music/service/MediaPlayerService;->aD:Z

    .line 992
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->aF:Ljava/lang/String;

    .line 993
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/fiio/music/service/MediaPlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 994
    invoke-virtual {v0, v4}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 975
    :cond_1
    sget-object v0, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->forSdCard()V

    goto :goto_1
.end method

.method public final d(I)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4409
    iput-boolean v2, p0, Lcom/fiio/music/service/MediaPlayerService;->M:Z

    .line 4411
    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    .line 4412
    iput-boolean v3, p0, Lcom/fiio/music/service/MediaPlayerService;->Q:Z

    .line 4413
    iput-boolean v2, p0, Lcom/fiio/music/service/MediaPlayerService;->J:Z

    .line 4414
    sget-object v0, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4415
    sget-object v0, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->stopPlay()V

    .line 4417
    :cond_0
    iput v3, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    .line 4418
    iput v4, p0, Lcom/fiio/music/service/MediaPlayerService;->z:I

    .line 4419
    const-string v0, ""

    iput-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->I:Ljava/lang/String;

    .line 4420
    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->J()V

    .line 4421
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    invoke-virtual {v0}, Lcom/fiio/music/service/af;->d()Lcom/fiio/music/entity/Song;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    .line 4422
    iput v2, p0, Lcom/fiio/music/service/MediaPlayerService;->K:I

    .line 4423
    invoke-direct {p0}, Lcom/fiio/music/service/MediaPlayerService;->al()V

    .line 4451
    :cond_1
    :goto_0
    return-void

    .line 4427
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    .line 4429
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    invoke-virtual {v1}, Lcom/fiio/music/service/af;->b()I

    move-result v1

    if-gt v1, v3, :cond_3

    .line 4430
    iput-boolean v3, p0, Lcom/fiio/music/service/MediaPlayerService;->O:Z

    .line 4431
    iput-boolean v2, p0, Lcom/fiio/music/service/MediaPlayerService;->J:Z

    .line 4432
    sget-object v0, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4433
    sget-object v0, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->stopPlay()V

    goto :goto_0

    .line 4437
    :cond_3
    iget v1, p0, Lcom/fiio/music/service/MediaPlayerService;->z:I

    if-ne v1, v4, :cond_5

    .line 4438
    iput-boolean v3, p0, Lcom/fiio/music/service/MediaPlayerService;->Q:Z

    .line 4439
    iput-boolean v2, p0, Lcom/fiio/music/service/MediaPlayerService;->J:Z

    .line 4440
    sget-object v1, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v1}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4441
    sget-object v1, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v1}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->stopPlay()V

    .line 4443
    :cond_4
    invoke-direct {p0, v3, v2}, Lcom/fiio/music/service/MediaPlayerService;->a(IZ)V

    .line 4449
    :goto_1
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    invoke-virtual {v1, v0}, Lcom/fiio/music/service/af;->a(Lcom/fiio/music/entity/Song;)V

    goto :goto_0

    .line 4446
    :cond_5
    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->x()V

    goto :goto_1
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 4589
    iput-object p1, p0, Lcom/fiio/music/service/MediaPlayerService;->T:Ljava/lang/String;

    .line 4590
    return-void
.end method

.method public final e()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 1015
    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->f()V

    .line 1017
    const/4 v0, 0x6

    iput v0, p0, Lcom/fiio/music/service/MediaPlayerService;->z:I

    .line 1018
    iput-boolean v2, p0, Lcom/fiio/music/service/MediaPlayerService;->J:Z

    .line 1019
    iput v1, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    .line 1020
    iput v1, p0, Lcom/fiio/music/service/MediaPlayerService;->z:I

    .line 1021
    iput v2, p0, Lcom/fiio/music/service/MediaPlayerService;->A:I

    .line 1022
    sget-object v0, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    if-eqz v0, :cond_0

    .line 1023
    sget-object v0, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1024
    sget-object v0, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->stopPlay()V

    .line 1029
    :cond_0
    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->stopSelf()V

    .line 1030
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 5394
    iput-object p1, p0, Lcom/fiio/music/service/MediaPlayerService;->I:Ljava/lang/String;

    .line 5395
    return-void
.end method

.method public final f()V
    .locals 11

    .prologue
    const/4 v10, 0x6

    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v0, 0x0

    .line 1035
    const-string v1, "long"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u9000\u51faapp\u65f6\u7684flag: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u64ad\u653e\u6b4c\u66f2\u7684\u8def\u5f84\u662f\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1036
    const-string v3, " \u4f20\u9012\u6570\u636e playerMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/fiio/music/service/MediaPlayerService;->A:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u4f20\u9012\u6570\u636e latelyStr:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/service/MediaPlayerService;->L:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1037
    const-string v3, " parameter:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/service/MediaPlayerService;->I:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->h()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " track:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/service/MediaPlayerService;->Z:Landroid/content/SharedPreferences;

    const-string v4, "cueTrackNumMemory"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1038
    const-string v3, " \u5f53\u524d\u64ad\u653e\u65f6\u95f4\u662f:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v3}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->getCurrentPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1035
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->Z:Landroid/content/SharedPreferences;

    const-string v2, "SWITCH"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1044
    new-instance v2, Lcom/fiio/music/c/b;

    invoke-direct {v2, p0, v7}, Lcom/fiio/music/c/b;-><init>(Landroid/content/Context;Z)V

    .line 1045
    new-array v3, v10, [Ljava/lang/String;

    .line 1046
    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->h()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 1047
    iget-object v4, p0, Lcom/fiio/music/service/MediaPlayerService;->L:Ljava/lang/String;

    aput-object v4, v3, v7

    .line 1048
    const/4 v4, 0x2

    iget v5, p0, Lcom/fiio/music/service/MediaPlayerService;->A:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1049
    const/4 v4, 0x3

    iget v5, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1050
    sget-object v4, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v4}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->getCurrentPosition()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    .line 1052
    iget-object v4, p0, Lcom/fiio/music/service/MediaPlayerService;->Z:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 1053
    iget-object v5, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    if-eqz v5, :cond_0

    .line 1054
    const-string v5, "cueTrackNumMemory"

    iget-object v6, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v6}, Lcom/fiio/music/entity/Song;->getTrack()I

    move-result v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1056
    :cond_0
    if-eqz v1, :cond_a

    .line 1057
    iget v5, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    const/4 v6, 0x7

    if-eq v5, v6, :cond_1

    iget v5, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    const/16 v6, 0xe

    if-eq v5, v6, :cond_1

    .line 1058
    iget v5, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    const/16 v6, 0xb

    if-eq v5, v6, :cond_1

    iget v5, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    const/16 v6, 0xf

    if-eq v5, v6, :cond_1

    .line 1059
    iget v5, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    if-eq v5, v9, :cond_1

    .line 1060
    iget v5, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    if-eq v5, v10, :cond_1

    .line 1061
    iget v5, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    const/16 v6, 0xc

    if-eq v5, v6, :cond_1

    .line 1062
    iget v5, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    if-ne v5, v8, :cond_4

    .line 1063
    :cond_1
    iget v5, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    const/4 v6, 0x7

    if-eq v5, v6, :cond_2

    iget v5, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    const/16 v6, 0xe

    if-eq v5, v6, :cond_2

    .line 1064
    iget v5, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    const/16 v6, 0xb

    if-eq v5, v6, :cond_2

    iget v5, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    const/16 v6, 0xf

    if-ne v5, v6, :cond_3

    .line 1065
    :cond_2
    const-string v5, "memory"

    iput-object v5, p0, Lcom/fiio/music/service/MediaPlayerService;->I:Ljava/lang/String;

    .line 1067
    :cond_3
    const-string v5, "RECENT_PLAY_FILE_PATH"

    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->i()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1068
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1069
    const-string v5, "long"

    const-string v6, "\u6b4c\u66f2\u8def\u5f84\u8bb0\u5f55\u5b8c\u6bd5"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    :cond_4
    :goto_0
    iget v5, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    if-ne v5, v8, :cond_5

    if-eqz v1, :cond_6

    .line 1078
    :cond_5
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->I:Ljava/lang/String;

    aput-object v1, v3, v8

    .line 1081
    :cond_6
    iget v1, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    if-eq v1, v8, :cond_7

    .line 1082
    const-string v1, "M3UPATH"

    const-string v5, "NotTheM3UMode"

    invoke-interface {v4, v1, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1084
    :cond_7
    invoke-virtual {v2, v3}, Lcom/fiio/music/c/b;->a([Ljava/lang/String;)V

    .line 1085
    const-string v1, "isStartup"

    const-string v3, "true"

    invoke-virtual {v2, v1, v3}, Lcom/fiio/music/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    if-eqz v1, :cond_9

    .line 1087
    const-string v1, "isCue"

    iget-object v3, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v3}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/fiio/music/c/b;->a(Ljava/lang/String;Z)V

    .line 1088
    const-string v1, "isSacd"

    iget-object v3, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v3}, Lcom/fiio/music/entity/Song;->isSacd()Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/fiio/music/c/b;->a(Ljava/lang/String;Z)V

    .line 1089
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->isSacd()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1090
    :cond_8
    const-string v1, "RECENT_PLAY_FILE_PATH"

    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->i()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1091
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1096
    :cond_9
    iget v1, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    if-eq v1, v7, :cond_c

    .line 1098
    iget v1, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    if-eq v1, v8, :cond_c

    .line 1100
    iget v1, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    if-eq v1, v10, :cond_c

    .line 1101
    iget v1, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    if-eq v1, v9, :cond_c

    .line 1102
    iget v1, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_c

    iget v1, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    const/16 v2, 0xe

    if-eq v1, v2, :cond_c

    .line 1103
    iget v1, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    const/16 v2, 0xb

    if-eq v1, v2, :cond_c

    iget v1, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    const/16 v2, 0xf

    if-eq v1, v2, :cond_c

    .line 1104
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    invoke-virtual {v1}, Lcom/fiio/music/service/af;->b()I

    move-result v1

    const/16 v2, 0x3e8

    if-ge v1, v2, :cond_c

    .line 1105
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->E:Lcom/fiio/music/b/g;

    invoke-virtual {v1}, Lcom/fiio/music/b/g;->a()V

    .line 1108
    :goto_1
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    invoke-virtual {v1}, Lcom/fiio/music/service/af;->b()I

    move-result v1

    if-lt v0, v1, :cond_b

    .line 1111
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->f:Lcom/fiio/music/util/bh;

    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->D:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/bh;->a(Ljava/util/List;)V

    .line 1112
    iput-boolean v7, p0, Lcom/fiio/music/service/MediaPlayerService;->C:Z

    .line 1113
    const-string v0, "long"

    const-string v1, "\u6570\u636e\u5e93\u5199\u5165\u5b8c\u6bd5"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    :goto_2
    const-string v0, "RESET_PLAYLIST"

    iget-boolean v1, p0, Lcom/fiio/music/service/MediaPlayerService;->C:Z

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1118
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1119
    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.fiio.music.data_reserved_completely"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1120
    const-string v0, "long"

    const-string v1, "service\u9000\u51fa\u65f6\u6570\u636e\u5b8c\u6574\u5b58\u50a8"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    return-void

    .line 1072
    :cond_a
    const-string v5, "RECENT_PLAY_FILE_PATH"

    const-string v6, "null"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1073
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1075
    const-string v5, "-1"

    aput-object v5, v3, v0

    goto/16 :goto_0

    .line 1109
    :cond_b
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->D:Ljava/util/List;

    iget-object v2, p0, Lcom/fiio/music/service/MediaPlayerService;->f:Lcom/fiio/music/util/bh;

    iget-object v3, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    invoke-virtual {v3, v0}, Lcom/fiio/music/service/af;->a(I)Lcom/fiio/music/entity/Song;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fiio/music/util/bh;->a(Lcom/fiio/music/entity/Song;)Landroid/content/ContentValues;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1108
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1115
    :cond_c
    iput-boolean v0, p0, Lcom/fiio/music/service/MediaPlayerService;->C:Z

    goto :goto_2
.end method

.method public final g()Lcom/fiio/music/entity/Song;
    .locals 1

    .prologue
    .line 2585
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    if-nez v0, :cond_0

    .line 2586
    const/4 v0, 0x0

    .line 2588
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    goto :goto_0
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 2596
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    if-nez v0, :cond_0

    .line 2597
    const/4 v0, -0x1

    .line 2598
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getId_()I

    move-result v0

    goto :goto_0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2605
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    if-nez v0, :cond_0

    .line 2606
    const/4 v0, 0x0

    .line 2607
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final j()I
    .locals 1

    .prologue
    .line 2613
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    if-nez v0, :cond_0

    .line 2614
    const/4 v0, 0x0

    .line 2615
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getId_()I

    move-result v0

    goto :goto_0
.end method

.method public final k()I
    .locals 1

    .prologue
    .line 2622
    iget v0, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    return v0
.end method

.method public final l()V
    .locals 1

    .prologue
    .line 2626
    const/4 v0, 0x4

    iput v0, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    .line 2627
    return-void
.end method

.method public final m()I
    .locals 1

    .prologue
    .line 2632
    iget v0, p0, Lcom/fiio/music/service/MediaPlayerService;->z:I

    return v0
.end method

.method public final n()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2642
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getArtist()Lcom/fiio/music/entity/Artist;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2643
    :cond_0
    const-string v0, "FiiO Music"

    .line 2649
    :goto_0
    return-object v0

    .line 2646
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2647
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2649
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getArtist()Lcom/fiio/music/entity/Artist;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/entity/Artist;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2652
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    if-nez v0, :cond_0

    .line 2653
    const-string v0, "/"

    .line 2655
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getAlbumPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 4815
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->t:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const v7, 0x7f0201d4

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 237
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 240
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->N:Ljava/util/concurrent/ExecutorService;

    .line 241
    invoke-static {}, Lcom/b/a/b/f;->a()Lcom/b/a/b/f;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->c:Lcom/b/a/b/f;

    .line 242
    new-instance v0, Lcom/a/a/aq;

    invoke-direct {v0}, Lcom/a/a/aq;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->ah:Lcom/a/a/aq;

    .line 243
    new-instance v0, Lcom/fiio/music/b/g;

    invoke-direct {v0, p0}, Lcom/fiio/music/b/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->E:Lcom/fiio/music/b/g;

    .line 244
    new-instance v0, Lcom/fiio/music/b/k;

    invoke-direct {v0, p0}, Lcom/fiio/music/b/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->F:Lcom/fiio/music/b/k;

    .line 246
    new-instance v0, Lcom/fiio/music/b/b;

    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fiio/music/b/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->am:Lcom/fiio/music/b/b;

    .line 247
    new-instance v0, Lcom/fiio/music/b/c;

    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fiio/music/b/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->an:Lcom/fiio/music/b/c;

    .line 248
    new-instance v0, Lcom/fiio/music/util/cm;

    invoke-direct {v0, p0}, Lcom/fiio/music/util/cm;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->X:Lcom/fiio/music/util/cm;

    .line 249
    new-instance v0, Lcom/fiio/music/b/l;

    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fiio/music/b/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->ao:Lcom/fiio/music/b/l;

    .line 251
    new-instance v0, Lcom/fiio/music/util/av;

    invoke-direct {v0, p0}, Lcom/fiio/music/util/av;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->aj:Lcom/fiio/music/util/av;

    .line 252
    new-instance v0, Lcom/fiio/music/b/a;

    invoke-direct {v0, p0}, Lcom/fiio/music/b/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->ai:Lcom/fiio/music/b/a;

    .line 253
    new-instance v0, Lcom/fiio/music/b/h;

    invoke-direct {v0, p0}, Lcom/fiio/music/b/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->G:Lcom/fiio/music/b/h;

    .line 254
    new-instance v0, Lcom/fiio/music/b/i;

    invoke-direct {v0, p0}, Lcom/fiio/music/b/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->H:Lcom/fiio/music/b/i;

    .line 255
    new-instance v0, Lcom/fiio/music/util/cr;

    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fiio/music/util/cr;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->af:Lcom/fiio/music/util/cr;

    .line 256
    iput-boolean v6, p0, Lcom/fiio/music/service/MediaPlayerService;->M:Z

    .line 257
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->ae:Ljava/util/concurrent/ExecutorService;

    .line 258
    new-instance v0, Lcom/fiio/music/service/ac;

    invoke-direct {v0, p0, v5}, Lcom/fiio/music/service/ac;-><init>(Lcom/fiio/music/service/MediaPlayerService;B)V

    iput-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->W:Lcom/fiio/music/service/ac;

    .line 259
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 260
    const-string v1, "com.fiio.music.player.action.SET_PLAY_SERVICE_OPT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 261
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 262
    const-string v1, "com.fiio.music.playmainactivity.downloadcoversuccess"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 263
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->W:Lcom/fiio/music/service/ac;

    invoke-virtual {p0, v1, v0}, Lcom/fiio/music/service/MediaPlayerService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 264
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/fiio/music/service/MediaPlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->U:Landroid/media/AudioManager;

    .line 266
    const-string v0, "memory"

    invoke-virtual {p0, v0, v5}, Lcom/fiio/music/service/MediaPlayerService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->Z:Landroid/content/SharedPreferences;

    .line 267
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->Z:Landroid/content/SharedPreferences;

    const-string v1, "SWITCH"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fiio/music/service/MediaPlayerService;->ab:Z

    .line 268
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->Z:Landroid/content/SharedPreferences;

    const-string v1, "RESET_PLAYLIST"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fiio/music/service/MediaPlayerService;->C:Z

    .line 269
    const-string v0, "song_file_path"

    invoke-virtual {p0, v0, v5}, Lcom/fiio/music/service/MediaPlayerService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->at:Landroid/content/SharedPreferences;

    .line 271
    const-string v0, "LockScreen"

    invoke-virtual {p0, v0, v5}, Lcom/fiio/music/service/MediaPlayerService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->aa:Landroid/content/SharedPreferences;

    .line 272
    new-instance v0, Lcom/fiio/music/util/bh;

    invoke-direct {v0, p0}, Lcom/fiio/music/util/bh;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->f:Lcom/fiio/music/util/bh;

    invoke-static {}, Lcom/fiio/music/util/an;->a()Lcom/fiio/music/util/an;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->ad:Lcom/fiio/music/util/an;

    new-instance v0, Lcom/fiio/music/c/b;

    invoke-direct {v0, p0, v5}, Lcom/fiio/music/c/b;-><init>(Landroid/content/Context;Z)V

    const-string v1, "isStartup"

    invoke-virtual {v0, v1}, Lcom/fiio/music/c/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->S:Ljava/lang/String;

    const-string v1, "long"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "service init memorySwitch:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/fiio/music/service/MediaPlayerService;->ab:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "player_flag"

    invoke-virtual {v0, v1}, Lcom/fiio/music/c/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fiio/music/util/h;->a(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/fiio/music/service/MediaPlayerService;->ab:Z

    if-eqz v2, :cond_1

    :cond_0
    const-string v2, "player_parameter"

    invoke-virtual {v0, v2}, Lcom/fiio/music/c/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/fiio/music/service/MediaPlayerService;->I:Ljava/lang/String;

    :cond_1
    const-string v2, "player_id"

    invoke-virtual {v0, v2}, Lcom/fiio/music/c/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "player_mode"

    invoke-virtual {v0, v3}, Lcom/fiio/music/c/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "player_lately"

    invoke-virtual {v0, v4}, Lcom/fiio/music/c/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/fiio/music/service/MediaPlayerService;->L:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    iput v6, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    :goto_0
    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->J()V

    const/4 v1, 0x2

    iput v1, p0, Lcom/fiio/music/service/MediaPlayerService;->z:I

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "-1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_2
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->x:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->x:Ljava/util/List;

    iget-object v2, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    invoke-virtual {v2}, Lcom/fiio/music/service/af;->c()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v8, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0, v5}, Lcom/fiio/music/service/MediaPlayerService;->b(I)V

    :goto_2
    const-string v1, "player_currentduration"

    invoke-virtual {v0, v1}, Lcom/fiio/music/c/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/h;->a(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/fiio/music/service/MediaPlayerService;->al:I

    iget v0, p0, Lcom/fiio/music/service/MediaPlayerService;->al:I

    iput v0, p0, Lcom/fiio/music/service/MediaPlayerService;->K:I

    invoke-direct {p0}, Lcom/fiio/music/service/MediaPlayerService;->am()V

    .line 273
    const-string v0, "eqactivity"

    invoke-virtual {p0, v0, v5}, Lcom/fiio/music/service/MediaPlayerService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->ag:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->ag:Landroid/content/SharedPreferences;

    const-string v1, "closeJudgment"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fiio/music/service/MediaPlayerService;->aB:Z

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->ag:Landroid/content/SharedPreferences;

    const-string v1, "ResetssValue"

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v1, Lcom/fiio/music/service/v;

    invoke-direct {v1, p0}, Lcom/fiio/music/service/v;-><init>(Lcom/fiio/music/service/MediaPlayerService;)V

    invoke-virtual {v1}, Lcom/fiio/music/service/v;->a()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/service/MediaPlayerService;->ah:Lcom/a/a/aq;

    invoke-virtual {v2, v0, v1}, Lcom/a/a/aq;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iget-boolean v1, p0, Lcom/fiio/music/service/MediaPlayerService;->aB:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v1, v6, v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->setEqualizer(Z[F)V

    .line 274
    :cond_3
    invoke-static {}, Lcom/b/a/b/f;->a()Lcom/b/a/b/f;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->c:Lcom/b/a/b/f;

    new-instance v0, Lcom/b/a/b/e;

    invoke-direct {v0}, Lcom/b/a/b/e;-><init>()V

    invoke-virtual {v0, v7}, Lcom/b/a/b/e;->a(I)Lcom/b/a/b/e;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/b/a/b/e;->b(I)Lcom/b/a/b/e;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/b/a/b/e;->c(I)Lcom/b/a/b/e;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/b/a/b/e;->a(Z)Lcom/b/a/b/e;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/b/a/b/e;->b(Z)Lcom/b/a/b/e;

    move-result-object v0

    sget-object v1, Lcom/b/a/b/a/e;->f:Lcom/b/a/b/a/e;

    invoke-virtual {v0, v1}, Lcom/b/a/b/e;->a(Lcom/b/a/b/a/e;)Lcom/b/a/b/e;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1}, Lcom/b/a/b/e;->a(Landroid/graphics/Bitmap$Config;)Lcom/b/a/b/e;

    move-result-object v0

    new-instance v1, Lcom/b/a/b/c/c;

    invoke-direct {v1}, Lcom/b/a/b/c/c;-><init>()V

    invoke-virtual {v0, v1}, Lcom/b/a/b/e;->a(Lcom/b/a/b/c/a;)Lcom/b/a/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/b/e;->d()Lcom/b/a/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->V:Lcom/b/a/b/d;

    .line 275
    sget-object v0, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->aw:Lcom/example/root/checkappmusic/FiioMediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->setOnCompletionListener(Lcom/example/root/checkappmusic/FiioMediaPlayer$OnCompletionListener;)V

    .line 276
    sget-object v0, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->ax:Lcom/example/root/checkappmusic/FiioMediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v0, v1}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->setOnBufferingUpdateListener(Lcom/example/root/checkappmusic/FiioMediaPlayer$OnBufferingUpdateListener;)V

    .line 277
    sget-object v0, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->ay:Lcom/example/root/checkappmusic/FiioMediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->setOnErrorListener(Lcom/example/root/checkappmusic/FiioMediaPlayer$OnErrorListener;)V

    .line 278
    sget-object v0, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->aA:Lcom/example/root/checkappmusic/FiioMediaPlayer$OnPrepareOkListener;

    invoke-virtual {v0, v1}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->setOnPrepareOkListener(Lcom/example/root/checkappmusic/FiioMediaPlayer$OnPrepareOkListener;)V

    .line 279
    invoke-static {p0}, Lcom/fiio/music/activity/FiiOMusicApplication;->a(Lcom/fiio/music/service/MediaPlayerService;)V

    .line 282
    sget-object v0, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v0, p0, v6}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 288
    return-void

    .line 272
    :cond_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->F:Lcom/fiio/music/b/k;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/fiio/music/b/k;->c(I)Lcom/fiio/music/entity/Song;

    move-result-object v1

    iput-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->x:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->x:Ljava/util/List;

    iget-object v2, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    invoke-virtual {v2}, Lcom/fiio/music/service/af;->c()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    :cond_6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/fiio/music/service/MediaPlayerService;->b(I)V

    goto/16 :goto_2
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->W:Lcom/fiio/music/service/ac;

    invoke-virtual {p0, v0}, Lcom/fiio/music/service/MediaPlayerService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1006
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->U:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->aT:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 1007
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 1008
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 9

    .prologue
    const/16 v8, 0x9

    const/4 v7, 0x2

    const/4 v6, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 739
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 740
    if-eqz p1, :cond_21

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_21

    .line 741
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.fiio.music.service.meidaplayer"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 742
    const-string v2, "flag"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 743
    const-string v3, "xyz-MediaPlayerService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u670d\u52a1\u7ebf\u7a0b\u63a5\u6536\u5230\u5e7f\u64ad\uff1aflag="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    if-nez v2, :cond_1

    .line 745
    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->J()V

    .line 923
    :cond_0
    :goto_0
    return-void

    .line 746
    :cond_1
    if-ne v2, v1, :cond_2

    .line 747
    iget v0, p0, Lcom/fiio/music/service/MediaPlayerService;->z:I

    if-ne v0, v6, :cond_0

    .line 748
    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->z()V

    .line 749
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.fiio.music.player.brocast"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "flag"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fiio/music/service/MediaPlayerService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 751
    :cond_2
    const/4 v3, 0x5

    if-ne v2, v3, :cond_3

    .line 753
    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->e()V

    goto :goto_0

    .line 754
    :cond_3
    if-ne v2, v7, :cond_7

    .line 756
    iget-object v2, p0, Lcom/fiio/music/service/MediaPlayerService;->S:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/fiio/music/service/MediaPlayerService;->S:Ljava/lang/String;

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 757
    :cond_4
    const-string v2, "false"

    iput-object v2, p0, Lcom/fiio/music/service/MediaPlayerService;->S:Ljava/lang/String;

    .line 758
    new-instance v2, Lcom/fiio/music/c/b;

    invoke-direct {v2, p0, v1}, Lcom/fiio/music/c/b;-><init>(Landroid/content/Context;Z)V

    const-string v1, "isStartup"

    const-string v3, "false"

    invoke-virtual {v2, v1, v3}, Lcom/fiio/music/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    :cond_5
    iget v1, p0, Lcom/fiio/music/service/MediaPlayerService;->z:I

    if-eqz v1, :cond_0

    .line 767
    iget-boolean v1, p0, Lcom/fiio/music/service/MediaPlayerService;->M:Z

    if-eqz v1, :cond_6

    .line 768
    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->G()Z

    move-result v1

    .line 769
    if-nez v1, :cond_0

    .line 770
    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c00f4

    invoke-virtual {p0, v2}, Lcom/fiio/music/service/MediaPlayerService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto :goto_0

    .line 773
    :cond_6
    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->z()V

    goto :goto_0

    .line 784
    :cond_7
    const/4 v3, 0x4

    if-ne v2, v3, :cond_a

    .line 785
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->S:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->S:Ljava/lang/String;

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 786
    :cond_8
    const-string v0, "false"

    iput-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->S:Ljava/lang/String;

    .line 787
    new-instance v0, Lcom/fiio/music/c/b;

    invoke-direct {v0, p0, v1}, Lcom/fiio/music/c/b;-><init>(Landroid/content/Context;Z)V

    const-string v1, "isStartup"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    :cond_9
    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->x()V

    goto/16 :goto_0

    .line 794
    :cond_a
    if-ne v2, v6, :cond_e

    .line 796
    iget-object v2, p0, Lcom/fiio/music/service/MediaPlayerService;->S:Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/fiio/music/service/MediaPlayerService;->S:Ljava/lang/String;

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 797
    :cond_b
    const-string v2, "false"

    iput-object v2, p0, Lcom/fiio/music/service/MediaPlayerService;->S:Ljava/lang/String;

    .line 798
    new-instance v2, Lcom/fiio/music/c/b;

    invoke-direct {v2, p0, v1}, Lcom/fiio/music/c/b;-><init>(Landroid/content/Context;Z)V

    const-string v1, "isStartup"

    const-string v3, "false"

    invoke-virtual {v2, v1, v3}, Lcom/fiio/music/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    :cond_c
    iget v1, p0, Lcom/fiio/music/service/MediaPlayerService;->K:I

    const/16 v2, 0x2710

    if-gt v1, v2, :cond_d

    .line 804
    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->y()V

    goto/16 :goto_0

    .line 806
    :cond_d
    invoke-virtual {p0, v0}, Lcom/fiio/music/service/MediaPlayerService;->a(I)V

    goto/16 :goto_0

    .line 808
    :cond_e
    const/4 v3, 0x6

    if-ne v2, v3, :cond_10

    .line 809
    invoke-direct {p0}, Lcom/fiio/music/service/MediaPlayerService;->am()V

    .line 811
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->S:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->S:Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 812
    :cond_f
    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->stopSelf()V

    goto/16 :goto_0

    .line 814
    :cond_10
    const/16 v3, 0xa

    if-ne v2, v3, :cond_11

    .line 815
    invoke-static {p0}, Lcom/fiio/music/util/l;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/fiio/music/service/MediaPlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->e()V

    invoke-static {}, Lcom/fiio/music/a/c;->a()Lcom/fiio/music/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/a/c;->b()V

    goto/16 :goto_0

    .line 816
    :cond_11
    const/4 v3, 0x7

    if-ne v2, v3, :cond_12

    .line 817
    invoke-direct {p0}, Lcom/fiio/music/service/MediaPlayerService;->af()V

    goto/16 :goto_0

    .line 818
    :cond_12
    const/16 v3, 0x8

    if-ne v2, v3, :cond_15

    .line 819
    iget v1, p0, Lcom/fiio/music/service/MediaPlayerService;->z:I

    if-ne v1, v6, :cond_13

    .line 820
    const-string v1, "seekToMsec"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fiio/music/service/MediaPlayerService;->a(I)V

    goto/16 :goto_0

    .line 822
    :cond_13
    const-string v1, "seekToMsec"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/fiio/music/service/MediaPlayerService;->p:Z

    if-nez v1, :cond_14

    sget-object v1, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v1, v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->pauseSeek(I)V

    goto/16 :goto_0

    :cond_14
    sget-object v1, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v1, v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->sacdSetCurrentPosition(I)V

    goto/16 :goto_0

    .line 824
    :cond_15
    if-ne v2, v8, :cond_1a

    .line 825
    const-string v3, "xyz-MediaPlayerService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "sd\u5361\u62d4\u51fa\u4e86\uff0c\u63a5\u6536\u5230\u505c\u6b62\u97f3\u4e50\u5e7f\u64ad\u53bb\u505c\u6b62\u97f3\u4e50="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "X7"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 830
    iput-boolean v1, p0, Lcom/fiio/music/service/MediaPlayerService;->aq:Z

    .line 833
    const-string v2, "/mnt/external_sd/"

    invoke-static {v2}, Lcom/fiio/music/util/ch;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 834
    const-string v2, "/mnt/usb_storage/"

    invoke-static {v2}, Lcom/fiio/music/util/ch;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 835
    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->i()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_17

    .line 836
    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->i()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/mnt/external_sd/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_16

    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->i()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/mnt/usb_storage/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    :cond_16
    move v0, v1

    .line 849
    :cond_17
    :goto_1
    if-eqz v0, :cond_0

    .line 851
    sget-object v0, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->forSdCard()V

    .line 852
    const-string v0, "xyz-MediaPlayerService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sd\u5361\u62d4\u51fa\u4e86\uff0cmFiioMediaPlayer="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    iput v7, p0, Lcom/fiio/music/service/MediaPlayerService;->z:I

    .line 854
    const-string v0, "xyz"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u6e05\u7a7a\u663e\u793a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->at:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 858
    const-string v2, "CurPlayingSongPath"

    iget-object v3, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v3}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 859
    const-string v2, "UNLATCH_SD_CARD"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 860
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 861
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.fiio.music.player.brocast"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 862
    const-string v1, "flag"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 863
    invoke-virtual {p0, v0}, Lcom/fiio/music/service/MediaPlayerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 864
    sget-object v0, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/fiio/music/service/MediaPlayerService;->K:I

    goto/16 :goto_0

    .line 838
    :cond_18
    const-string v2, "/mnt/external_sd/"

    invoke-static {v2}, Lcom/fiio/music/util/ch;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 839
    const-string v2, "/mnt/external_sd/"

    .line 840
    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->i()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_17

    .line 841
    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    move v0, v1

    .line 840
    goto/16 :goto_1

    .line 842
    :cond_19
    const-string v2, "/mnt/usb_storage/"

    invoke-static {v2}, Lcom/fiio/music/util/ch;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 843
    const-string v2, "/mnt/usb_storage/"

    .line 844
    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->i()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_17

    .line 845
    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    move v0, v1

    .line 844
    goto/16 :goto_1

    .line 872
    :cond_1a
    const/16 v3, 0xb

    if-ne v2, v3, :cond_1b

    .line 873
    invoke-static {}, Lcom/fiio/music/util/l;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 874
    const-string v2, "sin"

    const-string v3, "double cards devices mounted sd2 card"

    invoke-static {v2, v3}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    iget-boolean v2, p0, Lcom/fiio/music/service/MediaPlayerService;->aC:Z

    if-eqz v2, :cond_0

    .line 876
    iput-boolean v1, p0, Lcom/fiio/music/service/MediaPlayerService;->aD:Z

    .line 877
    iput-boolean v0, p0, Lcom/fiio/music/service/MediaPlayerService;->aC:Z

    .line 878
    iput-boolean v1, p0, Lcom/fiio/music/service/MediaPlayerService;->aE:Z

    goto/16 :goto_0

    .line 881
    :cond_1b
    const/16 v0, 0xc

    if-ne v2, v0, :cond_1c

    .line 883
    const-string v0, "xyz-MediaPlayerService"

    const-string v1, "mediaPlayerService swtich to d2p mode"

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 884
    :cond_1c
    const/16 v0, 0xd

    if-ne v2, v0, :cond_1f

    .line 886
    const-string v0, "xyz-MediaPlayerService"

    const-string v1, "mediaPlayerService swtich to dop mode"

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    sget-object v0, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1d

    iget v0, p0, Lcom/fiio/music/service/MediaPlayerService;->z:I

    if-ne v0, v7, :cond_0

    :cond_1d
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    if-eqz v0, :cond_0

    .line 888
    const-string v0, "xyz-MediaPlayerService"

    const-string v1, "mediaPlayerService isPlaying or isPause"

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    .line 890
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "dsf"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 891
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "diff"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 892
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "dff"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 894
    :cond_1e
    new-instance v1, Lcom/example/root/checkappmusic/DsfExtractor;

    invoke-direct {v1, v0}, Lcom/example/root/checkappmusic/DsfExtractor;-><init>(Ljava/lang/String;)V

    .line 895
    invoke-virtual {v1}, Lcom/example/root/checkappmusic/DsfExtractor;->getSamplerate()I

    move-result v0

    const v1, 0x15888

    if-eq v0, v1, :cond_0

    .line 897
    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->x()V

    goto/16 :goto_0

    .line 901
    :cond_1f
    const/16 v0, 0x3e8

    if-ne v2, v0, :cond_20

    .line 902
    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->M()V

    goto/16 :goto_0

    .line 903
    :cond_20
    const/16 v0, 0xe

    if-ne v2, v0, :cond_0

    .line 904
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/bl;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 905
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/fiio/music/service/n;

    invoke-direct {v1, p0}, Lcom/fiio/music/service/n;-><init>(Lcom/fiio/music/service/MediaPlayerService;)V

    .line 912
    const-wide/16 v2, 0x3e8

    .line 905
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 919
    :cond_21
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 920
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.appwidget.action.UPDATA_PLAY_MODE_FROM_WIDGET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 921
    invoke-direct {p0}, Lcom/fiio/music/service/MediaPlayerService;->af()V

    goto/16 :goto_0
.end method

.method public final p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2661
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getArtist()Lcom/fiio/music/entity/Artist;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2662
    :cond_0
    const-string v0, "FiiO Music"

    .line 2664
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getArtist()Lcom/fiio/music/entity/Artist;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/entity/Artist;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final q()I
    .locals 1

    .prologue
    .line 2703
    iget v0, p0, Lcom/fiio/music/service/MediaPlayerService;->K:I

    return v0
.end method

.method public final r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2710
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->T:Ljava/lang/String;

    return-object v0
.end method

.method public final s()I
    .locals 1

    .prologue
    .line 2776
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    if-nez v0, :cond_0

    .line 2777
    const/4 v0, 0x0

    .line 2779
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getSampleRate()I

    move-result v0

    goto :goto_0
.end method

.method public final t()I
    .locals 1

    .prologue
    .line 2782
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    if-nez v0, :cond_0

    .line 2783
    const/4 v0, 0x0

    .line 2785
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getBitRate()I

    move-result v0

    goto :goto_0
.end method

.method public final u()I
    .locals 1

    .prologue
    .line 2788
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    if-nez v0, :cond_0

    .line 2789
    const/4 v0, 0x0

    .line 2791
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getEncodingRate()I

    move-result v0

    goto :goto_0
.end method

.method public final v()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2797
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->L:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2798
    const/4 v0, 0x0

    .line 2800
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->L:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/fiio/music/service/MediaPlayerService;->L:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final w()I
    .locals 1

    .prologue
    .line 2807
    iget v0, p0, Lcom/fiio/music/service/MediaPlayerService;->A:I

    return v0
.end method

.method public final x()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2814
    invoke-static {}, Lcom/fiio/music/util/bd;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2849
    :goto_0
    return-void

    .line 2817
    :cond_0
    const/4 v0, 0x4

    iput v0, p0, Lcom/fiio/music/service/MediaPlayerService;->ap:I

    .line 2818
    iget v0, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    packed-switch v0, :pswitch_data_0

    .line 2839
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/fiio/music/service/MediaPlayerService;->g(I)V

    .line 2840
    iget-boolean v0, p0, Lcom/fiio/music/service/MediaPlayerService;->p:Z

    if-eqz v0, :cond_1

    .line 2841
    invoke-direct {p0, v1}, Lcom/fiio/music/service/MediaPlayerService;->f(I)V

    goto :goto_0

    .line 2820
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/fiio/music/service/MediaPlayerService;->g(I)V

    .line 2821
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->aZ:Lcom/fiio/music/service/a;

    iget v1, p0, Lcom/fiio/music/service/MediaPlayerService;->A:I

    invoke-virtual {v0, v1}, Lcom/fiio/music/service/a;->b(I)Lcom/fiio/music/entity/Song;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-direct {p0}, Lcom/fiio/music/service/MediaPlayerService;->ar()V

    goto :goto_0

    .line 2834
    :pswitch_2
    invoke-direct {p0, v1}, Lcom/fiio/music/service/MediaPlayerService;->g(I)V

    .line 2843
    :cond_1
    invoke-direct {p0, v1}, Lcom/fiio/music/service/MediaPlayerService;->e(I)V

    goto :goto_0

    .line 2818
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final y()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 2855
    const-string v0, "zengxy - - - - "

    const-string v1, "     previousPlayer   "

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2856
    const/4 v0, 0x3

    iput v0, p0, Lcom/fiio/music/service/MediaPlayerService;->ap:I

    .line 2857
    iget v0, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    packed-switch v0, :pswitch_data_0

    .line 2878
    :pswitch_0
    invoke-direct {p0, v2}, Lcom/fiio/music/service/MediaPlayerService;->g(I)V

    .line 2879
    iget-boolean v0, p0, Lcom/fiio/music/service/MediaPlayerService;->p:Z

    if-eqz v0, :cond_0

    .line 2880
    invoke-direct {p0, v3}, Lcom/fiio/music/service/MediaPlayerService;->f(I)V

    .line 2886
    :goto_0
    return-void

    .line 2859
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/fiio/music/service/MediaPlayerService;->g(I)V

    .line 2860
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->aZ:Lcom/fiio/music/service/a;

    iget v1, p0, Lcom/fiio/music/service/MediaPlayerService;->A:I

    invoke-virtual {v0}, Lcom/fiio/music/service/a;->e()Lcom/fiio/music/entity/Song;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-direct {p0}, Lcom/fiio/music/service/MediaPlayerService;->ar()V

    goto :goto_0

    .line 2873
    :pswitch_2
    invoke-direct {p0, v2}, Lcom/fiio/music/service/MediaPlayerService;->g(I)V

    .line 2882
    :cond_0
    invoke-direct {p0, v3}, Lcom/fiio/music/service/MediaPlayerService;->e(I)V

    goto :goto_0

    .line 2857
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final z()V
    .locals 12

    .prologue
    .line 2894
    invoke-static {}, Lcom/fiio/music/util/l;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2895
    iget-boolean v0, p0, Lcom/fiio/music/service/MediaPlayerService;->aC:Z

    if-eqz v0, :cond_1

    .line 3036
    :cond_0
    :goto_0
    return-void

    .line 2898
    :cond_1
    iget-boolean v0, p0, Lcom/fiio/music/service/MediaPlayerService;->aE:Z

    if-eqz v0, :cond_5

    .line 2899
    const-string v0, "sin"

    const-string v1, "X53eject --- re player"

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2900
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2902
    iget-boolean v0, p0, Lcom/fiio/music/service/MediaPlayerService;->j:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/fiio/music/service/MediaPlayerService;->p:Z

    if-nez v0, :cond_3

    .line 2903
    invoke-direct {p0}, Lcom/fiio/music/service/MediaPlayerService;->ak()V

    .line 2907
    :cond_2
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fiio/music/service/MediaPlayerService;->aE:Z

    goto :goto_0

    .line 2904
    :cond_3
    iget-boolean v0, p0, Lcom/fiio/music/service/MediaPlayerService;->j:Z

    if-eqz v0, :cond_2

    .line 2905
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    iget v2, p0, Lcom/fiio/music/service/MediaPlayerService;->k:I

    iget v3, p0, Lcom/fiio/music/service/MediaPlayerService;->l:I

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getArtist()Lcom/fiio/music/entity/Artist;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/entity/Artist;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/fiio/music/service/MediaPlayerService;->u:Ljava/util/List;

    iget v7, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/fiio/music/service/MediaPlayerService;->a(Lcom/fiio/music/entity/Song;IILjava/lang/String;Ljava/lang/String;Ljava/util/List;I)V

    goto :goto_1

    .line 2910
    :cond_4
    const-string v0, "sin"

    const-string v1, "song dosen\'t exist"

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2916
    :cond_5
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isSacd()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2917
    sget-object v0, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/fiio/music/service/MediaPlayerService;->aP:I

    .line 2918
    iget v0, p0, Lcom/fiio/music/service/MediaPlayerService;->aP:I

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/fiio/music/service/MediaPlayerService;->g(I)V

    sget-object v1, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v1}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v0, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->sacdPause()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/fiio/music/service/MediaPlayerService;->z:I

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/fiio/music/util/a;->a(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/service/MediaPlayerService;->c:Lcom/b/a/b/f;

    invoke-static {v0, v1, v2, v3}, Lcom/fiio/music/util/h;->b(Lcom/fiio/music/entity/Song;ILandroid/content/Context;Lcom/b/a/b/f;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/b/a/b/a/f;

    const/16 v2, 0x64

    const/16 v3, 0x64

    invoke-direct {v1, v2, v3}, Lcom/b/a/b/a/f;-><init>(II)V

    iget-object v2, p0, Lcom/fiio/music/service/MediaPlayerService;->c:Lcom/b/a/b/f;

    iget-object v3, p0, Lcom/fiio/music/service/MediaPlayerService;->V:Lcom/b/a/b/d;

    invoke-virtual {v2, v0, v1, v3}, Lcom/b/a/b/f;->a(Ljava/lang/String;Lcom/b/a/b/a/f;Lcom/b/a/b/d;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getArtist()Lcom/fiio/music/entity/Artist;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/entity/Artist;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v2}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/fiio/music/service/MediaPlayerService;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_2
    invoke-direct {p0}, Lcom/fiio/music/service/MediaPlayerService;->am()V

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->aV:Lcom/fiio/music/service/ad;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fiio/music/service/ad;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->aV:Lcom/fiio/music/service/ad;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fiio/music/service/ad;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_7
    sget-object v1, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v1}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->sacdPause()V

    sget-object v1, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->setSacdBlockSeekFlag(ZI)V

    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    iget v2, p0, Lcom/fiio/music/service/MediaPlayerService;->k:I

    iget v3, p0, Lcom/fiio/music/service/MediaPlayerService;->l:I

    iget-object v4, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v4}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v5}, Lcom/fiio/music/entity/Song;->getArtist()Lcom/fiio/music/entity/Artist;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fiio/music/entity/Artist;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/fiio/music/service/MediaPlayerService;->u:Ljava/util/List;

    iget v7, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    iget v8, p0, Lcom/fiio/music/service/MediaPlayerService;->k:I

    add-int/2addr v0, v8

    int-to-long v8, v0

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    const-wide/32 v10, 0x2b1100

    mul-long/2addr v8, v10

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lcom/fiio/music/service/MediaPlayerService;->a(Lcom/fiio/music/entity/Song;IILjava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/fiio/music/service/MediaPlayerService;->z:I

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    if-eqz v1, :cond_8

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/fiio/music/util/a;->a(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/service/MediaPlayerService;->c:Lcom/b/a/b/f;

    invoke-static {v0, v1, v2, v3}, Lcom/fiio/music/util/h;->b(Lcom/fiio/music/entity/Song;ILandroid/content/Context;Lcom/b/a/b/f;)Ljava/lang/String;

    move-result-object v0

    :cond_8
    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/fiio/music/util/a;->a(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_a

    const-string v0, "drawable://2130837972"

    :cond_9
    :goto_3
    new-instance v1, Lcom/b/a/b/a/f;

    const/16 v2, 0x64

    const/16 v3, 0x64

    invoke-direct {v1, v2, v3}, Lcom/b/a/b/a/f;-><init>(II)V

    iget-object v2, p0, Lcom/fiio/music/service/MediaPlayerService;->c:Lcom/b/a/b/f;

    iget-object v3, p0, Lcom/fiio/music/service/MediaPlayerService;->V:Lcom/b/a/b/d;

    invoke-virtual {v2, v0, v1, v3}, Lcom/b/a/b/f;->a(Ljava/lang/String;Lcom/b/a/b/a/f;Lcom/b/a/b/d;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getArtist()Lcom/fiio/music/entity/Artist;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/entity/Artist;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v2}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/fiio/music/service/MediaPlayerService;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_a
    const/4 v2, 0x2

    if-ne v1, v2, :cond_b

    const-string v0, "drawable://2130838563"

    goto :goto_3

    :cond_b
    const/4 v2, 0x3

    if-ne v1, v2, :cond_9

    const-string v0, "drawable://2130838564"

    goto :goto_3

    .line 2921
    :cond_c
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    if-nez v0, :cond_d

    .line 2922
    iget-boolean v0, p0, Lcom/fiio/music/service/MediaPlayerService;->M:Z

    if-eqz v0, :cond_0

    .line 2923
    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->G()Z

    goto/16 :goto_0

    .line 2931
    :cond_d
    sget-object v0, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2932
    sget-object v0, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/fiio/music/service/MediaPlayerService;->K:I

    .line 2934
    :cond_e
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/fiio/music/service/MediaPlayerService;->g(I)V

    .line 2936
    sget-object v0, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2938
    sget-object v0, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->pause()V

    .line 2939
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/fiio/music/service/MediaPlayerService;->aN:J

    .line 2941
    const/4 v0, 0x2

    iput v0, p0, Lcom/fiio/music/service/MediaPlayerService;->z:I

    .line 2942
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    if-eqz v0, :cond_f

    .line 2944
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/fiio/music/util/a;->a(Landroid/content/Context;)I

    move-result v1

    .line 2945
    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/service/MediaPlayerService;->c:Lcom/b/a/b/f;

    .line 2944
    invoke-static {v0, v1, v2, v3}, Lcom/fiio/music/util/h;->b(Lcom/fiio/music/entity/Song;ILandroid/content/Context;Lcom/b/a/b/f;)Ljava/lang/String;

    move-result-object v0

    .line 2947
    new-instance v1, Lcom/b/a/b/a/f;

    const/16 v2, 0x64

    const/16 v3, 0x64

    invoke-direct {v1, v2, v3}, Lcom/b/a/b/a/f;-><init>(II)V

    .line 2948
    iget-object v2, p0, Lcom/fiio/music/service/MediaPlayerService;->c:Lcom/b/a/b/f;

    .line 2949
    iget-object v3, p0, Lcom/fiio/music/service/MediaPlayerService;->V:Lcom/b/a/b/d;

    .line 2948
    invoke-virtual {v2, v0, v1, v3}, Lcom/b/a/b/f;->a(Ljava/lang/String;Lcom/b/a/b/a/f;Lcom/b/a/b/d;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2950
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getArtist()Lcom/fiio/music/entity/Artist;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 2951
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getArtist()Lcom/fiio/music/entity/Artist;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/entity/Artist;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2952
    iget-object v2, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v2}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v2

    .line 2951
    invoke-virtual {p0, v0, v1, v2}, Lcom/fiio/music/service/MediaPlayerService;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    .line 3028
    :cond_f
    :goto_4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.fiio.music.player.brocast"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "flag"

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/fiio/music/service/MediaPlayerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 3029
    invoke-direct {p0}, Lcom/fiio/music/service/MediaPlayerService;->am()V

    .line 3032
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->aV:Lcom/fiio/music/service/ad;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fiio/music/service/ad;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3033
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->aV:Lcom/fiio/music/service/ad;

    .line 3034
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fiio/music/service/ad;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 2956
    :cond_10
    const-string v0, "xyz"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isPlaying ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v2}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->isPlaying()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2958
    iget-boolean v0, p0, Lcom/fiio/music/service/MediaPlayerService;->M:Z

    if-eqz v0, :cond_19

    .line 2959
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    if-eqz v0, :cond_16

    .line 2960
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    iget-object v2, p0, Lcom/fiio/music/service/MediaPlayerService;->I:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/fiio/music/service/MediaPlayerService;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 2970
    :goto_5
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    if-eqz v0, :cond_13

    .line 2971
    const/4 v0, 0x0

    .line 2972
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    if-eqz v1, :cond_11

    .line 2973
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/fiio/music/util/a;->a(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/service/MediaPlayerService;->c:Lcom/b/a/b/f;

    invoke-static {v0, v1, v2, v3}, Lcom/fiio/music/util/h;->b(Lcom/fiio/music/entity/Song;ILandroid/content/Context;Lcom/b/a/b/f;)Ljava/lang/String;

    move-result-object v0

    .line 2975
    :cond_11
    if-nez v0, :cond_12

    .line 2976
    invoke-static {}, Lcom/fiio/music/util/h;->b()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2977
    const-string v0, "drawable://2130837972"

    .line 2982
    :cond_12
    :goto_6
    new-instance v1, Lcom/b/a/b/a/f;

    const/16 v2, 0x64

    const/16 v3, 0x64

    invoke-direct {v1, v2, v3}, Lcom/b/a/b/a/f;-><init>(II)V

    .line 2983
    iget-object v2, p0, Lcom/fiio/music/service/MediaPlayerService;->c:Lcom/b/a/b/f;

    iget-object v3, p0, Lcom/fiio/music/service/MediaPlayerService;->V:Lcom/b/a/b/d;

    invoke-virtual {v2, v0, v1, v3}, Lcom/b/a/b/f;->a(Ljava/lang/String;Lcom/b/a/b/a/f;Lcom/b/a/b/d;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2984
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getArtist()Lcom/fiio/music/entity/Artist;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 2985
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getArtist()Lcom/fiio/music/entity/Artist;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/entity/Artist;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v2}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/fiio/music/service/MediaPlayerService;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    .line 3008
    :cond_13
    :goto_7
    const/4 v0, 0x3

    iput v0, p0, Lcom/fiio/music/service/MediaPlayerService;->z:I

    .line 3009
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    if-eqz v0, :cond_f

    .line 3010
    const/4 v0, 0x0

    .line 3011
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    if-eqz v1, :cond_14

    .line 3012
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/fiio/music/util/a;->a(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/service/MediaPlayerService;->c:Lcom/b/a/b/f;

    invoke-static {v0, v1, v2, v3}, Lcom/fiio/music/util/h;->b(Lcom/fiio/music/entity/Song;ILandroid/content/Context;Lcom/b/a/b/f;)Ljava/lang/String;

    move-result-object v0

    .line 3014
    :cond_14
    if-nez v0, :cond_15

    .line 3015
    invoke-static {}, Lcom/fiio/music/util/h;->b()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 3016
    const-string v0, "drawable://2130837972"

    .line 3021
    :cond_15
    :goto_8
    new-instance v1, Lcom/b/a/b/a/f;

    const/16 v2, 0x64

    const/16 v3, 0x64

    invoke-direct {v1, v2, v3}, Lcom/b/a/b/a/f;-><init>(II)V

    .line 3022
    iget-object v2, p0, Lcom/fiio/music/service/MediaPlayerService;->c:Lcom/b/a/b/f;

    iget-object v3, p0, Lcom/fiio/music/service/MediaPlayerService;->V:Lcom/b/a/b/d;

    invoke-virtual {v2, v0, v1, v3}, Lcom/b/a/b/f;->a(Ljava/lang/String;Lcom/b/a/b/a/f;Lcom/b/a/b/d;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3023
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getArtist()Lcom/fiio/music/entity/Artist;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 3024
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getArtist()Lcom/fiio/music/entity/Artist;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/entity/Artist;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v2}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/fiio/music/service/MediaPlayerService;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2962
    :cond_16
    const/4 v0, 0x1

    iput v0, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    .line 2963
    invoke-virtual {p0}, Lcom/fiio/music/service/MediaPlayerService;->J()V

    .line 2964
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->Y:Lcom/fiio/music/service/af;

    invoke-virtual {v0}, Lcom/fiio/music/service/af;->d()Lcom/fiio/music/entity/Song;

    move-result-object v0

    .line 2965
    if-eqz v0, :cond_17

    :goto_9
    iput-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    .line 2967
    invoke-direct {p0}, Lcom/fiio/music/service/MediaPlayerService;->ak()V

    .line 2968
    const/4 v0, 0x0

    iput v0, p0, Lcom/fiio/music/service/MediaPlayerService;->K:I

    goto/16 :goto_5

    .line 2965
    :cond_17
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    goto :goto_9

    .line 2979
    :cond_18
    const-string v0, "drawable://2130838563"

    goto/16 :goto_6

    .line 2989
    :cond_19
    iget-boolean v0, p0, Lcom/fiio/music/service/MediaPlayerService;->Q:Z

    if-eqz v0, :cond_1c

    .line 2990
    const-string v0, "xyz-MediaPlayerService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isPrepare ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/fiio/music/service/MediaPlayerService;->Q:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2991
    iget-boolean v0, p0, Lcom/fiio/music/service/MediaPlayerService;->j:Z

    if-eqz v0, :cond_1a

    .line 2992
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    iget v2, p0, Lcom/fiio/music/service/MediaPlayerService;->k:I

    iget v3, p0, Lcom/fiio/music/service/MediaPlayerService;->l:I

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getArtist()Lcom/fiio/music/entity/Artist;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/entity/Artist;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/fiio/music/service/MediaPlayerService;->u:Ljava/util/List;

    iget v7, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/fiio/music/service/MediaPlayerService;->a(Lcom/fiio/music/entity/Song;IILjava/lang/String;Ljava/lang/String;Ljava/util/List;I)V

    goto/16 :goto_7

    .line 2993
    :cond_1a
    iget-boolean v0, p0, Lcom/fiio/music/service/MediaPlayerService;->p:Z

    if-eqz v0, :cond_1b

    .line 2994
    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    iget v2, p0, Lcom/fiio/music/service/MediaPlayerService;->k:I

    iget v3, p0, Lcom/fiio/music/service/MediaPlayerService;->l:I

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->w:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getArtist()Lcom/fiio/music/entity/Artist;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/entity/Artist;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/fiio/music/service/MediaPlayerService;->u:Ljava/util/List;

    iget v7, p0, Lcom/fiio/music/service/MediaPlayerService;->y:I

    iget v0, p0, Lcom/fiio/music/service/MediaPlayerService;->aP:I

    const v8, 0x2b1100

    mul-int/2addr v0, v8

    int-to-long v8, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lcom/fiio/music/service/MediaPlayerService;->a(Lcom/fiio/music/entity/Song;IILjava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)V

    goto/16 :goto_7

    .line 2996
    :cond_1b
    invoke-direct {p0}, Lcom/fiio/music/service/MediaPlayerService;->ak()V

    goto/16 :goto_7

    .line 3000
    :cond_1c
    iget-object v0, p0, Lcom/fiio/music/service/MediaPlayerService;->U:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/fiio/music/service/MediaPlayerService;->aT:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    .line 3001
    const/4 v3, 0x1

    .line 3000
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    .line 3002
    const-string v1, "xyz-MediaPlayerService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mFiioMediaPlayer.pause() =\u91cd\u65b0\u64ad\u653e   statusAudioFocus="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3003
    sget-object v0, Lcom/fiio/music/service/MediaPlayerService;->v:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->pause()V

    goto/16 :goto_7

    .line 3018
    :cond_1d
    const-string v0, "drawable://2130838563"

    goto/16 :goto_8
.end method
