.class final Lcom/audlabs/vipereffect/screen/h;
.super Ljava/lang/Thread;
.source "ConvolverFragment.java"


# instance fields
.field final synthetic a:Lcom/audlabs/vipereffect/screen/ConvolverFragment;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/audlabs/vipereffect/screen/ConvolverFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/audlabs/vipereffect/screen/h;->a:Lcom/audlabs/vipereffect/screen/ConvolverFragment;

    iput-object p2, p0, Lcom/audlabs/vipereffect/screen/h;->b:Ljava/lang/String;

    .line 210
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/h;->a:Lcom/audlabs/vipereffect/screen/ConvolverFragment;

    invoke-static {v0}, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->access$1(Lcom/audlabs/vipereffect/screen/ConvolverFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    move v1, v2

    .line 217
    :goto_0
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/h;->a:Lcom/audlabs/vipereffect/screen/ConvolverFragment;

    invoke-static {v0}, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->access$8(Lcom/audlabs/vipereffect/screen/ConvolverFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/h;->a:Lcom/audlabs/vipereffect/screen/ConvolverFragment;

    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/h;->a:Lcom/audlabs/vipereffect/screen/ConvolverFragment;

    invoke-static {v1}, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->access$1(Lcom/audlabs/vipereffect/screen/ConvolverFragment;)Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Lcom/audlabs/vipereffect/screen/h;->a:Lcom/audlabs/vipereffect/screen/ConvolverFragment;

    invoke-static {v3}, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->access$11(Lcom/audlabs/vipereffect/screen/ConvolverFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->access$3(Lcom/audlabs/vipereffect/screen/ConvolverFragment;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :goto_1
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/h;->a:Lcom/audlabs/vipereffect/screen/ConvolverFragment;

    invoke-static {v0}, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->access$12(Lcom/audlabs/vipereffect/screen/ConvolverFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 236
    return-void

    .line 218
    :cond_0
    :try_start_1
    const-string v0, ""

    iget-object v3, p0, Lcom/audlabs/vipereffect/screen/h;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 219
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/h;->a:Lcom/audlabs/vipereffect/screen/ConvolverFragment;

    invoke-static {v0}, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->access$8(Lcom/audlabs/vipereffect/screen/ConvolverFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/audlabs/vipereffect/screen/h;->b:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/h;->a:Lcom/audlabs/vipereffect/screen/ConvolverFragment;

    invoke-static {v0}, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->access$11(Lcom/audlabs/vipereffect/screen/ConvolverFragment;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/audlabs/vipereffect/screen/h;->a:Lcom/audlabs/vipereffect/screen/ConvolverFragment;

    invoke-static {v3}, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->access$8(Lcom/audlabs/vipereffect/screen/ConvolverFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 224
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/h;->a:Lcom/audlabs/vipereffect/screen/ConvolverFragment;

    invoke-static {v0, v1}, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->access$3(Lcom/audlabs/vipereffect/screen/ConvolverFragment;I)V

    .line 226
    :cond_2
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/h;->a:Lcom/audlabs/vipereffect/screen/ConvolverFragment;

    invoke-static {v0}, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->access$1(Lcom/audlabs/vipereffect/screen/ConvolverFragment;)Ljava/util/List;

    move-result-object v3

    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/h;->a:Lcom/audlabs/vipereffect/screen/ConvolverFragment;

    invoke-static {v0}, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->access$8(Lcom/audlabs/vipereffect/screen/ConvolverFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 217
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
