.class public final Lcom/fiio/music/widget/t;
.super Ljava/lang/Object;
.source "ThreadKeeper.java"


# static fields
.field private static a:Lcom/fiio/music/widget/t;


# instance fields
.field private b:Ljava/lang/Thread;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/fiio/music/widget/t;
    .locals 2

    .prologue
    .line 12
    const-class v1, Lcom/fiio/music/widget/t;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/fiio/music/widget/t;->a:Lcom/fiio/music/widget/t;

    if-nez v0, :cond_0

    .line 13
    new-instance v0, Lcom/fiio/music/widget/t;

    invoke-direct {v0}, Lcom/fiio/music/widget/t;-><init>()V

    sput-object v0, Lcom/fiio/music/widget/t;->a:Lcom/fiio/music/widget/t;

    .line 15
    :cond_0
    sget-object v0, Lcom/fiio/music/widget/t;->a:Lcom/fiio/music/widget/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 12
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/Thread;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/fiio/music/widget/t;->b:Ljava/lang/Thread;

    .line 20
    return-void
.end method

.method public final b()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/fiio/music/widget/t;->b:Ljava/lang/Thread;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/fiio/music/widget/t;->b:Ljava/lang/Thread;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fiio/music/widget/t;->b:Ljava/lang/Thread;

    .line 32
    return-void
.end method
