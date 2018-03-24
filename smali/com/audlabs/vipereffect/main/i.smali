.class final Lcom/audlabs/vipereffect/main/i;
.super Ljava/lang/Object;
.source "MainFragment.java"

# interfaces
.implements Lcom/audlabs/vipereffect/payment/PayMent$PayMentCallBack;


# instance fields
.field final synthetic a:Lcom/audlabs/vipereffect/main/g;

.field private final synthetic b:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/audlabs/vipereffect/main/g;Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/audlabs/vipereffect/main/i;->a:Lcom/audlabs/vipereffect/main/g;

    iput-object p2, p0, Lcom/audlabs/vipereffect/main/i;->b:Ljava/util/HashMap;

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 4

    .prologue
    .line 202
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/audlabs/vipereffect/main/i;->a:Lcom/audlabs/vipereffect/main/g;

    invoke-static {v0}, Lcom/audlabs/vipereffect/main/g;->a(Lcom/audlabs/vipereffect/main/g;)Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter;->access$1(Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter;)Lcom/audlabs/vipereffect/main/MainFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/audlabs/vipereffect/main/MainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v2, Lcom/audlabs/vipereffect/screen/DSPScreenActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 203
    const-string v2, "TITLE"

    iget-object v0, p0, Lcom/audlabs/vipereffect/main/i;->b:Ljava/util/HashMap;

    const-string v3, "TITLE"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    const-string v2, "KEY"

    iget-object v0, p0, Lcom/audlabs/vipereffect/main/i;->b:Ljava/util/HashMap;

    const-string v3, "KEY"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    const-string v2, "FLAG"

    iget-object v0, p0, Lcom/audlabs/vipereffect/main/i;->b:Ljava/util/HashMap;

    const-string v3, "FLAG"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    const-string v0, "CONFIG"

    iget-object v2, p0, Lcom/audlabs/vipereffect/main/i;->a:Lcom/audlabs/vipereffect/main/g;

    invoke-static {v2}, Lcom/audlabs/vipereffect/main/g;->a(Lcom/audlabs/vipereffect/main/g;)Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter;

    move-result-object v2

    invoke-static {v2}, Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter;->access$1(Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter;)Lcom/audlabs/vipereffect/main/MainFragment;

    move-result-object v2

    invoke-static {v2}, Lcom/audlabs/vipereffect/main/MainFragment;->access$2(Lcom/audlabs/vipereffect/main/MainFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    iget-object v0, p0, Lcom/audlabs/vipereffect/main/i;->a:Lcom/audlabs/vipereffect/main/g;

    invoke-static {v0}, Lcom/audlabs/vipereffect/main/g;->a(Lcom/audlabs/vipereffect/main/g;)Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter;->access$1(Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter;)Lcom/audlabs/vipereffect/main/MainFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/audlabs/vipereffect/main/MainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 208
    return-void
.end method
