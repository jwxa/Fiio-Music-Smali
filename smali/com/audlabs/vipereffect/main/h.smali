.class final Lcom/audlabs/vipereffect/main/h;
.super Ljava/lang/Object;
.source "MainFragment.java"

# interfaces
.implements Lcom/audlabs/vipereffect/payment/PayMent$PayMentCallBack;


# instance fields
.field final synthetic a:Lcom/audlabs/vipereffect/main/g;

.field private final synthetic b:Ljava/util/HashMap;

.field private final synthetic c:Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/audlabs/vipereffect/main/g;Ljava/util/HashMap;Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter$ViewHolder;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/audlabs/vipereffect/main/h;->a:Lcom/audlabs/vipereffect/main/g;

    iput-object p2, p0, Lcom/audlabs/vipereffect/main/h;->b:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/audlabs/vipereffect/main/h;->c:Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter$ViewHolder;

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 185
    iget-object v0, p0, Lcom/audlabs/vipereffect/main/h;->a:Lcom/audlabs/vipereffect/main/g;

    invoke-static {v0}, Lcom/audlabs/vipereffect/main/g;->a(Lcom/audlabs/vipereffect/main/g;)Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter;->access$1(Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter;)Lcom/audlabs/vipereffect/main/MainFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/audlabs/vipereffect/main/MainFragment;->access$1(Lcom/audlabs/vipereffect/main/MainFragment;)Landroid/content/SharedPreferences;

    move-result-object v2

    iget-object v0, p0, Lcom/audlabs/vipereffect/main/h;->b:Ljava/util/HashMap;

    const-string v3, "KEY"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 186
    if-eqz v2, :cond_0

    .line 187
    iget-object v0, p0, Lcom/audlabs/vipereffect/main/h;->c:Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter$ViewHolder;

    iget-object v0, v0, Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter$ViewHolder;->ivEnable:Landroid/widget/ImageView;

    const v3, 0x7f03003b

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 192
    :goto_0
    iget-object v0, p0, Lcom/audlabs/vipereffect/main/h;->a:Lcom/audlabs/vipereffect/main/g;

    invoke-static {v0}, Lcom/audlabs/vipereffect/main/g;->a(Lcom/audlabs/vipereffect/main/g;)Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter;->access$1(Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter;)Lcom/audlabs/vipereffect/main/MainFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/audlabs/vipereffect/main/MainFragment;->access$1(Lcom/audlabs/vipereffect/main/MainFragment;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    iget-object v0, p0, Lcom/audlabs/vipereffect/main/h;->b:Ljava/util/HashMap;

    const-string v4, "KEY"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v2, :cond_1

    :goto_1
    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 194
    iget-object v0, p0, Lcom/audlabs/vipereffect/main/h;->a:Lcom/audlabs/vipereffect/main/g;

    invoke-static {v0}, Lcom/audlabs/vipereffect/main/g;->a(Lcom/audlabs/vipereffect/main/g;)Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter;->access$1(Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter;)Lcom/audlabs/vipereffect/main/MainFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/audlabs/vipereffect/main/MainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.audlabs.vipereffect.UPDATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 195
    return-void

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/audlabs/vipereffect/main/h;->c:Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter$ViewHolder;

    iget-object v0, v0, Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter$ViewHolder;->ivEnable:Landroid/widget/ImageView;

    const v3, 0x7f03003c

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 192
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method
