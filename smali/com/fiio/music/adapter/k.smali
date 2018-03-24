.class final Lcom/fiio/music/adapter/k;
.super Ljava/lang/Object;
.source "GridViewAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/adapter/GridViewAdapter;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/fiio/music/adapter/GridViewAdapter;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/adapter/k;->a:Lcom/fiio/music/adapter/GridViewAdapter;

    iput p2, p0, Lcom/fiio/music/adapter/k;->b:I

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 199
    iget-object v0, p0, Lcom/fiio/music/adapter/k;->a:Lcom/fiio/music/adapter/GridViewAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/GridViewAdapter;->access$0(Lcom/fiio/music/adapter/GridViewAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/fiio/music/adapter/k;->b:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/GridData;

    invoke-virtual {v0, v2}, Lcom/fiio/music/entity/GridData;->setCheckBox(Z)V

    .line 201
    iget-object v0, p0, Lcom/fiio/music/adapter/k;->a:Lcom/fiio/music/adapter/GridViewAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/GridViewAdapter;->access$1(Lcom/fiio/music/adapter/GridViewAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/fiio/music/adapter/k;->a:Lcom/fiio/music/adapter/GridViewAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/GridViewAdapter;->access$1(Lcom/fiio/music/adapter/GridViewAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    iget-object v0, p0, Lcom/fiio/music/adapter/k;->a:Lcom/fiio/music/adapter/GridViewAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/GridViewAdapter;->access$0(Lcom/fiio/music/adapter/GridViewAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/fiio/music/adapter/k;->b:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/GridData;

    invoke-virtual {v0, p2}, Lcom/fiio/music/entity/GridData;->setCheckBox(Z)V

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/adapter/k;->a:Lcom/fiio/music/adapter/GridViewAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/GridViewAdapter;->access$1(Lcom/fiio/music/adapter/GridViewAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 209
    iget-object v0, p0, Lcom/fiio/music/adapter/k;->a:Lcom/fiio/music/adapter/GridViewAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/GridViewAdapter;->access$1(Lcom/fiio/music/adapter/GridViewAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 211
    iget-object v0, p0, Lcom/fiio/music/adapter/k;->a:Lcom/fiio/music/adapter/GridViewAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/GridViewAdapter;->access$1(Lcom/fiio/music/adapter/GridViewAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 213
    iget-object v0, p0, Lcom/fiio/music/adapter/k;->a:Lcom/fiio/music/adapter/GridViewAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/GridViewAdapter;->access$1(Lcom/fiio/music/adapter/GridViewAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    iget-object v0, p0, Lcom/fiio/music/adapter/k;->a:Lcom/fiio/music/adapter/GridViewAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/GridViewAdapter;->access$1(Lcom/fiio/music/adapter/GridViewAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    invoke-virtual {v0, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 216
    iget-object v0, p0, Lcom/fiio/music/adapter/k;->a:Lcom/fiio/music/adapter/GridViewAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/GridViewAdapter;->access$0(Lcom/fiio/music/adapter/GridViewAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/fiio/music/adapter/k;->b:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/GridData;

    invoke-virtual {v0, p2}, Lcom/fiio/music/entity/GridData;->setCheckBox(Z)V

    goto :goto_0
.end method
