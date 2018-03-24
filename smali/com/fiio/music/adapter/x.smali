.class final Lcom/fiio/music/adapter/x;
.super Ljava/lang/Object;
.source "QueryAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/adapter/QueryAdapter;


# direct methods
.method constructor <init>(Lcom/fiio/music/adapter/QueryAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/adapter/x;->a:Lcom/fiio/music/adapter/QueryAdapter;

    .line 687
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 691
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 713
    :goto_0
    return-void

    .line 693
    :pswitch_0
    iget-object v0, p0, Lcom/fiio/music/adapter/x;->a:Lcom/fiio/music/adapter/QueryAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/QueryAdapter;->access$1(Lcom/fiio/music/adapter/QueryAdapter;)I

    move-result v0

    if-nez v0, :cond_0

    .line 694
    iget-object v0, p0, Lcom/fiio/music/adapter/x;->a:Lcom/fiio/music/adapter/QueryAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/QueryAdapter;->access$2(Lcom/fiio/music/adapter/QueryAdapter;)V

    goto :goto_0

    .line 696
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/adapter/x;->a:Lcom/fiio/music/adapter/QueryAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/QueryAdapter;->access$3(Lcom/fiio/music/adapter/QueryAdapter;)V

    goto :goto_0

    .line 700
    :pswitch_1
    iget-object v0, p0, Lcom/fiio/music/adapter/x;->a:Lcom/fiio/music/adapter/QueryAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/QueryAdapter;->access$4(Lcom/fiio/music/adapter/QueryAdapter;)V

    goto :goto_0

    .line 703
    :pswitch_2
    iget-object v0, p0, Lcom/fiio/music/adapter/x;->a:Lcom/fiio/music/adapter/QueryAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/QueryAdapter;->access$5(Lcom/fiio/music/adapter/QueryAdapter;)V

    goto :goto_0

    .line 706
    :pswitch_3
    iget-object v0, p0, Lcom/fiio/music/adapter/x;->a:Lcom/fiio/music/adapter/QueryAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/QueryAdapter;->access$6(Lcom/fiio/music/adapter/QueryAdapter;)V

    goto :goto_0

    .line 709
    :pswitch_4
    iget-object v0, p0, Lcom/fiio/music/adapter/x;->a:Lcom/fiio/music/adapter/QueryAdapter;

    iget-object v1, p0, Lcom/fiio/music/adapter/x;->a:Lcom/fiio/music/adapter/QueryAdapter;

    invoke-static {v1}, Lcom/fiio/music/adapter/QueryAdapter;->access$7(Lcom/fiio/music/adapter/QueryAdapter;)Landroid/widget/Toast;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/adapter/x;->a:Lcom/fiio/music/adapter/QueryAdapter;

    iget-object v2, v2, Lcom/fiio/music/adapter/QueryAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/fiio/music/adapter/x;->a:Lcom/fiio/music/adapter/QueryAdapter;

    iget-object v3, v3, Lcom/fiio/music/adapter/QueryAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f0c00fe

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/adapter/QueryAdapter;->access$8(Lcom/fiio/music/adapter/QueryAdapter;Landroid/widget/Toast;)V

    .line 710
    iget-object v0, p0, Lcom/fiio/music/adapter/x;->a:Lcom/fiio/music/adapter/QueryAdapter;

    invoke-virtual {v0}, Lcom/fiio/music/adapter/QueryAdapter;->cancelSelect()V

    goto :goto_0

    .line 691
    :pswitch_data_0
    .packed-switch 0x7f0b0062
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
