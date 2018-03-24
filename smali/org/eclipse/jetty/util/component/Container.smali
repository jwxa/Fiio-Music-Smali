.class public Lorg/eclipse/jetty/util/component/Container;
.super Ljava/lang/Object;
.source "Container.java"


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private final _listeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lorg/eclipse/jetty/util/component/Container$Listener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lorg/eclipse/jetty/util/component/Container;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/util/component/Container;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/component/Container;->_listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 298
    return-void
.end method

.method private add(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 205
    sget-object v0, Lorg/eclipse/jetty/util/component/Container;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    sget-object v0, Lorg/eclipse/jetty/util/component/Container;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Container "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/component/Container;->_listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_1

    .line 209
    new-instance v0, Lorg/eclipse/jetty/util/component/Container$Relationship;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/component/Container$Relationship;-><init>(Lorg/eclipse/jetty/util/component/Container;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Lorg/eclipse/jetty/util/component/b;)V

    move v2, v6

    .line 210
    :goto_0
    iget-object v1, p0, Lorg/eclipse/jetty/util/component/Container;->_listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v1}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v1

    if-ge v2, v1, :cond_1

    .line 211
    iget-object v1, p0, Lorg/eclipse/jetty/util/component/Container;->_listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v1, v2}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/util/component/Container$Listener;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/component/Container$Listener;->add(Lorg/eclipse/jetty/util/component/Container$Relationship;)V

    .line 210
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 213
    :cond_1
    return-void
.end method

.method private remove(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 223
    sget-object v0, Lorg/eclipse/jetty/util/component/Container;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    sget-object v0, Lorg/eclipse/jetty/util/component/Container;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Container "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/component/Container;->_listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_1

    .line 227
    new-instance v0, Lorg/eclipse/jetty/util/component/Container$Relationship;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/component/Container$Relationship;-><init>(Lorg/eclipse/jetty/util/component/Container;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Lorg/eclipse/jetty/util/component/b;)V

    move v2, v6

    .line 228
    :goto_0
    iget-object v1, p0, Lorg/eclipse/jetty/util/component/Container;->_listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v1}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v1

    if-ge v2, v1, :cond_1

    .line 229
    iget-object v1, p0, Lorg/eclipse/jetty/util/component/Container;->_listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v1, v2}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/util/component/Container$Listener;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/component/Container$Listener;->remove(Lorg/eclipse/jetty/util/component/Container$Relationship;)V

    .line 228
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 231
    :cond_1
    return-void
.end method


# virtual methods
.method public addBean(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lorg/eclipse/jetty/util/component/Container;->_listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    .line 179
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/component/Container;->_listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v0}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 181
    iget-object v0, p0, Lorg/eclipse/jetty/util/component/Container;->_listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v0, v1}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/util/component/Container$Listener;

    .line 182
    invoke-interface {v0, p1}, Lorg/eclipse/jetty/util/component/Container$Listener;->addBean(Ljava/lang/Object;)V

    .line 179
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 185
    :cond_0
    return-void
.end method

.method public addEventListener(Lorg/eclipse/jetty/util/component/Container$Listener;)V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/eclipse/jetty/util/component/Container;->_listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    return-void
.end method

.method public removeBean(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lorg/eclipse/jetty/util/component/Container;->_listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    .line 192
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/component/Container;->_listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v0}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 193
    iget-object v0, p0, Lorg/eclipse/jetty/util/component/Container;->_listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v0, v1}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/util/component/Container$Listener;

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/util/component/Container$Listener;->removeBean(Ljava/lang/Object;)V

    .line 192
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 195
    :cond_0
    return-void
.end method

.method public removeEventListener(Lorg/eclipse/jetty/util/component/Container$Listener;)V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/eclipse/jetty/util/component/Container;->_listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 59
    return-void
.end method

.method public update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 70
    if-eqz p2, :cond_0

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    invoke-direct {p0, p1, p2, p4}, Lorg/eclipse/jetty/util/component/Container;->remove(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 73
    invoke-direct {p0, p1, p3, p4}, Lorg/eclipse/jetty/util/component/Container;->add(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    :cond_1
    return-void
.end method

.method public update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 86
    if-eqz p2, :cond_0

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    invoke-direct {p0, p1, p2, p4}, Lorg/eclipse/jetty/util/component/Container;->remove(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    if-eqz p5, :cond_0

    .line 90
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/util/component/Container;->removeBean(Ljava/lang/Object;)V

    .line 93
    :cond_0
    if-eqz p3, :cond_2

    invoke-virtual {p3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 95
    if-eqz p5, :cond_1

    .line 96
    invoke-virtual {p0, p3}, Lorg/eclipse/jetty/util/component/Container;->addBean(Ljava/lang/Object;)V

    .line 97
    :cond_1
    invoke-direct {p0, p1, p3, p4}, Lorg/eclipse/jetty/util/component/Container;->add(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    :cond_2
    return-void
.end method

.method public update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 111
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 112
    return-void
.end method

.method public update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 125
    .line 126
    if-eqz p3, :cond_9

    .line 128
    array-length v1, p3

    new-array v1, v1, [Ljava/lang/Object;

    .line 130
    array-length v3, p3

    :goto_0
    add-int/lit8 v6, v3, -0x1

    if-lez v3, :cond_2

    .line 132
    const/4 v3, 0x1

    .line 133
    if-eqz p2, :cond_0

    .line 135
    array-length v4, p2

    :goto_1
    add-int/lit8 v5, v4, -0x1

    if-lez v4, :cond_0

    .line 137
    aget-object v4, p3, v6

    if-eqz v4, :cond_8

    aget-object v4, p3, v6

    aget-object v7, p2, v5

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 139
    aput-object v2, p2, v5

    move v4, v5

    move v3, v0

    .line 140
    goto :goto_1

    .line 144
    :cond_0
    if-eqz v3, :cond_1

    .line 145
    aget-object v3, p3, v6

    aput-object v3, v1, v6

    :cond_1
    move v3, v6

    .line 146
    goto :goto_0

    :cond_2
    move-object v3, v1

    .line 149
    :goto_2
    if-eqz p2, :cond_3

    .line 151
    array-length v1, p2

    :goto_3
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_3

    .line 153
    aget-object v1, p2, v2

    if-eqz v1, :cond_7

    .line 155
    aget-object v1, p2, v2

    invoke-direct {p0, p1, v1, p4}, Lorg/eclipse/jetty/util/component/Container;->remove(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    if-eqz p5, :cond_7

    .line 157
    aget-object v1, p2, v2

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/util/component/Container;->removeBean(Ljava/lang/Object;)V

    move v1, v2

    goto :goto_3

    .line 162
    :cond_3
    if-eqz v3, :cond_6

    .line 164
    :goto_4
    array-length v1, v3

    if-ge v0, v1, :cond_6

    .line 165
    aget-object v1, v3, v0

    if-eqz v1, :cond_5

    .line 167
    if-eqz p5, :cond_4

    .line 168
    aget-object v1, v3, v0

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/util/component/Container;->addBean(Ljava/lang/Object;)V

    .line 169
    :cond_4
    aget-object v1, v3, v0

    invoke-direct {p0, p1, v1, p4}, Lorg/eclipse/jetty/util/component/Container;->add(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 172
    :cond_6
    return-void

    :cond_7
    move v1, v2

    goto :goto_3

    :cond_8
    move v4, v5

    goto :goto_1

    :cond_9
    move-object v3, v2

    goto :goto_2
.end method
