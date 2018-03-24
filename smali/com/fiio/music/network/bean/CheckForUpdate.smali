.class public Lcom/fiio/music/network/bean/CheckForUpdate;
.super Ljava/lang/Object;
.source "CheckForUpdate.java"


# instance fields
.field private code:I

.field private msg:Ljava/lang/String;

.field private updateLog:Ljava/lang/String;

.field private versionCode:I

.field private versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lcom/fiio/music/network/bean/CheckForUpdate;->code:I

    .line 25
    iput-object p2, p0, Lcom/fiio/music/network/bean/CheckForUpdate;->msg:Ljava/lang/String;

    .line 26
    iput p3, p0, Lcom/fiio/music/network/bean/CheckForUpdate;->versionCode:I

    .line 27
    iput-object p4, p0, Lcom/fiio/music/network/bean/CheckForUpdate;->versionName:Ljava/lang/String;

    .line 28
    iput-object p5, p0, Lcom/fiio/music/network/bean/CheckForUpdate;->updateLog:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/fiio/music/network/bean/CheckForUpdate;->code:I

    return v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/fiio/music/network/bean/CheckForUpdate;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateLog()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/fiio/music/network/bean/CheckForUpdate;->updateLog:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/fiio/music/network/bean/CheckForUpdate;->versionCode:I

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/fiio/music/network/bean/CheckForUpdate;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0

    .prologue
    .line 52
    iput p1, p0, Lcom/fiio/music/network/bean/CheckForUpdate;->code:I

    .line 53
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/fiio/music/network/bean/CheckForUpdate;->msg:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setUpdateLog(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/fiio/music/network/bean/CheckForUpdate;->updateLog:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setVersionCode(I)V
    .locals 0

    .prologue
    .line 36
    iput p1, p0, Lcom/fiio/music/network/bean/CheckForUpdate;->versionCode:I

    .line 37
    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/fiio/music/network/bean/CheckForUpdate;->versionName:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "code = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/fiio/music/network/bean/CheckForUpdate;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmsg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/network/bean/CheckForUpdate;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nversionCode ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 75
    iget v1, p0, Lcom/fiio/music/network/bean/CheckForUpdate;->versionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nversionName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 76
    iget-object v1, p0, Lcom/fiio/music/network/bean/CheckForUpdate;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nupdateLog = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/network/bean/CheckForUpdate;->updateLog:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
