.class final Lcom/fiio/music/util/aq;
.super Ljava/lang/Object;
.source "GaplessPlaybackManager.java"


# instance fields
.field final synthetic a:Lcom/fiio/music/util/ap;

.field private b:Ljava/lang/String;

.field private c:I


# direct methods
.method public constructor <init>(Lcom/fiio/music/util/ap;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 101
    iput-object p1, p0, Lcom/fiio/music/util/aq;->a:Lcom/fiio/music/util/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fiio/music/util/aq;->b:Ljava/lang/String;

    .line 99
    const/4 v0, -0x1

    iput v0, p0, Lcom/fiio/music/util/aq;->c:I

    .line 102
    iput-object p2, p0, Lcom/fiio/music/util/aq;->b:Ljava/lang/String;

    .line 103
    iput p3, p0, Lcom/fiio/music/util/aq;->c:I

    .line 104
    return-void
.end method

.method static synthetic a(Lcom/fiio/music/util/aq;)I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/fiio/music/util/aq;->c:I

    return v0
.end method

.method static synthetic b(Lcom/fiio/music/util/aq;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/fiio/music/util/aq;->b:Ljava/lang/String;

    return-object v0
.end method
