.class public Lorg/eclipse/jetty/server/handler/ContextHandler$ApproveNonExistentDirectoryAliases;
.super Ljava/lang/Object;
.source "ContextHandler.java"

# interfaces
.implements Lorg/eclipse/jetty/server/handler/ContextHandler$AliasCheck;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2522
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public check(Ljava/lang/String;Lorg/eclipse/jetty/util/resource/Resource;)Z
    .locals 2

    .prologue
    .line 2526
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 2527
    if-gez v0, :cond_0

    .line 2528
    const/4 v0, 0x0

    .line 2530
    :goto_0
    return v0

    .line 2529
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2530
    invoke-virtual {p2}, Lorg/eclipse/jetty/util/resource/Resource;->getAlias()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
