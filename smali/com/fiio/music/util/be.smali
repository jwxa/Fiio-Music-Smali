.class public final Lcom/fiio/music/util/be;
.super Ljava/lang/Object;
.source "MediaScanner.java"


# instance fields
.field private a:Landroid/media/MediaScannerConnection;

.field private b:Lcom/fiio/music/util/bf;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/fiio/music/util/be;->a:Landroid/media/MediaScannerConnection;

    .line 10
    iput-object v0, p0, Lcom/fiio/music/util/be;->b:Lcom/fiio/music/util/bf;

    .line 12
    iput-object v0, p0, Lcom/fiio/music/util/be;->c:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/fiio/music/util/be;->d:Ljava/lang/String;

    .line 16
    new-instance v0, Lcom/fiio/music/util/bf;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/fiio/music/util/bf;-><init>(Lcom/fiio/music/util/be;B)V

    iput-object v0, p0, Lcom/fiio/music/util/be;->b:Lcom/fiio/music/util/bf;

    .line 17
    new-instance v0, Landroid/media/MediaScannerConnection;

    iget-object v1, p0, Lcom/fiio/music/util/be;->b:Lcom/fiio/music/util/bf;

    invoke-direct {v0, p1, v1}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v0, p0, Lcom/fiio/music/util/be;->a:Landroid/media/MediaScannerConnection;

    .line 18
    return-void
.end method

.method static synthetic a(Lcom/fiio/music/util/be;)Landroid/media/MediaScannerConnection;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lcom/fiio/music/util/be;->a:Landroid/media/MediaScannerConnection;

    return-object v0
.end method

.method static synthetic b(Lcom/fiio/music/util/be;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/fiio/music/util/be;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/fiio/music/util/be;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/fiio/music/util/be;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 36
    iput-object p1, p0, Lcom/fiio/music/util/be;->c:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/fiio/music/util/be;->d:Ljava/lang/String;

    .line 38
    iget-object v0, p0, Lcom/fiio/music/util/be;->a:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->connect()V

    .line 39
    return-void
.end method
