.class public Lcom/fiio/music/e/a/b;
.super Ljava/lang/Object;
.source "MediaSeekHelper.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/e/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/fiio/music/e/a/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fiio/music/e/a/b;->a:Ljava/lang/String;

    .line 27
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/e/a/b;->b:Ljava/util/List;

    .line 38
    iput v1, p0, Lcom/fiio/music/e/a/b;->c:I

    .line 43
    iput v1, p0, Lcom/fiio/music/e/a/b;->d:I

    .line 53
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/fiio/music/e/a/b;-><init>()V

    return-void
.end method

.method public static a()Lcom/fiio/music/e/a/b;
    .locals 1

    .prologue
    .line 56
    invoke-static {}, Lcom/fiio/music/e/a/c;->a()Lcom/fiio/music/e/a/b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(III)V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 75
    if-nez p1, :cond_1

    if-eqz p3, :cond_0

    rem-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    sget-object v0, Lcom/fiio/music/e/a/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "-- keyAction : "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", keyEvent : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " , repeatCount : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 78
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 77
    invoke-static {v0, v2, v1}, Lcom/fiio/music/e/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 79
    invoke-static {}, Lcom/fiio/music/activity/FiiOMusicApplication;->b()Lcom/fiio/music/service/MediaPlayerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/MediaPlayerService;->g()Lcom/fiio/music/entity/Song;

    move-result-object v0

    if-eqz v0, :cond_3

    move v0, v3

    :goto_1
    if-eqz v0, :cond_0

    .line 83
    if-nez p1, :cond_2

    .line 84
    iput p3, p0, Lcom/fiio/music/e/a/b;->c:I

    .line 85
    iget-object v0, p0, Lcom/fiio/music/e/a/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_5

    .line 86
    iget-object v0, p0, Lcom/fiio/music/e/a/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 94
    :cond_2
    :goto_3
    if-ne p1, v3, :cond_0

    iget v0, p0, Lcom/fiio/music/e/a/b;->c:I

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/fiio/music/e/a/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_7

    .line 96
    iget-object v0, p0, Lcom/fiio/music/e/a/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    .line 128
    :goto_5
    iput v1, p0, Lcom/fiio/music/e/a/b;->c:I

    goto :goto_0

    :cond_3
    move v0, v1

    .line 79
    goto :goto_1

    .line 86
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/e/a/a;

    .line 87
    invoke-interface {v0, p2}, Lcom/fiio/music/e/a/a;->a(I)V

    goto :goto_2

    .line 90
    :cond_5
    const/4 v0, 0x2

    if-ne p3, v0, :cond_2

    .line 91
    invoke-static {}, Lcom/fiio/music/activity/FiiOMusicApplication;->b()Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {}, Lcom/fiio/music/service/MediaPlayerService;->a()Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/fiio/music/e/a/b;->d:I

    goto :goto_3

    .line 96
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/e/a/a;

    .line 97
    invoke-interface {v0}, Lcom/fiio/music/e/a/a;->a()V

    goto :goto_4

    .line 100
    :cond_7
    invoke-static {}, Lcom/fiio/music/activity/FiiOMusicApplication;->c()I

    move-result v4

    .line 103
    iget v0, p0, Lcom/fiio/music/e/a/b;->c:I

    div-int/lit8 v2, v0, 0x2

    .line 104
    div-int/lit16 v0, v4, 0x1388

    .line 105
    sget-object v5, Lcom/fiio/music/e/a/b;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "maxGene : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " gene : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Lcom/fiio/music/e/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 106
    if-le v2, v0, :cond_b

    .line 107
    :goto_6
    const/16 v2, 0x58

    if-ne p2, v2, :cond_8

    .line 108
    neg-int v0, v0

    .line 110
    :cond_8
    mul-int/lit16 v0, v0, 0x1388

    .line 111
    iget v2, p0, Lcom/fiio/music/e/a/b;->d:I

    add-int/2addr v0, v2

    .line 112
    if-le v0, v4, :cond_9

    .line 113
    add-int/lit16 v0, v4, -0xc8

    .line 115
    :cond_9
    if-gez v0, :cond_a

    move v0, v1

    .line 116
    :cond_a
    sget-object v2, Lcom/fiio/music/e/a/b;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "seek Time : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/fiio/music/e/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 121
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 122
    const-string v3, "com.fiio.music.service.meidaplayer"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    invoke-static {}, Lcom/fiio/music/activity/FiiOMusicApplication;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    const-string v3, "flag"

    const/16 v4, 0x8

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 125
    const-string v3, "seekToMsec"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 126
    invoke-static {}, Lcom/fiio/music/activity/FiiOMusicApplication;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_5

    :cond_b
    move v0, v2

    goto :goto_6
.end method

.method public final a(Lcom/fiio/music/e/a/a;)V
    .locals 3

    .prologue
    .line 61
    iget-object v0, p0, Lcom/fiio/music/e/a/b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v0, Lcom/fiio/music/e/a/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "after add count : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fiio/music/e/a/b;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/fiio/music/e/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 63
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/fiio/music/e/a/b;->c:I

    return v0
.end method

.method public final b(Lcom/fiio/music/e/a/a;)V
    .locals 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/fiio/music/e/a/b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 67
    sget-object v0, Lcom/fiio/music/e/a/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "after remove count : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fiio/music/e/a/b;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/fiio/music/e/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 68
    return-void
.end method
