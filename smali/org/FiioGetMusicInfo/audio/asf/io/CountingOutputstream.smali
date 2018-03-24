.class public Lorg/FiioGetMusicInfo/audio/asf/io/CountingOutputstream;
.super Ljava/io/OutputStream;
.source "CountingOutputstream.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private count:J

.field private final wrapped:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lorg/FiioGetMusicInfo/audio/asf/io/CountingOutputstream;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/FiioGetMusicInfo/audio/asf/io/CountingOutputstream;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 19
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/FiioGetMusicInfo/audio/asf/io/CountingOutputstream;->count:J

    .line 35
    sget-boolean v0, Lorg/FiioGetMusicInfo/audio/asf/io/CountingOutputstream;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 36
    :cond_0
    iput-object p1, p0, Lorg/FiioGetMusicInfo/audio/asf/io/CountingOutputstream;->wrapped:Ljava/io/OutputStream;

    .line 37
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/io/CountingOutputstream;->wrapped:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 45
    return-void
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/io/CountingOutputstream;->wrapped:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 53
    return-void
.end method

.method public getCount()J
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lorg/FiioGetMusicInfo/audio/asf/io/CountingOutputstream;->count:J

    return-wide v0
.end method

.method public write(I)V
    .locals 4

    .prologue
    .line 86
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/io/CountingOutputstream;->wrapped:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 87
    iget-wide v0, p0, Lorg/FiioGetMusicInfo/audio/asf/io/CountingOutputstream;->count:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/FiioGetMusicInfo/audio/asf/io/CountingOutputstream;->count:J

    .line 88
    return-void
.end method

.method public write([B)V
    .locals 4

    .prologue
    .line 67
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/io/CountingOutputstream;->wrapped:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 68
    iget-wide v0, p0, Lorg/FiioGetMusicInfo/audio/asf/io/CountingOutputstream;->count:J

    array-length v2, p1

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/FiioGetMusicInfo/audio/asf/io/CountingOutputstream;->count:J

    .line 69
    return-void
.end method

.method public write([BII)V
    .locals 4

    .prologue
    .line 77
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/io/CountingOutputstream;->wrapped:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 78
    iget-wide v0, p0, Lorg/FiioGetMusicInfo/audio/asf/io/CountingOutputstream;->count:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/FiioGetMusicInfo/audio/asf/io/CountingOutputstream;->count:J

    .line 79
    return-void
.end method
