.class public Lcom/fiio/music/network/bean/AlbumCover$Result;
.super Ljava/lang/Object;
.source "AlbumCover.java"


# instance fields
.field private cover:Ljava/lang/String;

.field final synthetic this$0:Lcom/fiio/music/network/bean/AlbumCover;

.field private thumb:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/fiio/music/network/bean/AlbumCover;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/fiio/music/network/bean/AlbumCover$Result;->this$0:Lcom/fiio/music/network/bean/AlbumCover;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    return-void
.end method

.method public constructor <init>(Lcom/fiio/music/network/bean/AlbumCover;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/fiio/music/network/bean/AlbumCover$Result;->this$0:Lcom/fiio/music/network/bean/AlbumCover;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p2, p0, Lcom/fiio/music/network/bean/AlbumCover$Result;->cover:Ljava/lang/String;

    .line 84
    iput-object p3, p0, Lcom/fiio/music/network/bean/AlbumCover$Result;->thumb:Ljava/lang/String;

    .line 85
    return-void
.end method


# virtual methods
.method public getCover()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/fiio/music/network/bean/AlbumCover$Result;->cover:Ljava/lang/String;

    return-object v0
.end method

.method public getThumb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/fiio/music/network/bean/AlbumCover$Result;->thumb:Ljava/lang/String;

    return-object v0
.end method

.method public setCover(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/fiio/music/network/bean/AlbumCover$Result;->cover:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setThumb(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/fiio/music/network/bean/AlbumCover$Result;->thumb:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cover = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fiio/music/network/bean/AlbumCover$Result;->cover:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nthumb = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 107
    iget-object v1, p0, Lcom/fiio/music/network/bean/AlbumCover$Result;->thumb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
