.class public abstract Lorg/FiioGetMusicInfo/tag/id3/AbstractTagItem;
.super Ljava/lang/Object;
.source "AbstractTagItem.java"


# static fields
.field public static logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-string v0, "org.FiioGetMusicInfo.tag.id3"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/id3/AbstractTagItem;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 101
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    .line 102
    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagItem;

    goto :goto_0
.end method

.method public abstract getIdentifier()Ljava/lang/String;
.end method

.method public abstract getSize()I
.end method

.method public isSubsetOf(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 89
    instance-of v0, p1, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagItem;

    return v0
.end method

.method public abstract read(Ljava/nio/ByteBuffer;)V
.end method
