.class public Lcom/fiio/music/entity/Vipper;
.super Ljava/lang/Object;
.source "Vipper.java"


# instance fields
.field private date:Ljava/lang/String;

.field private flag:Z

.field private sn:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-boolean p1, p0, Lcom/fiio/music/entity/Vipper;->flag:Z

    .line 14
    iput-object p2, p0, Lcom/fiio/music/entity/Vipper;->sn:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcom/fiio/music/entity/Vipper;->date:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/fiio/music/entity/Vipper;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getSn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/fiio/music/entity/Vipper;->sn:Ljava/lang/String;

    return-object v0
.end method

.method public isFlag()Z
    .locals 1

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/fiio/music/entity/Vipper;->flag:Z

    return v0
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/fiio/music/entity/Vipper;->date:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setFlag(Z)V
    .locals 0

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/fiio/music/entity/Vipper;->flag:Z

    .line 23
    return-void
.end method

.method public setSn(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/fiio/music/entity/Vipper;->sn:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "flag = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/fiio/music/entity/Vipper;->flag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nsn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/fiio/music/entity/Vipper;->sn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ndate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/fiio/music/entity/Vipper;->date:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
