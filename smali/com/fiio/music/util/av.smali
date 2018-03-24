.class public final Lcom/fiio/music/util/av;
.super Ljava/lang/Object;
.source "KeepSongForAbnormalUtils.java"


# instance fields
.field a:Landroid/content/SharedPreferences;

.field b:Lcom/a/a/aq;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, "keepSong"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/util/av;->a:Landroid/content/SharedPreferences;

    .line 17
    new-instance v0, Lcom/a/a/aq;

    invoke-direct {v0}, Lcom/a/a/aq;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/util/av;->b:Lcom/a/a/aq;

    .line 18
    return-void
.end method


# virtual methods
.method public final a(Lcom/fiio/music/entity/Song;)V
    .locals 3

    .prologue
    .line 23
    iget-object v0, p0, Lcom/fiio/music/util/av;->b:Lcom/a/a/aq;

    invoke-virtual {v0, p1}, Lcom/a/a/aq;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/fiio/music/util/av;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "song"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 25
    return-void
.end method
