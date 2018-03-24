.class final Lcom/fiio/music/h/i;
.super Ljava/lang/Object;
.source "LyricPopupDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/h/h;


# direct methods
.method constructor <init>(Lcom/fiio/music/h/h;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/h/i;->a:Lcom/fiio/music/h/h;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 102
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 116
    iget-object v0, p0, Lcom/fiio/music/h/i;->a:Lcom/fiio/music/h/h;

    invoke-static {v0}, Lcom/fiio/music/h/h;->a(Lcom/fiio/music/h/h;)Lcom/fiio/music/h/j;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/fiio/music/h/i;->a:Lcom/fiio/music/h/h;

    invoke-static {v0}, Lcom/fiio/music/h/h;->a(Lcom/fiio/music/h/h;)Lcom/fiio/music/h/j;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/fiio/music/h/j;->a(Landroid/view/View;)V

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 104
    :pswitch_0
    iget-object v0, p0, Lcom/fiio/music/h/i;->a:Lcom/fiio/music/h/h;

    invoke-virtual {v0}, Lcom/fiio/music/h/h;->dismiss()V

    goto :goto_0

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b01ef
        :pswitch_0
    .end packed-switch
.end method
