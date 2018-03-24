.class final Lcom/audlabs/vipereffect/payment/e;
.super Landroid/webkit/WebViewClient;
.source "PayMent.java"


# instance fields
.field final synthetic a:Lcom/audlabs/vipereffect/payment/PayMent;

.field private final synthetic b:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/audlabs/vipereffect/payment/PayMent;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/audlabs/vipereffect/payment/e;->a:Lcom/audlabs/vipereffect/payment/PayMent;

    iput-object p2, p0, Lcom/audlabs/vipereffect/payment/e;->b:Landroid/app/AlertDialog;

    .line 441
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/audlabs/vipereffect/payment/e;)Lcom/audlabs/vipereffect/payment/PayMent;
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/audlabs/vipereffect/payment/e;->a:Lcom/audlabs/vipereffect/payment/PayMent;

    return-object v0
.end method


# virtual methods
.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 444
    const-string v0, "alipays:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    const-string v0, "="

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 446
    new-instance v1, Lcom/audlabs/vipereffect/base/HttpRequest;

    invoke-direct {v1}, Lcom/audlabs/vipereffect/base/HttpRequest;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://api.audlabs.com/payment/qrcode.php?data="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 447
    new-instance v2, Lcom/audlabs/vipereffect/payment/f;

    iget-object v3, p0, Lcom/audlabs/vipereffect/payment/e;->b:Landroid/app/AlertDialog;

    invoke-direct {v2, p0, v3}, Lcom/audlabs/vipereffect/payment/f;-><init>(Lcom/audlabs/vipereffect/payment/e;Landroid/app/AlertDialog;)V

    .line 446
    invoke-virtual {v1, v0, v2}, Lcom/audlabs/vipereffect/base/HttpRequest;->getHttpBitmap(Ljava/lang/String;Lcom/audlabs/vipereffect/base/HttpRequest$CallBackBitmap;)V

    .line 458
    const/4 v0, 0x0

    .line 461
    :goto_0
    return v0

    .line 460
    :cond_0
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 461
    const/4 v0, 0x1

    goto :goto_0
.end method
