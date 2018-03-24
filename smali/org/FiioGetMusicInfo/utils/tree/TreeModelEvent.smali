.class public Lorg/FiioGetMusicInfo/utils/tree/TreeModelEvent;
.super Ljava/util/EventObject;
.source "TreeModelEvent.java"


# instance fields
.field protected childIndices:[I

.field protected children:[Ljava/lang/Object;

.field protected path:Lorg/FiioGetMusicInfo/utils/tree/TreePath;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lorg/FiioGetMusicInfo/utils/tree/TreePath;)V
    .locals 1

    .prologue
    .line 191
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 192
    iput-object p2, p0, Lorg/FiioGetMusicInfo/utils/tree/TreeModelEvent;->path:Lorg/FiioGetMusicInfo/utils/tree/TreePath;

    .line 193
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/TreeModelEvent;->childIndices:[I

    .line 194
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/FiioGetMusicInfo/utils/tree/TreePath;[I[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 140
    iput-object p2, p0, Lorg/FiioGetMusicInfo/utils/tree/TreeModelEvent;->path:Lorg/FiioGetMusicInfo/utils/tree/TreePath;

    .line 141
    iput-object p3, p0, Lorg/FiioGetMusicInfo/utils/tree/TreeModelEvent;->childIndices:[I

    .line 142
    iput-object p4, p0, Lorg/FiioGetMusicInfo/utils/tree/TreeModelEvent;->children:[Ljava/lang/Object;

    .line 143
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 169
    new-instance v0, Lorg/FiioGetMusicInfo/utils/tree/TreePath;

    invoke-direct {v0, p2}, Lorg/FiioGetMusicInfo/utils/tree/TreePath;-><init>([Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lorg/FiioGetMusicInfo/utils/tree/TreeModelEvent;-><init>(Ljava/lang/Object;Lorg/FiioGetMusicInfo/utils/tree/TreePath;)V

    .line 170
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;[Ljava/lang/Object;[I[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 114
    new-instance v0, Lorg/FiioGetMusicInfo/utils/tree/TreePath;

    invoke-direct {v0, p2}, Lorg/FiioGetMusicInfo/utils/tree/TreePath;-><init>([Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0, p3, p4}, Lorg/FiioGetMusicInfo/utils/tree/TreeModelEvent;-><init>(Ljava/lang/Object;Lorg/FiioGetMusicInfo/utils/tree/TreePath;[I[Ljava/lang/Object;)V

    .line 115
    return-void
.end method


# virtual methods
.method public getChildIndices()[I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 260
    iget-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/TreeModelEvent;->childIndices:[I

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/TreeModelEvent;->childIndices:[I

    array-length v1, v0

    .line 262
    new-array v0, v1, [I

    .line 264
    iget-object v2, p0, Lorg/FiioGetMusicInfo/utils/tree/TreeModelEvent;->childIndices:[I

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 267
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChildren()[Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 239
    iget-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/TreeModelEvent;->children:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/TreeModelEvent;->children:[Ljava/lang/Object;

    array-length v1, v0

    .line 241
    new-array v0, v1, [Ljava/lang/Object;

    .line 243
    iget-object v2, p0, Lorg/FiioGetMusicInfo/utils/tree/TreeModelEvent;->children:[Ljava/lang/Object;

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 246
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPath()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/TreeModelEvent;->path:Lorg/FiioGetMusicInfo/utils/tree/TreePath;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/TreeModelEvent;->path:Lorg/FiioGetMusicInfo/utils/tree/TreePath;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/utils/tree/TreePath;->getPath()[Ljava/lang/Object;

    move-result-object v0

    .line 224
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTreePath()Lorg/FiioGetMusicInfo/utils/tree/TreePath;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/TreeModelEvent;->path:Lorg/FiioGetMusicInfo/utils/tree/TreePath;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 277
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 280
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 279
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 281
    iget-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/TreeModelEvent;->path:Lorg/FiioGetMusicInfo/utils/tree/TreePath;

    if-eqz v0, :cond_0

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, " path "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/FiioGetMusicInfo/utils/tree/TreeModelEvent;->path:Lorg/FiioGetMusicInfo/utils/tree/TreePath;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 283
    :cond_0
    iget-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/TreeModelEvent;->childIndices:[I

    if-eqz v0, :cond_1

    .line 284
    const-string v0, " indices [ "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    .line 285
    :goto_0
    iget-object v3, p0, Lorg/FiioGetMusicInfo/utils/tree/TreeModelEvent;->childIndices:[I

    array-length v3, v3

    if-lt v0, v3, :cond_3

    .line 287
    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 289
    :cond_1
    iget-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/TreeModelEvent;->children:[Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 290
    const-string v0, " children [ "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 291
    :goto_1
    iget-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/TreeModelEvent;->children:[Ljava/lang/Object;

    array-length v0, v0

    if-lt v1, v0, :cond_4

    .line 293
    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 295
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 286
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/FiioGetMusicInfo/utils/tree/TreeModelEvent;->childIndices:[I

    aget v4, v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 285
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 292
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/FiioGetMusicInfo/utils/tree/TreeModelEvent;->children:[Ljava/lang/Object;

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 291
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
