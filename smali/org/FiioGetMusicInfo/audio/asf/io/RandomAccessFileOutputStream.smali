.class public final Lorg/FiioGetMusicInfo/audio/asf/io/RandomAccessFileOutputStream;
.super Ljava/io/OutputStream;
.source "RandomAccessFileOutputStream.java"


# instance fields
.field private final targetFile:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(Ljava/io/RandomAccessFile;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/FiioGetMusicInfo/audio/asf/io/RandomAccessFileOutputStream;->targetFile:Ljava/io/RandomAccessFile;

    .line 28
    return-void
.end method


# virtual methods
.method public final write(I)V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/io/RandomAccessFileOutputStream;->targetFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->write(I)V

    .line 45
    return-void
.end method

.method public final write([BII)V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/io/RandomAccessFileOutputStream;->targetFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 37
    return-void
.end method
