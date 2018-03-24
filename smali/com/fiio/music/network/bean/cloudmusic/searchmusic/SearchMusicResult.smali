.class public Lcom/fiio/music/network/bean/cloudmusic/searchmusic/SearchMusicResult;
.super Ljava/lang/Object;
.source "SearchMusicResult.java"


# instance fields
.field private code:Ljava/lang/String;

.field private result:Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Result;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method public constructor <init>(Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Result;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/SearchMusicResult;->result:Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Result;

    .line 14
    iput-object p2, p0, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/SearchMusicResult;->code:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/SearchMusicResult;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Result;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/SearchMusicResult;->result:Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Result;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/SearchMusicResult;->code:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setResult(Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Result;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/SearchMusicResult;->result:Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Result;

    .line 23
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "result = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/SearchMusicResult;->result:Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Result;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ncode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/SearchMusicResult;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
