.class public Lcom/fiio/music/network/bean/DownloadInfo;
.super Ljava/lang/Object;
.source "DownloadInfo.java"


# instance fields
.field private downloadState:Ljava/lang/String;

.field private downloadUrl:Ljava/lang/String;

.field private fileName:Ljava/lang/String;

.field private finishedSize:I

.field private savePath:Ljava/lang/String;

.field private totalSize:I

.field private updateLog:Ljava/lang/String;

.field private versionCode:I

.field private versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lcom/fiio/music/network/bean/DownloadInfo;->totalSize:I

    .line 41
    iput p2, p0, Lcom/fiio/music/network/bean/DownloadInfo;->finishedSize:I

    .line 42
    iput-object p3, p0, Lcom/fiio/music/network/bean/DownloadInfo;->downloadState:Ljava/lang/String;

    .line 43
    iput p4, p0, Lcom/fiio/music/network/bean/DownloadInfo;->versionCode:I

    .line 44
    iput-object p5, p0, Lcom/fiio/music/network/bean/DownloadInfo;->versionName:Ljava/lang/String;

    .line 45
    iput-object p6, p0, Lcom/fiio/music/network/bean/DownloadInfo;->fileName:Ljava/lang/String;

    .line 46
    iput-object p7, p0, Lcom/fiio/music/network/bean/DownloadInfo;->savePath:Ljava/lang/String;

    .line 47
    iput-object p8, p0, Lcom/fiio/music/network/bean/DownloadInfo;->downloadUrl:Ljava/lang/String;

    .line 48
    iput-object p9, p0, Lcom/fiio/music/network/bean/DownloadInfo;->updateLog:Ljava/lang/String;

    .line 49
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 125
    if-ne p0, p1, :cond_1

    .line 138
    :cond_0
    :goto_0
    return v0

    .line 127
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 128
    goto :goto_0

    .line 129
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 130
    goto :goto_0

    .line 131
    :cond_3
    check-cast p1, Lcom/fiio/music/network/bean/DownloadInfo;

    .line 132
    iget-object v2, p0, Lcom/fiio/music/network/bean/DownloadInfo;->downloadUrl:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 133
    iget-object v2, p1, Lcom/fiio/music/network/bean/DownloadInfo;->downloadUrl:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 134
    goto :goto_0

    .line 135
    :cond_4
    iget-object v2, p0, Lcom/fiio/music/network/bean/DownloadInfo;->downloadUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/fiio/music/network/bean/DownloadInfo;->downloadUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 136
    goto :goto_0
.end method

.method public getDownloadState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/fiio/music/network/bean/DownloadInfo;->downloadState:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/fiio/music/network/bean/DownloadInfo;->downloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/fiio/music/network/bean/DownloadInfo;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFinishedSize()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/fiio/music/network/bean/DownloadInfo;->finishedSize:I

    return v0
.end method

.method public getSavePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/fiio/music/network/bean/DownloadInfo;->savePath:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalSize()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/fiio/music/network/bean/DownloadInfo;->totalSize:I

    return v0
.end method

.method public getUpdateLog()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/fiio/music/network/bean/DownloadInfo;->updateLog:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/fiio/music/network/bean/DownloadInfo;->versionCode:I

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/fiio/music/network/bean/DownloadInfo;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public setDownloadState(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/fiio/music/network/bean/DownloadInfo;->downloadState:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setDownloadUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/fiio/music/network/bean/DownloadInfo;->downloadUrl:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/fiio/music/network/bean/DownloadInfo;->fileName:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setFinishedSize(I)V
    .locals 0

    .prologue
    .line 64
    iput p1, p0, Lcom/fiio/music/network/bean/DownloadInfo;->finishedSize:I

    .line 65
    return-void
.end method

.method public setSavePath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/fiio/music/network/bean/DownloadInfo;->savePath:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setTotalSize(I)V
    .locals 0

    .prologue
    .line 56
    iput p1, p0, Lcom/fiio/music/network/bean/DownloadInfo;->totalSize:I

    .line 57
    return-void
.end method

.method public setUpdateLog(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/fiio/music/network/bean/DownloadInfo;->updateLog:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setVersionCode(I)V
    .locals 0

    .prologue
    .line 80
    iput p1, p0, Lcom/fiio/music/network/bean/DownloadInfo;->versionCode:I

    .line 81
    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/fiio/music/network/bean/DownloadInfo;->versionName:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "totalSize  = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/fiio/music/network/bean/DownloadInfo;->totalSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nfinishedSize  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 145
    iget v1, p0, Lcom/fiio/music/network/bean/DownloadInfo;->finishedSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ndownloadState  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/network/bean/DownloadInfo;->downloadState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 146
    const-string v1, "\nversionCode  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fiio/music/network/bean/DownloadInfo;->versionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nversionName  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 147
    iget-object v1, p0, Lcom/fiio/music/network/bean/DownloadInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nfileName  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 148
    iget-object v1, p0, Lcom/fiio/music/network/bean/DownloadInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nsavePath  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/network/bean/DownloadInfo;->savePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ndownloadUrl  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 149
    iget-object v1, p0, Lcom/fiio/music/network/bean/DownloadInfo;->downloadUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nupdateLog = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 150
    iget-object v1, p0, Lcom/fiio/music/network/bean/DownloadInfo;->updateLog:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 144
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
