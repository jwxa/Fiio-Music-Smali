.class public final Lcom/fiio/music/test/c;
.super Ljava/lang/Object;
.source "TestActivity.java"

# interfaces
.implements Ljava/io/FileFilter;


# instance fields
.field final synthetic a:Lcom/fiio/music/test/TestActivity;


# direct methods
.method public constructor <init>(Lcom/fiio/music/test/TestActivity;)V
    .locals 0

    .prologue
    .line 444
    iput-object p1, p0, Lcom/fiio/music/test/c;->a:Lcom/fiio/music/test/TestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 445
    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;)Z
    .locals 1

    .prologue
    .line 455
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    return v0
.end method
