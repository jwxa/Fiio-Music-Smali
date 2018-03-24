.class final Lcom/audlabs/vipereffect/main/j;
.super Landroid/content/BroadcastReceiver;
.source "MainFragment.java"


# instance fields
.field final synthetic a:Lcom/audlabs/vipereffect/main/MainFragment;


# direct methods
.method constructor <init>(Lcom/audlabs/vipereffect/main/MainFragment;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/audlabs/vipereffect/main/j;->a:Lcom/audlabs/vipereffect/main/MainFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 270
    if-nez p2, :cond_1

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    const-string v0, "com.audlabs.viperfx.updatemainui"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/audlabs/vipereffect/main/j;->a:Lcom/audlabs/vipereffect/main/MainFragment;

    invoke-static {v0}, Lcom/audlabs/vipereffect/main/MainFragment;->access$3(Lcom/audlabs/vipereffect/main/MainFragment;)Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
