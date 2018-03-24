.class final Lcom/audlabs/vipereffect/payment/h;
.super Ljava/lang/Object;
.source "PayMent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/audlabs/vipereffect/payment/PayMent;

.field private final synthetic b:Landroid/os/Handler;

.field private final synthetic c:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/audlabs/vipereffect/payment/PayMent;Landroid/os/Handler;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/audlabs/vipereffect/payment/h;->a:Lcom/audlabs/vipereffect/payment/PayMent;

    iput-object p2, p0, Lcom/audlabs/vipereffect/payment/h;->b:Landroid/os/Handler;

    iput-object p3, p0, Lcom/audlabs/vipereffect/payment/h;->c:Landroid/app/AlertDialog;

    .line 504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/audlabs/vipereffect/payment/h;)Lcom/audlabs/vipereffect/payment/PayMent;
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/audlabs/vipereffect/payment/h;->a:Lcom/audlabs/vipereffect/payment/PayMent;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 507
    new-instance v0, Lcom/audlabs/vipereffect/base/HttpRequest;

    invoke-direct {v0}, Lcom/audlabs/vipereffect/base/HttpRequest;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://api.audlabs.com/payment/checkispay.php?appId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/audlabs/vipereffect/payment/PayMent;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&effectId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/audlabs/vipereffect/payment/h;->a:Lcom/audlabs/vipereffect/payment/PayMent;

    invoke-static {v2}, Lcom/audlabs/vipereffect/payment/PayMent;->access$7(Lcom/audlabs/vipereffect/payment/PayMent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/audlabs/vipereffect/payment/i;

    iget-object v3, p0, Lcom/audlabs/vipereffect/payment/h;->c:Landroid/app/AlertDialog;

    invoke-direct {v2, p0, v3}, Lcom/audlabs/vipereffect/payment/i;-><init>(Lcom/audlabs/vipereffect/payment/h;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/audlabs/vipereffect/base/HttpRequest;->getHttpString(Ljava/lang/String;Lcom/audlabs/vipereffect/base/HttpRequest$CallBackString;)V

    .line 517
    iget-object v0, p0, Lcom/audlabs/vipereffect/payment/h;->b:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 518
    return-void
.end method
