.class final Lcom/audlabs/vipereffect/payment/f;
.super Ljava/lang/Object;
.source "PayMent.java"

# interfaces
.implements Lcom/audlabs/vipereffect/base/HttpRequest$CallBackBitmap;


# instance fields
.field final synthetic a:Lcom/audlabs/vipereffect/payment/e;

.field private final synthetic b:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/audlabs/vipereffect/payment/e;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/audlabs/vipereffect/payment/f;->a:Lcom/audlabs/vipereffect/payment/e;

    iput-object p2, p0, Lcom/audlabs/vipereffect/payment/f;->b:Landroid/app/AlertDialog;

    .line 447
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRequestComplete(Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 450
    if-eqz p1, :cond_0

    .line 451
    iget-object v0, p0, Lcom/audlabs/vipereffect/payment/f;->a:Lcom/audlabs/vipereffect/payment/e;

    invoke-static {v0}, Lcom/audlabs/vipereffect/payment/e;->a(Lcom/audlabs/vipereffect/payment/e;)Lcom/audlabs/vipereffect/payment/PayMent;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/audlabs/vipereffect/payment/PayMent;->access$6(Lcom/audlabs/vipereffect/payment/PayMent;Landroid/graphics/Bitmap;)V

    .line 455
    :goto_0
    iget-object v0, p0, Lcom/audlabs/vipereffect/payment/f;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 456
    return-void

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/audlabs/vipereffect/payment/f;->a:Lcom/audlabs/vipereffect/payment/e;

    invoke-static {v0}, Lcom/audlabs/vipereffect/payment/e;->a(Lcom/audlabs/vipereffect/payment/e;)Lcom/audlabs/vipereffect/payment/PayMent;

    move-result-object v0

    invoke-static {v0}, Lcom/audlabs/vipereffect/payment/PayMent;->access$1(Lcom/audlabs/vipereffect/payment/PayMent;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c01cb

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
