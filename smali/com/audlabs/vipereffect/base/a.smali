.class final Lcom/audlabs/vipereffect/base/a;
.super Landroid/os/AsyncTask;
.source "HttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/audlabs/vipereffect/base/HttpRequest;


# direct methods
.method private constructor <init>(Lcom/audlabs/vipereffect/base/HttpRequest;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/audlabs/vipereffect/base/a;->a:Lcom/audlabs/vipereffect/base/HttpRequest;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/audlabs/vipereffect/base/HttpRequest;B)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/audlabs/vipereffect/base/a;-><init>(Lcom/audlabs/vipereffect/base/HttpRequest;)V

    return-void
.end method

.method private static varargs a([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 89
    const/4 v1, 0x0

    .line 91
    :try_start_0
    new-instance v0, Ljava/net/URL;

    const/4 v2, 0x0

    aget-object v2, p0, v2

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 95
    const/16 v2, 0x1770

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 97
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 99
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 103
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 105
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 107
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 111
    :goto_0
    return-object v0

    .line 109
    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-static {p1}, Lcom/audlabs/vipereffect/base/a;->a([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/audlabs/vipereffect/base/a;->a:Lcom/audlabs/vipereffect/base/HttpRequest;

    invoke-static {v0}, Lcom/audlabs/vipereffect/base/HttpRequest;->access$1(Lcom/audlabs/vipereffect/base/HttpRequest;)Lcom/audlabs/vipereffect/base/HttpRequest$CallBackBitmap;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/audlabs/vipereffect/base/HttpRequest$CallBackBitmap;->onRequestComplete(Landroid/graphics/Bitmap;)V

    return-void
.end method
