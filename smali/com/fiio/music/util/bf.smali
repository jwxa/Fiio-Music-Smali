.class final Lcom/fiio/music/util/bf;
.super Ljava/lang/Object;
.source "MediaScanner.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# instance fields
.field final synthetic a:Lcom/fiio/music/util/be;


# direct methods
.method private constructor <init>(Lcom/fiio/music/util/be;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/fiio/music/util/bf;->a:Lcom/fiio/music/util/be;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/fiio/music/util/be;B)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/fiio/music/util/bf;-><init>(Lcom/fiio/music/util/be;)V

    return-void
.end method


# virtual methods
.method public final onMediaScannerConnected()V
    .locals 3

    .prologue
    .line 23
    iget-object v0, p0, Lcom/fiio/music/util/bf;->a:Lcom/fiio/music/util/be;

    invoke-static {v0}, Lcom/fiio/music/util/be;->a(Lcom/fiio/music/util/be;)Landroid/media/MediaScannerConnection;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/util/bf;->a:Lcom/fiio/music/util/be;

    invoke-static {v1}, Lcom/fiio/music/util/be;->b(Lcom/fiio/music/util/be;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/util/bf;->a:Lcom/fiio/music/util/be;

    invoke-static {v2}, Lcom/fiio/music/util/be;->c(Lcom/fiio/music/util/be;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public final onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fiio/music/util/bf;->a:Lcom/fiio/music/util/be;

    invoke-static {v0}, Lcom/fiio/music/util/be;->a(Lcom/fiio/music/util/be;)Landroid/media/MediaScannerConnection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 29
    return-void
.end method
