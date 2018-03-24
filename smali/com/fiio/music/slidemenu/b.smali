.class final Lcom/fiio/music/slidemenu/b;
.super Lcom/fiio/music/slidemenu/d;
.source "CustomViewAbove.java"


# instance fields
.field final synthetic a:Lcom/fiio/music/slidemenu/CustomViewAbove;


# direct methods
.method constructor <init>(Lcom/fiio/music/slidemenu/CustomViewAbove;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/slidemenu/b;->a:Lcom/fiio/music/slidemenu/CustomViewAbove;

    .line 171
    invoke-direct {p0}, Lcom/fiio/music/slidemenu/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/fiio/music/slidemenu/b;->a:Lcom/fiio/music/slidemenu/CustomViewAbove;

    invoke-static {v0}, Lcom/fiio/music/slidemenu/CustomViewAbove;->a(Lcom/fiio/music/slidemenu/CustomViewAbove;)Lcom/fiio/music/slidemenu/CustomViewBehind;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 174
    packed-switch p1, :pswitch_data_0

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 177
    :pswitch_0
    iget-object v0, p0, Lcom/fiio/music/slidemenu/b;->a:Lcom/fiio/music/slidemenu/CustomViewAbove;

    invoke-static {v0}, Lcom/fiio/music/slidemenu/CustomViewAbove;->a(Lcom/fiio/music/slidemenu/CustomViewAbove;)Lcom/fiio/music/slidemenu/CustomViewBehind;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fiio/music/slidemenu/CustomViewBehind;->setChildrenEnabled(Z)V

    goto :goto_0

    .line 180
    :pswitch_1
    iget-object v0, p0, Lcom/fiio/music/slidemenu/b;->a:Lcom/fiio/music/slidemenu/CustomViewAbove;

    invoke-static {v0}, Lcom/fiio/music/slidemenu/CustomViewAbove;->a(Lcom/fiio/music/slidemenu/CustomViewAbove;)Lcom/fiio/music/slidemenu/CustomViewBehind;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fiio/music/slidemenu/CustomViewBehind;->setChildrenEnabled(Z)V

    goto :goto_0

    .line 174
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
