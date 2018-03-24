.class public Lcom/fiio/music/entity/Song;
.super Ljava/lang/Object;
.source "Song.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private addTime:J

.field private album:Lcom/fiio/music/entity/Album;

.field private albumPath:Ljava/lang/String;

.field private artist:Lcom/fiio/music/entity/Artist;

.field private bitRate:I

.field private channels:Ljava/lang/String;

.field private cue_artistName:Ljava/lang/String;

.field private cue_duration:I

.field private cue_songName:Ljava/lang/String;

.field private cue_startTime:I

.field private disc:I

.field private displayName:Ljava/lang/String;

.field private durationTime:I

.field private encodingRate:I

.field private fileNameAscii:I

.field private filePath:Ljava/lang/String;

.field private firstSort:J

.field private id:I

.field private isCue:Z

.field private isDownFinish:Z

.field private isLike:Z

.field private isLikeValue:I

.field private isNet:Z

.field private isSacd:Z

.field private lastPlayTime:I

.field private mimeType:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private nameAscii:I

.field private nameSort:J

.field private netUrl:Ljava/lang/String;

.field private playCount:I

.field private playerList:Ljava/lang/String;

.field private sacd_artistName:Ljava/lang/String;

.field private sacd_duration:I

.field private sacd_songName:Ljava/lang/String;

.field private sacd_startTime:I

.field private sampleRate:I

.field private size:I

.field private songId:I

.field private sortLetters:Ljava/lang/String;

.field private style:Lcom/fiio/music/entity/SongStyle;

.field private tempId:I

.field private track:I

.field private year:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 273
    new-instance v0, Lcom/fiio/music/entity/c;

    invoke-direct {v0}, Lcom/fiio/music/entity/c;-><init>()V

    sput-object v0, Lcom/fiio/music/entity/Song;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 326
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method

.method static synthetic access$0(Lcom/fiio/music/entity/Song;I)V
    .locals 0

    .prologue
    .line 11
    iput p1, p0, Lcom/fiio/music/entity/Song;->id:I

    return-void
.end method

.method static synthetic access$1(Lcom/fiio/music/entity/Song;Lcom/fiio/music/entity/Album;)V
    .locals 0

    .prologue
    .line 12
    iput-object p1, p0, Lcom/fiio/music/entity/Song;->album:Lcom/fiio/music/entity/Album;

    return-void
.end method

.method static synthetic access$10(Lcom/fiio/music/entity/Song;Z)V
    .locals 0

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/fiio/music/entity/Song;->isLike:Z

    return-void
.end method

.method static synthetic access$11(Lcom/fiio/music/entity/Song;Z)V
    .locals 0

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/fiio/music/entity/Song;->isNet:Z

    return-void
.end method

.method static synthetic access$12(Lcom/fiio/music/entity/Song;Z)V
    .locals 0

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/fiio/music/entity/Song;->isDownFinish:Z

    return-void
.end method

.method static synthetic access$13(Lcom/fiio/music/entity/Song;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/fiio/music/entity/Song;->albumPath:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$14(Lcom/fiio/music/entity/Song;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/fiio/music/entity/Song;->filePath:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$15(Lcom/fiio/music/entity/Song;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/fiio/music/entity/Song;->playerList:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$16(Lcom/fiio/music/entity/Song;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/fiio/music/entity/Song;->mimeType:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$17(Lcom/fiio/music/entity/Song;I)V
    .locals 0

    .prologue
    .line 27
    iput p1, p0, Lcom/fiio/music/entity/Song;->songId:I

    return-void
.end method

.method static synthetic access$18(Lcom/fiio/music/entity/Song;I)V
    .locals 0

    .prologue
    .line 29
    iput p1, p0, Lcom/fiio/music/entity/Song;->track:I

    return-void
.end method

.method static synthetic access$19(Lcom/fiio/music/entity/Song;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/fiio/music/entity/Song;->channels:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lcom/fiio/music/entity/Song;I)V
    .locals 0

    .prologue
    .line 28
    iput p1, p0, Lcom/fiio/music/entity/Song;->tempId:I

    return-void
.end method

.method static synthetic access$20(Lcom/fiio/music/entity/Song;Lcom/fiio/music/entity/SongStyle;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/fiio/music/entity/Song;->style:Lcom/fiio/music/entity/SongStyle;

    return-void
.end method

.method static synthetic access$21(Lcom/fiio/music/entity/Song;I)V
    .locals 0

    .prologue
    .line 33
    iput p1, p0, Lcom/fiio/music/entity/Song;->playCount:I

    return-void
.end method

.method static synthetic access$22(Lcom/fiio/music/entity/Song;I)V
    .locals 0

    .prologue
    .line 36
    iput p1, p0, Lcom/fiio/music/entity/Song;->sampleRate:I

    return-void
.end method

.method static synthetic access$23(Lcom/fiio/music/entity/Song;I)V
    .locals 0

    .prologue
    .line 39
    iput p1, p0, Lcom/fiio/music/entity/Song;->encodingRate:I

    return-void
.end method

.method static synthetic access$24(Lcom/fiio/music/entity/Song;I)V
    .locals 0

    .prologue
    .line 35
    iput p1, p0, Lcom/fiio/music/entity/Song;->bitRate:I

    return-void
.end method

.method static synthetic access$25(Lcom/fiio/music/entity/Song;I)V
    .locals 0

    .prologue
    .line 40
    iput p1, p0, Lcom/fiio/music/entity/Song;->nameAscii:I

    return-void
.end method

.method static synthetic access$26(Lcom/fiio/music/entity/Song;Z)V
    .locals 0

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/fiio/music/entity/Song;->isCue:Z

    return-void
.end method

.method static synthetic access$27(Lcom/fiio/music/entity/Song;Z)V
    .locals 0

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/fiio/music/entity/Song;->isSacd:Z

    return-void
.end method

.method static synthetic access$28(Lcom/fiio/music/entity/Song;I)V
    .locals 0

    .prologue
    .line 45
    iput p1, p0, Lcom/fiio/music/entity/Song;->cue_startTime:I

    return-void
.end method

.method static synthetic access$29(Lcom/fiio/music/entity/Song;I)V
    .locals 0

    .prologue
    .line 46
    iput p1, p0, Lcom/fiio/music/entity/Song;->cue_duration:I

    return-void
.end method

.method static synthetic access$3(Lcom/fiio/music/entity/Song;Lcom/fiio/music/entity/Artist;)V
    .locals 0

    .prologue
    .line 13
    iput-object p1, p0, Lcom/fiio/music/entity/Song;->artist:Lcom/fiio/music/entity/Artist;

    return-void
.end method

.method static synthetic access$30(Lcom/fiio/music/entity/Song;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/fiio/music/entity/Song;->cue_songName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$31(Lcom/fiio/music/entity/Song;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/fiio/music/entity/Song;->cue_artistName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$32(Lcom/fiio/music/entity/Song;I)V
    .locals 0

    .prologue
    .line 51
    iput p1, p0, Lcom/fiio/music/entity/Song;->sacd_startTime:I

    return-void
.end method

.method static synthetic access$33(Lcom/fiio/music/entity/Song;I)V
    .locals 0

    .prologue
    .line 52
    iput p1, p0, Lcom/fiio/music/entity/Song;->sacd_duration:I

    return-void
.end method

.method static synthetic access$34(Lcom/fiio/music/entity/Song;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/fiio/music/entity/Song;->sacd_songName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$35(Lcom/fiio/music/entity/Song;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/fiio/music/entity/Song;->sacd_artistName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$4(Lcom/fiio/music/entity/Song;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcom/fiio/music/entity/Song;->name:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5(Lcom/fiio/music/entity/Song;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/fiio/music/entity/Song;->displayName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$6(Lcom/fiio/music/entity/Song;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcom/fiio/music/entity/Song;->netUrl:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$7(Lcom/fiio/music/entity/Song;I)V
    .locals 0

    .prologue
    .line 17
    iput p1, p0, Lcom/fiio/music/entity/Song;->durationTime:I

    return-void
.end method

.method static synthetic access$8(Lcom/fiio/music/entity/Song;I)V
    .locals 0

    .prologue
    .line 18
    iput p1, p0, Lcom/fiio/music/entity/Song;->size:I

    return-void
.end method

.method static synthetic access$9(Lcom/fiio/music/entity/Song;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/fiio/music/entity/Song;->year:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 436
    const/4 v1, 0x0

    .line 438
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    :goto_0
    return-object v0

    .line 440
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method public dataClone()Lcom/fiio/music/entity/Song;
    .locals 2

    .prologue
    .line 396
    new-instance v0, Lcom/fiio/music/entity/Song;

    invoke-direct {v0}, Lcom/fiio/music/entity/Song;-><init>()V

    .line 397
    iget v1, p0, Lcom/fiio/music/entity/Song;->id:I

    invoke-virtual {v0, v1}, Lcom/fiio/music/entity/Song;->setId_(I)V

    .line 398
    iget-object v1, p0, Lcom/fiio/music/entity/Song;->album:Lcom/fiio/music/entity/Album;

    invoke-virtual {v0, v1}, Lcom/fiio/music/entity/Song;->setAlbum(Lcom/fiio/music/entity/Album;)V

    .line 399
    iget v1, p0, Lcom/fiio/music/entity/Song;->tempId:I

    invoke-virtual {v0, v1}, Lcom/fiio/music/entity/Song;->setTempId(I)V

    .line 400
    iget-object v1, p0, Lcom/fiio/music/entity/Song;->artist:Lcom/fiio/music/entity/Artist;

    invoke-virtual {v0, v1}, Lcom/fiio/music/entity/Song;->setArtist(Lcom/fiio/music/entity/Artist;)V

    .line 401
    iget-object v1, p0, Lcom/fiio/music/entity/Song;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fiio/music/entity/Song;->setName(Ljava/lang/String;)V

    .line 402
    iget-object v1, p0, Lcom/fiio/music/entity/Song;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fiio/music/entity/Song;->setDisplayName(Ljava/lang/String;)V

    .line 403
    iget-object v1, p0, Lcom/fiio/music/entity/Song;->netUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fiio/music/entity/Song;->setNetUrl(Ljava/lang/String;)V

    .line 404
    iget v1, p0, Lcom/fiio/music/entity/Song;->durationTime:I

    invoke-virtual {v0, v1}, Lcom/fiio/music/entity/Song;->setDurationTime(I)V

    .line 405
    iget v1, p0, Lcom/fiio/music/entity/Song;->size:I

    invoke-virtual {v0, v1}, Lcom/fiio/music/entity/Song;->setSize(I)V

    .line 406
    iget-object v1, p0, Lcom/fiio/music/entity/Song;->year:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fiio/music/entity/Song;->setYear(Ljava/lang/String;)V

    .line 407
    iget-boolean v1, p0, Lcom/fiio/music/entity/Song;->isLike:Z

    invoke-virtual {v0, v1}, Lcom/fiio/music/entity/Song;->setLike(Z)V

    .line 408
    iget-boolean v1, p0, Lcom/fiio/music/entity/Song;->isNet:Z

    invoke-virtual {v0, v1}, Lcom/fiio/music/entity/Song;->setNet(Z)V

    .line 409
    iget-boolean v1, p0, Lcom/fiio/music/entity/Song;->isDownFinish:Z

    invoke-virtual {v0, v1}, Lcom/fiio/music/entity/Song;->setDownFinish(Z)V

    .line 410
    iget-object v1, p0, Lcom/fiio/music/entity/Song;->albumPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fiio/music/entity/Song;->setAlbumPath(Ljava/lang/String;)V

    .line 411
    iget-object v1, p0, Lcom/fiio/music/entity/Song;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fiio/music/entity/Song;->setFilePath(Ljava/lang/String;)V

    .line 412
    iget-object v1, p0, Lcom/fiio/music/entity/Song;->playerList:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fiio/music/entity/Song;->setPlayerList(Ljava/lang/String;)V

    .line 413
    iget-object v1, p0, Lcom/fiio/music/entity/Song;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fiio/music/entity/Song;->setMimeType(Ljava/lang/String;)V

    .line 414
    iget v1, p0, Lcom/fiio/music/entity/Song;->songId:I

    iput v1, v0, Lcom/fiio/music/entity/Song;->songId:I

    .line 415
    iget v1, p0, Lcom/fiio/music/entity/Song;->track:I

    invoke-virtual {v0, v1}, Lcom/fiio/music/entity/Song;->setTrack(I)V

    .line 416
    iget-object v1, p0, Lcom/fiio/music/entity/Song;->channels:Ljava/lang/String;

    iput-object v1, v0, Lcom/fiio/music/entity/Song;->channels:Ljava/lang/String;

    .line 417
    iget-object v1, p0, Lcom/fiio/music/entity/Song;->style:Lcom/fiio/music/entity/SongStyle;

    invoke-virtual {v0, v1}, Lcom/fiio/music/entity/Song;->setStyle(Lcom/fiio/music/entity/SongStyle;)V

    .line 418
    iget v1, p0, Lcom/fiio/music/entity/Song;->playCount:I

    invoke-virtual {v0, v1}, Lcom/fiio/music/entity/Song;->setPlayCount(I)V

    .line 419
    iget v1, p0, Lcom/fiio/music/entity/Song;->sampleRate:I

    invoke-virtual {v0, v1}, Lcom/fiio/music/entity/Song;->setSampleRate(I)V

    .line 420
    iget v1, p0, Lcom/fiio/music/entity/Song;->encodingRate:I

    invoke-virtual {v0, v1}, Lcom/fiio/music/entity/Song;->setEncodingRate(I)V

    .line 421
    iget v1, p0, Lcom/fiio/music/entity/Song;->bitRate:I

    invoke-virtual {v0, v1}, Lcom/fiio/music/entity/Song;->setBitRate(I)V

    .line 422
    iget v1, p0, Lcom/fiio/music/entity/Song;->nameAscii:I

    invoke-virtual {v0, v1}, Lcom/fiio/music/entity/Song;->setNameAscii(I)V

    .line 423
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fiio/music/entity/Song;->setCue(Z)V

    .line 426
    iget v1, p0, Lcom/fiio/music/entity/Song;->cue_startTime:I

    invoke-virtual {v0, v1}, Lcom/fiio/music/entity/Song;->setCue_startTime(I)V

    .line 427
    iget v1, p0, Lcom/fiio/music/entity/Song;->cue_duration:I

    invoke-virtual {v0, v1}, Lcom/fiio/music/entity/Song;->setCue_duration(I)V

    .line 428
    iget-object v1, p0, Lcom/fiio/music/entity/Song;->cue_songName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fiio/music/entity/Song;->setCue_songName(Ljava/lang/String;)V

    .line 429
    iget-object v1, p0, Lcom/fiio/music/entity/Song;->cue_artistName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fiio/music/entity/Song;->setCue_artistName(Ljava/lang/String;)V

    .line 431
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 329
    const/4 v0, 0x0

    return v0
.end method

.method public getAddTime()J
    .locals 2

    .prologue
    .line 524
    iget-wide v0, p0, Lcom/fiio/music/entity/Song;->addTime:J

    return-wide v0
.end method

.method public getAlbum()Lcom/fiio/music/entity/Album;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/fiio/music/entity/Song;->album:Lcom/fiio/music/entity/Album;

    return-object v0
.end method

.method public getAlbumPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/fiio/music/entity/Song;->albumPath:Ljava/lang/String;

    return-object v0
.end method

.method public getArtist()Lcom/fiio/music/entity/Artist;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/fiio/music/entity/Song;->artist:Lcom/fiio/music/entity/Artist;

    return-object v0
.end method

.method public getBitRate()I
    .locals 1

    .prologue
    .line 254
    iget v0, p0, Lcom/fiio/music/entity/Song;->bitRate:I

    return v0
.end method

.method public getChannels()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/fiio/music/entity/Song;->channels:Ljava/lang/String;

    return-object v0
.end method

.method public getCue_artistName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/fiio/music/entity/Song;->cue_artistName:Ljava/lang/String;

    return-object v0
.end method

.method public getCue_duration()I
    .locals 1

    .prologue
    .line 464
    iget v0, p0, Lcom/fiio/music/entity/Song;->cue_duration:I

    return v0
.end method

.method public getCue_songName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/fiio/music/entity/Song;->cue_songName:Ljava/lang/String;

    return-object v0
.end method

.method public getCue_startTime()I
    .locals 1

    .prologue
    .line 456
    iget v0, p0, Lcom/fiio/music/entity/Song;->cue_startTime:I

    return v0
.end method

.method public getDisc()I
    .locals 1

    .prologue
    .line 237
    iget v0, p0, Lcom/fiio/music/entity/Song;->disc:I

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/fiio/music/entity/Song;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getDurationTime()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/fiio/music/entity/Song;->durationTime:I

    return v0
.end method

.method public getEncodingRate()I
    .locals 1

    .prologue
    .line 258
    iget v0, p0, Lcom/fiio/music/entity/Song;->encodingRate:I

    return v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/fiio/music/entity/Song;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getId_()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/fiio/music/entity/Song;->id:I

    return v0
.end method

.method public getIsLike()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/fiio/music/entity/Song;->isLikeValue:I

    return v0
.end method

.method public getLastPlayTime()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/fiio/music/entity/Song;->lastPlayTime:I

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/fiio/music/entity/Song;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/fiio/music/entity/Song;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNameAscii()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/fiio/music/entity/Song;->nameAscii:I

    return v0
.end method

.method public getNetUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/fiio/music/entity/Song;->netUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayCount()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/fiio/music/entity/Song;->playCount:I

    return v0
.end method

.method public getPlayerList()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/fiio/music/entity/Song;->playerList:Ljava/lang/String;

    return-object v0
.end method

.method public getSacd_artistName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lcom/fiio/music/entity/Song;->sacd_artistName:Ljava/lang/String;

    return-object v0
.end method

.method public getSacd_duration()I
    .locals 1

    .prologue
    .line 496
    iget v0, p0, Lcom/fiio/music/entity/Song;->sacd_duration:I

    return v0
.end method

.method public getSacd_songName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/fiio/music/entity/Song;->sacd_songName:Ljava/lang/String;

    return-object v0
.end method

.method public getSacd_startTime()I
    .locals 1

    .prologue
    .line 488
    iget v0, p0, Lcom/fiio/music/entity/Song;->sacd_startTime:I

    return v0
.end method

.method public getSampleRate()I
    .locals 1

    .prologue
    .line 267
    iget v0, p0, Lcom/fiio/music/entity/Song;->sampleRate:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/fiio/music/entity/Song;->size:I

    return v0
.end method

.method public getSortLetters()Ljava/lang/String;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/fiio/music/entity/Song;->sortLetters:Ljava/lang/String;

    return-object v0
.end method

.method public getSortsongFirst()J
    .locals 2

    .prologue
    .line 546
    iget-wide v0, p0, Lcom/fiio/music/entity/Song;->firstSort:J

    return-wide v0
.end method

.method public getSortsongName()J
    .locals 2

    .prologue
    .line 561
    iget-wide v0, p0, Lcom/fiio/music/entity/Song;->nameSort:J

    return-wide v0
.end method

.method public getStyle()Lcom/fiio/music/entity/SongStyle;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/fiio/music/entity/Song;->style:Lcom/fiio/music/entity/SongStyle;

    return-object v0
.end method

.method public getTempId()I
    .locals 1

    .prologue
    .line 375
    iget v0, p0, Lcom/fiio/music/entity/Song;->tempId:I

    return v0
.end method

.method public getTrack()I
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Lcom/fiio/music/entity/Song;->track:I

    return v0
.end method

.method public getYear()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/fiio/music/entity/Song;->year:Ljava/lang/String;

    return-object v0
.end method

.method public isCue()Z
    .locals 1

    .prologue
    .line 388
    iget-boolean v0, p0, Lcom/fiio/music/entity/Song;->isCue:Z

    return v0
.end method

.method public isDownFinish()Z
    .locals 1

    .prologue
    .line 212
    iget-boolean v0, p0, Lcom/fiio/music/entity/Song;->isDownFinish:Z

    return v0
.end method

.method public isLike()Z
    .locals 1

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/fiio/music/entity/Song;->isLike:Z

    return v0
.end method

.method public isNet()Z
    .locals 1

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/fiio/music/entity/Song;->isNet:Z

    return v0
.end method

.method public isSacd()Z
    .locals 1

    .prologue
    .line 448
    iget-boolean v0, p0, Lcom/fiio/music/entity/Song;->isSacd:Z

    return v0
.end method

.method public setAddTime(J)V
    .locals 1

    .prologue
    .line 532
    iput-wide p1, p0, Lcom/fiio/music/entity/Song;->addTime:J

    .line 533
    return-void
.end method

.method public setAlbum(Lcom/fiio/music/entity/Album;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/fiio/music/entity/Song;->album:Lcom/fiio/music/entity/Album;

    .line 95
    return-void
.end method

.method public setAlbumPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/fiio/music/entity/Song;->albumPath:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public setArtist(Lcom/fiio/music/entity/Artist;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/fiio/music/entity/Song;->artist:Lcom/fiio/music/entity/Artist;

    .line 103
    return-void
.end method

.method public setArtistName(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/fiio/music/entity/Song;->artist:Lcom/fiio/music/entity/Artist;

    invoke-virtual {v0, p1}, Lcom/fiio/music/entity/Artist;->setName(Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public setBitRate(I)V
    .locals 0

    .prologue
    .line 264
    iput p1, p0, Lcom/fiio/music/entity/Song;->bitRate:I

    .line 265
    return-void
.end method

.method public setChannels(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/fiio/music/entity/Song;->channels:Ljava/lang/String;

    .line 242
    return-void
.end method

.method public setCue(Z)V
    .locals 0

    .prologue
    .line 392
    iput-boolean p1, p0, Lcom/fiio/music/entity/Song;->isCue:Z

    .line 393
    return-void
.end method

.method public setCue_artistName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 484
    iput-object p1, p0, Lcom/fiio/music/entity/Song;->cue_artistName:Ljava/lang/String;

    .line 485
    return-void
.end method

.method public setCue_duration(I)V
    .locals 0

    .prologue
    .line 468
    iput p1, p0, Lcom/fiio/music/entity/Song;->cue_duration:I

    .line 469
    return-void
.end method

.method public setCue_songName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 476
    iput-object p1, p0, Lcom/fiio/music/entity/Song;->cue_songName:Ljava/lang/String;

    .line 477
    return-void
.end method

.method public setCue_startTime(I)V
    .locals 0

    .prologue
    .line 460
    iput p1, p0, Lcom/fiio/music/entity/Song;->cue_startTime:I

    .line 461
    return-void
.end method

.method public setDisc(I)V
    .locals 0

    .prologue
    .line 234
    iput p1, p0, Lcom/fiio/music/entity/Song;->disc:I

    .line 235
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/fiio/music/entity/Song;->displayName:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setDownFinish(Z)V
    .locals 0

    .prologue
    .line 216
    iput-boolean p1, p0, Lcom/fiio/music/entity/Song;->isDownFinish:Z

    .line 217
    return-void
.end method

.method public setDurationTime(I)V
    .locals 0

    .prologue
    .line 144
    iput p1, p0, Lcom/fiio/music/entity/Song;->durationTime:I

    .line 145
    return-void
.end method

.method public setEncodingRate(I)V
    .locals 0

    .prologue
    .line 261
    iput p1, p0, Lcom/fiio/music/entity/Song;->encodingRate:I

    .line 262
    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/fiio/music/entity/Song;->filePath:Ljava/lang/String;

    .line 185
    return-void
.end method

.method public setId_(I)V
    .locals 0

    .prologue
    .line 86
    iput p1, p0, Lcom/fiio/music/entity/Song;->id:I

    .line 87
    return-void
.end method

.method public setIsLike(I)V
    .locals 0

    .prologue
    .line 168
    iput p1, p0, Lcom/fiio/music/entity/Song;->isLikeValue:I

    .line 169
    return-void
.end method

.method public setLastPlayTime(I)V
    .locals 0

    .prologue
    .line 78
    iput p1, p0, Lcom/fiio/music/entity/Song;->lastPlayTime:I

    .line 79
    return-void
.end method

.method public setLike(Z)V
    .locals 0

    .prologue
    .line 160
    iput-boolean p1, p0, Lcom/fiio/music/entity/Song;->isLike:Z

    .line 161
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/fiio/music/entity/Song;->mimeType:Ljava/lang/String;

    .line 209
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/fiio/music/entity/Song;->name:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setNameAscii(I)V
    .locals 0

    .prologue
    .line 117
    iput p1, p0, Lcom/fiio/music/entity/Song;->nameAscii:I

    .line 118
    return-void
.end method

.method public setNet(Z)V
    .locals 0

    .prologue
    .line 200
    iput-boolean p1, p0, Lcom/fiio/music/entity/Song;->isNet:Z

    .line 201
    return-void
.end method

.method public setNetUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/fiio/music/entity/Song;->netUrl:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setPlayCount(I)V
    .locals 0

    .prologue
    .line 71
    iput p1, p0, Lcom/fiio/music/entity/Song;->playCount:I

    .line 72
    return-void
.end method

.method public setPlayerList(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/fiio/music/entity/Song;->playerList:Ljava/lang/String;

    .line 193
    return-void
.end method

.method public setSacd(Z)V
    .locals 0

    .prologue
    .line 452
    iput-boolean p1, p0, Lcom/fiio/music/entity/Song;->isSacd:Z

    .line 453
    return-void
.end method

.method public setSacd_artistName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 516
    iput-object p1, p0, Lcom/fiio/music/entity/Song;->sacd_artistName:Ljava/lang/String;

    .line 517
    return-void
.end method

.method public setSacd_duration(I)V
    .locals 0

    .prologue
    .line 500
    iput p1, p0, Lcom/fiio/music/entity/Song;->sacd_duration:I

    .line 501
    return-void
.end method

.method public setSacd_songName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 508
    iput-object p1, p0, Lcom/fiio/music/entity/Song;->sacd_songName:Ljava/lang/String;

    .line 509
    return-void
.end method

.method public setSacd_startTime(I)V
    .locals 0

    .prologue
    .line 492
    iput p1, p0, Lcom/fiio/music/entity/Song;->sacd_startTime:I

    .line 493
    return-void
.end method

.method public setSampleRate(I)V
    .locals 0

    .prologue
    .line 271
    iput p1, p0, Lcom/fiio/music/entity/Song;->sampleRate:I

    .line 272
    return-void
.end method

.method public setSize(I)V
    .locals 0

    .prologue
    .line 152
    iput p1, p0, Lcom/fiio/music/entity/Song;->size:I

    .line 153
    return-void
.end method

.method public setSortLetters(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 382
    iput-object p1, p0, Lcom/fiio/music/entity/Song;->sortLetters:Ljava/lang/String;

    .line 383
    return-void
.end method

.method public setSortsongFirst(J)V
    .locals 1

    .prologue
    .line 539
    iput-wide p1, p0, Lcom/fiio/music/entity/Song;->firstSort:J

    .line 540
    return-void
.end method

.method public setSortsongName(J)V
    .locals 1

    .prologue
    .line 553
    iput-wide p1, p0, Lcom/fiio/music/entity/Song;->nameSort:J

    .line 554
    return-void
.end method

.method public setStyle(Lcom/fiio/music/entity/SongStyle;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/fiio/music/entity/Song;->style:Lcom/fiio/music/entity/SongStyle;

    .line 252
    return-void
.end method

.method public setTempId(I)V
    .locals 0

    .prologue
    .line 372
    iput p1, p0, Lcom/fiio/music/entity/Song;->tempId:I

    .line 373
    return-void
.end method

.method public setTrack(I)V
    .locals 0

    .prologue
    .line 228
    iput p1, p0, Lcom/fiio/music/entity/Song;->track:I

    .line 229
    return-void
.end method

.method public setYear(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/fiio/music/entity/Song;->year:Ljava/lang/String;

    .line 224
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    .line 333
    iget v0, p0, Lcom/fiio/music/entity/Song;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 334
    iget-object v0, p0, Lcom/fiio/music/entity/Song;->album:Lcom/fiio/music/entity/Album;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 335
    iget v0, p0, Lcom/fiio/music/entity/Song;->tempId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 336
    iget-object v0, p0, Lcom/fiio/music/entity/Song;->artist:Lcom/fiio/music/entity/Artist;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 337
    iget-object v0, p0, Lcom/fiio/music/entity/Song;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lcom/fiio/music/entity/Song;->displayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Lcom/fiio/music/entity/Song;->netUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 340
    iget v0, p0, Lcom/fiio/music/entity/Song;->durationTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 341
    iget v0, p0, Lcom/fiio/music/entity/Song;->size:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 342
    iget-object v0, p0, Lcom/fiio/music/entity/Song;->year:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 343
    const/4 v0, 0x5

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/fiio/music/entity/Song;->isLike:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/fiio/music/entity/Song;->isNet:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/fiio/music/entity/Song;->isDownFinish:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/fiio/music/entity/Song;->isCue:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/fiio/music/entity/Song;->isSacd:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 344
    iget-object v0, p0, Lcom/fiio/music/entity/Song;->albumPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/fiio/music/entity/Song;->filePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 346
    iget-object v0, p0, Lcom/fiio/music/entity/Song;->playerList:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Lcom/fiio/music/entity/Song;->mimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 348
    iget v0, p0, Lcom/fiio/music/entity/Song;->songId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 349
    iget v0, p0, Lcom/fiio/music/entity/Song;->track:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 350
    iget-object v0, p0, Lcom/fiio/music/entity/Song;->channels:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/fiio/music/entity/Song;->style:Lcom/fiio/music/entity/SongStyle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 352
    iget v0, p0, Lcom/fiio/music/entity/Song;->playCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 353
    iget v0, p0, Lcom/fiio/music/entity/Song;->sampleRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 354
    iget v0, p0, Lcom/fiio/music/entity/Song;->encodingRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 355
    iget v0, p0, Lcom/fiio/music/entity/Song;->bitRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 356
    iget v0, p0, Lcom/fiio/music/entity/Song;->nameAscii:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 359
    iget v0, p0, Lcom/fiio/music/entity/Song;->cue_startTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 360
    iget v0, p0, Lcom/fiio/music/entity/Song;->cue_duration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 361
    iget-object v0, p0, Lcom/fiio/music/entity/Song;->cue_songName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 362
    iget-object v0, p0, Lcom/fiio/music/entity/Song;->cue_artistName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 365
    iget v0, p0, Lcom/fiio/music/entity/Song;->sacd_startTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 366
    iget v0, p0, Lcom/fiio/music/entity/Song;->sacd_duration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 367
    iget-object v0, p0, Lcom/fiio/music/entity/Song;->sacd_songName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 368
    iget-object v0, p0, Lcom/fiio/music/entity/Song;->sacd_artistName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 369
    return-void
.end method
