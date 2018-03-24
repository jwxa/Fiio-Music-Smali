.class public final Lcom/fiio/music/util/am;
.super Ljava/lang/Object;
.source "FolderJumpSongUtils.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static d:Lcom/fiio/music/util/am;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/fiio/music/util/bh;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    invoke-static {}, Lcom/fiio/music/util/bl;->d()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fiio/music/util/am;->a:Ljava/lang/String;

    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/fiio/music/util/am;->d:Lcom/fiio/music/util/am;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/fiio/music/util/am;->b:Landroid/content/Context;

    .line 32
    new-instance v0, Lcom/fiio/music/util/bh;

    iget-object v1, p0, Lcom/fiio/music/util/am;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/fiio/music/util/bh;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fiio/music/util/am;->c:Lcom/fiio/music/util/bh;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/util/am;->e:Ljava/util/List;

    .line 34
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/fiio/music/util/am;
    .locals 2

    .prologue
    .line 23
    sget-object v0, Lcom/fiio/music/util/am;->d:Lcom/fiio/music/util/am;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/fiio/music/util/am;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fiio/music/util/am;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/fiio/music/util/am;->d:Lcom/fiio/music/util/am;

    .line 26
    :cond_0
    sget-object v0, Lcom/fiio/music/util/am;->d:Lcom/fiio/music/util/am;

    return-object v0
.end method
