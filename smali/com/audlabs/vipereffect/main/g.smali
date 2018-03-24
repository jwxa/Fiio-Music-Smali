.class final Lcom/audlabs/vipereffect/main/g;
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
    iput-object p1, p0, Lcom/audlabs/vipereffect/main/g;->a:Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter;

    iput-object p2, p0, Lcom/audlabs/vipereffect/main/g;->b:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/audlabs/vipereffect/main/g;->c:Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter$ViewHolder;

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/audlabs/vipereffect/main/g;)Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/audlabs/vipereffect/main/g;->a:Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 181
    iget-object v0, p0, Lcom/audlabs/vipereffect/main/g;->b:Ljava/util/HashMap;

    const-string v1, "FLAG"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 182
    new-instance v1, Lcom/audlabs/vipereffect/payment/PayMent;

    invoke-direct {v1}, Lcom/audlabs/vipereffect/payment/PayMent;-><init>()V

    iget-object v0, p0, Lcom/audlabs/vipereffect/main/g;->a:Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter;

    invoke-static {v0}, Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter;->access$1(Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter;)Lcom/audlabs/vipereffect/main/MainFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/audlabs/vipereffect/main/MainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v0, p0, Lcom/audlabs/vipereffect/main/g;->b:Ljava/util/HashMap;

    const-string v3, "FLAG"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Lcom/audlabs/vipereffect/main/h;

    iget-object v4, p0, Lcom/audlabs/vipereffect/main/g;->b:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/audlabs/vipereffect/main/g;->c:Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter$ViewHolder;

    invoke-direct {v3, p0, v4, v5}, Lcom/audlabs/vipereffect/main/h;-><init>(Lcom/audlabs/vipereffect/main/g;Ljava/util/HashMap;Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter$ViewHolder;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/audlabs/vipereffect/payment/PayMent;->setPayMentEffect(Landroid/content/Context;Ljava/lang/String;Lcom/audlabs/vipereffect/payment/PayMent$PayMentCallBack;)V

    .line 212
    :goto_0
    return-void

    .line 199
    :cond_0
    new-instance v1, Lcom/audlabs/vipereffect/payment/PayMent;

    invoke-direct {v1}, Lcom/audlabs/vipereffect/payment/PayMent;-><init>()V

    iget-object v0, p0, Lcom/audlabs/vipereffect/main/g;->a:Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter;

    invoke-static {v0}, Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter;->access$1(Lcom/audlabs/vipereffect/main/MainFragment$MianAdapter;)Lcom/audlabs/vipereffect/main/MainFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/audlabs/vipereffect/main/MainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v0, p0, Lcom/audlabs/vipereffect/main/g;->b:Ljava/util/HashMap;

    const-string v3, "FLAG"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Lcom/audlabs/vipereffect/main/i;

    iget-object v4, p0, Lcom/audlabs/vipereffect/main/g;->b:Ljava/util/HashMap;

    invoke-direct {v3, p0, v4}, Lcom/audlabs/vipereffect/main/i;-><init>(Lcom/audlabs/vipereffect/main/g;Ljava/util/HashMap;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/audlabs/vipereffect/payment/PayMent;->setPayMentEffect(Landroid/content/Context;Ljava/lang/String;Lcom/audlabs/vipereffect/payment/PayMent$PayMentCallBack;)V

    goto :goto_0
.end method
