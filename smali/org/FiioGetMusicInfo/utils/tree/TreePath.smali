.class public Lorg/FiioGetMusicInfo/utils/tree/TreePath;
.super Ljava/lang/Object;
.source "TreePath.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private transient lastPathComponent:Ljava/lang/Object;

.field private parentPath:Lorg/FiioGetMusicInfo/utils/tree/TreePath;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    if-nez p1, :cond_0

    .line 78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "path in TreePath must be non null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    iput-object p1, p0, Lorg/FiioGetMusicInfo/utils/tree/TreePath;->lastPathComponent:Ljava/lang/Object;

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/TreePath;->parentPath:Lorg/FiioGetMusicInfo/utils/tree/TreePath;

    .line 81
    return-void
.end method

.method protected constructor <init>(Lorg/FiioGetMusicInfo/utils/tree/TreePath;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    if-nez p2, :cond_0

    .line 89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "path in TreePath must be non null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_0
    iput-object p1, p0, Lorg/FiioGetMusicInfo/utils/tree/TreePath;->parentPath:Lorg/FiioGetMusicInfo/utils/tree/TreePath;

    .line 91
    iput-object p2, p0, Lorg/FiioGetMusicInfo/utils/tree/TreePath;->lastPathComponent:Ljava/lang/Object;

    .line 92
    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 63
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "path in TreePath must be non null and not empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_1
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p1, v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/TreePath;->lastPathComponent:Ljava/lang/Object;

    .line 65
    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 66
    new-instance v0, Lorg/FiioGetMusicInfo/utils/tree/TreePath;

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {v0, p1, v1}, Lorg/FiioGetMusicInfo/utils/tree/TreePath;-><init>([Ljava/lang/Object;I)V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/TreePath;->parentPath:Lorg/FiioGetMusicInfo/utils/tree/TreePath;

    .line 67
    :cond_2
    return-void
.end method

.method protected constructor <init>([Ljava/lang/Object;I)V
    .locals 2

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    add-int/lit8 v0, p2, -0x1

    aget-object v0, p1, v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/TreePath;->lastPathComponent:Ljava/lang/Object;

    .line 100
    const/4 v0, 0x1

    if-le p2, v0, :cond_0

    .line 101
    new-instance v0, Lorg/FiioGetMusicInfo/utils/tree/TreePath;

    add-int/lit8 v1, p2, -0x1

    invoke-direct {v0, p1, v1}, Lorg/FiioGetMusicInfo/utils/tree/TreePath;-><init>([Ljava/lang/Object;I)V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/TreePath;->parentPath:Lorg/FiioGetMusicInfo/utils/tree/TreePath;

    .line 102
    :cond_0
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3

    .prologue
    .line 311
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 313
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    .line 314
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    .line 317
    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    .line 318
    const-string v2, "lastPathComponent"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 319
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/TreePath;->lastPathComponent:Ljava/lang/Object;

    .line 320
    :cond_0
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2

    .prologue
    .line 296
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 298
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 299
    iget-object v1, p0, Lorg/FiioGetMusicInfo/utils/tree/TreePath;->lastPathComponent:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 302
    iget-object v1, p0, Lorg/FiioGetMusicInfo/utils/tree/TreePath;->lastPathComponent:Ljava/lang/Object;

    instance-of v1, v1, Ljava/io/Serializable;

    if-eqz v1, :cond_0

    .line 303
    const-string v1, "lastPathComponent"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 304
    iget-object v1, p0, Lorg/FiioGetMusicInfo/utils/tree/TreePath;->lastPathComponent:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 306
    :cond_0
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 307
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 190
    if-ne p1, p0, :cond_0

    .line 206
    :goto_0
    return v0

    .line 192
    :cond_0
    instance-of v2, p1, Lorg/FiioGetMusicInfo/utils/tree/TreePath;

    if-eqz v2, :cond_4

    .line 193
    check-cast p1, Lorg/FiioGetMusicInfo/utils/tree/TreePath;

    .line 195
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/utils/tree/TreePath;->getPathCount()I

    move-result v2

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/utils/tree/TreePath;->getPathCount()I

    move-result v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 196
    goto :goto_0

    .line 198
    :cond_1
    iget-object v2, p0, Lorg/FiioGetMusicInfo/utils/tree/TreePath;->lastPathComponent:Ljava/lang/Object;

    .line 199
    iget-object v3, p1, Lorg/FiioGetMusicInfo/utils/tree/TreePath;->lastPathComponent:Ljava/lang/Object;

    .line 198
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 199
    if-nez v2, :cond_2

    move v0, v1

    .line 200
    goto :goto_0

    .line 202
    :cond_2
    iget-object p1, p1, Lorg/FiioGetMusicInfo/utils/tree/TreePath;->parentPath:Lorg/FiioGetMusicInfo/utils/tree/TreePath;

    .line 197
    iget-object p0, p0, Lorg/FiioGetMusicInfo/utils/tree/TreePath;->parentPath:Lorg/FiioGetMusicInfo/utils/tree/TreePath;

    :cond_3
    if-nez p0, :cond_1

    goto :goto_0

    :cond_4
    move v0, v1

    .line 206
    goto :goto_0
.end method

.method public getLastPathComponent()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/TreePath;->lastPathComponent:Ljava/lang/Object;

    return-object v0
.end method

.method public getParentPath()Lorg/FiioGetMusicInfo/utils/tree/TreePath;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/TreePath;->parentPath:Lorg/FiioGetMusicInfo/utils/tree/TreePath;

    return-object v0
.end method

.method public getPath()[Ljava/lang/Object;
    .locals 4

    .prologue
    .line 124
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/utils/tree/TreePath;->getPathCount()I

    move-result v1

    .line 125
    add-int/lit8 v0, v1, -0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 127
    :goto_0
    if-nez p0, :cond_0

    .line 130
    return-object v2

    .line 128
    :cond_0
    add-int/lit8 v1, v0, -0x1

    iget-object v3, p0, Lorg/FiioGetMusicInfo/utils/tree/TreePath;->lastPathComponent:Ljava/lang/Object;

    aput-object v3, v2, v0

    .line 127
    iget-object p0, p0, Lorg/FiioGetMusicInfo/utils/tree/TreePath;->parentPath:Lorg/FiioGetMusicInfo/utils/tree/TreePath;

    move v0, v1

    goto :goto_0
.end method

.method public getPathComponent(I)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 168
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/utils/tree/TreePath;->getPathCount()I

    move-result v0

    .line 170
    if-ltz p1, :cond_0

    if-lt p1, v0, :cond_1

    .line 171
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is out of the specified range"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_1
    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ne v0, p1, :cond_2

    .line 178
    iget-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/TreePath;->lastPathComponent:Ljava/lang/Object;

    return-object v0

    .line 176
    :cond_2
    iget-object p0, p0, Lorg/FiioGetMusicInfo/utils/tree/TreePath;->parentPath:Lorg/FiioGetMusicInfo/utils/tree/TreePath;

    .line 175
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public getPathCount()I
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x0

    .line 151
    :goto_0
    if-nez p0, :cond_0

    .line 154
    return v0

    .line 152
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 151
    iget-object p0, p0, Lorg/FiioGetMusicInfo/utils/tree/TreePath;->parentPath:Lorg/FiioGetMusicInfo/utils/tree/TreePath;

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/TreePath;->lastPathComponent:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isDescendant(Lorg/FiioGetMusicInfo/utils/tree/TreePath;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 236
    if-ne p1, p0, :cond_1

    .line 237
    const/4 v0, 0x1

    .line 250
    :cond_0
    :goto_0
    return v0

    .line 239
    :cond_1
    if-eqz p1, :cond_0

    .line 240
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/utils/tree/TreePath;->getPathCount()I

    move-result v2

    .line 241
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/utils/tree/TreePath;->getPathCount()I

    move-result v1

    .line 243
    if-lt v1, v2, :cond_0

    move v0, v1

    .line 246
    :goto_1
    add-int/lit8 v1, v0, -0x1

    if-gt v0, v2, :cond_2

    .line 248
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/utils/tree/TreePath;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 247
    :cond_2
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/utils/tree/TreePath;->getParentPath()Lorg/FiioGetMusicInfo/utils/tree/TreePath;

    move-result-object p1

    move v0, v1

    goto :goto_1
.end method

.method public pathByAddingChild(Ljava/lang/Object;)Lorg/FiioGetMusicInfo/utils/tree/TreePath;
    .locals 2

    .prologue
    .line 261
    if-nez p1, :cond_0

    .line 262
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null child not allowed"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :cond_0
    new-instance v0, Lorg/FiioGetMusicInfo/utils/tree/TreePath;

    invoke-direct {v0, p0, p1}, Lorg/FiioGetMusicInfo/utils/tree/TreePath;-><init>(Lorg/FiioGetMusicInfo/utils/tree/TreePath;Ljava/lang/Object;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 282
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v0, "["

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 284
    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/utils/tree/TreePath;->getPathCount()I

    move-result v2

    :goto_0
    if-lt v0, v2, :cond_0

    .line 290
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 291
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 286
    :cond_0
    if-lez v0, :cond_1

    .line 287
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 288
    :cond_1
    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/utils/tree/TreePath;->getPathComponent(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 285
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
