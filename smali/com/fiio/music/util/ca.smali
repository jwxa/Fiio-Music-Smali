.class public final Lcom/fiio/music/util/ca;
.super Ljava/lang/Object;
.source "QuickTimer.java"


# instance fields
.field private a:Ljava/util/Timer;

.field private b:Ljava/util/TimerTask;

.field private c:Lcom/fiio/music/util/cd;

.field private d:Landroid/os/Handler;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fiio/music/util/ca;->e:Z

    .line 18
    new-instance v0, Lcom/fiio/music/util/cb;

    invoke-direct {v0, p0}, Lcom/fiio/music/util/cb;-><init>(Lcom/fiio/music/util/ca;)V

    iput-object v0, p0, Lcom/fiio/music/util/ca;->d:Landroid/os/Handler;

    .line 28
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/util/ca;->a:Ljava/util/Timer;

    .line 29
    new-instance v0, Lcom/fiio/music/util/cc;

    invoke-direct {v0, p0}, Lcom/fiio/music/util/cc;-><init>(Lcom/fiio/music/util/ca;)V

    iput-object v0, p0, Lcom/fiio/music/util/ca;->b:Ljava/util/TimerTask;

    .line 35
    return-void
.end method

.method static synthetic a(Lcom/fiio/music/util/ca;)Lcom/fiio/music/util/cd;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/fiio/music/util/ca;->c:Lcom/fiio/music/util/cd;

    return-object v0
.end method

.method static synthetic b(Lcom/fiio/music/util/ca;)V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fiio/music/util/ca;->e:Z

    return-void
.end method

.method static synthetic c(Lcom/fiio/music/util/ca;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/fiio/music/util/ca;->d:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/fiio/music/util/cd;)V
    .locals 4

    .prologue
    .line 41
    iput-object p1, p0, Lcom/fiio/music/util/ca;->c:Lcom/fiio/music/util/cd;

    .line 42
    iget-object v0, p0, Lcom/fiio/music/util/ca;->a:Ljava/util/Timer;

    iget-object v1, p0, Lcom/fiio/music/util/ca;->b:Ljava/util/TimerTask;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fiio/music/util/ca;->e:Z

    .line 44
    return-void
.end method
