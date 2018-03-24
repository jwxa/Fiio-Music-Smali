.class final Lcom/audlabs/vipereffect/payment/b;
.super Ljava/lang/Object;
.source "PayMent.java"

# interfaces
.implements Lcom/audlabs/vipereffect/base/HttpRequest$CallBackString;


# instance fields
.field final synthetic a:Lcom/audlabs/vipereffect/payment/PayMent;

.field private final synthetic b:Lcom/audlabs/vipereffect/payment/PayMent$PayMentCallBack;


# direct methods
.method constructor <init>(Lcom/audlabs/vipereffect/payment/PayMent;Lcom/audlabs/vipereffect/payment/PayMent$PayMentCallBack;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/audlabs/vipereffect/payment/b;->a:Lcom/audlabs/vipereffect/payment/PayMent;

    iput-object p2, p0, Lcom/audlabs/vipereffect/payment/b;->b:Lcom/audlabs/vipereffect/payment/PayMent$PayMentCallBack;

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRequestComplete(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 236
    if-nez p1, :cond_0

    .line 237
    iget-object v0, p0, Lcom/audlabs/vipereffect/payment/b;->a:Lcom/audlabs/vipereffect/payment/PayMent;

    invoke-static {v0}, Lcom/audlabs/vipereffect/payment/PayMent;->access$1(Lcom/audlabs/vipereffect/payment/PayMent;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c01cb

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 245
    :goto_0
    return-void

    .line 240
    :cond_0
    const-string v0, "true"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/audlabs/vipereffect/payment/b;->b:Lcom/audlabs/vipereffect/payment/PayMent$PayMentCallBack;

    invoke-interface {v0}, Lcom/audlabs/vipereffect/payment/PayMent$PayMentCallBack;->onComplete()V

    goto :goto_0

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/audlabs/vipereffect/payment/b;->a:Lcom/audlabs/vipereffect/payment/PayMent;

    invoke-static {v0}, Lcom/audlabs/vipereffect/payment/PayMent;->access$2(Lcom/audlabs/vipereffect/payment/PayMent;)V

    goto :goto_0
.end method
