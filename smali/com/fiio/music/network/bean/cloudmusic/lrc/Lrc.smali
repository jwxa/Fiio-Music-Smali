.class public Lcom/fiio/music/network/bean/cloudmusic/lrc/Lrc;
.super Ljava/lang/Object;
.source "Lrc.java"


# instance fields
.field private lyric:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/fiio/music/network/bean/cloudmusic/lrc/Lrc;->version:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/fiio/music/network/bean/cloudmusic/lrc/Lrc;->lyric:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public getLyric()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fiio/music/network/bean/cloudmusic/lrc/Lrc;->lyric:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/fiio/music/network/bean/cloudmusic/lrc/Lrc;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setLyric(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/fiio/music/network/bean/cloudmusic/lrc/Lrc;->lyric:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/fiio/music/network/bean/cloudmusic/lrc/Lrc;->version:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "version = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fiio/music/network/bean/cloudmusic/lrc/Lrc;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nlyric = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 36
    iget-object v1, p0, Lcom/fiio/music/network/bean/cloudmusic/lrc/Lrc;->lyric:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
