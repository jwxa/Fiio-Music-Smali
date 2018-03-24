.class public Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;
.super Ljava/lang/Object;
.source "Mp4AtomTree.java"


# static fields
.field public static logger:Ljava/util/logging/Logger;


# instance fields
.field private dataTree:Lorg/FiioGetMusicInfo/utils/tree/DefaultTreeModel;

.field private freeNodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;",
            ">;"
        }
    .end annotation
.end field

.field private hdlrWithinMdiaNode:Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;

.field private hdlrWithinMetaNode:Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;

.field private ilstNode:Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;

.field private mdatNode:Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;

.field private mdatNodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;",
            ">;"
        }
    .end annotation
.end field

.field private metaNode:Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;

.field private moovBuffer:Ljava/nio/ByteBuffer;

.field private moovHeader:Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

.field private moovNode:Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;

.field private rootNode:Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;

.field private stco:Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;

.field private stcoNode:Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;

.field private tagsNode:Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;

.field private trakNodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;",
            ">;"
        }
    .end annotation
.end field

.field private udtaNode:Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-string v0, "org.FiioGetMusicInfo.audio.mp4"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/io/RandomAccessFile;)V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;->freeNodes:Ljava/util/List;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;->mdatNodes:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;->trakNodes:Ljava/util/List;

    .line 69
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;->buildTree(Ljava/io/RandomAccessFile;Z)Lorg/FiioGetMusicInfo/utils/tree/DefaultTreeModel;

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/io/RandomAccessFile;Z)V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;->freeNodes:Ljava/util/List;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;->mdatNodes:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;->trakNodes:Ljava/util/List;

    .line 83
    invoke-virtual {p0, p1, p2}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;->buildTree(Ljava/io/RandomAccessFile;Z)Lorg/FiioGetMusicInfo/utils/tree/DefaultTreeModel;

    .line 84
    return-void
.end method


# virtual methods
.method public buildChildrenOfNode(Ljava/nio/ByteBuffer;Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;)V
    .locals 10

    .prologue
    .line 252
    invoke-virtual {p2}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    .line 255
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 258
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->META:Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 260
    new-instance v1, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4MetaBox;

    invoke-direct {v1, v0, p1}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4MetaBox;-><init>(Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 261
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4MetaBox;->processData()V

    .line 265
    :try_start_0
    new-instance v1, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    invoke-direct {v1, p1}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;-><init>(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/NullBoxIdException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, -0x8

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 281
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 282
    :goto_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v4

    add-int/2addr v4, v3

    add-int/lit8 v4, v4, -0x8

    if-lt v1, v4, :cond_1

    .line 364
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 365
    return-void

    .line 271
    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 276
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, -0x8

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 274
    :catchall_0
    move-exception v0

    .line 276
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, -0x8

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 277
    throw v0

    .line 284
    :cond_1
    new-instance v4, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    invoke-direct {v4, p1}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;-><init>(Ljava/nio/ByteBuffer;)V

    .line 285
    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;->moovHeader:Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v6

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    int-to-long v8, v1

    add-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->setFilePos(J)V

    .line 288
    sget-object v1, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Atom "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " @ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " of size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ,ends @ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v6

    invoke-virtual {v4}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 290
    new-instance v5, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;

    invoke-direct {v5, v4}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;-><init>(Ljava/lang/Object;)V

    .line 291
    invoke-virtual {p2, v5}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->add(Lorg/FiioGetMusicInfo/utils/tree/MutableTreeNode;)V

    .line 293
    invoke-virtual {v4}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->UDTA:Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v6}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 295
    iput-object v5, p0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;->udtaNode:Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;

    .line 349
    :cond_2
    :goto_2
    invoke-virtual {v4}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->TRAK:Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v6}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 350
    invoke-virtual {v4}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->MDIA:Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v6}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 351
    invoke-virtual {v4}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->MINF:Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v6}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 352
    invoke-virtual {v4}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->STBL:Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v6}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 353
    invoke-virtual {v4}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->UDTA:Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v6}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 354
    invoke-virtual {v4}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->META:Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v6}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 355
    invoke-virtual {v4}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->ILST:Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v6}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 357
    :cond_3
    invoke-virtual {p0, p1, v5}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;->buildChildrenOfNode(Ljava/nio/ByteBuffer;Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;)V

    .line 360
    :cond_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v4}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v4

    add-int/2addr v1, v4

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_1

    .line 298
    :cond_5
    invoke-virtual {v4}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->META:Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v6}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->UDTA:Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v6}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 300
    iput-object v5, p0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;->metaNode:Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;

    goto/16 :goto_2

    .line 302
    :cond_6
    invoke-virtual {v4}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->HDLR:Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v6}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->META:Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v6}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 304
    iput-object v5, p0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;->hdlrWithinMetaNode:Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;

    goto/16 :goto_2

    .line 306
    :cond_7
    invoke-virtual {v4}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->HDLR:Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v6}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 308
    iput-object v5, p0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;->hdlrWithinMdiaNode:Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;

    goto/16 :goto_2

    .line 310
    :cond_8
    invoke-virtual {v4}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->TAGS:Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v6}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 312
    iput-object v5, p0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;->tagsNode:Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;

    goto/16 :goto_2

    .line 314
    :cond_9
    invoke-virtual {v4}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->STCO:Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v6}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 316
    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;->stco:Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;

    if-nez v1, :cond_2

    .line 318
    new-instance v1, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;

    invoke-direct {v1, v4, p1}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;-><init>(Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    iput-object v1, p0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;->stco:Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;

    .line 319
    iput-object v5, p0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;->stcoNode:Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;

    goto/16 :goto_2

    .line 322
    :cond_a
    invoke-virtual {v4}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->ILST:Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v6}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 324
    invoke-virtual {p2}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->getParent()Lorg/FiioGetMusicInfo/utils/tree/TreeNode;

    move-result-object v1

    check-cast v1, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;

    .line 325
    if-eqz v1, :cond_2

    .line 327
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    .line 328
    if-eqz v1, :cond_2

    .line 330
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->META:Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v7}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->UDTA:Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v6}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 332
    iput-object v5, p0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;->ilstNode:Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;

    goto/16 :goto_2

    .line 337
    :cond_b
    invoke-virtual {v4}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->FREE:Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v6}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 340
    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;->freeNodes:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 342
    :cond_c
    invoke-virtual {v4}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->TRAK:Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v6}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 345
    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;->trakNodes:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2
.end method

.method public buildTree(Ljava/io/RandomAccessFile;Z)Lorg/FiioGetMusicInfo/utils/tree/DefaultTreeModel;
    .locals 12

    .prologue
    const-wide/16 v10, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 97
    const/4 v1, 0x0

    .line 100
    :try_start_0
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 103
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 106
    new-instance v0, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;->rootNode:Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;

    .line 107
    new-instance v0, Lorg/FiioGetMusicInfo/utils/tree/DefaultTreeModel;

    iget-object v4, p0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;->rootNode:Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;

    invoke-direct {v0, v4}, Lorg/FiioGetMusicInfo/utils/tree/DefaultTreeModel;-><init>(Lorg/FiioGetMusicInfo/utils/tree/TreeNode;)V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;->dataTree:Lorg/FiioGetMusicInfo/utils/tree/DefaultTreeModel;

    .line 110
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 111
    :goto_0
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v6

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v8

    cmp-long v0, v6, v8

    if-ltz v0, :cond_0

    .line 190
    :goto_1
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;->dataTree:Lorg/FiioGetMusicInfo/utils/tree/DefaultTreeModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    iget-object v2, p0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;->mdatNode:Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;

    if-nez v2, :cond_b

    .line 198
    new-instance v0, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->MP4_CANNOT_FIND_AUDIO:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_0
    :try_start_1
    new-instance v6, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    invoke-direct {v6}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;-><init>()V

    .line 114
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 115
    invoke-virtual {v1, v5}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 116
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    :try_start_2
    invoke-virtual {v6, v5}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->update(Ljava/nio/ByteBuffer;)V
    :try_end_2
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/NullBoxIdException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 140
    :try_start_3
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v8

    sub-long/2addr v8, v10

    invoke-virtual {v6, v8, v9}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->setFilePos(J)V

    .line 141
    new-instance v7, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;

    invoke-direct {v7, v6}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;-><init>(Ljava/lang/Object;)V

    .line 144
    invoke-virtual {v6}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->MOOV:Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v4}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 148
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;->moovNode:Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;

    if-eqz v0, :cond_4

    move v4, v2

    :goto_2
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;->mdatNode:Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;

    if-eqz v0, :cond_5

    move v0, v2

    :goto_3
    and-int/2addr v0, v4

    if-eqz v0, :cond_6

    .line 150
    sget-object v0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;->logger:Ljava/util/logging/Logger;

    sget-object v2, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->ADDITIONAL_MOOV_ATOM_AT_END_OF_MP4:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v6

    sub-long/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 193
    :catchall_0
    move-exception v0

    .line 196
    iget-object v2, p0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;->mdatNode:Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;

    if-nez v2, :cond_d

    .line 198
    new-instance v0, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->MP4_CANNOT_FIND_AUDIO:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :catch_0
    move-exception v4

    .line 125
    :try_start_4
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;->moovNode:Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;

    if-eqz v0, :cond_1

    move v0, v2

    :goto_4
    iget-object v5, p0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;->mdatNode:Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;

    if-eqz v5, :cond_2

    :goto_5
    and-int/2addr v0, v2

    if-eqz v0, :cond_3

    .line 127
    new-instance v0, Lorg/FiioGetMusicInfo/audio/mp4/atom/NullPadding;

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v2

    sub-long/2addr v2, v10

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/FiioGetMusicInfo/audio/mp4/atom/NullPadding;-><init>(JJ)V

    .line 128
    new-instance v2, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;

    invoke-direct {v2, v0}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;-><init>(Ljava/lang/Object;)V

    .line 129
    iget-object v3, p0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;->rootNode:Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;

    invoke-virtual {v3, v2}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->add(Lorg/FiioGetMusicInfo/utils/tree/MutableTreeNode;)V

    .line 130
    sget-object v2, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;->logger:Ljava/util/logging/Logger;

    sget-object v3, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->NULL_PADDING_FOUND_AT_END_OF_MP4:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp4/atom/NullPadding;->getFilePos()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {v3, v4}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1
    move v0, v3

    .line 125
    goto :goto_4

    :cond_2
    move v2, v3

    goto :goto_5

    .line 136
    :cond_3
    throw v4

    :cond_4
    move v4, v3

    .line 148
    goto :goto_2

    :cond_5
    move v0, v3

    goto :goto_3

    .line 153
    :cond_6
    iput-object v7, p0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;->moovNode:Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;

    .line 154
    iput-object v6, p0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;->moovHeader:Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    .line 156
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v8

    .line 157
    invoke-virtual {v6}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;->moovBuffer:Ljava/nio/ByteBuffer;

    .line 158
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;->moovBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 161
    invoke-virtual {v6}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v4

    if-ge v0, v4, :cond_7

    .line 163
    sget-object v2, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->ATOM_LENGTH_LARGER_THAN_DATA:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v6}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v6}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v2, v3}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 164
    new-instance v2, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;

    invoke-direct {v2, v0}, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 166
    :cond_7
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;->moovBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 167
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;->moovBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0, v7}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;->buildChildrenOfNode(Ljava/nio/ByteBuffer;Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;)V

    .line 168
    invoke-virtual {v1, v8, v9}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 187
    :cond_8
    :goto_6
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;->rootNode:Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;

    invoke-virtual {v0, v7}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->add(Lorg/FiioGetMusicInfo/utils/tree/MutableTreeNode;)V

    .line 188
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v8

    invoke-virtual {v6}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v0

    int-to-long v6, v0

    add-long/2addr v6, v8

    invoke-virtual {v1, v6, v7}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    goto/16 :goto_0

    .line 170
    :cond_9
    invoke-virtual {v6}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->FREE:Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v4}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 173
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;->freeNodes:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 175
    :cond_a
    invoke-virtual {v6}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->MDAT:Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v4}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 184
    iput-object v7, p0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;->mdatNode:Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;

    .line 185
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;->mdatNodes:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_6

    .line 201
    :cond_b
    if-eqz p2, :cond_c

    .line 203
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 190
    :cond_c
    return-object v0

    .line 201
    :cond_d
    if-eqz p2, :cond_e

    .line 203
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 205
    :cond_e
    throw v0
.end method

.method public getBoxHeader(Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;)Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;
    .locals 1

    .prologue
    .line 412
    if-nez p1, :cond_0

    .line 414
    const/4 v0, 0x0

    .line 416
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    goto :goto_0
.end method

.method public getDataTree()Lorg/FiioGetMusicInfo/utils/tree/DefaultTreeModel;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;->dataTree:Lorg/FiioGetMusicInfo/utils/tree/DefaultTreeModel;

    return-object v0
.end method

.method public getFreeNodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 479
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;->freeNodes:Ljava/util/List;

    return-object v0
.end method

.method public getHdlrWithinMdiaNode()Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;->hdlrWithinMdiaNode:Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;

    return-object v0
.end method

.method public getHdlrWithinMetaNode()Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;->hdlrWithinMetaNode:Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;

    return-object v0
.end method

.method public getIlstNode()Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;->ilstNode:Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;

    return-object v0
.end method

.method public getMdatNode()Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;->mdatNode:Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;

    return-object v0
.end method

.method public getMetaNode()Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;->metaNode:Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;

    return-object v0
.end method

.method public getMoovBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;->moovBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getMoovHeader()Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;->moovHeader:Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    return-object v0
.end method

.method public getMoovNode()Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;->moovNode:Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;

    return-object v0
.end method

.method public getStco()Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;->stco:Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;

    return-object v0
.end method

.method public getStcoNode()Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;->stcoNode:Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;

    return-object v0
.end method

.method public getTagsNode()Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;->tagsNode:Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;

    return-object v0
.end method

.method public getTrakNodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 488
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;->trakNodes:Ljava/util/List;

    return-object v0
.end method

.method public getUdtaNode()Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;->udtaNode:Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;

    return-object v0
.end method

.method public printAtomTree()V
    .locals 10

    .prologue
    .line 214
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomTree;->rootNode:Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->preorderEnumeration()Ljava/util/Enumeration;

    move-result-object v4

    .line 216
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_1

    .line 238
    return-void

    .line 218
    :cond_1
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;

    .line 219
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    .line 220
    if-eqz v1, :cond_0

    .line 222
    const-string v3, ""

    .line 223
    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/utils/tree/DefaultMutableTreeNode;->getLevel()I

    move-result v5

    if-lt v2, v5, :cond_2

    .line 228
    instance-of v0, v1, Lorg/FiioGetMusicInfo/audio/mp4/atom/NullPadding;

    if-eqz v0, :cond_3

    .line 230
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "Null pad  @ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,ends @ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v6

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v1

    int-to-long v8, v1

    add-long/2addr v6, v8

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 225
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\t"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 223
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 234
    :cond_3
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "Atom "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " @ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,ends @ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v6

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v1

    int-to-long v8, v1

    add-long/2addr v6, v8

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
