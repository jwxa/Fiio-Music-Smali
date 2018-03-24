.class public Lcom/fiio/music/entity/SimpleSong;
.super Ljava/lang/Object;
.source "SimpleSong.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/fiio/music/entity/SimpleSong;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private artistName:Ljava/lang/String;

.field private filePath:Ljava/lang/String;

.field private id:I

.field private songName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/fiio/music/entity/b;

    invoke-direct {v0}, Lcom/fiio/music/entity/b;-><init>()V

    sput-object v0, Lcom/fiio/music/entity/SimpleSong;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/fiio/music/entity/SimpleSong;I)V
    .locals 0

    .prologue
    .line 8
    iput p1, p0, Lcom/fiio/music/entity/SimpleSong;->id:I

    return-void
.end method

.method static synthetic access$1(Lcom/fiio/music/entity/SimpleSong;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 9
    iput-object p1, p0, Lcom/fiio/music/entity/SimpleSong;->filePath:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lcom/fiio/music/entity/SimpleSong;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 10
    iput-object p1, p0, Lcom/fiio/music/entity/SimpleSong;->songName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Lcom/fiio/music/entity/SimpleSong;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 11
    iput-object p1, p0, Lcom/fiio/music/entity/SimpleSong;->artistName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    return v0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/fiio/music/entity/SimpleSong;->artistName:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/fiio/music/entity/SimpleSong;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/fiio/music/entity/SimpleSong;->id:I

    return v0
.end method

.method public getSongName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/fiio/music/entity/SimpleSong;->songName:Ljava/lang/String;

    return-object v0
.end method

.method public setArtistName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/fiio/music/entity/SimpleSong;->artistName:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/fiio/music/entity/SimpleSong;->filePath:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setId(I)V
    .locals 0

    .prologue
    .line 48
    iput p1, p0, Lcom/fiio/music/entity/SimpleSong;->id:I

    .line 49
    return-void
.end method

.method public setSongName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/fiio/music/entity/SimpleSong;->songName:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/fiio/music/entity/SimpleSong;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    iget-object v0, p0, Lcom/fiio/music/entity/SimpleSong;->filePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/fiio/music/entity/SimpleSong;->songName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/fiio/music/entity/SimpleSong;->artistName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 25
    return-void
.end method
