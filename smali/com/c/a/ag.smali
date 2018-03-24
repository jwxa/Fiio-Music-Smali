.class final Lcom/c/a/ag;
.super Lcom/c/a/az;
.source "NetworkRequestHandler.java"


# instance fields
.field private final a:Lcom/c/a/v;

.field private final b:Lcom/c/a/bc;


# direct methods
.method public constructor <init>(Lcom/c/a/v;Lcom/c/a/bc;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/c/a/az;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/c/a/ag;->a:Lcom/c/a/v;

    .line 38
    iput-object p2, p0, Lcom/c/a/ag;->b:Lcom/c/a/bc;

    .line 39
    return-void
.end method


# virtual methods
.method final a()I
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x2

    return v0
.end method

.method final a(Landroid/net/NetworkInfo;)Z
    .locals 1

    .prologue
    .line 80
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/c/a/aw;)Z
    .locals 2

    .prologue
    .line 42
    iget-object v0, p1, Lcom/c/a/aw;->d:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 43
    const-string v1, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "https"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Lcom/c/a/aw;)Lcom/c/a/ba;
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    .line 47
    iget-object v0, p0, Lcom/c/a/ag;->a:Lcom/c/a/v;

    iget-object v2, p1, Lcom/c/a/aw;->d:Landroid/net/Uri;

    iget v3, p1, Lcom/c/a/aw;->c:I

    invoke-interface {v0, v2, v3}, Lcom/c/a/v;->a(Landroid/net/Uri;I)Lcom/c/a/w;

    move-result-object v2

    .line 48
    if-nez v2, :cond_0

    move-object v0, v1

    .line 72
    :goto_0
    return-object v0

    .line 52
    :cond_0
    iget-boolean v0, v2, Lcom/c/a/w;->c:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/c/a/ap;->b:Lcom/c/a/ap;

    .line 54
    :goto_1
    iget-object v3, v2, Lcom/c/a/w;->b:Landroid/graphics/Bitmap;

    .line 55
    if-eqz v3, :cond_2

    .line 56
    new-instance v1, Lcom/c/a/ba;

    invoke-direct {v1, v3, v0}, Lcom/c/a/ba;-><init>(Landroid/graphics/Bitmap;Lcom/c/a/ap;)V

    move-object v0, v1

    goto :goto_0

    .line 52
    :cond_1
    sget-object v0, Lcom/c/a/ap;->c:Lcom/c/a/ap;

    goto :goto_1

    .line 59
    :cond_2
    iget-object v3, v2, Lcom/c/a/w;->a:Ljava/io/InputStream;

    .line 60
    if-nez v3, :cond_3

    move-object v0, v1

    .line 61
    goto :goto_0

    .line 65
    :cond_3
    sget-object v1, Lcom/c/a/ap;->b:Lcom/c/a/ap;

    if-ne v0, v1, :cond_4

    iget-wide v4, v2, Lcom/c/a/w;->d:J

    cmp-long v1, v4, v6

    if-nez v1, :cond_4

    .line 66
    invoke-static {v3}, Lcom/c/a/bj;->a(Ljava/io/InputStream;)V

    .line 67
    new-instance v0, Lcom/c/a/ah;

    const-string v1, "Received response with 0 content-length header."

    invoke-direct {v0, v1}, Lcom/c/a/ah;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_4
    sget-object v1, Lcom/c/a/ap;->c:Lcom/c/a/ap;

    if-ne v0, v1, :cond_5

    iget-wide v4, v2, Lcom/c/a/w;->d:J

    cmp-long v1, v4, v6

    if-lez v1, :cond_5

    .line 70
    iget-object v1, p0, Lcom/c/a/ag;->b:Lcom/c/a/bc;

    iget-wide v4, v2, Lcom/c/a/w;->d:J

    iget-object v2, v1, Lcom/c/a/bc;->c:Landroid/os/Handler;

    iget-object v1, v1, Lcom/c/a/bc;->c:Landroid/os/Handler;

    const/4 v6, 0x4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v6, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 72
    :cond_5
    new-instance v1, Lcom/c/a/ba;

    invoke-direct {v1, v3, v0}, Lcom/c/a/ba;-><init>(Ljava/io/InputStream;Lcom/c/a/ap;)V

    move-object v0, v1

    goto :goto_0
.end method

.method final b()Z
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x1

    return v0
.end method
