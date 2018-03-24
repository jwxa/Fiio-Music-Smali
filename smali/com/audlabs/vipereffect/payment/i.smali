.class final Lcom/audlabs/vipereffect/payment/i;
.super Ljava/lang/Object;
.source "PayMent.java"

# interfaces
.implements Lcom/audlabs/vipereffect/base/HttpRequest$CallBackString;


# instance fields
.field final synthetic a:Lcom/audlabs/vipereffect/payment/h;

.field private final synthetic b:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/audlabs/vipereffect/payment/h;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/audlabs/vipereffect/payment/i;->a:Lcom/audlabs/vipereffect/payment/h;

    iput-object p2, p0, Lcom/audlabs/vipereffect/payment/i;->b:Landroid/app/AlertDialog;

    .line 507
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRequestComplete(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 510
    if-eqz p1, :cond_0

    const-string v0, "true"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/audlabs/vipereffect/payment/i;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 512
    iget-object v0, p0, Lcom/audlabs/vipereffect/payment/i;->a:Lcom/audlabs/vipereffect/payment/h;

    invoke-static {v0}, Lcom/audlabs/vipereffect/payment/h;->a(Lcom/audlabs/vipereffect/payment/h;)Lcom/audlabs/vipereffect/payment/PayMent;

    move-result-object v0

    invoke-static {v0}, Lcom/audlabs/vipereffect/payment/PayMent;->access$8(Lcom/audlabs/vipereffect/payment/PayMent;)Lcom/audlabs/vipereffect/payment/PayMent$PayMentCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/audlabs/vipereffect/payment/PayMent$PayMentCallBack;->onComplete()V

    .line 513
    iget-object v0, p0, Lcom/audlabs/vipereffect/payment/i;->a:Lcom/audlabs/vipereffect/payment/h;

    invoke-static {v0}, Lcom/audlabs/vipereffect/payment/h;->a(Lcom/audlabs/vipereffect/payment/h;)Lcom/audlabs/vipereffect/payment/PayMent;

    move-result-object v0

    iget-object v1, p0, Lcom/audlabs/vipereffect/payment/i;->a:Lcom/audlabs/vipereffect/payment/h;

    invoke-static {v1}, Lcom/audlabs/vipereffect/payment/h;->a(Lcom/audlabs/vipereffect/payment/h;)Lcom/audlabs/vipereffect/payment/PayMent;

    move-result-object v1

    invoke-static {v1}, Lcom/audlabs/vipereffect/payment/PayMent;->access$1(Lcom/audlabs/vipereffect/payment/PayMent;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/audlabs/vipereffect/payment/PayMent;->init(Landroid/content/Context;Z)V

    .line 515
    :cond_0
    return-void
.end method
