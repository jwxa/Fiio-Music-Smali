.class public Lcom/fiio/music/counttimer/CountDownTimerService;
.super Landroid/app/Service;
.source "CountDownTimerService.java"


# static fields
.field public static a:Lcom/fiio/music/counttimer/CountDownTimerService;

.field private static b:J

.field private static c:Ljava/util/Timer;

.field private static e:J

.field private static h:Lcom/fiio/music/counttimer/a;


# instance fields
.field private d:Lcom/fiio/music/counttimer/b;

.field private f:Z

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/fiio/music/counttimer/CountDownTimerService;->e:J

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fiio/music/counttimer/CountDownTimerService;->f:Z

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/fiio/music/counttimer/CountDownTimerService;->g:I

    .line 16
    return-void
.end method

.method public static a()J
    .locals 2

    .prologue
    .line 70
    sget-wide v0, Lcom/fiio/music/counttimer/CountDownTimerService;->e:J

    return-wide v0
.end method

.method public static a(Lcom/fiio/music/counttimer/a;)Lcom/fiio/music/counttimer/CountDownTimerService;
    .locals 4

    .prologue
    .line 34
    sget-object v0, Lcom/fiio/music/counttimer/CountDownTimerService;->a:Lcom/fiio/music/counttimer/CountDownTimerService;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/fiio/music/counttimer/CountDownTimerService;

    invoke-direct {v0}, Lcom/fiio/music/counttimer/CountDownTimerService;-><init>()V

    sput-object v0, Lcom/fiio/music/counttimer/CountDownTimerService;->a:Lcom/fiio/music/counttimer/CountDownTimerService;

    .line 37
    :cond_0
    sput-object p0, Lcom/fiio/music/counttimer/CountDownTimerService;->h:Lcom/fiio/music/counttimer/a;

    .line 38
    const-wide/16 v0, 0x2710

    sput-wide v0, Lcom/fiio/music/counttimer/CountDownTimerService;->b:J

    .line 39
    sget-wide v0, Lcom/fiio/music/counttimer/CountDownTimerService;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 40
    sget-wide v0, Lcom/fiio/music/counttimer/CountDownTimerService;->b:J

    sput-wide v0, Lcom/fiio/music/counttimer/CountDownTimerService;->e:J

    .line 43
    :cond_1
    sget-object v0, Lcom/fiio/music/counttimer/CountDownTimerService;->a:Lcom/fiio/music/counttimer/CountDownTimerService;

    return-object v0
.end method

.method static synthetic a(Lcom/fiio/music/counttimer/CountDownTimerService;)V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fiio/music/counttimer/CountDownTimerService;->f:Z

    return-void
.end method

.method static synthetic b(J)V
    .locals 0

    .prologue
    .line 23
    sput-wide p0, Lcom/fiio/music/counttimer/CountDownTimerService;->e:J

    return-void
.end method

.method static synthetic f()J
    .locals 2

    .prologue
    .line 23
    sget-wide v0, Lcom/fiio/music/counttimer/CountDownTimerService;->e:J

    return-wide v0
.end method

.method static synthetic g()Lcom/fiio/music/counttimer/a;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/fiio/music/counttimer/CountDownTimerService;->h:Lcom/fiio/music/counttimer/a;

    return-object v0
.end method


# virtual methods
.method public final a(J)V
    .locals 3

    .prologue
    .line 46
    sput-wide p1, Lcom/fiio/music/counttimer/CountDownTimerService;->b:J

    .line 49
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/fiio/music/counttimer/CountDownTimerService;->c:Ljava/util/Timer;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fiio/music/counttimer/CountDownTimerService;->f:Z

    .line 51
    sget-wide v0, Lcom/fiio/music/counttimer/CountDownTimerService;->b:J

    sput-wide v0, Lcom/fiio/music/counttimer/CountDownTimerService;->e:J

    .line 53
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/fiio/music/counttimer/CountDownTimerService;->g:I

    return v0
.end method

.method public final c()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 85
    const-string v0, "xyz"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "startTimer timer_couting="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v2, Lcom/fiio/music/counttimer/CountDownTimerService;->e:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/fiio/music/counttimer/CountDownTimerService;->f:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/fiio/music/counttimer/CountDownTimerService;->c:Ljava/util/Timer;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/fiio/music/counttimer/CountDownTimerService;->c:Ljava/util/Timer;

    iput-boolean v4, p0, Lcom/fiio/music/counttimer/CountDownTimerService;->f:Z

    :cond_1
    new-instance v0, Lcom/fiio/music/counttimer/b;

    invoke-direct {v0, p0, v4}, Lcom/fiio/music/counttimer/b;-><init>(Lcom/fiio/music/counttimer/CountDownTimerService;B)V

    iput-object v0, p0, Lcom/fiio/music/counttimer/CountDownTimerService;->d:Lcom/fiio/music/counttimer/b;

    sget-object v0, Lcom/fiio/music/counttimer/CountDownTimerService;->c:Ljava/util/Timer;

    iget-object v1, p0, Lcom/fiio/music/counttimer/CountDownTimerService;->d:Lcom/fiio/music/counttimer/b;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1f4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 86
    const/4 v0, 0x1

    iput v0, p0, Lcom/fiio/music/counttimer/CountDownTimerService;->g:I

    .line 87
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/fiio/music/counttimer/CountDownTimerService;->c:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 94
    sget-object v0, Lcom/fiio/music/counttimer/CountDownTimerService;->c:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 95
    sget-object v0, Lcom/fiio/music/counttimer/CountDownTimerService;->c:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 96
    const/4 v0, 0x0

    sput-object v0, Lcom/fiio/music/counttimer/CountDownTimerService;->c:Ljava/util/Timer;

    .line 99
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fiio/music/counttimer/CountDownTimerService;->f:Z

    .line 100
    const/4 v0, 0x2

    iput v0, p0, Lcom/fiio/music/counttimer/CountDownTimerService;->g:I

    .line 101
    return-void
.end method

.method public final e()V
    .locals 3

    .prologue
    .line 107
    const-string v0, "xyz"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5173\u95ed\u8ba1\u65f6\u5668\uff0ctimer="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/fiio/music/counttimer/CountDownTimerService;->c:Ljava/util/Timer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    sget-object v0, Lcom/fiio/music/counttimer/CountDownTimerService;->c:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 109
    sget-object v0, Lcom/fiio/music/counttimer/CountDownTimerService;->c:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 110
    sget-object v0, Lcom/fiio/music/counttimer/CountDownTimerService;->c:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 111
    const/4 v0, 0x0

    sput-object v0, Lcom/fiio/music/counttimer/CountDownTimerService;->c:Ljava/util/Timer;

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fiio/music/counttimer/CountDownTimerService;->f:Z

    .line 113
    sget-wide v0, Lcom/fiio/music/counttimer/CountDownTimerService;->b:J

    sput-wide v0, Lcom/fiio/music/counttimer/CountDownTimerService;->e:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/fiio/music/counttimer/CountDownTimerService;->g:I

    .line 114
    sget-object v0, Lcom/fiio/music/counttimer/CountDownTimerService;->h:Lcom/fiio/music/counttimer/a;

    invoke-interface {v0}, Lcom/fiio/music/counttimer/a;->a()V

    .line 116
    :cond_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 62
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 63
    return-void
.end method
