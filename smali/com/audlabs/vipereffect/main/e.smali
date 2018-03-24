.class final Lcom/audlabs/vipereffect/main/e;
.super Ljava/lang/Object;
.source "MainFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter;

.field private final synthetic b:Ljava/util/HashMap;

.field private final synthetic c:Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter;Ljava/util/HashMap;Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter$ViewHolder;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/audlabs/vipereffect/main/e;->a:Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter;

    iput-object p2, p0, Lcom/audlabs/vipereffect/main/e;->b:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/audlabs/vipereffect/main/e;->c:Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter$ViewHolder;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/audlabs/vipereffect/main/e;)Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/audlabs/vipereffect/main/e;->a:Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 160
    iget-object v0, p0, Lcom/audlabs/vipereffect/main/e;->a:Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter;

    invoke-static {v0}, Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter;->access$1(Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter;)Lcom/audlabs/vipereffect/main/MainFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/audlabs/vipereffect/main/MainFragment;->access$1(Lcom/audlabs/vipereffect/main/MainFragment;)Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v0, p0, Lcom/audlabs/vipereffect/main/e;->b:Ljava/util/HashMap;

    const-string v2, "KEY"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 161
    new-instance v2, Lcom/audlabs/vipereffect/payment/PayMent;

    invoke-direct {v2}, Lcom/audlabs/vipereffect/payment/PayMent;-><init>()V

    iget-object v0, p0, Lcom/audlabs/vipereffect/main/e;->a:Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter;

    invoke-static {v0}, Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter;->access$1(Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter;)Lcom/audlabs/vipereffect/main/MainFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/audlabs/vipereffect/main/MainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v0, p0, Lcom/audlabs/vipereffect/main/e;->b:Ljava/util/HashMap;

    const-string v4, "FLAG"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v4, Lcom/audlabs/vipereffect/main/f;

    iget-object v5, p0, Lcom/audlabs/vipereffect/main/e;->c:Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter$ViewHolder;

    iget-object v6, p0, Lcom/audlabs/vipereffect/main/e;->b:Ljava/util/HashMap;

    invoke-direct {v4, p0, v1, v5, v6}, Lcom/audlabs/vipereffect/main/f;-><init>(Lcom/audlabs/vipereffect/main/e;ZLcom/audlabs/vipereffect/main/MainFragment$MianAdapter$ViewHolder;Ljava/util/HashMap;)V

    invoke-virtual {v2, v3, v0, v4}, Lcom/audlabs/vipereffect/payment/PayMent;->setPayMentEffect(Landroid/content/Context;Ljava/lang/String;Lcom/audlabs/vipereffect/payment/PayMent$PayMentCallBack;)V

    .line 175
    return-void
.end method
