.class final Lcom/c/a/c;
.super Lcom/c/a/az;
.source "AssetRequestHandler.java"


# static fields
.field private static final a:I


# instance fields
.field private final b:Landroid/content/res/AssetManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/16 v0, 0x16

    .line 30
    sput v0, Lcom/c/a/c;->a:I

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/c/a/az;-><init>()V

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/c/a/c;->b:Landroid/content/res/AssetManager;

    .line 36
    return-void
.end method


# virtual methods
.method public final a(Lcom/c/a/aw;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 39
    iget-object v1, p1, Lcom/c/a/aw;->d:Landroid/net/Uri;

    .line 40
    const-string v2, "file"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 41
    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android_asset"

    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final b(Lcom/c/a/aw;)Lcom/c/a/ba;
    .locals 3

    .prologue
    .line 45
    iget-object v0, p0, Lcom/c/a/c;->b:Landroid/content/res/AssetManager;

    iget-object v1, p1, Lcom/c/a/aw;->d:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/c/a/c;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 46
    new-instance v1, Lcom/c/a/ba;

    sget-object v2, Lcom/c/a/ap;->b:Lcom/c/a/ap;

    invoke-direct {v1, v0, v2}, Lcom/c/a/ba;-><init>(Ljava/io/InputStream;Lcom/c/a/ap;)V

    return-object v1
.end method
