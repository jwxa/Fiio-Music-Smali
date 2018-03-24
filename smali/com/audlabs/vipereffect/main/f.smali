.class final Lcom/audlabs/vipereffect/main/f;
.super Ljava/lang/Object;
.source "MainFragment.java"

# interfaces
.implements Lcom/audlabs/vipereffect/payment/PayMent$PayMentCallBack;


# instance fields
.field final synthetic a:Lcom/audlabs/vipereffect/main/e;

.field private final synthetic b:Z

.field private final synthetic c:Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter$ViewHolder;

.field private final synthetic d:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/audlabs/vipereffect/main/e;ZLcom/audlabs/vipereffect/main/MainFragment$MianAdapter$ViewHolder;Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/audlabs/vipereffect/main/f;->a:Lcom/audlabs/vipereffect/main/e;

    iput-boolean p2, p0, Lcom/audlabs/vipereffect/main/f;->b:Z

    iput-object p3, p0, Lcom/audlabs/vipereffect/main/f;->c:Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter$ViewHolder;

    iput-object p4, p0, Lcom/audlabs/vipereffect/main/f;->d:Ljava/util/HashMap;

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 164
    iget-boolean v0, p0, Lcom/audlabs/vipereffect/main/f;->b:Z

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/audlabs/vipereffect/main/f;->c:Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter$ViewHolder;

    iget-object v0, v0, Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter$ViewHolder;->ivEnable:Landroid/widget/ImageView;

    const v1, 0x7f03003b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 169
    :goto_0
    iget-object v0, p0, Lcom/audlabs/vipereffect/main/f;->a:Lcom/audlabs/vipereffect/main/e;

    invoke-static {v0}, Lcom/audlabs/vipereffect/main/e;->a(Lcom/audlabs/vipereffect/main/e;)Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter;->access$1(Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter;)Lcom/audlabs/vipereffect/main/MainFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/audlabs/vipereffect/main/MainFragment;->access$1(Lcom/audlabs/vipereffect/main/MainFragment;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    iget-object v0, p0, Lcom/audlabs/vipereffect/main/f;->d:Ljava/util/HashMap;

    const-string v1, "KEY"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-boolean v1, p0, Lcom/audlabs/vipereffect/main/f;->b:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 172
    iget-object v0, p0, Lcom/audlabs/vipereffect/main/f;->a:Lcom/audlabs/vipereffect/main/e;

    invoke-static {v0}, Lcom/audlabs/vipereffect/main/e;->a(Lcom/audlabs/vipereffect/main/e;)Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter;

    move-result-object v1

    iget-object v0, p0, Lcom/audlabs/vipereffect/main/f;->d:Ljava/util/HashMap;

    const-string v4, "KEY"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-boolean v4, p0, Lcom/audlabs/vipereffect/main/f;->b:Z

    if-eqz v4, :cond_2

    :goto_2
    invoke-static {v1, v0, v2}, Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter;->access$0(Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter;Ljava/lang/String;Z)V

    .line 173
    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/audlabs/vipereffect/main/f;->c:Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter$ViewHolder;

    iget-object v0, v0, Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter$ViewHolder;->ivEnable:Landroid/widget/ImageView;

    const v1, 0x7f03003c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_1
    move v1, v3

    .line 169
    goto :goto_1

    :cond_2
    move v2, v3

    .line 172
    goto :goto_2
.end method
