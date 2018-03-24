.class final Lcom/audlabs/vipereffect/payment/c;
.super Ljava/lang/Object;
.source "PayMent.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/audlabs/vipereffect/payment/PayMent;


# direct methods
.method constructor <init>(Lcom/audlabs/vipereffect/payment/PayMent;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/audlabs/vipereffect/payment/c;->a:Lcom/audlabs/vipereffect/payment/PayMent;

    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 386
    packed-switch p2, :pswitch_data_0

    .line 397
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 398
    return-void

    .line 388
    :pswitch_0
    iget-object v0, p0, Lcom/audlabs/vipereffect/payment/c;->a:Lcom/audlabs/vipereffect/payment/PayMent;

    invoke-static {v0}, Lcom/audlabs/vipereffect/payment/PayMent;->access$3(Lcom/audlabs/vipereffect/payment/PayMent;)V

    goto :goto_0

    .line 391
    :pswitch_1
    iget-object v0, p0, Lcom/audlabs/vipereffect/payment/c;->a:Lcom/audlabs/vipereffect/payment/PayMent;

    invoke-static {v0}, Lcom/audlabs/vipereffect/payment/PayMent;->access$4(Lcom/audlabs/vipereffect/payment/PayMent;)V

    goto :goto_0

    .line 394
    :pswitch_2
    iget-object v0, p0, Lcom/audlabs/vipereffect/payment/c;->a:Lcom/audlabs/vipereffect/payment/PayMent;

    invoke-static {v0}, Lcom/audlabs/vipereffect/payment/PayMent;->access$5(Lcom/audlabs/vipereffect/payment/PayMent;)V

    goto :goto_0

    .line 386
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
