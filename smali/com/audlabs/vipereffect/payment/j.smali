.class final Lcom/audlabs/vipereffect/payment/j;
.super Ljava/lang/Object;
.source "PayMent.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/audlabs/vipereffect/payment/PayMent;

.field private final synthetic b:Landroid/os/Handler;

.field private final synthetic c:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/audlabs/vipereffect/payment/PayMent;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/audlabs/vipereffect/payment/j;->a:Lcom/audlabs/vipereffect/payment/PayMent;

    iput-object p2, p0, Lcom/audlabs/vipereffect/payment/j;->b:Landroid/os/Handler;

    iput-object p3, p0, Lcom/audlabs/vipereffect/payment/j;->c:Ljava/lang/Runnable;

    .line 521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 524
    iget-object v0, p0, Lcom/audlabs/vipereffect/payment/j;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/audlabs/vipereffect/payment/j;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 525
    return-void
.end method
