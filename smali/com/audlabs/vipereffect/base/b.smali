.class final Lcom/audlabs/vipereffect/base/b;
.super Landroid/os/AsyncTask;
.source "HttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/audlabs/vipereffect/base/HttpRequest;


# direct methods
.method private constructor <init>(Lcom/audlabs/vipereffect/base/HttpRequest;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/audlabs/vipereffect/base/b;->a:Lcom/audlabs/vipereffect/base/HttpRequest;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/audlabs/vipereffect/base/HttpRequest;B)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/audlabs/vipereffect/base/b;-><init>(Lcom/audlabs/vipereffect/base/HttpRequest;)V

    return-void
.end method

.method private static varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 47
    const/4 v1, 0x0

    .line 49
    :try_start_0
    new-instance v0, Ljava/net/URL;

    const/4 v2, 0x0

    aget-object v2, p0, v2

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 51
    const/16 v2, 0x1770

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 52
    const-string v2, "GET"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 53
    const-string v2, "accept"

    const-string v3, "*/*"

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v2, "connection"

    const-string v3, "Keep-Alive"

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    .line 56
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 57
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 59
    const/16 v4, 0x80

    new-array v4, v4, [B

    .line 60
    :goto_0
    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    .line 63
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 64
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 65
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 66
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 68
    :cond_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 72
    :goto_1
    return-object v0

    .line 61
    :cond_1
    const/4 v6, 0x0

    :try_start_2
    invoke-virtual {v3, v4, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    goto :goto_2
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-static {p1}, Lcom/audlabs/vipereffect/base/b;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/audlabs/vipereffect/base/b;->a:Lcom/audlabs/vipereffect/base/HttpRequest;

    invoke-static {v0}, Lcom/audlabs/vipereffect/base/HttpRequest;->access$0(Lcom/audlabs/vipereffect/base/HttpRequest;)Lcom/audlabs/vipereffect/base/HttpRequest$CallBackString;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/audlabs/vipereffect/base/b;->a:Lcom/audlabs/vipereffect/base/HttpRequest;

    invoke-static {v0}, Lcom/audlabs/vipereffect/base/HttpRequest;->access$0(Lcom/audlabs/vipereffect/base/HttpRequest;)Lcom/audlabs/vipereffect/base/HttpRequest$CallBackString;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/audlabs/vipereffect/base/HttpRequest$CallBackString;->onRequestComplete(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
