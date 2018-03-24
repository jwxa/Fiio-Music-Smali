.class final Lcom/audlabs/vipereffect/screen/as;
.super Landroid/os/Handler;
.source "VDdcFragment.java"


# instance fields
.field final synthetic a:Lcom/audlabs/vipereffect/screen/VDdcFragment;


# direct methods
.method constructor <init>(Lcom/audlabs/vipereffect/screen/VDdcFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/audlabs/vipereffect/screen/as;->a:Lcom/audlabs/vipereffect/screen/VDdcFragment;

    .line 51
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 54
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/as;->a:Lcom/audlabs/vipereffect/screen/VDdcFragment;

    invoke-static {v0}, Lcom/audlabs/vipereffect/screen/VDdcFragment;->access$0(Lcom/audlabs/vipereffect/screen/VDdcFragment;)Lcom/audlabs/vipereffect/screen/VDdcFragment$VDdcAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/audlabs/vipereffect/screen/VDdcFragment$VDdcAdapter;->notifyDataSetChanged()V

    .line 57
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/as;->a:Lcom/audlabs/vipereffect/screen/VDdcFragment;

    iget-object v0, v0, Lcom/audlabs/vipereffect/screen/VDdcFragment;->mRecyclerView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/as;->a:Lcom/audlabs/vipereffect/screen/VDdcFragment;

    invoke-static {v1}, Lcom/audlabs/vipereffect/screen/VDdcFragment;->access$1(Lcom/audlabs/vipereffect/screen/VDdcFragment;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 59
    :cond_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 60
    return-void
.end method
