.class public Lcom/audlabs/vipereffect/base/HttpRequest;
.super Ljava/lang/Object;
.source "HttpRequest.java"


# instance fields
.field private mCallBackBitmap:Lcom/audlabs/vipereffect/base/HttpRequest$CallBackBitmap;

.field private mCallBackString:Lcom/audlabs/vipereffect/base/HttpRequest$CallBackString;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/audlabs/vipereffect/base/HttpRequest;)Lcom/audlabs/vipereffect/base/HttpRequest$CallBackString;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/audlabs/vipereffect/base/HttpRequest;->mCallBackString:Lcom/audlabs/vipereffect/base/HttpRequest$CallBackString;

    return-object v0
.end method

.method static synthetic access$1(Lcom/audlabs/vipereffect/base/HttpRequest;)Lcom/audlabs/vipereffect/base/HttpRequest$CallBackBitmap;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/audlabs/vipereffect/base/HttpRequest;->mCallBackBitmap:Lcom/audlabs/vipereffect/base/HttpRequest$CallBackBitmap;

    return-object v0
.end method


# virtual methods
.method public getHttpBitmap(Ljava/lang/String;Lcom/audlabs/vipereffect/base/HttpRequest$CallBackBitmap;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 37
    iput-object p2, p0, Lcom/audlabs/vipereffect/base/HttpRequest;->mCallBackBitmap:Lcom/audlabs/vipereffect/base/HttpRequest$CallBackBitmap;

    .line 38
    new-instance v0, Lcom/audlabs/vipereffect/base/a;

    invoke-direct {v0, p0, v2}, Lcom/audlabs/vipereffect/base/a;-><init>(Lcom/audlabs/vipereffect/base/HttpRequest;B)V

    .line 39
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/base/a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 40
    return-void
.end method

.method public getHttpString(Ljava/lang/String;Lcom/audlabs/vipereffect/base/HttpRequest$CallBackString;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 31
    iput-object p2, p0, Lcom/audlabs/vipereffect/base/HttpRequest;->mCallBackString:Lcom/audlabs/vipereffect/base/HttpRequest$CallBackString;

    .line 32
    new-instance v0, Lcom/audlabs/vipereffect/base/b;

    invoke-direct {v0, p0, v2}, Lcom/audlabs/vipereffect/base/b;-><init>(Lcom/audlabs/vipereffect/base/HttpRequest;B)V

    .line 33
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/base/b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 34
    return-void
.end method
