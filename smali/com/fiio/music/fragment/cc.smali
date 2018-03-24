.class final Lcom/fiio/music/fragment/cc;
.super Ljava/lang/Object;
.source "TabCFr.java"

# interfaces
.implements Lcom/fiio/music/swipemenulistview/g;


# instance fields
.field final synthetic a:Lcom/fiio/music/fragment/TabCFr;


# direct methods
.method constructor <init>(Lcom/fiio/music/fragment/TabCFr;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/fragment/cc;->a:Lcom/fiio/music/fragment/TabCFr;

    .line 606
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILcom/fiio/music/swipemenulistview/a;I)Z
    .locals 1

    .prologue
    .line 610
    iget-object v0, p0, Lcom/fiio/music/fragment/cc;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabCFr;->access$0(Lcom/fiio/music/fragment/TabCFr;)I

    move-result v0

    if-nez v0, :cond_0

    .line 611
    packed-switch p3, :pswitch_data_0

    .line 649
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 613
    :pswitch_0
    iget-object v0, p0, Lcom/fiio/music/fragment/cc;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v0, p1}, Lcom/fiio/music/fragment/TabCFr;->access$24(Lcom/fiio/music/fragment/TabCFr;I)V

    goto :goto_0

    .line 616
    :pswitch_1
    iget-object v0, p0, Lcom/fiio/music/fragment/cc;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v0, p1}, Lcom/fiio/music/fragment/TabCFr;->access$25(Lcom/fiio/music/fragment/TabCFr;I)V

    goto :goto_0

    .line 619
    :pswitch_2
    iget-object v0, p0, Lcom/fiio/music/fragment/cc;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v0, p1}, Lcom/fiio/music/fragment/TabCFr;->access$26(Lcom/fiio/music/fragment/TabCFr;I)V

    goto :goto_0

    .line 622
    :pswitch_3
    iget-object v0, p0, Lcom/fiio/music/fragment/cc;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabCFr;->access$11(Lcom/fiio/music/fragment/TabCFr;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/h;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 629
    :cond_0
    packed-switch p3, :pswitch_data_1

    goto :goto_0

    .line 631
    :pswitch_4
    iget-object v0, p0, Lcom/fiio/music/fragment/cc;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v0, p1}, Lcom/fiio/music/fragment/TabCFr;->access$27(Lcom/fiio/music/fragment/TabCFr;I)V

    goto :goto_0

    .line 634
    :pswitch_5
    iget-object v0, p0, Lcom/fiio/music/fragment/cc;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v0, p1}, Lcom/fiio/music/fragment/TabCFr;->access$25(Lcom/fiio/music/fragment/TabCFr;I)V

    goto :goto_0

    .line 637
    :pswitch_6
    iget-object v0, p0, Lcom/fiio/music/fragment/cc;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v0, p1}, Lcom/fiio/music/fragment/TabCFr;->access$26(Lcom/fiio/music/fragment/TabCFr;I)V

    goto :goto_0

    .line 640
    :pswitch_7
    iget-object v0, p0, Lcom/fiio/music/fragment/cc;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabCFr;->access$11(Lcom/fiio/music/fragment/TabCFr;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/h;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 643
    :pswitch_8
    iget-object v0, p0, Lcom/fiio/music/fragment/cc;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v0, p1}, Lcom/fiio/music/fragment/TabCFr;->access$28(Lcom/fiio/music/fragment/TabCFr;I)V

    goto :goto_0

    .line 611
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 629
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
