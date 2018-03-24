.class public final Lcom/fiio/music/util/az;
.super Ljava/lang/Object;
.source "LogcatHelper.java"


# static fields
.field private static a:Lcom/fiio/music/util/az;

.field private static b:Ljava/lang/String;


# instance fields
.field private c:Lcom/fiio/music/util/ba;

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/fiio/music/util/az;->a:Lcom/fiio/music/util/az;

    .line 28
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fiio/music/util/az;->c:Lcom/fiio/music/util/ba;

    .line 99
    const-string v0, "/mnt/internal_sd/FiiOMusic/log"

    sput-object v0, Lcom/fiio/music/util/az;->b:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/fiio/music/util/az;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 100
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iput v0, p0, Lcom/fiio/music/util/az;->d:I

    .line 101
    return-void
.end method

.method public static a()Lcom/fiio/music/util/az;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/fiio/music/util/az;->a:Lcom/fiio/music/util/az;

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Lcom/fiio/music/util/az;

    invoke-direct {v0}, Lcom/fiio/music/util/az;-><init>()V

    sput-object v0, Lcom/fiio/music/util/az;->a:Lcom/fiio/music/util/az;

    .line 95
    :cond_0
    sget-object v0, Lcom/fiio/music/util/az;->a:Lcom/fiio/music/util/az;

    return-object v0
.end method


# virtual methods
.method public final b()V
    .locals 3

    .prologue
    .line 104
    iget-object v0, p0, Lcom/fiio/music/util/az;->c:Lcom/fiio/music/util/ba;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Lcom/fiio/music/util/ba;

    iget v1, p0, Lcom/fiio/music/util/az;->d:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/fiio/music/util/az;->b:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/fiio/music/util/ba;-><init>(Lcom/fiio/music/util/az;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/fiio/music/util/az;->c:Lcom/fiio/music/util/ba;

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/util/az;->c:Lcom/fiio/music/util/ba;

    invoke-virtual {v0}, Lcom/fiio/music/util/ba;->start()V

    .line 107
    return-void
.end method
