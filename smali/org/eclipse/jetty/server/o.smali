.class final Lorg/eclipse/jetty/server/o;
.super Ljava/lang/Object;
.source "ResourceCache.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/eclipse/jetty/server/ResourceCache$Content;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lorg/eclipse/jetty/server/ResourceCache;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/server/ResourceCache;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lorg/eclipse/jetty/server/o;->a:Lorg/eclipse/jetty/server/ResourceCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    .prologue
    const/4 v0, -0x1

    .line 260
    check-cast p1, Lorg/eclipse/jetty/server/ResourceCache$Content;

    check-cast p2, Lorg/eclipse/jetty/server/ResourceCache$Content;

    iget-wide v2, p1, Lorg/eclipse/jetty/server/ResourceCache$Content;->_lastAccessed:J

    iget-wide v4, p2, Lorg/eclipse/jetty/server/ResourceCache$Content;->_lastAccessed:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-wide v2, p1, Lorg/eclipse/jetty/server/ResourceCache$Content;->_lastAccessed:J

    iget-wide v4, p2, Lorg/eclipse/jetty/server/ResourceCache$Content;->_lastAccessed:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget v1, p1, Lorg/eclipse/jetty/server/ResourceCache$Content;->_length:I

    iget v2, p2, Lorg/eclipse/jetty/server/ResourceCache$Content;->_length:I

    if-lt v1, v2, :cond_0

    iget-object v0, p1, Lorg/eclipse/jetty/server/ResourceCache$Content;->_key:Ljava/lang/String;

    iget-object v1, p2, Lorg/eclipse/jetty/server/ResourceCache$Content;->_key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method
