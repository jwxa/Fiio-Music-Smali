.class public Lcom/fiio/music/entity/DownLoadInfo;
.super Ljava/lang/Object;
.source "DownLoadInfo.java"


# instance fields
.field private album:Ljava/lang/String;

.field private artist:Ljava/lang/String;

.field private completeSize:I

.field private displayName:Ljava/lang/String;

.field private durationTime:I

.field private filePath:Ljava/lang/String;

.field private fileSize:I

.field private id:I

.field private mimeType:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private state:I

.field private threadCount:I

.field private threadInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/ThreadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method


# virtual methods
.method public getAlbum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/fiio/music/entity/DownLoadInfo;->album:Ljava/lang/String;

    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/fiio/music/entity/DownLoadInfo;->artist:Ljava/lang/String;

    return-object v0
.end method

.method public getCompleteSize()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/fiio/music/entity/DownLoadInfo;->completeSize:I

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/fiio/music/entity/DownLoadInfo;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getDurationTime()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/fiio/music/entity/DownLoadInfo;->durationTime:I

    return v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/fiio/music/entity/DownLoadInfo;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/fiio/music/entity/DownLoadInfo;->fileSize:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/fiio/music/entity/DownLoadInfo;->id:I

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/fiio/music/entity/DownLoadInfo;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/fiio/music/entity/DownLoadInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/fiio/music/entity/DownLoadInfo;->state:I

    return v0
.end method

.method public getThreadCount()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/fiio/music/entity/DownLoadInfo;->threadCount:I

    return v0
.end method

.method public getThreadInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/ThreadInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/fiio/music/entity/DownLoadInfo;->threadInfos:Ljava/util/List;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/fiio/music/entity/DownLoadInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setAlbum(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/fiio/music/entity/DownLoadInfo;->album:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setArtist(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/fiio/music/entity/DownLoadInfo;->artist:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setCompleteSize(I)V
    .locals 0

    .prologue
    .line 122
    iput p1, p0, Lcom/fiio/music/entity/DownLoadInfo;->completeSize:I

    .line 123
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/fiio/music/entity/DownLoadInfo;->displayName:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setDurationTime(I)V
    .locals 0

    .prologue
    .line 114
    iput p1, p0, Lcom/fiio/music/entity/DownLoadInfo;->durationTime:I

    .line 115
    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/fiio/music/entity/DownLoadInfo;->filePath:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setFileSize(I)V
    .locals 0

    .prologue
    .line 58
    iput p1, p0, Lcom/fiio/music/entity/DownLoadInfo;->fileSize:I

    .line 59
    return-void
.end method

.method public setId(I)V
    .locals 0

    .prologue
    .line 34
    iput p1, p0, Lcom/fiio/music/entity/DownLoadInfo;->id:I

    .line 35
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/fiio/music/entity/DownLoadInfo;->mimeType:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/fiio/music/entity/DownLoadInfo;->name:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setState(I)V
    .locals 0

    .prologue
    .line 66
    iput p1, p0, Lcom/fiio/music/entity/DownLoadInfo;->state:I

    .line 67
    return-void
.end method

.method public setThreadCount(I)V
    .locals 0

    .prologue
    .line 138
    iput p1, p0, Lcom/fiio/music/entity/DownLoadInfo;->threadCount:I

    .line 139
    return-void
.end method

.method public setThreadInfos(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/ThreadInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    iput-object p1, p0, Lcom/fiio/music/entity/DownLoadInfo;->threadInfos:Ljava/util/List;

    .line 43
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/fiio/music/entity/DownLoadInfo;->url:Ljava/lang/String;

    .line 51
    return-void
.end method
