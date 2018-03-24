.class public Lcom/fiio/music/entity/FileItem;
.super Ljava/lang/Object;
.source "FileItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/fiio/music/entity/FileItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private fileName:Ljava/lang/String;

.field private filePath:Ljava/lang/String;

.field private isCue:Z

.field private isDirectory:Z

.field private isFile:Z

.field private track:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/fiio/music/entity/a;

    invoke-direct {v0}, Lcom/fiio/music/entity/a;-><init>()V

    sput-object v0, Lcom/fiio/music/entity/FileItem;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 67
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZZI)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/fiio/music/entity/FileItem;->fileName:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/fiio/music/entity/FileItem;->filePath:Ljava/lang/String;

    .line 19
    iput-boolean p3, p0, Lcom/fiio/music/entity/FileItem;->isDirectory:Z

    .line 20
    iput-boolean p4, p0, Lcom/fiio/music/entity/FileItem;->isFile:Z

    .line 21
    iput-boolean p5, p0, Lcom/fiio/music/entity/FileItem;->isCue:Z

    .line 22
    iput p6, p0, Lcom/fiio/music/entity/FileItem;->track:I

    .line 23
    return-void
.end method

.method static synthetic access$0(Lcom/fiio/music/entity/FileItem;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 8
    iput-object p1, p0, Lcom/fiio/music/entity/FileItem;->fileName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1(Lcom/fiio/music/entity/FileItem;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 9
    iput-object p1, p0, Lcom/fiio/music/entity/FileItem;->filePath:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lcom/fiio/music/entity/FileItem;Z)V
    .locals 0

    .prologue
    .line 10
    iput-boolean p1, p0, Lcom/fiio/music/entity/FileItem;->isDirectory:Z

    return-void
.end method

.method static synthetic access$3(Lcom/fiio/music/entity/FileItem;Z)V
    .locals 0

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/fiio/music/entity/FileItem;->isFile:Z

    return-void
.end method

.method static synthetic access$4(Lcom/fiio/music/entity/FileItem;Z)V
    .locals 0

    .prologue
    .line 12
    iput-boolean p1, p0, Lcom/fiio/music/entity/FileItem;->isCue:Z

    return-void
.end method

.method static synthetic access$5(Lcom/fiio/music/entity/FileItem;I)V
    .locals 0

    .prologue
    .line 13
    iput p1, p0, Lcom/fiio/music/entity/FileItem;->track:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/fiio/music/entity/FileItem;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/fiio/music/entity/FileItem;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getTrack()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/fiio/music/entity/FileItem;->track:I

    return v0
.end method

.method public isCue()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/fiio/music/entity/FileItem;->isCue:Z

    return v0
.end method

.method public isDirectory()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/fiio/music/entity/FileItem;->isDirectory:Z

    return v0
.end method

.method public isFile()Z
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/fiio/music/entity/FileItem;->isFile:Z

    return v0
.end method

.method public setCue(Z)V
    .locals 0

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/fiio/music/entity/FileItem;->isCue:Z

    .line 92
    return-void
.end method

.method public setDirectory(Z)V
    .locals 0

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/fiio/music/entity/FileItem;->isDirectory:Z

    .line 116
    return-void
.end method

.method public setFile(Z)V
    .locals 0

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/fiio/music/entity/FileItem;->isFile:Z

    .line 108
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/fiio/music/entity/FileItem;->fileName:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/fiio/music/entity/FileItem;->filePath:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setTrack(I)V
    .locals 0

    .prologue
    .line 99
    iput p1, p0, Lcom/fiio/music/entity/FileItem;->track:I

    .line 100
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    .line 38
    iget-object v0, p0, Lcom/fiio/music/entity/FileItem;->fileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/fiio/music/entity/FileItem;->filePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 40
    const/4 v0, 0x3

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/fiio/music/entity/FileItem;->isDirectory:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/fiio/music/entity/FileItem;->isFile:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/fiio/music/entity/FileItem;->isCue:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 41
    iget v0, p0, Lcom/fiio/music/entity/FileItem;->track:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    return-void
.end method
