.class final Lcom/audlabs/vipereffect/screen/d;
.super Landroid/os/Handler;
.source "ConvolverFragment.java"


# instance fields
.field final synthetic a:Lcom/audlabs/vipereffect/screen/ConvolverFragment;


# direct methods
.method constructor <init>(Lcom/audlabs/vipereffect/screen/ConvolverFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/audlabs/vipereffect/screen/d;->a:Lcom/audlabs/vipereffect/screen/ConvolverFragment;

    .line 68
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 71
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/d;->a:Lcom/audlabs/vipereffect/screen/ConvolverFragment;

    invoke-static {v0}, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->access$0(Lcom/audlabs/vipereffect/screen/ConvolverFragment;)Lcom/audlabs/vipereffect/screen/ConvolverFragment$VDdcAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/audlabs/vipereffect/screen/ConvolverFragment$VDdcAdapter;->notifyDataSetChanged()V

    .line 75
    :cond_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 76
    return-void
.end method
