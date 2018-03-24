.class public Lcom/fiio/music/util/cj;
.super Ljava/lang/Object;
.source "SaveSQPositionUtil.java"


# static fields
.field private static b:Lcom/fiio/music/util/cj;


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/util/cj;->a:Ljava/util/ArrayList;

    .line 32
    return-void
.end method

.method public static a()Lcom/fiio/music/util/cj;
    .locals 2

    .prologue
    .line 37
    sget-object v0, Lcom/fiio/music/util/cj;->b:Lcom/fiio/music/util/cj;

    if-nez v0, :cond_1

    .line 38
    const-class v1, Lcom/fiio/music/util/cj;

    monitor-enter v1

    .line 39
    :try_start_0
    sget-object v0, Lcom/fiio/music/util/cj;->b:Lcom/fiio/music/util/cj;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/fiio/music/util/cj;

    invoke-direct {v0}, Lcom/fiio/music/util/cj;-><init>()V

    sput-object v0, Lcom/fiio/music/util/cj;->b:Lcom/fiio/music/util/cj;

    .line 38
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :cond_1
    sget-object v0, Lcom/fiio/music/util/cj;->b:Lcom/fiio/music/util/cj;

    return-object v0

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;)V
    .locals 0
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
    .line 51
    iput-object p1, p0, Lcom/fiio/music/util/cj;->c:Ljava/util/ArrayList;

    .line 54
    return-void
.end method

.method public final b()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/fiio/music/util/cj;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final b(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 105
    iput-object p1, p0, Lcom/fiio/music/util/cj;->a:Ljava/util/ArrayList;

    .line 106
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/fiio/music/util/cj;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/util/cj;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 63
    :cond_0
    const/4 v0, 0x1

    .line 65
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/fiio/music/util/cj;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/util/cj;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 71
    :cond_0
    const/4 v0, 0x1

    .line 73
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Z
    .locals 2

    .prologue
    .line 83
    const/4 v0, 0x0

    .line 84
    iget-object v1, p0, Lcom/fiio/music/util/cj;->c:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fiio/music/util/cj;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 85
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fiio/music/util/cj;->c:Ljava/util/ArrayList;

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/fiio/music/util/cj;->c:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 88
    const/4 v0, 0x1

    .line 91
    :cond_1
    return v0
.end method

.method public final f()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/fiio/music/util/cj;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final g()Z
    .locals 2

    .prologue
    .line 113
    const/4 v0, 0x0

    .line 114
    iget-object v1, p0, Lcom/fiio/music/util/cj;->a:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fiio/music/util/cj;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 115
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fiio/music/util/cj;->a:Ljava/util/ArrayList;

    .line 117
    :cond_0
    iget-object v1, p0, Lcom/fiio/music/util/cj;->a:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 118
    const/4 v0, 0x1

    .line 121
    :cond_1
    return v0
.end method
