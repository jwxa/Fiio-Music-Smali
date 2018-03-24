.class public final Lcom/fiio/music/util/i;
.super Ljava/lang/Object;
.source "ComparatorDownLoadInfo.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/fiio/music/entity/DownLoadInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 1
    check-cast p1, Lcom/fiio/music/entity/DownLoadInfo;

    check-cast p2, Lcom/fiio/music/entity/DownLoadInfo;

    invoke-virtual {p1}, Lcom/fiio/music/entity/DownLoadInfo;->getId()I

    move-result v0

    invoke-virtual {p2}, Lcom/fiio/music/entity/DownLoadInfo;->getId()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method
