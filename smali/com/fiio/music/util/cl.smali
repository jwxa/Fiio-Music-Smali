.class public final Lcom/fiio/music/util/cl;
.super Ljava/lang/Object;
.source "SearchNextFolderFilter.java"

# interfaces
.implements Ljava/io/FileFilter;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    invoke-static {}, Lcom/fiio/music/util/bl;->d()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fiio/music/util/cl;->a:Ljava/lang/String;

    .line 9
    invoke-static {}, Lcom/fiio/music/util/bl;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fiio/music/util/cl;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;)Z
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    const/4 v0, 0x1

    .line 16
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
