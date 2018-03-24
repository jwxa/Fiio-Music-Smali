.class final Lcom/fiio/music/activity/z;
.super Ljava/lang/Object;
.source "EqActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/EqActivity;

.field private final synthetic b:I

.field private final synthetic c:Z


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/EqActivity;IZ)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/z;->a:Lcom/fiio/music/activity/EqActivity;

    iput p2, p0, Lcom/fiio/music/activity/z;->b:I

    iput-boolean p3, p0, Lcom/fiio/music/activity/z;->c:Z

    .line 950
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 953
    iget-object v0, p0, Lcom/fiio/music/activity/z;->a:Lcom/fiio/music/activity/EqActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/EqActivity;->access$14(Lcom/fiio/music/activity/EqActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 954
    iget-object v0, p0, Lcom/fiio/music/activity/z;->a:Lcom/fiio/music/activity/EqActivity;

    iget v1, p0, Lcom/fiio/music/activity/z;->b:I

    iget-boolean v2, p0, Lcom/fiio/music/activity/z;->c:Z

    invoke-static {v0, v1, v2}, Lcom/fiio/music/activity/EqActivity;->access$13(Lcom/fiio/music/activity/EqActivity;IZ)V

    .line 955
    iget-object v0, p0, Lcom/fiio/music/activity/z;->a:Lcom/fiio/music/activity/EqActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fiio/music/activity/EqActivity;->access$15(Lcom/fiio/music/activity/EqActivity;Z)V

    .line 957
    :cond_0
    return-void
.end method
