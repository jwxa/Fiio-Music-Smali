.class public Lorg/FiioGetMusicInfo/audio/mp4/Mp4TagWriter;
.super Ljava/lang/Object;
.source "Mp4TagWriter.java"


# static fields
.field public static logger:Ljava/util/logging/Logger;


# instance fields
.field private tc:Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagCreator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    const-string v0, "org.FiioGetMusicInfo.tag.mp4"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagCreator;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagCreator;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4TagWriter;->tc:Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagCreator;

    .line 82
    return-void
.end method

.method private adjustFreeAtom(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;II)V
    .locals 4

    .prologue
    .line 1136
    add-int/lit8 v0, p3, -0x8

    if-lt v0, p4, :cond_1

    .line 1138
    sget-object v0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    const-string v1, "Writing:Option 6;Larger Size can use top free atom"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 1139
    new-instance v0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4FreeBox;

    add-int/lit8 v1, p3, -0x8

    sub-int/2addr v1, p4

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4FreeBox;-><init>(I)V

    .line 1140
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4FreeBox;->getHeader()Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v1

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 1141
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4FreeBox;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 1144
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    int-to-long v2, p3

    add-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 1158
    :cond_0
    :goto_0
    return-void

    .line 1148
    :cond_1
    if-ne p3, p4, :cond_0

    .line 1150
    sget-object v0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    const-string v1, "Writing:Option 7;Larger Size uses top free atom including header"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 1152
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    int-to-long v2, p3

    add-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    goto :goto_0
.end method

.method private adjustSizeOfMoovHeader(Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;ILorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x8

    .line 156
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p1, v0}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->setLength(I)V

    .line 159
    if-eqz p4, :cond_0

    .line 162
    invoke-virtual {p4}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p4, v0}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->setLength(I)V

    .line 163
    invoke-virtual {p4}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v2

    sub-long/2addr v0, v2

    sub-long/2addr v0, v4

    long-to-int v0, v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 164
    invoke-virtual {p4}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 167
    :cond_0
    if-eqz p5, :cond_1

    .line 170
    invoke-virtual {p5}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p5, v0}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->setLength(I)V

    .line 171
    invoke-virtual {p5}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v2

    sub-long/2addr v0, v2

    sub-long/2addr v0, v4

    long-to-int v0, v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 172
    invoke-virtual {p5}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 174
    :cond_1
    return-void
.end method

.method private adjustStcoIfNoSuitableTopLevelAtom(IZILorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;)Z
    .locals 4

    .prologue
    .line 1180
    invoke-virtual {p6}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v0

    invoke-virtual {p5}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 1185
    if-eqz p2, :cond_0

    .line 1186
    add-int/lit8 v0, p1, -0x8

    if-ge v0, p3, :cond_1

    .line 1187
    if-eq p1, p3, :cond_1

    .line 1189
    :cond_0
    invoke-virtual {p4, p3}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;->adjustOffsets(I)V

    .line 1190
    const/4 v0, 0x1

    .line 1193
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkFileWrittenCorrectly(Ljava/io/RandomAccessFile;Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/channels/FileChannel;Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;)V
    .locals 8

    .prologue
    .line 729
    sget-object v0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    const-string v1, "Checking file has been written correctly"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 735
    :try_start_0
    new-instance v0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;-><init>(Ljava/io/RandomAccessFile;Z)V

    .line 738
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;->getMdatNode()Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;->getBoxHeader(Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;)Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v1

    .line 739
    if-nez v1, :cond_0

    .line 741
    new-instance v0, Lorg/FiioGetMusicInfo/audio/exceptions/CannotWriteException;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->MP4_CHANGES_TO_FILE_FAILED_NO_DATA:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 779
    :catch_0
    move-exception v0

    .line 781
    :try_start_1
    instance-of v1, v0, Lorg/FiioGetMusicInfo/audio/exceptions/CannotWriteException;

    if-eqz v1, :cond_4

    .line 783
    check-cast v0, Lorg/FiioGetMusicInfo/audio/exceptions/CannotWriteException;

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 792
    :catchall_0
    move-exception v0

    .line 794
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->close()V

    .line 795
    invoke-virtual {p3}, Ljava/nio/channels/FileChannel;->close()V

    .line 796
    throw v0

    .line 743
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v2

    invoke-virtual {p2}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 745
    new-instance v0, Lorg/FiioGetMusicInfo/audio/exceptions/CannotWriteException;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->MP4_CHANGES_TO_FILE_FAILED_DATA_CORRUPT:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 749
    :cond_1
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;->getUdtaNode()Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;->getBoxHeader(Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;)Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v2

    .line 750
    if-nez v2, :cond_2

    .line 752
    new-instance v0, Lorg/FiioGetMusicInfo/audio/exceptions/CannotWriteException;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->MP4_CHANGES_TO_FILE_FAILED_NO_TAG_DATA:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 756
    :cond_2
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;->getMetaNode()Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;->getBoxHeader(Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;)Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v2

    .line 757
    if-nez v2, :cond_3

    .line 759
    new-instance v0, Lorg/FiioGetMusicInfo/audio/exceptions/CannotWriteException;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->MP4_CHANGES_TO_FILE_FAILED_NO_TAG_DATA:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 764
    :cond_3
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;->getStco()Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;

    move-result-object v0

    .line 766
    sget-object v2, Lorg/FiioGetMusicInfo/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "stco:Original First Offset"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;->getFirstOffSet()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 767
    sget-object v2, Lorg/FiioGetMusicInfo/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "stco:Original Diff"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;->getFirstOffSet()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {p2}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 768
    sget-object v2, Lorg/FiioGetMusicInfo/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "stco:Original Mdat Pos"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 769
    sget-object v2, Lorg/FiioGetMusicInfo/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "stco:New First Offset"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;->getFirstOffSet()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 770
    sget-object v2, Lorg/FiioGetMusicInfo/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "stco:New Diff"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;->getFirstOffSet()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 771
    sget-object v2, Lorg/FiioGetMusicInfo/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "stco:New Mdat Pos"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 772
    invoke-virtual {p4}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;->getFirstOffSet()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p2}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v2, v2

    .line 773
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;->getFirstOffSet()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v6

    sub-long/2addr v4, v6

    int-to-long v6, v2

    cmp-long v3, v4, v6

    if-eqz v3, :cond_5

    .line 775
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;->getFirstOffSet()I

    move-result v0

    int-to-long v4, v0

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v0

    sub-long v0, v4, v0

    int-to-long v2, v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 776
    new-instance v1, Lorg/FiioGetMusicInfo/audio/exceptions/CannotWriteException;

    sget-object v2, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->MP4_CHANGES_TO_FILE_FAILED_INCORRECT_OFFSETS:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v2, v3}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/FiioGetMusicInfo/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 787
    :cond_4
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 788
    new-instance v1, Lorg/FiioGetMusicInfo/audio/exceptions/CannotWriteException;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->MP4_CHANGES_TO_FILE_FAILED:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/FiioGetMusicInfo/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 794
    :cond_5
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->close()V

    .line 795
    invoke-virtual {p3}, Ljava/nio/channels/FileChannel;->close()V

    .line 797
    sget-object v0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    const-string v1, "File has been written correctly"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 798
    return-void
.end method

.method private convertandWriteTagsAtomToFreeAtom(Ljava/nio/channels/FileChannel;Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;)V
    .locals 2

    .prologue
    .line 631
    new-instance v0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4FreeBox;

    invoke-virtual {p2}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4FreeBox;-><init>(I)V

    .line 632
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4FreeBox;->getHeader()Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v1

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 633
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4FreeBox;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 634
    return-void
.end method

.method private createMetadataAtoms(Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;ILorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;)V
    .locals 1

    .prologue
    .line 180
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p1, v0}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->setLength(I)V

    .line 182
    return-void
.end method

.method private getMetaLevelFreeAtomSize(Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;)I
    .locals 6

    .prologue
    .line 689
    const/4 v3, 0x0

    .line 691
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;->getFreeNodes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v3

    .line 713
    :goto_0
    return v0

    .line 691
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;

    .line 693
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->getParent()Lorg/FiioGetMusicInfo/utils/tree/TreeNode;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;

    .line 694
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->getPreviousSibling()Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;

    move-result-object v2

    .line 695
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->isRoot()Z

    move-result v5

    if-nez v5, :cond_0

    .line 697
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    .line 698
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    .line 701
    if-eqz v2, :cond_0

    .line 703
    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    .line 705
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->META:Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v5}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->ILST:Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 707
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v0

    goto :goto_0
.end method

.method private writeDataAfterIlst(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;)V
    .locals 0

    .prologue
    .line 667
    if-eqz p3, :cond_0

    .line 670
    invoke-direct {p0, p1, p2, p3}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4TagWriter;->writeNeroData(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;)V

    .line 677
    :goto_0
    return-void

    .line 675
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4TagWriter;->writeDataInChunks(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;)V

    goto :goto_0
.end method

.method private writeDataInChunks(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;)V
    .locals 18

    .prologue
    .line 604
    invoke-virtual/range {p1 .. p1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v4

    sub-long v12, v2, v4

    .line 605
    const-wide/16 v4, 0x0

    .line 606
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->getInstance()Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;

    move-result-object v2

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->getWriteChunkSize()J

    move-result-wide v6

    .line 607
    div-long v14, v12, v6

    .line 609
    rem-long v16, v12, v6

    .line 610
    const/4 v2, 0x0

    move v8, v2

    move-wide v10, v4

    :goto_0
    int-to-long v2, v8

    cmp-long v2, v2, v14

    if-ltz v2, :cond_0

    .line 615
    invoke-virtual/range {p2 .. p2}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v4

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    move-wide/from16 v6, v16

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    move-result-wide v2

    add-long/2addr v2, v10

    .line 616
    cmp-long v4, v2, v12

    if-eqz v4, :cond_1

    .line 618
    new-instance v4, Lorg/FiioGetMusicInfo/audio/exceptions/CannotWriteException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Was meant to write "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bytes but only written "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Lorg/FiioGetMusicInfo/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 612
    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v4

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    move-result-wide v2

    add-long v4, v10, v2

    .line 613
    invoke-virtual/range {p2 .. p2}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v2

    add-long/2addr v2, v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 610
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    move-wide v10, v4

    goto :goto_0

    .line 620
    :cond_1
    return-void
.end method

.method private writeDataUptoIncludingIlst(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    .line 648
    invoke-virtual {p1, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 649
    invoke-virtual {p3}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v4

    move-object v0, p2

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 650
    invoke-virtual {p3}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 651
    invoke-virtual {p2, p4}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 652
    invoke-virtual {p3}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getFileEndPos()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 653
    return-void
.end method

.method private writeFromEndOfIlstToNeroTagsAndMakeNeroFree(JLjava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;)V
    .locals 7

    .prologue
    .line 1110
    invoke-virtual {p5}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v0

    invoke-virtual {p3}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v2

    sub-long v4, v0, v2

    .line 1111
    invoke-virtual {p4}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v2

    move-object v0, p4

    move-object v1, p3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 1112
    invoke-virtual {p4}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    add-long/2addr v0, v4

    invoke-virtual {p4, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 1113
    invoke-direct {p0, p4, p5}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4TagWriter;->convertandWriteTagsAtomToFreeAtom(Ljava/nio/channels/FileChannel;Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;)V

    .line 1116
    invoke-virtual {p5}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getFileEndPos()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 1117
    invoke-virtual {p3}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    sub-long v4, p1, v0

    .line 1118
    invoke-virtual {p4}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v2

    move-object v0, p4

    move-object v1, p3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 1119
    return-void
.end method

.method private writeHaveExistingMetadata(Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;ILorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;IIZLjava/nio/ByteBuffer;Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;III)V
    .locals 14

    .prologue
    .line 1052
    sget-object v4, Lorg/FiioGetMusicInfo/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    const-string v5, "Writing:Option 5.3;udta and meta atom exists"

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    move-object v4, p0

    move/from16 v5, p11

    move/from16 v6, p12

    move/from16 v7, p10

    move-object/from16 v8, p9

    move-object/from16 v9, p6

    move-object/from16 v10, p8

    .line 1054
    invoke-direct/range {v4 .. v10}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4TagWriter;->adjustStcoIfNoSuitableTopLevelAtom(IZILorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;)Z

    move-result v11

    .line 1056
    invoke-virtual/range {p6 .. p6}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getFileEndPos()J

    move-result-wide v12

    move-object v4, p0

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p10

    move-object v8, p1

    move-object/from16 v9, p2

    .line 1059
    invoke-direct/range {v4 .. v9}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4TagWriter;->adjustSizeOfMoovHeader(Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;ILorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;)V

    .line 1060
    invoke-virtual/range {p6 .. p6}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 1063
    invoke-virtual/range {p7 .. p7}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1064
    move-object/from16 v0, p7

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1065
    move-object/from16 v0, p4

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 1068
    move-object/from16 v0, p4

    move-object/from16 v1, p13

    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 1071
    add-int v4, p16, p17

    add-int v4, v4, p15

    int-to-long v4, v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 1074
    if-eqz p14, :cond_0

    move-object v5, p0

    move-wide v6, v12

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p14

    .line 1076
    invoke-direct/range {v5 .. v10}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4TagWriter;->writeFromEndOfIlstToNeroTagsAndMakeNeroFree(JLjava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;)V

    .line 1086
    :goto_0
    if-nez v11, :cond_1

    .line 1088
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, p11

    move/from16 v3, p10

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4TagWriter;->adjustFreeAtom(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;II)V

    .line 1094
    :goto_1
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {p0, v0, v1}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4TagWriter;->writeDataInChunks(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;)V

    .line 1095
    return-void

    .line 1081
    :cond_0
    invoke-virtual/range {p3 .. p3}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v4

    sub-long v8, v12, v4

    .line 1082
    invoke-virtual/range {p4 .. p4}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v6

    move-object/from16 v4, p4

    move-object/from16 v5, p3

    invoke-virtual/range {v4 .. v9}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 1083
    invoke-virtual/range {p4 .. p4}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v4

    add-long/2addr v4, v8

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    goto :goto_0

    .line 1092
    :cond_1
    sget-object v4, Lorg/FiioGetMusicInfo/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    const-string v5, "Writing:Option 9;Top Level Free comes after Mdat or before Metadata or not large enough"

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private writeMetadataSameSize(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;)V
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    .line 103
    sget-object v0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    const-string v1, "Writing:Option 1:Same Size"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p1, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 106
    invoke-virtual {p3}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v4

    move-object v0, p2

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 107
    invoke-virtual {p3}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 108
    invoke-virtual {p2, p4}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 109
    invoke-virtual {p3}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getFileEndPos()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 111
    invoke-direct {p0, p1, p2, p5}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4TagWriter;->writeDataAfterIlst(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;)V

    .line 112
    return-void
.end method

.method private writeNeroData(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;)V
    .locals 6

    .prologue
    .line 128
    invoke-virtual {p3}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v2

    sub-long v4, v0, v2

    .line 129
    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v2

    move-object v0, p2

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 130
    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    add-long/2addr v0, v4

    invoke-virtual {p2, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 133
    invoke-direct {p0, p2, p3}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4TagWriter;->convertandWriteTagsAtomToFreeAtom(Ljava/nio/channels/FileChannel;Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;)V

    .line 136
    invoke-virtual {p3}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getFileEndPos()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 137
    invoke-direct {p0, p1, p2}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4TagWriter;->writeDataInChunks(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;)V

    .line 138
    return-void
.end method

.method private writeNewMetadataLargerButCanUseFreeAtom(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;ILjava/nio/ByteBuffer;I)V
    .locals 4

    .prologue
    .line 296
    sub-int v0, p5, p7

    .line 297
    sget-object v1, Lorg/FiioGetMusicInfo/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Writing:Option 5;Larger Size can use meta free atom need extra:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 299
    invoke-direct {p0, p1, p2, p3, p6}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4TagWriter;->writeDataUptoIncludingIlst(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 302
    new-instance v1, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4FreeBox;

    add-int/lit8 v0, v0, -0x8

    invoke-direct {v1, v0}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4FreeBox;-><init>(I)V

    .line 303
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4FreeBox;->getHeader()Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 304
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4FreeBox;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 307
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    int-to-long v2, p5

    add-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 308
    invoke-direct {p0, p1, p2, p4}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4TagWriter;->writeDataAfterIlst(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;)V

    .line 309
    return-void
.end method

.method private writeNoExistingMetaAtom(Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;IZLorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;IIIII)V
    .locals 21

    .prologue
    .line 943
    sget-object v6, Lorg/FiioGetMusicInfo/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    const-string v7, "Writing:Option 5.2;No meta atom"

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 945
    invoke-virtual/range {p5 .. p5}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getFileEndPos()J

    move-result-wide v14

    .line 947
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    .line 948
    invoke-virtual/range {p5 .. p5}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v13

    .line 951
    invoke-virtual/range {p1 .. p1}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v16

    .line 952
    invoke-virtual/range {p1 .. p1}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v7

    .line 954
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4HdlrBox;->createiTunesStyleHdlrBox()Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4HdlrBox;

    move-result-object v17

    .line 955
    invoke-virtual/range {v17 .. v17}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4HdlrBox;->getHeader()Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v8

    invoke-virtual {v8}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v8

    add-int/2addr v6, v8

    invoke-static {v6}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4MetaBox;->createiTunesStyleMetaBox(I)Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4MetaBox;

    move-result-object v18

    .line 956
    new-instance v19, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    sget-object v6, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->UDTA:Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v6}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-direct {v0, v6}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;-><init>(Ljava/lang/String;)V

    .line 957
    invoke-virtual/range {v18 .. v18}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4MetaBox;->getHeader()Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v6

    invoke-virtual {v6}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v6

    add-int/lit8 v6, v6, 0x8

    add-int/2addr v6, v7

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->setLength(I)V

    .line 959
    invoke-virtual/range {v19 .. v19}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v6

    sub-int v9, v6, v7

    move-object/from16 v6, p0

    move/from16 v7, p9

    move/from16 v8, p10

    move-object/from16 v10, p8

    move-object/from16 v11, p5

    move-object/from16 v12, p7

    .line 961
    invoke-direct/range {v6 .. v12}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4TagWriter;->adjustStcoIfNoSuitableTopLevelAtom(IZILorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;)Z

    move-result v20

    .line 964
    invoke-virtual/range {p5 .. p5}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v6

    add-int/2addr v6, v9

    move-object/from16 v0, p5

    invoke-virtual {v0, v6}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->setLength(I)V

    .line 965
    invoke-virtual/range {p5 .. p5}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 966
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 967
    sub-int v6, v13, v16

    move-object/from16 v0, p6

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 968
    move-object/from16 v0, p3

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 971
    invoke-virtual/range {v19 .. v19}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 974
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    add-int/lit8 v6, v6, 0x8

    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v7

    if-ge v6, v7, :cond_0

    .line 976
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    move-object/from16 v0, p6

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 977
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    add-int/lit8 v6, v6, 0x8

    move-object/from16 v0, p6

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 978
    move-object/from16 v0, p3

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 982
    :cond_0
    invoke-virtual/range {v18 .. v18}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4MetaBox;->getHeader()Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v6

    invoke-virtual {v6}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 983
    invoke-virtual/range {v18 .. v18}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4MetaBox;->getData()Ljava/nio/ByteBuffer;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 984
    invoke-virtual/range {v17 .. v17}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4HdlrBox;->getHeader()Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v6

    invoke-virtual {v6}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 985
    invoke-virtual/range {v17 .. v17}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4HdlrBox;->getData()Ljava/nio/ByteBuffer;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 988
    invoke-virtual/range {p3 .. p4}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 991
    add-int v6, p13, p14

    add-int v6, v6, p12

    int-to-long v6, v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v7}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 994
    if-eqz p11, :cond_1

    move-object/from16 v7, p0

    move-wide v8, v14

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p11

    .line 996
    invoke-direct/range {v7 .. v12}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4TagWriter;->writeFromEndOfIlstToNeroTagsAndMakeNeroFree(JLjava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;)V

    .line 1006
    :goto_0
    if-nez v20, :cond_2

    .line 1008
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p15

    move/from16 v4, p16

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4TagWriter;->adjustFreeAtom(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;II)V

    .line 1014
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4TagWriter;->writeDataInChunks(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;)V

    .line 1015
    return-void

    .line 1001
    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v6

    sub-long v10, v14, v6

    .line 1002
    invoke-virtual/range {p3 .. p3}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v8

    move-object/from16 v6, p3

    move-object/from16 v7, p2

    invoke-virtual/range {v6 .. v11}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 1003
    invoke-virtual/range {p3 .. p3}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v6

    add-long/2addr v6, v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v6, v7}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    goto :goto_0

    .line 1012
    :cond_2
    sget-object v6, Lorg/FiioGetMusicInfo/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    const-string v7, "Writing:Option 9;Top Level Free comes after Mdat or before Metadata or not large enough"

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private writeNoExistingUdtaAtom(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;IZLorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;IIIII)V
    .locals 19

    .prologue
    .line 857
    sget-object v6, Lorg/FiioGetMusicInfo/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    const-string v7, "Writing:Option 5.1;No udta atom"

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 858
    invoke-virtual/range {p4 .. p4}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getFileEndPos()J

    move-result-wide v14

    .line 859
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4HdlrBox;->createiTunesStyleHdlrBox()Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4HdlrBox;

    move-result-object v13

    .line 860
    invoke-virtual {v13}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4HdlrBox;->getHeader()Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v6

    invoke-virtual {v6}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v6

    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v6}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4MetaBox;->createiTunesStyleMetaBox(I)Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4MetaBox;

    move-result-object v16

    .line 861
    new-instance v17, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    sget-object v6, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->UDTA:Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v6}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-direct {v0, v6}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;-><init>(Ljava/lang/String;)V

    .line 862
    invoke-virtual/range {v16 .. v16}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4MetaBox;->getHeader()Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v6

    invoke-virtual {v6}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v6

    add-int/lit8 v6, v6, 0x8

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->setLength(I)V

    .line 864
    invoke-virtual/range {v17 .. v17}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v9

    move-object/from16 v6, p0

    move/from16 v7, p8

    move/from16 v8, p9

    move-object/from16 v10, p7

    move-object/from16 v11, p4

    move-object/from16 v12, p6

    invoke-direct/range {v6 .. v12}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4TagWriter;->adjustStcoIfNoSuitableTopLevelAtom(IZILorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;)Z

    move-result v18

    .line 867
    invoke-virtual/range {p4 .. p4}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v6

    invoke-virtual/range {v17 .. v17}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v7

    add-int/2addr v6, v7

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->setLength(I)V

    .line 868
    invoke-virtual/range {p4 .. p4}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 869
    invoke-virtual/range {p5 .. p5}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 870
    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 873
    invoke-virtual/range {v17 .. v17}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 874
    invoke-virtual/range {v16 .. v16}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4MetaBox;->getHeader()Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v6

    invoke-virtual {v6}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 875
    invoke-virtual/range {v16 .. v16}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4MetaBox;->getData()Ljava/nio/ByteBuffer;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 876
    invoke-virtual {v13}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4HdlrBox;->getHeader()Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v6

    invoke-virtual {v6}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 877
    invoke-virtual {v13}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4HdlrBox;->getData()Ljava/nio/ByteBuffer;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 880
    invoke-virtual/range {p2 .. p3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 883
    add-int v6, p12, p13

    add-int v6, v6, p11

    int-to-long v6, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 886
    if-eqz p10, :cond_0

    move-object/from16 v7, p0

    move-wide v8, v14

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p10

    .line 888
    invoke-direct/range {v7 .. v12}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4TagWriter;->writeFromEndOfIlstToNeroTagsAndMakeNeroFree(JLjava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;)V

    .line 898
    :goto_0
    if-nez v18, :cond_1

    .line 900
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p14

    move/from16 v4, p15

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4TagWriter;->adjustFreeAtom(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;II)V

    .line 906
    :goto_1
    invoke-direct/range {p0 .. p2}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4TagWriter;->writeDataInChunks(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;)V

    .line 907
    return-void

    .line 893
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v6

    sub-long v10, v14, v6

    .line 894
    invoke-virtual/range {p2 .. p2}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v8

    move-object/from16 v6, p2

    move-object/from16 v7, p1

    invoke-virtual/range {v6 .. v11}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 895
    invoke-virtual/range {p2 .. p2}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v6

    add-long/2addr v6, v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v7}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    goto :goto_0

    .line 904
    :cond_1
    sget-object v6, Lorg/FiioGetMusicInfo/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    const-string v7, "Writing:Option 9;Top Level Free comes after Mdat or before Metadata or not large enough"

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private writeOldMetadataLargerThanNewMetadata(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;I)V
    .locals 10

    .prologue
    .line 204
    sget-object v2, Lorg/FiioGetMusicInfo/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    const-string v3, "Writing:Option 1:Smaller Size"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 206
    invoke-virtual/range {p6 .. p6}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v2

    invoke-virtual {p3}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v4

    const-wide/16 v6, 0x8

    add-long/2addr v4, v6

    sub-long/2addr v2, v4

    long-to-int v8, v2

    .line 210
    invoke-virtual/range {p10 .. p10}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    .line 212
    if-lez p12, :cond_0

    .line 214
    sget-object v3, Lorg/FiioGetMusicInfo/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Writing:Option 2:Smaller Size have free atom:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p6 .. p6}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 215
    move-object/from16 v0, p6

    move-object/from16 v1, p10

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4TagWriter;->writeDataUptoIncludingIlst(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 218
    invoke-virtual/range {p6 .. p6}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v3

    sub-int v2, v3, v2

    add-int v2, v2, p12

    .line 219
    new-instance v3, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4FreeBox;

    add-int/lit8 v2, v2, -0x8

    invoke-direct {v3, v2}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4FreeBox;-><init>(I)V

    .line 220
    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4FreeBox;->getHeader()Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v2

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 221
    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4FreeBox;->getData()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 224
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v2

    move/from16 v0, p12

    int-to-long v4, v0

    add-long/2addr v2, v4

    invoke-virtual {p1, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 225
    move-object/from16 v0, p8

    invoke-direct {p0, p1, p2, v0}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4TagWriter;->writeDataAfterIlst(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;)V

    .line 278
    :goto_0
    return-void

    .line 230
    :cond_0
    invoke-virtual/range {p6 .. p6}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v3

    sub-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x8

    .line 234
    if-lez v3, :cond_1

    .line 236
    sget-object v2, Lorg/FiioGetMusicInfo/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    const-string v4, "Writing:Option 3:Smaller Size can create free atom"

    invoke-virtual {v2, v4}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 237
    move-object/from16 v0, p6

    move-object/from16 v1, p10

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4TagWriter;->writeDataUptoIncludingIlst(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 240
    new-instance v2, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4FreeBox;

    invoke-direct {v2, v3}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4FreeBox;-><init>(I)V

    .line 241
    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4FreeBox;->getHeader()Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v3

    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 242
    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4FreeBox;->getData()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 243
    move-object/from16 v0, p8

    invoke-direct {p0, p1, p2, v0}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4TagWriter;->writeDataAfterIlst(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;)V

    goto :goto_0

    .line 248
    :cond_1
    sget-object v3, Lorg/FiioGetMusicInfo/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    const-string v4, "Writing:Option 4:Smaller Size <=8 cannot create free atoms"

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 251
    invoke-virtual/range {p6 .. p6}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v3

    sub-int v9, v3, v2

    .line 254
    const-wide/16 v2, 0x0

    invoke-virtual {p1, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 255
    const-wide/16 v4, 0x0

    invoke-virtual {p3}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v6

    move-object v2, p2

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 256
    invoke-virtual {p3}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 260
    invoke-virtual/range {p7 .. p7}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v2

    invoke-virtual {p3}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 262
    neg-int v2, v9

    move-object/from16 v0, p11

    invoke-virtual {v0, v2}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;->adjustOffsets(I)V

    .line 266
    :cond_2
    neg-int v5, v9

    move-object v2, p0

    move-object v3, p3

    move-object/from16 v4, p9

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4TagWriter;->adjustSizeOfMoovHeader(Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;ILorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;)V

    .line 267
    invoke-virtual {p3}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 268
    invoke-virtual/range {p9 .. p9}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 269
    move-object/from16 v0, p9

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 270
    move-object/from16 v0, p9

    invoke-virtual {p2, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 273
    move-object/from16 v0, p10

    invoke-virtual {p2, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 274
    invoke-virtual/range {p6 .. p6}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getFileEndPos()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 275
    move-object/from16 v0, p8

    invoke-direct {p0, p1, p2, v0}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4TagWriter;->writeDataAfterIlst(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;)V

    goto/16 :goto_0
.end method

.method private writeUpToMoovHeader(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;)V
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    .line 588
    invoke-virtual {p1, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 589
    invoke-virtual {p3}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v4

    move-object v0, p2

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 590
    invoke-virtual {p3}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 591
    return-void
.end method


# virtual methods
.method public delete(Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .locals 2

    .prologue
    .line 812
    new-instance v0, Lorg/FiioGetMusicInfo/tag/mp4/Mp4Tag;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4Tag;-><init>()V

    .line 816
    :try_start_0
    invoke-virtual {p0, v0, p1, p2}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4TagWriter;->write(Lorg/FiioGetMusicInfo/tag/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    :try_end_0
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/CannotWriteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 817
    return-void

    .line 818
    :catch_0
    move-exception v0

    .line 820
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/exceptions/CannotWriteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public write(Lorg/FiioGetMusicInfo/tag/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .locals 57

    .prologue
    .line 322
    sget-object v4, Lorg/FiioGetMusicInfo/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    const-string v5, "Started writing tag data"

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 323
    invoke-virtual/range {p2 .. p2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    .line 324
    invoke-virtual/range {p3 .. p3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    .line 326
    const/16 v36, 0x0

    .line 333
    :try_start_0
    new-instance v10, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-direct {v10, v0, v4}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;-><init>(Ljava/io/RandomAccessFile;Z)V
    :try_end_0
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    invoke-virtual {v10}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;->getMdatNode()Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;

    move-result-object v4

    invoke-virtual {v10, v4}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;->getBoxHeader(Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;)Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v17

    .line 351
    if-nez v17, :cond_0

    .line 353
    new-instance v4, Lorg/FiioGetMusicInfo/audio/exceptions/CannotWriteException;

    sget-object v5, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->MP4_CHANGES_TO_FILE_FAILED_CANNOT_FIND_AUDIO:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    invoke-virtual {v5}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/FiioGetMusicInfo/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 344
    :catch_0
    move-exception v4

    .line 346
    new-instance v5, Lorg/FiioGetMusicInfo/audio/exceptions/CannotWriteException;

    invoke-virtual {v4}, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Lorg/FiioGetMusicInfo/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 357
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4TagWriter;->tc:Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagCreator;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagCreator;->convert(Lorg/FiioGetMusicInfo/tag/Tag;)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 358
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 359
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->limit()I

    move-result v11

    .line 362
    invoke-virtual {v10}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;->getMoovNode()Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;

    move-result-object v4

    invoke-virtual {v10, v4}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;->getBoxHeader(Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;)Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v13

    .line 363
    invoke-virtual {v10}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;->getStco()Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;

    move-result-object v21

    .line 364
    invoke-virtual {v10}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;->getIlstNode()Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;

    move-result-object v4

    invoke-virtual {v10, v4}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;->getBoxHeader(Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;)Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v7

    .line 365
    invoke-virtual {v10}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;->getUdtaNode()Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;

    move-result-object v4

    invoke-virtual {v10, v4}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;->getBoxHeader(Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;)Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v14

    .line 366
    invoke-virtual {v10}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;->getMetaNode()Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;

    move-result-object v4

    invoke-virtual {v10, v4}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;->getBoxHeader(Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;)Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v15

    .line 367
    invoke-virtual {v10}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;->getHdlrWithinMetaNode()Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;

    move-result-object v4

    invoke-virtual {v10, v4}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;->getBoxHeader(Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;)Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v12

    .line 368
    invoke-virtual {v10}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;->getTagsNode()Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;

    move-result-object v4

    invoke-virtual {v10, v4}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;->getBoxHeader(Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;)Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v9

    .line 369
    invoke-virtual {v10}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;->getTrakNodes()Ljava/util/List;

    move-result-object v4

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;

    invoke-virtual {v10, v4}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;->getBoxHeader(Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;)Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v4

    .line 370
    invoke-virtual {v10}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;->getMoovBuffer()Ljava/nio/ByteBuffer;

    move-result-object v19

    .line 375
    if-eqz v14, :cond_6

    .line 378
    if-eqz v15, :cond_5

    .line 381
    if-eqz v7, :cond_3

    .line 383
    invoke-virtual {v7}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v36

    .line 386
    invoke-virtual {v7}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v35, v0

    .line 387
    move/from16 v0, v35

    int-to-long v0, v0

    move-wide/from16 v22, v0

    invoke-virtual {v13}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v24

    const-wide/16 v26, 0x8

    add-long v24, v24, v26

    sub-long v22, v22, v24

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v44, v0

    .line 432
    :goto_0
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4TagWriter;->getMetaLevelFreeAtomSize(Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;)I

    move-result v22

    .line 436
    const/16 v37, 0x0

    .line 437
    const/16 v31, 0x0

    .line 438
    const/16 v32, 0x1

    .line 439
    invoke-virtual {v10}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;->getFreeNodes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_8

    .line 451
    :goto_1
    if-lez v31, :cond_a

    .line 453
    move/from16 v0, v37

    int-to-long v0, v0

    move-wide/from16 v24, v0

    invoke-virtual/range {v17 .. v17}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v26

    cmp-long v4, v24, v26

    if-lez v4, :cond_9

    .line 455
    const/16 v32, 0x0

    .line 467
    :cond_2
    :goto_2
    sget-object v4, Lorg/FiioGetMusicInfo/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    const-string v10, "Read header successfully ready for writing"

    invoke-virtual {v4, v10}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 470
    move/from16 v0, v36

    if-ne v0, v11, :cond_b

    move-object/from16 v4, p0

    .line 472
    invoke-direct/range {v4 .. v9}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4TagWriter;->writeMetadataSameSize(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;)V

    .line 575
    :goto_3
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V

    .line 576
    invoke-virtual/range {p2 .. p2}, Ljava/io/RandomAccessFile;->close()V

    .line 579
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, v17

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v6, v3}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4TagWriter;->checkFileWrittenCorrectly(Ljava/io/RandomAccessFile;Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/channels/FileChannel;Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;)V

    .line 580
    return-void

    .line 392
    :cond_3
    if-eqz v12, :cond_4

    .line 394
    invoke-virtual {v12}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getFileEndPos()J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v35, v0

    .line 395
    move/from16 v0, v35

    int-to-long v0, v0

    move-wide/from16 v22, v0

    invoke-virtual {v13}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v24

    const-wide/16 v26, 0x8

    add-long v24, v24, v26

    sub-long v22, v22, v24

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v44, v0

    .line 396
    goto :goto_0

    .line 401
    :cond_4
    invoke-virtual {v15}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v4, v0

    add-int/lit8 v4, v4, 0x8

    add-int/lit8 v35, v4, 0x4

    .line 402
    move/from16 v0, v35

    int-to-long v0, v0

    move-wide/from16 v22, v0

    invoke-virtual {v13}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v24

    const-wide/16 v26, 0x8

    add-long v24, v24, v26

    sub-long v22, v22, v24

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v44, v0

    .line 405
    goto/16 :goto_0

    .line 409
    :cond_5
    invoke-virtual {v13}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v4

    add-int/lit8 v44, v4, -0x8

    .line 410
    invoke-virtual {v13}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getFileEndPos()J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v35, v0

    .line 412
    goto/16 :goto_0

    .line 418
    :cond_6
    if-eqz v15, :cond_7

    .line 420
    invoke-virtual {v4}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getFileEndPos()J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v35, v0

    .line 421
    move/from16 v0, v35

    int-to-long v0, v0

    move-wide/from16 v22, v0

    invoke-virtual {v13}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v24

    const-wide/16 v26, 0x8

    add-long v24, v24, v26

    sub-long v22, v22, v24

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v44, v0

    .line 422
    goto/16 :goto_0

    .line 426
    :cond_7
    invoke-virtual {v13}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getFileEndPos()J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v35, v0

    .line 427
    invoke-virtual {v13}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v4

    add-int/lit8 v44, v4, -0x8

    goto/16 :goto_0

    .line 439
    :cond_8
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;

    .line 441
    invoke-virtual {v10}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->getParent()Lorg/FiioGetMusicInfo/utils/tree/TreeNode;

    move-result-object v4

    check-cast v4, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;

    .line 442
    invoke-virtual {v4}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->isRoot()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 444
    invoke-virtual {v10}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    .line 445
    invoke-virtual {v4}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v31

    .line 446
    invoke-virtual {v4}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v37, v0

    .line 447
    goto/16 :goto_1

    .line 457
    :cond_9
    move/from16 v0, v37

    int-to-long v0, v0

    move-wide/from16 v24, v0

    invoke-virtual {v13}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v26

    cmp-long v4, v24, v26

    if-gez v4, :cond_2

    .line 459
    const/16 v32, 0x0

    .line 461
    goto/16 :goto_2

    .line 464
    :cond_a
    invoke-virtual/range {v17 .. v17}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v37, v0

    goto/16 :goto_2

    .line 476
    :cond_b
    move/from16 v0, v36

    if-le v0, v11, :cond_c

    move-object/from16 v10, p0

    move-object v11, v5

    move-object v12, v6

    move-object/from16 v16, v7

    move-object/from16 v18, v9

    move-object/from16 v20, v8

    .line 478
    invoke-direct/range {v10 .. v22}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4TagWriter;->writeOldMetadataLargerThanNewMetadata(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;I)V

    goto/16 :goto_3

    .line 494
    :cond_c
    sub-int v30, v11, v36

    .line 495
    add-int/lit8 v4, v22, -0x8

    move/from16 v0, v30

    if-gt v0, v4, :cond_d

    move-object/from16 v23, p0

    move-object/from16 v24, v5

    move-object/from16 v25, v6

    move-object/from16 v26, v7

    move-object/from16 v27, v9

    move/from16 v28, v22

    move-object/from16 v29, v8

    .line 497
    invoke-direct/range {v23 .. v30}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4TagWriter;->writeNewMetadataLargerButCanUseFreeAtom(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;ILjava/nio/ByteBuffer;I)V

    goto/16 :goto_3

    .line 509
    :cond_d
    sub-int v38, v30, v22

    .line 512
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v13}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4TagWriter;->writeUpToMoovHeader(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;)V

    .line 513
    if-nez v14, :cond_e

    move-object/from16 v23, p0

    move-object/from16 v24, v5

    move-object/from16 v25, v6

    move-object/from16 v26, v8

    move-object/from16 v27, v13

    move-object/from16 v28, v19

    move-object/from16 v29, v17

    move-object/from16 v30, v21

    move-object/from16 v33, v9

    move/from16 v34, v22

    .line 515
    invoke-direct/range {v23 .. v38}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4TagWriter;->writeNoExistingUdtaAtom(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;IZLorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;IIIII)V

    goto/16 :goto_3

    .line 531
    :cond_e
    if-nez v15, :cond_f

    move-object/from16 v39, p0

    move-object/from16 v40, v14

    move-object/from16 v41, v5

    move-object/from16 v42, v6

    move-object/from16 v43, v8

    move-object/from16 v44, v13

    move-object/from16 v45, v19

    move-object/from16 v46, v17

    move-object/from16 v47, v21

    move/from16 v48, v31

    move/from16 v49, v32

    move-object/from16 v50, v9

    move/from16 v51, v22

    move/from16 v52, v35

    move/from16 v53, v36

    move/from16 v54, v37

    move/from16 v55, v38

    .line 533
    invoke-direct/range {v39 .. v55}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4TagWriter;->writeNoExistingMetaAtom(Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;IZLorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;IIIII)V

    goto/16 :goto_3

    :cond_f
    move-object/from16 v39, p0

    move-object/from16 v40, v14

    move-object/from16 v41, v15

    move-object/from16 v42, v5

    move-object/from16 v43, v6

    move-object/from16 v45, v13

    move-object/from16 v46, v19

    move-object/from16 v47, v17

    move-object/from16 v48, v21

    move/from16 v49, v38

    move/from16 v50, v31

    move/from16 v51, v32

    move-object/from16 v52, v8

    move-object/from16 v53, v9

    move/from16 v54, v22

    move/from16 v55, v35

    move/from16 v56, v36

    .line 553
    invoke-direct/range {v39 .. v56}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4TagWriter;->writeHaveExistingMetadata(Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;ILorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;IIZLjava/nio/ByteBuffer;Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;III)V

    goto/16 :goto_3
.end method
