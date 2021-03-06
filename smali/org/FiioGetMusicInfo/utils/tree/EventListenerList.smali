.class public Lorg/FiioGetMusicInfo/utils/tree/EventListenerList;
.super Ljava/lang/Object;
.source "EventListenerList.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final NULL_ARRAY:[Ljava/lang/Object;


# instance fields
.field protected transient listenerList:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lorg/FiioGetMusicInfo/utils/tree/EventListenerList;->NULL_ARRAY:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    sget-object v0, Lorg/FiioGetMusicInfo/utils/tree/EventListenerList;->NULL_ARRAY:[Ljava/lang/Object;

    iput-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/EventListenerList;->listenerList:[Ljava/lang/Object;

    .line 85
    return-void
.end method

.method private getListenerCount([Ljava/lang/Object;Ljava/lang/Class;)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 150
    move v1, v0

    move v2, v0

    .line 151
    :goto_0
    array-length v0, p1

    if-lt v1, v0, :cond_0

    .line 155
    return v2

    .line 152
    :cond_0
    aget-object v0, p1, v1

    check-cast v0, Ljava/lang/Class;

    if-ne p2, v0, :cond_1

    .line 153
    add-int/lit8 v2, v2, 0x1

    .line 151
    :cond_1
    add-int/lit8 v0, v1, 0x2

    move v1, v0

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4

    .prologue
    .line 252
    sget-object v0, Lorg/FiioGetMusicInfo/utils/tree/EventListenerList;->NULL_ARRAY:[Ljava/lang/Object;

    iput-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/EventListenerList;->listenerList:[Ljava/lang/Object;

    .line 253
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 256
    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 261
    return-void

    .line 257
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 258
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/EventListener;

    .line 259
    check-cast v1, Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v1, v3, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/FiioGetMusicInfo/utils/tree/EventListenerList;->add(Ljava/lang/Class;Ljava/util/EventListener;)V

    goto :goto_0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 5

    .prologue
    .line 234
    iget-object v3, p0, Lorg/FiioGetMusicInfo/utils/tree/EventListenerList;->listenerList:[Ljava/lang/Object;

    .line 235
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 238
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    array-length v0, v3

    if-lt v2, v0, :cond_0

    .line 247
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 248
    return-void

    .line 239
    :cond_0
    aget-object v0, v3, v2

    check-cast v0, Ljava/lang/Class;

    .line 240
    add-int/lit8 v1, v2, 0x1

    aget-object v1, v3, v1

    check-cast v1, Ljava/util/EventListener;

    .line 241
    if-eqz v1, :cond_1

    instance-of v4, v1, Ljava/io/Serializable;

    if-eqz v4, :cond_1

    .line 242
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 243
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 238
    :cond_1
    add-int/lit8 v0, v2, 0x2

    move v2, v0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized add(Ljava/lang/Class;Ljava/util/EventListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/EventListener;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 164
    monitor-enter p0

    if-nez p2, :cond_0

    .line 189
    :goto_0
    monitor-exit p0

    return-void

    .line 170
    :cond_0
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 171
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Listener "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 172
    const-string v2, " is not of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 171
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 174
    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/EventListenerList;->listenerList:[Ljava/lang/Object;

    sget-object v1, Lorg/FiioGetMusicInfo/utils/tree/EventListenerList;->NULL_ARRAY:[Ljava/lang/Object;

    if-ne v0, v1, :cond_2

    .line 177
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    iput-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/EventListenerList;->listenerList:[Ljava/lang/Object;

    goto :goto_0

    .line 180
    :cond_2
    iget-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/EventListenerList;->listenerList:[Ljava/lang/Object;

    array-length v0, v0

    .line 181
    add-int/lit8 v1, v0, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 182
    iget-object v2, p0, Lorg/FiioGetMusicInfo/utils/tree/EventListenerList;->listenerList:[Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 184
    aput-object p1, v1, v0

    .line 185
    add-int/lit8 v0, v0, 0x1

    aput-object p2, v1, v0

    .line 187
    iput-object v1, p0, Lorg/FiioGetMusicInfo/utils/tree/EventListenerList;->listenerList:[Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getListenerCount()I
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/EventListenerList;->listenerList:[Ljava/lang/Object;

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getListenerCount(Ljava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/EventListenerList;->listenerList:[Ljava/lang/Object;

    .line 146
    invoke-direct {p0, v0, p1}, Lorg/FiioGetMusicInfo/utils/tree/EventListenerList;->getListenerCount([Ljava/lang/Object;Ljava/lang/Class;)I

    move-result v0

    return v0
.end method

.method public getListenerList()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/EventListenerList;->listenerList:[Ljava/lang/Object;

    return-object v0
.end method

.method public getListeners(Ljava/lang/Class;)[Ljava/util/EventListener;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/EventListener;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 121
    iget-object v5, p0, Lorg/FiioGetMusicInfo/utils/tree/EventListenerList;->listenerList:[Ljava/lang/Object;

    .line 122
    invoke-direct {p0, v5, p1}, Lorg/FiioGetMusicInfo/utils/tree/EventListenerList;->getListenerCount([Ljava/lang/Object;Ljava/lang/Class;)I

    move-result v0

    .line 123
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/EventListener;

    .line 124
    const/4 v3, 0x0

    .line 125
    array-length v1, v5

    add-int/lit8 v1, v1, -0x2

    move v4, v1

    :goto_0
    if-gez v4, :cond_0

    .line 130
    return-object v0

    .line 126
    :cond_0
    aget-object v1, v5, v4

    if-ne v1, p1, :cond_1

    .line 127
    add-int/lit8 v2, v3, 0x1

    add-int/lit8 v1, v4, 0x1

    aget-object v1, v5, v1

    check-cast v1, Ljava/util/EventListener;

    aput-object v1, v0, v3

    move v1, v2

    .line 125
    :goto_1
    add-int/lit8 v2, v4, -0x2

    move v4, v2

    move v3, v1

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1
.end method

.method public declared-synchronized remove(Ljava/lang/Class;Ljava/util/EventListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/EventListener;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 197
    monitor-enter p0

    if-nez p2, :cond_1

    .line 230
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 203
    :cond_1
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 204
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Listener "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 205
    const-string v2, " is not of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 204
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 209
    :cond_2
    :try_start_1
    iget-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/EventListenerList;->listenerList:[Ljava/lang/Object;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x2

    :goto_1
    if-gez v0, :cond_5

    move v1, v2

    .line 217
    :goto_2
    if-eq v1, v2, :cond_0

    .line 218
    iget-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/EventListenerList;->listenerList:[Ljava/lang/Object;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 220
    iget-object v2, p0, Lorg/FiioGetMusicInfo/utils/tree/EventListenerList;->listenerList:[Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 224
    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 225
    iget-object v2, p0, Lorg/FiioGetMusicInfo/utils/tree/EventListenerList;->listenerList:[Ljava/lang/Object;

    add-int/lit8 v3, v1, 0x2

    .line 226
    array-length v4, v0

    sub-int/2addr v4, v1

    .line 225
    invoke-static {v2, v3, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 228
    :cond_3
    array-length v1, v0

    if-nez v1, :cond_4

    sget-object v0, Lorg/FiioGetMusicInfo/utils/tree/EventListenerList;->NULL_ARRAY:[Ljava/lang/Object;

    :cond_4
    iput-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/EventListenerList;->listenerList:[Ljava/lang/Object;

    goto :goto_0

    .line 210
    :cond_5
    iget-object v1, p0, Lorg/FiioGetMusicInfo/utils/tree/EventListenerList;->listenerList:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_6

    iget-object v1, p0, Lorg/FiioGetMusicInfo/utils/tree/EventListenerList;->listenerList:[Ljava/lang/Object;

    add-int/lit8 v3, v0, 0x1

    aget-object v1, v1, v3

    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_6

    move v1, v0

    .line 212
    goto :goto_2

    .line 209
    :cond_6
    add-int/lit8 v0, v0, -0x2

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 267
    iget-object v3, p0, Lorg/FiioGetMusicInfo/utils/tree/EventListenerList;->listenerList:[Ljava/lang/Object;

    .line 268
    const-string v0, "EventListenerList: "

    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v3

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " listeners: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 270
    const/4 v0, 0x0

    move v4, v0

    move-object v0, v1

    move v1, v4

    :goto_0
    array-length v2, v3

    add-int/lit8 v2, v2, -0x2

    if-le v1, v2, :cond_0

    .line 274
    return-object v0

    .line 271
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " type "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v0, v3, v1

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 272
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " listener "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v2, v1, 0x1

    aget-object v2, v3, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 270
    add-int/lit8 v0, v1, 0x2

    move v1, v0

    move-object v0, v2

    goto :goto_0
.end method
