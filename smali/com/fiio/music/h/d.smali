.class public Lcom/fiio/music/h/d;
.super Ljava/lang/Object;
.source "LyricDownloadManager.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:I

.field private c:Lcom/fiio/music/h/k;

.field private d:Ljava/net/URL;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/fiio/music/h/d;

    .line 33
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 32
    sput-object v0, Lcom/fiio/music/h/d;->a:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/16 v0, 0x2710

    iput v0, p0, Lcom/fiio/music/h/d;->b:I

    .line 37
    new-instance v0, Lcom/fiio/music/h/k;

    invoke-direct {v0}, Lcom/fiio/music/h/k;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/h/d;->c:Lcom/fiio/music/h/k;

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fiio/music/h/d;->d:Ljava/net/URL;

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/fiio/music/h/d;->e:I

    .line 45
    return-void
.end method
