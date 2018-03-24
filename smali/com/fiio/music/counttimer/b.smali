.class final Lcom/fiio/music/counttimer/b;
.super Ljava/util/TimerTask;
.source "CountDownTimerService.java"


# instance fields
.field final synthetic a:Lcom/fiio/music/counttimer/CountDownTimerService;


# direct methods
.method private constructor <init>(Lcom/fiio/music/counttimer/CountDownTimerService;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/fiio/music/counttimer/b;->a:Lcom/fiio/music/counttimer/CountDownTimerService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/fiio/music/counttimer/CountDownTimerService;B)V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/fiio/music/counttimer/b;-><init>(Lcom/fiio/music/counttimer/CountDownTimerService;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 130
    invoke-static {}, Lcom/fiio/music/counttimer/CountDownTimerService;->f()J

    move-result-wide v0

    const-wide/16 v2, 0x1f4

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/fiio/music/counttimer/CountDownTimerService;->b(J)V

    .line 132
    invoke-static {}, Lcom/fiio/music/counttimer/CountDownTimerService;->g()Lcom/fiio/music/counttimer/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/fiio/music/counttimer/a;->a()V

    .line 133
    invoke-static {}, Lcom/fiio/music/counttimer/CountDownTimerService;->f()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/fiio/music/counttimer/b;->cancel()Z

    .line 135
    iget-object v0, p0, Lcom/fiio/music/counttimer/b;->a:Lcom/fiio/music/counttimer/CountDownTimerService;

    invoke-static {v0}, Lcom/fiio/music/counttimer/CountDownTimerService;->a(Lcom/fiio/music/counttimer/CountDownTimerService;)V

    .line 138
    :cond_0
    return-void
.end method
