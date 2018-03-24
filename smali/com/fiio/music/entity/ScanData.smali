.class public Lcom/fiio/music/entity/ScanData;
.super Ljava/lang/Object;
.source "ScanData.java"


# instance fields
.field private filePath:Ljava/lang/String;

.field private isChecked:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/fiio/music/entity/ScanData;->filePath:Ljava/lang/String;

    .line 15
    iput-boolean p2, p0, Lcom/fiio/music/entity/ScanData;->isChecked:Z

    .line 16
    return-void
.end method


# virtual methods
.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/fiio/music/entity/ScanData;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/fiio/music/entity/ScanData;->isChecked:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 0

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/fiio/music/entity/ScanData;->isChecked:Z

    .line 32
    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/fiio/music/entity/ScanData;->filePath:Ljava/lang/String;

    .line 24
    return-void
.end method
